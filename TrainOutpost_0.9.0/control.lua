require "defines"
require "config"

local logger = require "libs/logger"
local Polygon = require "libs/polygon"
local random_number = require "libs/randomlua"
local rng = {}

--- math shortcuts ---
local floor = math.floor
local ceil = math.ceil
local abs = math.abs
local cos = math.cos
local sin = math.sin
local pi = math.pi
local max = math.max

function players_print(message)
	for _,player in ipairs(game.players) do
		player.print(message)
	end
end

--- constants ---
local CHUNK_SIZE = 32
local REGION_TILE_SIZE = CHUNK_SIZE*region_size

--- conversions ---
function tile_to_chunk(tile_position)
	local chunk_x = floor(tile_position.x / CHUNK_SIZE)
	local chunk_y = floor(tile_position.y / CHUNK_SIZE)
	
	return {x=chunk_x, y=chunk_y}
end

function chunk_to_global_area(chunk_coordinates)
	local top_left = {x = chunk_coordinates.x * CHUNK_SIZE, y = chunk_coordinates.y * CHUNK_SIZE}
	
	return { {top_left.x, top_left.y}, {top_left.x + CHUNK_SIZE - 1, top_left.y + CHUNK_SIZE - 1} }
end

function tile_to_region(tile_position)
	local region_x = floor((tile_position.x - floor(REGION_TILE_SIZE/2)) / REGION_TILE_SIZE)
	local region_y = floor((tile_position.y - floor(REGION_TILE_SIZE/2)) / REGION_TILE_SIZE)
	
	return {x=region_x, y=region_y}
end

function region_position_to_global(region_coordinates, tile_within_region_position)
	local region_x_offset = region_coordinates.x * REGION_TILE_SIZE - floor(REGION_TILE_SIZE/2)
	local region_y_offset = region_coordinates.y * REGION_TILE_SIZE - floor(REGION_TILE_SIZE/2)
	
	return {x=region_x_offset + tile_within_region_position.x, y=region_y_offset + tile_within_region_position.y}
end

--- random functions ---
local function roll()
	global.times_rolled = global.times_rolled + 1
	return rng:random(0,100) / 100
end

local function roll_min_max(minValue, maxValue)
	global.times_rolled = global.times_rolled + 1
	return rng:random(minValue, maxValue)
end

local function roll_resource_amount(richness)
	return roll_min_max(richness.min, richness.max)
end

local function roll_position(maxX, maxY)
	global.times_rolled = global.times_rolled + 2
	return {x=rng:random(1, maxX + 1) - 1, y=rng:random(1, maxY + 1) - 1}
end

local function roll_region_position()
	return roll_position(REGION_TILE_SIZE, REGION_TILE_SIZE)
end

--- surface access ---
local function get_surface()
	return game.get_surface("nauvis")
end



--- helper functions ---
local function region_distance(region_position)
	return (region_position.x^2 + region_position.y^2)^0.5
end

local function placeingamedebugResource(tilePosition, name)
	get_surface().create_entity{name = name, position = tilePosition, amount = 20000}
end

local function place_ore_patch(global_position, resource, polygon, richness)
	for y = polygon:getMinY(), polygon:getMaxY() do
		for x = polygon:getMinX(), polygon:getMaxX() do
			if polygon:contains({x=x, y=y}) then
				get_surface().create_entity{
						name = resource,
						position = {x + global_position.x, y + global_position.y},	-- polygon is always in local coordinates
						amount = roll_resource_amount(richness)}
			end
		end
	end
end

local function check_resource_position(global_position, resource)
	return get_surface().can_place_entity{name = resource, position = global_position}
end

---########################## ENEMIES ################################---

