data:extend({

	-- farming		
	{
		type = "assembling-machine",
		name = "ye_farm",
		icon = "__yi_engines__/graphics/entity/farm-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_farm"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {2,-3}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-2, 3}},								
				}
			},										
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			east = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
			south = { filename = "__yi_engines__/graphics/entity/farm-sheet-ns.png", width = 192, height = 192, shift = {0.44, -0.22}, frame_count = 16, line_length = 4, animation_speed=0.01, },						
			west = { filename = "__yi_engines__/graphics/entity/farm-sheet-ew.png", width = 192, height = 192, shift = {0.19, -0.34}, frame_count = 16, line_length = 4, animation_speed=0.01, }	,					
		},		
		crafting_categories = {"yrcat-farm"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "50kW",						
		ingredient_count = 3,
		order="a",
		subgroup = "yie-engines",
	},
	
	-- alien breed		
	{
		type = "assembling-machine",
		name = "ye_meatfarm",
		icon = "__yi_engines__/graphics/entity/cage_empty_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_meatfarm"},
		max_health = 250,
		corpse = "medium-remnants",		
		fluid_boxes =
		{			
			{
				production_type = "output",
				base_area = 10,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {1, 3}},										
				}
			},			
			{
				production_type = "output",
				base_area = 10,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {-1, 3}},										
				}
			},						
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {1,-3}},								
				}
			},							
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{			
			north = { filename = "__yi_engines__/graphics/entity/cage/cage_v14.png", width = 192, height = 192, shift = {0.375, -0.125}, frame_count = 36, line_length = 9, animation_speed=0.25, },						
			south = { filename = "__yi_engines__/graphics/entity/cage/cage_v14.png", width = 192, height = 192, shift = {0.375, -0.125}, frame_count = 36, line_length = 9, animation_speed=0.25, },						
			east = { filename = "__yi_engines__/graphics/entity/cage/cage_h14.png", width = 192, height = 192, shift = {0.125, -0.5}, frame_count = 36, line_length = 9, animation_speed=0.25, }	,								
			west = { filename = "__yi_engines__/graphics/entity/cage/cage_h14.png", width = 192, height = 192, shift = {0.125, -0.5}, frame_count = 36, line_length = 9, animation_speed=0.25, }	,					
		},		
		crafting_categories = {"yrcat_meat"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "250kW",						
		ingredient_count = 4,
		order="a",
		subgroup = "yie-engines",
	},
	
	-- mechanical water pump				
	{
		type = "assembling-machine",
		name = "y-mwater-pump",
		icon = "__yi_engines__/graphics/entity/pump-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-mwater-pump"},
		max_health = 150,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 1,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {1.5, 0.5}},										
				}
			},										
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {-0.5, -1.5}},								
				}
			},							
		},
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { 	filename = "__yi_engines__/graphics/entity/pump_nna_s.png",			
						width = 128, height = 128, shift = {0.34, 0.53}, frame_count = 16, line_length = 16, },	
			south = {	filename = "__yi_engines__/graphics/entity/pump_sna_s.png",			
						width = 128, height = 128, shift = {0.47, 0.22}, frame_count = 16, line_length = 16, },	
			east = {	filename = "__yi_engines__/graphics/entity/pump_ena_s.png",			
						width = 128, height = 128, shift = {0.28, 0.31}, frame_count = 16, line_length = 16, },	
			west = {	filename = "__yi_engines__/graphics/entity/pump_wna_s.png",			
						width = 128, height = 128, shift = {0.47, 0.47}, frame_count = 16, line_length = 16, },										
		},		
		crafting_categories = {"yrcat-pump"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.1, 
		},
		energy_usage = "100W",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},			

	-- canning machine		
	{
		type = "assembling-machine",
		name = "ye_canmachine",
		icon = "__yi_engines__/graphics/canning-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_canmachine"},
		max_health = 550,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {1,2}},								
				}
			},							
			{
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0,2}},								
				}
			},										
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {2,0}},								
				}
			},	
		},
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			south = { filename = "__yi_engines__/graphics/entity/can-n.png", width = 128, height = 128, shift = {0.5, -0.375}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
			west  = { filename = "__yi_engines__/graphics/entity/can-e.png", width = 128, height = 128, shift = {0.25, -0.375}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,					
			north = { filename = "__yi_engines__/graphics/entity/can-s.png", width = 128, height = 128, shift = {0.5, -0.25}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
			east  = { filename = "__yi_engines__/graphics/entity/can-w.png", width = 128, height = 128, shift = {0.5, -0.3125}, frame_count = 16, line_length = 4, animation_speed=1.0, }	,							
		},		
		crafting_categories = {"yrcat_fluidhandle", "crafting-with-fluid"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.02, 
		},
		energy_usage = "2500kW",						
		ingredient_count = 4,
		order="a",
		subgroup = "yie-engines",
	},	
	
})