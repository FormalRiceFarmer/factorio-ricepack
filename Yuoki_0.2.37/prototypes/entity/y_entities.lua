
data:extend(
{  
	--[[
	{
		type = "assembling-machine",
		name = "archsite",
		icon = "__Yuoki__/graphics/icons/archsite_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "archsite"},
		max_health = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/archsite_n.png",
			priority = "medium",
			width = 170,
			height = 160,
			frame_count = 1,						
			shift = {0.25, -0.25}
		},					
		crafting_categories = {"yuoki-archaeology"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.01},
		energy_usage = "250kW",
		ingredient_count = 1,
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
	},
	]]
	
	{
		type = "assembling-machine",
		name = "y-underground-drill", minable = {hardness = 0.2,mining_time = 0.5,result = "y-underground-drill"},
		icon = "__Yuoki__/graphics/icons/deep-drill-v1-icon.png",
		flags = {"placeable-neutral","player-creation"},		
		max_health = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/deep-drill-va.png",
			priority = "medium",
			width = 122,
			height = 100,
			frame_count = 14,		
			line_length =14,
			shift = {0.55, -0.25}
		},					
		crafting_categories = {"yuoki-raw-material-recipe"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.015},
		energy_usage = "400kW",
		ingredient_count = 1,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		
	},	
	
	{
		type = "assembling-machine",
		name = "y-dirtwasher",
		icon = "__Yuoki__/graphics/icons/dw.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "y-dirtwasher"},
		max_health = 100,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.4,-1.4},{1.4,1.4}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			north =
			{
				filename = "__Yuoki__/graphics/entity/washer-ns.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.5, -0.25}, animation_speed=0.7,
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/washer-ew.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.47, 0}, animation_speed=0.7,
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/washer-ns.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.5, -0.25}, animation_speed=0.7,
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/washer-ew.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.47, 0}, animation_speed=0.7,
			},			
		},					
		crafting_categories = {"yuoki-archaeology-wash"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05},
		energy_usage = "350kW",
		ingredient_count = 2,
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2.0} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			off_when_no_fluid_recipe = true,
		},	  
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},
	
	{
		type = "assembling-machine",
		name = "y-heat-form-press",
		icon = "__Yuoki__/graphics/icons/pressure_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "y-heat-form-press"},
		max_health = 100,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-0.9,-0.9},{0.9,0.9}},
		selection_box = {{-1.0,-1.0},{1.0,1.0}},
		animation = {
			filename = "__Yuoki__/graphics/entity/formpress_anim.png",
			priority = "medium",
			width = 64,
			height = 72,
			frame_count = 9,						
			shift = {0.0, -0.25},
			animation_speed=0.5,
		},					
		crafting_categories = {"yuoki-formpress-recipe"},
		crafting_speed = 2,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05, },
		energy_usage = "475kW",
		ingredient_count = 4,
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = { -0.5, 1.5} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {  0.5, 1.5} }}
			},			
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { 1.5, -0.5} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { -1.5, -0.5} }}
			},			
		},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},
	
	-- Outpost Mining Drill
	{
		type = "mining-drill",
		name = "y-mining-drill",
		icon = "__Yuoki__/graphics/icons/mine-drill-o-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "y-mining-drill"},
		max_health = 300,
		resource_categories = {"basic-solid"},
		corpse = "big-remnants",
		collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
		animations =
		{
			north =
			{
				priority = "extra-high",
				width = 96,
				height = 96,
				line_length = 14,
				shift = {0.0, 0.0},
				filename = "__Yuoki__/graphics/entity/miners/mc-ne.png",
				frame_count = 28,
				animation_speed = 0.35,
				--run_mode = "forward-then-backward",
			},
			east =
			{
				priority = "extra-high",
				width = 96,
				height = 96,
				line_length = 14,
				shift = {0.0, 0},
				filename = "__Yuoki__/graphics/entity/miners/mc-oe.png",
				frame_count = 28,
				animation_speed = 0.35,
				--run_mode = "forward-then-backward",
			},
			south =
			{
				priority = "extra-high",
				width = 96,
				height = 96,
				line_length = 14,
				shift = {0.0, 0},
				filename = "__Yuoki__/graphics/entity/miners/mc-se.png",
				frame_count = 28,
				animation_speed = 0.35,
				--run_mode = "forward-then-backward",
			},
			west =
			{
				priority = "extra-high",
				width = 96,
				height = 96,
				line_length = 14,
				shift = {0.0, 0},
				filename = "__Yuoki__/graphics/entity/miners/mc-we.png",
				frame_count = 28,
				animation_speed = 0.35,
				--run_mode = "forward-then-backward",
			}
		},		
		mining_speed = 1.25,
		energy_source =
		{
			type = "burner",
			effectivity = 1,
			fuel_inventory_size = 2,
			emissions = 0.05,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 1
				}
			}
		},
		energy_usage = "350kW",
		mining_power = 4,
		resource_searching_radius = 2.95,
		vector_to_place_result = {0, -1.85},
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
			width = 11,	height = 11
		}
	},
	-- E2 Mining Drill
	{
		type = "mining-drill",
		name = "y-mining-drill-e2",
		icon = "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "y-mining-drill-e2"},
		max_health = 300,
		resource_categories = {"basic-solid"},
		corpse = "big-remnants",
		collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
		animations =
		{
			north =
			{
				priority = "extra-high",
				width = 110,
				height = 114,
				line_length = 8,
				shift = {0.2, -0.2},
				filename = "__base__/graphics/entity/basic-mining-drill/north.png",
				frame_count = 64,
				animation_speed = 0.5,
				run_mode = "forward-then-backward",
			},
			east =
			{
				priority = "extra-high",
				width = 129,
				height = 100,
				line_length = 8,
				shift = {0.45, 0},
				filename = "__base__/graphics/entity/basic-mining-drill/east.png",
				frame_count = 64,
				animation_speed = 0.5,
				run_mode = "forward-then-backward",
			},
			south =
			{
				priority = "extra-high",
				width = 109,
				height = 111,
				line_length = 8,
				shift = {0.15, 0},
				filename = "__base__/graphics/entity/basic-mining-drill/south.png",
				frame_count = 64,
				animation_speed = 0.5,
				run_mode = "forward-then-backward",
			},
			west =
			{
				priority = "extra-high",
				width = 128,
				height = 100,
				line_length = 8,
				shift = {0.25, 0},
				filename = "__base__/graphics/entity/basic-mining-drill/west.png",
				frame_count = 64,
				animation_speed = 0.5,
				run_mode = "forward-then-backward",
			}
		},		
		mining_speed = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.05, 		
		},
		energy_usage = "250kW",
		mining_power = 4,
		resource_searching_radius = 3.49,
		vector_to_place_result = {0, -1.85},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
			width = 14,
			height = 14
		},
		fast_replaceable_group = "mining-drill",
	},
	
	{
		type = "assembling-machine",
		name = "y-atomic-quantum-composer",
		icon = "__Yuoki__/graphics/entity/space-assembly-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-atomic-quantum-composer"},
		max_health = 1500,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/space-assembly-on.png",
			priority = "high",
			width = 112,
			height = 112,
			frame_count = 1,
			line_length = 1,
			shift = {0.25, 0.25}
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-wonder-recipe"},
		crafting_speed = 3.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.002, 
		},
		energy_usage = "4000kW",
		ingredient_count = 5,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="w[wonders]",
	},			

	{
		type = "assembling-machine",
		name = "y-atomic-constructor",
		icon = "__Yuoki__/graphics/icons/cimota-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-atomic-constructor"},
		max_health = 500,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/cimota-a.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 16,
			line_length = 4,
			shift = {0.25, -0.25},
			animation_speed=0.25,
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-atomics-recipe"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.005, 
		},
		energy_usage = "1200kW",
		ingredient_count = 5,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},	
	
	{
		type = "assembling-machine",
		name = "y-alien-infuser",
		icon = "__Yuoki__/graphics/icons/alien_infuser_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-alien-infuser"},
		max_health = 800,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__Yuoki__/graphics/entity/alien_infuser_idle.png",			
			width = 110,
			height = 110,
			shift = {0.15, -0.1}
		},
		animation =
		{
			filename = "__Yuoki__/graphics/entity/alien-infuser-anim.png",
			priority = "high",
			width = 110,
			height = 110,
			frame_count = 12,
			line_length = 12,
			shift = {0.15, -0.1}
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-alien-recipe"},
		crafting_speed = 1,
		
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.00025, },
		energy_usage = "100MW",
		ingredient_count = 3,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},		
	
	-- water generator - solid fuel
	{
		type = "assembling-machine",
		name = "y-water-gen",
		icon = "__Yuoki__/graphics/icons/alien_water_gen_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-water-gen"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 80,
				base_level = 5,
				pipe_connections = {
					{type="output", position = {0, 2}}, {type="output", position = {0, -2}},					
				}
			},
			--off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Yuoki__/graphics/entity/watergen_blue_sheet.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 16,
			line_length = 4,
			shift = {0.375, -0.25}
		},
		crafting_categories = {"yuoki-watergen-recipe"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			effectivity = 0.8,
			fuel_inventory_size = 3,
			emissions = 0.05,
			smoke = {{name = "smoke",deviation = {0.65, -0.2},frequency = 1}}
		},
		energy_usage = "125kW",						
		ingredient_count = 2,
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},	

	-- water generator - electric fuel
	{
		type = "assembling-machine",
		name = "y-water-gen-e",
		icon = "__Yuoki__/graphics/icons/alien_water_gen-e-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-water-gen-e"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 100,
				base_level = 5,
				pipe_connections = {
					{type="output", position = {0, 2}}, {type="output", position = { 0, -2}},					
					{type="output", position = {2, 0}}, {type="output", position = {-2,  0}},					
				}
			},
			--off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		--fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/water-gen-e-sheet.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 16,
			line_length = 4,
			shift = {0.375, -0.25}
		},		
		crafting_categories = {"yuoki-watergen-recipe"},
		crafting_speed = 1,
		energy_source ={	
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.02, },
		energy_usage = "100kW",						
		ingredient_count = 2,
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},	
	
	{
		type = "assembling-machine",
		name = "y-crusher",
		icon = "__Yuoki__/graphics/icons/crusher-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-crusher"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-0.5, -1.5} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0.5, 1.5} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/crusher-anim.png",
			priority = "medium",
			width = 65,
			height = 78,
			frame_count = 11,
			line_length = 11,
			shift = {0.0, -0.0}
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"y-crushing-recipe"},
		crafting_speed = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.02,
		},
		energy_usage = "125kW",
		ingredient_count = 2,
		order="c[crush]",
	},	

	-- stargate object	
	{
		type = "assembling-machine",
		name = "y-stargate", minable = {hardness = 0.2,mining_time = 0.5,result = "y-stargate"},
		icon = "__Yuoki__/graphics/icons/laika-gate-icon.png",
		flags = {"placeable-neutral","player-creation"},		
		max_health = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
		animation = {
			filename = "__Yuoki__/graphics/entity/laika.png",
			priority = "medium",
			width = 160,
			height = 160,
			frame_count = 1,						
			shift = {0.5, -0.5}
		},					
		crafting_categories = {"yuoki-stargate-recipe"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.001},
		energy_usage = "25MW",
		ingredient_count = 4,
		order="laika-gate",
	},
	
	{
		type = "assembling-machine",
		name = "y-fame-gen", minable = {hardness = 0.2,mining_time = 0.5,result = "y-fame-gen"},
		icon = "__Yuoki__/graphics/entity/thanks-icon.png",
		flags = {"placeable-neutral","player-creation"},		
		max_health = 500,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
		animation = {
			filename = "__Yuoki__/graphics/entity/thanks-sheet.png",
			priority = "medium",
			width = 192,
			height = 192,
			frame_count = 12,		
			line_length =6,
			shift = {0.0, -0.0},
			animation_speed=0.1,
		},					
		crafting_categories = {"yuoki-fame-recipe"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.01},
		energy_usage = "1400kW",
		ingredient_count = 1,		
	},	
})