-- spawns a bunch of enemies at the given position
-- parameter: global position to serve for the spawning
local function spawn_enemies_at_position(global_position)
	-- make sure we do not spawn anything in the starting area
	if 	global_position.x > global.enemy_protection_zone.x_min and
		global_position.x < global.enemy_protection_zone.x_max and
		global_position.y > global.enemy_protection_zone.y_min and
		global_position.y < global.enemy_protection_zone.y_max then
		return
	end

	-- determine sizes
	local total_size = 0
	local enemies_to_spawn_per_type = {}
	local region_coordinates = tile_to_region(global_position)
	for enemy_type, enemy_properties in pairs(enemies_config) do
		local size_min = floor(enemy_properties.size_base + enemy_properties.size_min * global_enemy_size_distance_factor * enemy_properties.size_distance_adjust * region_distance(region_coordinates))
		local size_max = ceil(enemy_properties.size_base + enemy_properties.size_max * global_enemy_size_distance_factor * enemy_properties.size_distance_adjust * region_distance(region_coordinates))
		local size = roll_min_max(size_min, size_max) * global.generation_size["enemy-base"]
		enemies_to_spawn_per_type[enemy_type] = size
		total_size = total_size + size
	end
	
	-- roll which kinds
	local enemies_to_spawn = {}
	for enemy_type, count in pairs(enemies_to_spawn_per_type) do
		enemies_to_spawn[enemy_type] = {}
		for i = 1,count do
			local draw_from_population_value = roll()
			for k,v in pairs(enemies_config[enemy_type].types) do
				if draw_from_population_value >= v.spawn_chance 
						and region_distance(tile_to_region(global_position)) > v.min_distance then
					enemies_to_spawn[enemy_type][#enemies_to_spawn[enemy_type]+1] = k
					break -- we found the specific enemy type to spawn, so break out inner-most for-loop
				end
			end
		end
	end
	
	-- spawn enemies
	local spread = total_size * 3
	for enemy_type, enemies in pairs(enemies_to_spawn) do
		for _,enemy in ipairs(enemies) do
			for try = 1, max_retries do -- try to find a position for the single well
				local local_enemy_position = roll_position(spread, spread)
				local global_enemy_position = {x=global_position.x + local_enemy_position.x, 
											  y=global_position.y + local_enemy_position.y} -- translate local to global coordinates
				if check_resource_position(global_enemy_position, enemy) then
					get_surface().create_entity{name=enemy,
												position=global_enemy_position,
										 }
					break; -- stop trying, we were successful
				end
			end
		end
	end
end

-- spawns a bunch of enemies in the region
-- parameter: region coordinates of the current region
local function spawn_enemies_in_region(region_coordinates)
	for i = 1,enemy_bases_per_region do
		local global_position = region_position_to_global(region_coordinates, roll_region_position())
		spawn_enemies_at_position(global_position)
	end
end

---########################## RESOURCES ################################---

local function check_resource_polygon(global_position, polygon, resource)
	for y = polygon:getMinY(), polygon:getMaxY() do
		for x = polygon:getMinX(), polygon:getMaxX() do
			if polygon:contains({x=x, y=y}) then
				if not check_resource_position({global_position.x + x, global_position.y + y}, resource) then return false end
			end
		end
	end
	return true
end

local function generate_ore_patch_in_region(resource_name, resource_size, resource_richness, region_coordinates)
	local resource_polygon = Polygon.newCircular(roll_min_max, resource_size.min, resource_size.max)
	
	for i = 1, max_retries do
		local global_position = region_position_to_global(region_coordinates, roll_region_position())
		-- players_print("trying position " .. global_position.x .. "," .. global_position.y)
		if check_resource_polygon(global_position, resource_polygon, resource_name) then
			place_ore_patch(global_position, resource_name, resource_polygon, resource_richness)
			return global_position -- we were successful so break out of the loop and return
		end
	end
	return nil
end

local function generate_liquid_wells_in_region(resource_name, resource_size, resource_richness, region_coordinates)
	local rolled_size = roll_min_max(resource_size.min, resource_size.max)
	local spread = floor(rolled_size * 4) -- limit the possible positions to a certain area
	
	for i = 1, max_retries do	-- retry a number of times to find a suitable rectangle
		local failures = 0
		local rectangle_upper_left = region_position_to_global(region_coordinates, roll_region_position())
		
		for well = 1, rolled_size do
			local success = false -- keep track if we were successful
			for try = 1, max_retries do -- try to find a position for the single well
				local local_well_position = roll_position(spread, spread)
				local global_well_position = {x=rectangle_upper_left.x + local_well_position.x, 
											  y=rectangle_upper_left.y + local_well_position.y} -- translate local to global coordinates
				if check_resource_position(global_well_position, resource_name) then
					get_surface().create_entity{name=resource_name,
												position=global_well_position,
												amount=roll_resource_amount(resource_richness)}
					success = true
					break;
				end
			end
			-- if we could not place the resource after max_retries, register that
			if not success then
				failures = failures + 1
			end
		end
		
		-- if we failed too often, restart the whole generation
		if (failures > (rolled_size / 2) and i ~= max_retries) then
			for _,liquid in ipairs(get_surface().find_entities_filtered{ area = {rectangle_upper_left, {rectangle_upper_left.x+spread, rectangle_upper_left.y+spread}},
																   name = resource_name}) do
				liquid.destroy()
			end
		else
			-- we generated enough
			return rectangle_upper_left
		end
	end
	return nil
end


-- randomly determine the size of a specific resource patch
-- parameters: 	resource_name: the entity-name of the resource to generate
-- 				resource_specs: the specifications of the resource for which to determine the size
--				region_coordinates: the current region's coordinates
local function determine_resource_size(resource_name, resource_specs, region_coordinates)
	local size_min = floor((resource_specs.size_base + resource_specs.size_min * global_size_distance_factor * resource_specs.size_distance_adjust * region_distance(region_coordinates)) * global.generation_size[resource_name])
	local size_max = ceil((resource_specs.size_base + resource_specs.size_max * global_size_distance_factor * resource_specs.size_distance_adjust * region_distance(region_coordinates)) * global.generation_size[resource_name])
	
	-- return size_min, size_max
	return {min=size_min, max=size_max}
end

-- returns the lower and upper bound for the resource richness
-- parameters: 	resource_name: the entity-name of the resource to generate
--				resource_specs: the specifications of the resource for which to determine the richness bounds
--				region_coordinates: the current region's coordinates
local function determine_resource_richness(resource_name, resource_specs, region_coordinates)
	-- local richness_min = floor(generation_richness_min * global_richness_distance_factor * resource_specs.richness_distance_adjust * (1+region_distance(region_coordinates)/10))
	-- local richness_max = ceil(generation_richness_max * global_richness_distance_factor * resource_specs.richness_distance_adjust * (1+region_distance(region_coordinates)/10))
	local richness_min = floor(global.generation_richness[resource_name].min * global_richness_distance_factor * resource_specs.richness_distance_adjust * (1+region_distance(region_coordinates)/10))
	local richness_max = ceil(global.generation_richness[resource_name].max * global_richness_distance_factor * resource_specs.richness_distance_adjust * (1+region_distance(region_coordinates)/10))
	
	return {min=richness_min, max=richness_max}
end

local function handle_single_resource_in_region(resource_name, resource_specs, region_coordinates)
	-- first of all, check if this resource should be placed in the region
	absolute_probability = global_spawn_probability * resource_specs.probability_multiplier * global.generation_frequency[resource_name]
	if not (roll() <= absolute_probability) then return end
	
	local resource_size = determine_resource_size(resource_name, resource_specs, region_coordinates)
	local resource_richness = determine_resource_richness(resource_name, resource_specs, region_coordinates)
	
	if resource_specs.type == "resource-ore" then
		return generate_ore_patch_in_region(resource_name, resource_size, resource_richness, region_coordinates)
	elseif resource_specs.type == "resource-liquid" then
		return generate_liquid_wells_in_region(resource_name, resource_size, resource_richness, region_coordinates)
	end
end

---########################## REGIONS ################################---

-- loops through all configured resources
-- parameter: region coordinates of the current region
local function loop_resources_for_region(region_coordinates)
	for resource_name, resource_specs in pairs(resources_config) do
		local position = handle_single_resource_in_region(resource_name, resource_specs, region_coordinates)
		if position ~= nil then
			-- spawn_enemies_at_position(position)
		end
	end
end

-- check if this region is new; return true if this region is new
-- parameter: the region coordinates
local function check_new_region(region_coordinates)
	-- we keep track of treated regions in the global.regions 2d-table
	if global.regions[region_coordinates.x] and global.regions[region_coordinates.x][region_coordinates.y] then
		return false
	end
	return true
end

-- register the region so it is no longer treated as new
-- parameter: the region coordinates
local function register_new_region(region_coordinates)
	if not global.regions[region_coordinates.x] then global.regions[region_coordinates.x] = {} end
	global.regions[region_coordinates.x][region_coordinates.y] = true
end

-- coordination function for a region
-- parameter: the position of the tile that is part of a generated chunk
local function handle_region(tile_position)
	--in what region is this chunk?
	local region_coordinates = tile_to_region(tile_position)

	-- if we handled this region before, do not do so again
	if not check_new_region(region_coordinates) then return end
	-- and register the region
	register_new_region(region_coordinates)
	
	loop_resources_for_region(region_coordinates)
	spawn_enemies_in_region(region_coordinates)
end

---########################## INIT ################################---

-- initializes the random number generator
local function init_rng()
	rng = twister(global.map_gen_seed)
	
	-- pop a few numbers to avoid system specific non-randomess
	rng:random(0, 10)
	rng:random(0, 10)
	rng:random(0, 10)
	
	for n=1,global.times_rolled do 
		rng:random(0, 10)
	end
end

-- makes some useful one-time calculations for the weights of the enemy generation
-- individual weights are mapped to a scale from 0 to 1, so a single random value
-- can determine which enemy should be generated
local function init_weights()
	for enemy_type, properties in pairs(enemies_config) do
		-- first iterate over all and determine total weight
		local total_weight = 0
		for _, value in pairs(properties.types) do
			total_weight = total_weight + value.weight
		end
		-- now determine normalized individual weights and store them in the structure
		local running_chance = 1
		for _, value in pairs(properties.types) do
			rel_weight = value.weight / total_weight
			running_chance = floor((running_chance - rel_weight) * 1000) / 1000
			--running_chance = running_chance - rel_weight
			value.spawn_chance = running_chance
		end
	end
end

-- reads the map settings and determines the generation richness for each resource
-- parameter: the surface of the world, used to get access to the world generation settings
local function init_generation_richness(surface)
	global.generation_richness = {}
	for resource_name, resource_specs in pairs(resources_config) do
		local richness_setting = surface.map_gen_settings.autoplace_controls[resource_name].richness
		if resource_specs.type == "resource-liquid" then
			global.generation_richness[resource_name] = generation_richness_liquid[richness_setting]
		else
			global.generation_richness[resource_name] = generation_richness[richness_setting]
		end
	end
end

-- reads the map settings and determines the generation size modification factor for each resource
-- parameter: the surface of the world, used to get access to the world generation settings
local function init_generation_size(surface)
	global.generation_size = {}
	for resource_name, resource_size in pairs(surface.map_gen_settings.autoplace_controls) do
		-- local size_setting = surface.map_gen_settings.autoplace_controls[resource_name].size
		global.generation_size[resource_name] = generation_size[resource_size]
	end
end

-- reads the map settings and determines the generation size modification factor for each resource
-- parameter: the surface of the world, used to get access to the world generation settings
local function read_map_gen_settings(surface)
	global.generation_frequency = {}
	global.generation_size = {}
	global.generation_richness = {}
	for resource_name, resource_size in pairs(surface.map_gen_settings.autoplace_controls) do
		local frequency_setting = surface.map_gen_settings.autoplace_controls[resource_name].frequency
		local size_setting = surface.map_gen_settings.autoplace_controls[resource_name].size
		local richness_setting = surface.map_gen_settings.autoplace_controls[resource_name].richness
		global.generation_frequency[resource_name] = generation_frequency[frequency_setting]
		global.generation_size[resource_name] = generation_size[size_setting]
		if ((resources_config[resource_name] ~= nil) and (resources_config[resource_name].type == "resource-liquid")) then
			global.generation_richness[resource_name] = generation_richness_liquid[richness_setting]
		else
			global.generation_richness[resource_name] = generation_richness[richness_setting]
		end
	end
end

-- convenience computation for the starting area
local function init_resource_starting_area()
	return {x_min = -resource_starting_area_size.width/2,
			x_max = resource_starting_area_size.width/2,
			y_min = -resource_starting_area_size.height/2,
			y_max = resource_starting_area_size.height/2 }
end

-- convenience computation for the area in which no enemies can be spawned
-- parameter: the surface of the world, used get access the world generation settings
local function init_enemy_protection_zone(surface)
	return {x_min = -enemy_protection_zone_by_starting_area[surface.map_gen_settings.starting_area]/2,
			y_min = -enemy_protection_zone_by_starting_area[surface.map_gen_settings.starting_area]/2,
			x_max = enemy_protection_zone_by_starting_area[surface.map_gen_settings.starting_area]/2,
			y_max = enemy_protection_zone_by_starting_area[surface.map_gen_settings.starting_area]/2}
end

-- guaranteed spawns in the starting area
-- parameter: the starting area in which to spawn the resources defined by a rectangle
local function spawn_starting_resources(resource_starting_area)
	-- if global.start_resources_spawned or game.tick > 3600 then return end -- starting resources already there or game was started without mod
	
	for resource_name, resource_specs in pairs(resources_config) do
		success = false -- loop as long as we have not successfully placed the resource
		while not success do
			global_position = {	x = roll_min_max(resource_starting_area.x_min, resource_starting_area.x_max),
								y = roll_min_max(resource_starting_area.y_min, resource_starting_area.y_max)}
			
			if resource_specs.type == "resource-ore" then
				polygon = Polygon.newCircular(roll_min_max, resource_specs.size_starting_min, resource_specs.size_starting_max)
				
				if check_resource_polygon(global_position, polygon, resource_name) then
					place_ore_patch(global_position, resource_name, polygon, global.generation_richness[resource_name]) 
					success = true
				end
			elseif resource_specs.type == "resource-liquid" then
				generate_liquid_wells_in_region(
							resource_name,
							{min=resource_specs.size_starting_min, max=resource_specs.size_starting},
							global.generation_richness[resource_name],
							{x=0,y=0})
				success = true
			end
		end
	end
	
	-- global.start_resources_spawned = true
	if not global.regions[0] then global.regions[0] = {} end
	global.regions[0][0] = true
end

-- coordinates the initialization
local function on_init()
	if not global.regions then global.regions = {} end
	if not global.times_rolled then global.times_rolled = 0 end
	if not global.map_gen_seed then global.map_gen_seed = get_surface().map_gen_settings.seed end
	global.enemy_protection_zone = init_enemy_protection_zone(get_surface())
	init_rng()
	init_weights()
	-- init_generation_richness(get_surface())
	-- init_generation_size(get_surface())
	read_map_gen_settings(get_surface())
	spawn_starting_resources(init_resource_starting_area())
end

-- coordinates what happens when a game is loaded
local function on_load()
	-- initialize the random number generator again
	init_rng()
	-- initialize the weights again, as we rely on them
	init_weights()
end


---########################## EVENT HANDLERS ################################---

script.on_init(on_init)
script.on_load(on_load)

script.on_event(defines.events.on_chunk_generated, function(event)
	local tile_x = event.area.left_top.x
	local tile_y = event.area.left_top.y
	-- PlayerPrint("Generated chunk: x=" .. event.area.left_top.x .. " y=" .. event.area.left_top.y)
	-- place_ingamedebug_resource(tile_x, tile_y, "iron-ore")
	handle_region(event.area.left_top)
end)

remote.add_interface("TR", {
	config = function()
		players_print("config:")
		for k,v in pairs(resources_config) do
			players_print("k=" .. k .. "; v= " .. tostring(v))
		end
	end,
	weights = function()
		players_print("weights:")
		for _,v in pairs(enemies_config["spawner"].types) do
			players_print(v.spawn_chance)
		end	
	end,
	reinit = function(surface)
		read_map_gen_settings(surface)
		players_print("done")
	end,
	updateoil = function(surface)
		for chunk in surface.get_chunks() do
			local resources = surface.find_entities_filtered{area = chunk_to_global_area(chunk),
														 type = "resource"}
			for _,resource in ipairs(resources) do
				if resources_config[resource.name].type == "resource-liquid" then
					
					local region_coords = tile_to_region(resource.position)
					local richness = determine_resource_richness(resource.name, resources_config[resource.name], region_coords)
					resource.amount = roll_resource_amount(richness)
					
					players_print("set amount to " .. resource.amount)
				end
			end
		end
	end,
})