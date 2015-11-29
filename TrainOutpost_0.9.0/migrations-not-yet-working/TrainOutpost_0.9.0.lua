require "config"

local surface = game.get_surface("nauvis")
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