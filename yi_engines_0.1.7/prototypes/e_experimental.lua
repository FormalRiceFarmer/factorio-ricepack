data:extend(
{  
	-- Tutorial
	{
		type = "assembling-machine",
		name = "ye_fassembly1",
		icon = "__yi_engines__/graphics/entity/fastassembly1_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly1"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{			
			filename = "__yi_engines__/graphics/entity/fastassembly1_ha.png",			
			width = 128,
			height = 128,
			shift = {0.5, -0.4375},
			frame_count = 16,
			line_length = 4,			
			animation_speed = 0.25
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.04 / 2.5
		},
		energy_usage = "300kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie-engines",
	},	
	


	
	--[[

	
	{
		type = "assembling-machine",
		name = "y-injector1",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-injector1"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 1.5}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = {0, -1.5}},										
				}
			},								
		},
		collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
		selection_box = {{-0.5, -1.0}, {0.5, 1.0}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x64o.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x64o.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp1"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "100kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	
	{
		type = "assembling-machine",
		name = "y-injector2",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-injector2"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 1.5}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = {0,-1.5}},										
				}
			},								
		},
		collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
		selection_box = {{-0.5, -1.0}, {0.5, 1.0}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x64g.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x64g.png",			
			width = 32,
			height = 64,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp2"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "200kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		

	{
		type = "assembling-machine",
		name = "y-ring1",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ring1"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 0, 2}},										
					{type="input", position = { 0,-2}},										
					{type="input", position = {-1, 0}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 1.0, 0}},										
				}
			},								
		},
		collision_box = {{-0.4, -1.4}, {0.4, 1.4}},
		selection_box = {{-0.5, -1.5}, {0.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/32x96.png",			
			width = 32,
			height = 96,
			shift = {0.0, 0.0}
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/32x96.png",			
			width = 32,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp3"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	{
		type = "assembling-machine",
		name = "y-ring2",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ring2"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 0.5, 2}},										
					{type="input", position = { 0.5,-2}},										
					{type="input", position = {-1.5, 0}},										
				}
			},					
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 1.5, 0}},										
				}
			},								
		},
		collision_box = {{-0.9, -1.4}, {0.9, 1.4}},
		selection_box = {{-1.0, -1.5}, {1.0, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/64x96.png",			
			width = 64,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/64x96.png",			
			width = 64,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp4"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		

	{
		type = "assembling-machine",
		name = "y-emitter",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-emitter"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="output", position = { 2, 0}},										
				}
			},								
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/96x96xlila.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/96x96xlila.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp5"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	{
		type = "assembling-machine",
		name = "y-collector",
		icon = "__yi_engines__/graphics/tests/a-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-collector"},
		max_health = 150,
		corpse = "medium-remnants",		
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 5,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 2, 0}},										
				}
			},								
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/tests/96x96xcyan.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/tests/96x96xcyan.png",			
			width = 96,
			height = 96,
			shift = {0.0, 0.0},
			frame_count = 1,
			line_length = 1,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-exp5"}, crafting_speed = 1.0,		
		energy_source = { type = "electric", usage_priority = "secondary-input", emissions = 0.001, },
		energy_usage = "500kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "y-exp",
	},		
	]]
	
})	
