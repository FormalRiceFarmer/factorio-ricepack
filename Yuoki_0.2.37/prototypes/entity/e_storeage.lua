

data:extend(
{	
	{
		type = "container",
		name = "y-rare-chest",
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_sc11"},
		max_health = 300,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 20,},{type = "fire",percent = 50,}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fast_replaceable_group = "container-small",
		inventory_size = 60,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-c11.png",
			priority = "high",
			width = 48,
			height = 48,
			shift = {0.1875, -0.094},
		},		
	},
	
	{
		type = "smart-container",
		name = "y_sc11",
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_sc11"},
		max_health = 300,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 20,},{type = "fire",percent = 50,}},
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fast_replaceable_group = "container-small",
		inventory_size = 60,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-c11.png",
			priority = "high",
			width = 48,
			height = 48,
			shift = {0.1875, -0.094},
		},	
		circuit_wire_connection_point = {
			shadow = { red = {0.7, -0.3}, green = {0.7, -0.3} },
			wire = { red = {0.3, -0.8}, green = {0.3, -0.8} }
		},
		circuit_wire_max_distance = 7.5		
	},
	
	
	
	
	{
		type = "logistic-container",
		name = "y-rare-chest-log",
		icon = "__Yuoki__/graphics/entity/store/y-lc11-icon.png",
		flags = {"placeable-player", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },		
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-rare-chest-log"},
		max_health = 300,
		corpse = "small-remnants",
		collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fast_replaceable_group = "container",
		inventory_size = 60,
		logistic_mode = "storage",
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-lc11.png",
			priority = "extra-high",
			width = 48,
			height = 48,
			shift = {0.1875, -0.094},
		},
		circuit_wire_connection_point = {
			shadow = { red = {0.7, -0.3}, green = {0.7, -0.3} },
			wire = { red = {0.3, -0.8}, green = {0.3, -0.8} }
		},
		circuit_wire_max_distance = 7.5		
	},

	-- small old
	{
		type = "container",
		name = "y-rare-s1bunker",
		icon = "__Yuoki__/graphics/entity/bunker-s-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_c22"},
		max_health = 800,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},		
		inventory_size = 100,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/rareore-small-bunker.png",
			priority = "high",
			width = 80,
			height = 72,
			shift = {0.3, -0.05},
		},	
	},
	-- new 22
	{
		type = "smart-container",
		name = "y_c22",
		icon = "__Yuoki__/graphics/entity/store/y-c22-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_c22"},
		max_health = 800,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},		
		inventory_size = 100,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-c22.png",
			priority = "high",
			width = 96,
			height = 96,
			shift = {0.5, -0.125},
		},
		circuit_wire_max_distance = 7.5				
	},
	-- old 3x3
	{
		type = "container",
		name = "y-rare-m1bunker",
		icon = "__Yuoki__/graphics/icons/bunker-m-storeage-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_cg33"},
		max_health = 1400,
		corpse = "medium-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},		
		inventory_size = 140,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/bunker-m-storeage-e.png",
			priority = "high",
			width = 128,
			height = 100,
			shift = {0.3, -0.05},
		},		
	},
	-- new 3x3
	{
		type = "smart-container",
		name = "y_cg33",
		icon = "__Yuoki__/graphics/entity/store/y-c33-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_cg33"},
		max_health = 1400,
		corpse = "medium-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},		
		inventory_size = 140,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-cg33.png",
			priority = "high",
			width = 128,
			height = 128,
			shift = {0.5, -0.125},
		},	
		circuit_wire_max_distance = 7.5				
	},
		
	{
		type = "logistic-container",
		name = "y-rare-m1bunker-log",
		icon = "__Yuoki__/graphics/entity/store/y-cl33-icon.png",
		flags = {"placeable-player", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },		
		minable = {mining_time = 1.5, result = "y-rare-m1bunker-log"},
		max_health = 1400,
		corpse = "medium-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 140,
		logistic_mode = "storage",
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-cl33.png",
			priority = "high",
			width = 128,
			height = 128,
			shift = {0.5, -0.125},
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.7, -0.3},
				green = {0.7, -0.3}
			},
			wire =
			{
				red = {0.3, -0.8},
				green = {0.3, -0.8}
			}
		},
		circuit_wire_max_distance = 7.5,
	},
	{
		type = "container",
		name = "y-rare-b1bunker",
		icon = "__Yuoki__/graphics/icons/bunker-b-storeage-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_sc44"},
		max_health = 2000,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},		
		inventory_size = 220,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/bunker-b-storeage-e.png",
			priority = "high",
			width = 140,
			height = 110,
			shift = {0.37, -0.05},
		}
	},
	{
		type = "smart-container",
		name = "y_sc44",
		icon = "__Yuoki__/graphics/entity/store/y-c44-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable = {mining_time = 1, result = "y_sc44"},
		max_health = 2000,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},		
		inventory_size = 220,
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-c44.png",
			priority = "high",
			width = 160,
			height = 160,
			shift = {0.5, -0.25},
		},
		circuit_wire_max_distance = 8.5,
	},
	
	
	-- passive provider 2x2
	{
		type = "logistic-container",
		name = "y_pc22",
		icon = "__Yuoki__/graphics/entity/store/y-pc22-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_pc22"},
		max_health = 800,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},		
		fast_replaceable_group = "container",
		inventory_size = 70,
		logistic_mode = "passive-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-pc22.png",
			priority = "extra-high",
			width = 96,
			height = 96,
			shift = {0.5, -0.125}
		},
		circuit_wire_max_distance = 7.5
	},
	--	requester 2x2
	{
		type = "logistic-container",
		name = "y_rc22",
		icon = "__Yuoki__/graphics/entity/store/y-rc22-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_rc22"},
		max_health = 800,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 50,},{type = "fire",percent = 50,}},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},		
		fast_replaceable_group = "container",
		inventory_size = 70,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		picture =
		{
			filename = "__Yuoki__/graphics/entity/store/y-rc22.png",
			priority = "extra-high",
			width = 96,
			height = 96,
			shift = {0.5, -0.125}
		},
		circuit_wire_max_distance = 7.5
	},	

})