
data:extend(
{  

	{
		type = "boiler",
		name = "y-boiler-t2",
		icon = "__Yuoki__/graphics/icons/boiler-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-boiler-t2"},
		max_health = 250,
		corpse = "small-remnants",
		resistances = 
		{
			{
				type = "fire",
				percent = 80
			}
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1,
			pipe_connections =
			{
				{ position = {0, -1.0} },
				{ position = {1, 0} },
				{ position = {0, 1.0} },
				{ position = {-1.0, 0} }
			},
		},
		energy_consumption = "625kW",
		burner =
		{
			effectivity = 0.68,
			fuel_inventory_size = 2,
			emissions = 0.012,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 1
				}
			}
		},
		structure =
		{
			left =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			down =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			left_down =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			right_down =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			left_up =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			right_up =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			t_down =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			},
			t_up =
			{
				filename = "__Yuoki__/graphics/entity/boiler-t2_r16.png",
				priority = "extra-high",
				width = 50,
				height = 50,
				shift = {0.2, -0.25}
			}
		},
		fire =
		{
			left = boilerfires.down,
			down = boilerfires.left,
			left_down = boilerfires.right,
			right_down = boilerfires.left,
			left_up = boilerfires.down,
			right_up = boilerfires.down,
			t_up = boilerfires.down
		},
		burning_cooldown = 20,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},

	{
		type = "boiler",
		name = "y-boiler-t3",
		icon = "__Yuoki__/graphics/icons/boiler-t3-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-boiler-t3"},
		max_health = 350,
		corpse = "small-remnants",
		resistances = { { type = "fire", percent = 80 } },
		fast_replaceable_group = "pipe",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fluid_box =
		{
			base_area = 1.5,
			pipe_connections =
			{
				{ position = { 0.5,-1.5} },
				{ position = { 0.5, 1.5} },				
				{ position = { 1.5,-0.5} },
				{ position = {-1.5,-0.5} },				
			},
		},
		energy_consumption = "1840kW",
		burner =
		{
			effectivity = 0.72,
			fuel_inventory_size = 3,
			fuel_inventory_count = 20,
			emissions = 0.01,
			smoke =
			{
				{
					name = "smoke",
					north_position = {-0.75, -2.25},
					deviation = {0.1, 0.1},
					frequency = 10.0
				}
			}
		},
		structure =
		{
			left ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 		shift = {0.47, -0.38} },
			down ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 		shift = {0.47, -0.38} },
			left_down ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 	shift = {0.47, -0.38} },
			right_down ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 	shift = {0.47, -0.38} },
			left_up ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 		shift = {0.47, -0.38} },
			right_up ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 	shift = {0.47, -0.38} },
			t_down ={ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 		shift = {0.47, -0.38} },
			t_up =	{ filename = "__Yuoki__/graphics/entity/boiler-t3.png", priority = "extra-high", width = 96, height = 96, 		shift = {0.47, -0.38} },
		},
		fire =
		{
			left = boilerfires.down,
			down = boilerfires.down,
			left_down = boilerfires.down,
			right_down = boilerfires.down,
			left_up = boilerfires.down,
			right_up = boilerfires.down,
			t_up = boilerfires.down
		},
		burning_cooldown = 30,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},

	{
		type = "boiler",
		name = "y-boiler-iv",
		icon = "__Yuoki__/graphics/icons/boiler-3m-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.3, mining_time = 0.5, result = "y-boiler-iv"},
		max_health = 350,
		corpse = "small-remnants",
		resistances = 
		{
			{
				type = "fire",
				percent = 80
			}
		},
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			base_area = 5,
			pipe_connections =
			{
				{ position = { 0, -2.0} },
				{ position = { 2,    0} },
				{ position = { 0,  2.0} },
				{ position = {-2,    0} }
			},
		},
		energy_consumption = "3600kW",
		burner =
		{
			effectivity = 0.75,
			fuel_inventory_size = 3,
			fuel_inventory_count = 20,
			emissions = 0.008,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 1.5,
				}
			}
		},
		structure =
		{
			left =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			down =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			left_down =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			right_down =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			left_up =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			right_up =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			t_down =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
			},
			t_up =
			{
				filename = "__Yuoki__/graphics/entity/big_boiler_r16.png",
				priority = "extra-high",
				width = 112,
				height = 112,
				shift = {0.25, -0.1},
				rr			}
		},
		fire =
		{
			left = boilerfires.down,
			down = boilerfires.down,
			left_down = boilerfires.down,
			right_down = boilerfires.down,
			left_up = boilerfires.down,
			right_up = boilerfires.down,
			t_up = boilerfires.down
		},
		burning_cooldown = 20,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},

	{
		type = "boiler",
		name = "y-obninsk-reactor",
		icon = "__Yuoki__/graphics/icons/obninsk-reactor-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.3, mining_time = 0.5, result = "y-obninsk-reactor"},
		max_health = 500,
		corpse = "big-remnants",
		resistances = 
		{
			{
				type = "fire",
				percent = 80
			}
		},		
		collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fluid_box =
		{
			base_area = 50,
			pipe_connections =
			{
				{ position = { -1.5, -3.0} },
				{ position = {  1.5, -3.0} },
				{ position = { -1.5,  3.0} },
				{ position = {  1.5,  3.0} },				
			},
		},
		energy_consumption = "25MW",
		burner =
		{
			effectivity = 0.90,
			fuel_inventory_size = 1,
			fuel_inventory_count = 100,
			emissions = 0.005,
			smoke = {{	name = "smoke",deviation = {0.1, 0.1},frequency = 0.1,}}
		},
		structure =
		{
			left = 
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},
			},
			down =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},
			},
			left_down =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},		
			},
			right_down =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},		
			},
			left_up =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},		
			},
			right_up =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},		
			},
			t_down =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},		
			},
			t_up =
			{
				filename = "__Yuoki__/graphics/entity/obninsk-reactor.png", priority = "extra-high", width = 210, height = 180, shift = {0.6, 0.2},				
			},			
		},
		fire ={},
		burning_cooldown = 500,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},
	
	-- big steam-turbine
	{
		type = "generator",
		name = "y-steam-turbine",
		icon = "__Yuoki__/graphics/icons/steam-turbine_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-steam-turbine"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 1.075,
		fluid_usage_per_tick = 0.3299,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.8, -1.8}, {1.7, 1.8}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
		fluid_box =
		{
			base_area = 3,			
			pipe_connections =
			{
				{ position = {-1.5, 2.5} },
				{ position = {-1.5,-2.5} },
			},
			
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_ha.png",
			width = 160,
			height = 160,
			frame_count = 10,
			line_length = 10,
			shift = {0.38,-0.88}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam-turb-va.png",
			width = 192,
			height = 176,
			frame_count = 10,
			line_length = 10,
			shift = {0.9,-0.6}
		},			
		smoke =
		{
			{
				name = "smoke",
				north_position = {0, -2.2},
				east_position = {-1.1, -2.6},
				deviation = {0.2, 0.2},
				frequency = 0.2,
				offset = 0.33
			},
		}
	},   

	-- rensuir/obninsk-turbine 
	{
		type = "generator",
		name = "y-obninsk-turbine",
		icon = "__Yuoki__/graphics/icons/rensuir-turbine_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-obninsk-turbine"},
		max_health = 500,
		corpse = "big-remnants",
		effectivity = 1.35,
		fluid_usage_per_tick = 1.5977,

		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			base_area = 4.8,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {  0,  2.0} },
				{ position = {  0, -2.0} },				
			},
		},
		energy_source =
		{
			type = "electric",
			--usage_priority = "secondary-output"
			usage_priority = "primary-output",			
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/rens_ah.png",
			width = 120,
			height = 96,
			frame_count = 18,
			line_length = 9,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/rens_av.png",
			width = 96,
			height = 128,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		pipes_horizontal =
		{
			filename = "__Yuoki__/graphics/entity/pipes_h96.png",
			priority = "high",
			width = 96,
			height = 44,
			shift = {0, 0}
		},
		pipes_vertical =
		{
			filename = "__Yuoki__/graphics/entity/pipes_v96.png",
			priority = "high",
			width = 44,
			height = 96
		},
	},     	
	
	-- power plant
	{
		type = "generator",
		name = "y-steam-turbine-mk3",
		icon = "__Yuoki__/graphics/icons/small_steam_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-steam-turbine-mk3"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 1.2,
		fluid_usage_per_tick = 0.7353,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fluid_box =
		{
			base_area = 5,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = { 0.0,  3.0} },
				{ position = { 0.0, -3.0} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_plant_anim_h.png",
			width = 210,
			height = 180,
			frame_count = 18,
			line_length = 9,
			shift = {0.3, 0},
			animation_speed=0.1,
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_plant_anim.png",
			width = 210,
			height = 180,
			frame_count = 18,
			line_length = 9,
			shift = {0.3, 0},
			animation_speed=0.1,
		},
		pipes_horizontal =
		{
			filename = "__Yuoki__/graphics/entity/pipes_h96.png",
			priority = "high",
			width = 96,
			height = 44,
			shift = {0, 0}
		},
		pipes_vertical =
		{
			filename = "__Yuoki__/graphics/entity/pipes_v96.png",
			priority = "high",
			width = 44,
			height = 96,
		},
		smoke =
		{
			{
				name = "smoke",
				north_position = {-0.2, -2.0},
				east_position = {-0.2, -2.5},
				deviation = {0.2, 0.2},
				frequency = 0.25,
				offset = 0,
			},
		}
	},  		

	{
		type = "generator",
		name = "y-notfall-generator-s1",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2p-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-notfall-generator-s1"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 1.05,
		fluid_usage_per_tick = 0.1476,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = {  0.0,  1.5} },
				{ position = {  0.0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-b-h-sheet.png",
			width = 84,
			height = 102,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, -0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-b-v-sheet.png",
			width = 112,
			height = 84,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, 0.0}
		},
	},  
	{
		type = "generator",
		name = "y-notfall-generator-s2",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2s-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-notfall-generator-s2"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 1.05,
		fluid_usage_per_tick = 0.142,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0.0,  1.5} },
				{ position = { 0.0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt_bs_h_sheet.png",
			width = 84,
			height = 102,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, -0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt_bs_v_sheet.png",
			width = 112,
			height = 84,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, 0.0}
		},
	},  
	{
		type = "generator",
		name = "y-notfall-generator-s3",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2t-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-notfall-generator-s2"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 1.05,
		fluid_usage_per_tick = 0.142,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -0.9}, {1.3, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0.0,  1.5} },
				{ position = { 0.0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-bt-h-sheet.png",
			width = 84,
			height = 102,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, -0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-bt-v-sheet.png",
			width = 112,
			height = 84,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, 0.0}
		},
	},  
	
	
	-- small electric generator
	{
		type = "generator",
		name = "y-seg",
		icon = "__Yuoki__/graphics/entity/energy-t2/seg-s_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-seg"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 0.98,
		fluid_usage_per_tick = 0.6602,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0,  1.5} },
				{ position = { 0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-ha-s2.png",
			width = 80,
			height = 90,
			frame_count = 18,
			line_length = 18,
			shift = {0.1, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-va-s.png",
			width = 112,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.25}
		},
	},  
	-- small electric generator - primary reduced continuance
	{
		type = "generator",
		name = "y-seg-p",
		icon = "__Yuoki__/graphics/entity/energy-t2/seg-p_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-seg-p"},
		max_health = 300,
		corpse = "small-remnants",
		effectivity = 0.98,
		fluid_usage_per_tick = 0.6602,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0,  1.5} },
				{ position = { 0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-ha-p2.png",
			width = 80,
			height = 90,
			frame_count = 18,
			line_length = 18,
			shift = {0.1, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/seg-va-p.png",
			width = 112,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.25}
		},
	},  	

	-- medium second electric generator 
	{
		type = "generator",
		name = "y-meg-s",
		icon = "__Yuoki__/graphics/entity/energy-t2/meg-s-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-meg-s"},
		max_health = 400,
		corpse = "small-remnants",
		effectivity = 0.95,
		fluid_usage_per_tick = 1.0939,
		collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0,  1.5} },
				{ position = { 0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output",
		},
		--[[
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-s-ha.png",
			width = 90,
			height = 108,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-s-va.png",
			width = 100,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.125, 0.1}
		},
		]]
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-a-h-sheet.png",
			width = 80,
			height = 112,
			frame_count = 16,
			line_length = 16,
			shift = {0.25, -0.08}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/lt-a-v-sheet.png",
			width = 112,
			height = 80,
			frame_count = 16,
			line_length = 16,
			shift = {0.3, 0.0}
		},		
	},  	

	-- medium third electric generator 
	{
		type = "generator",
		name = "y-meg-t",
		icon = "__Yuoki__/graphics/entity/energy-t2/meg-t-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-meg-s"},
		max_health = 400,
		corpse = "small-remnants",
		effectivity = 0.97,
		fluid_usage_per_tick = 1.1320,
		collision_box = {{-1.4, -0.9}, {1.4, 0.9}},
		selection_box = {{-1.5, -1.0}, {1.5, 1.0}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0,  1.5} },
				{ position = { 0, -1.5} },
			},
		},
		energy_source =
		{
			type = "electric", usage_priority = "secondary-output",
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-t-ha.png",
			width = 90,
			height = 108,
			frame_count = 18,
			line_length = 18,
			shift = {0.4, 0.1875}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/meg-t-va.png",
			width = 100,
			height = 96,
			frame_count = 18,
			line_length = 18,
			shift = {0.125, 0.1}
		},
	},  	

	
	-- big electric generator
	{
		type = "generator",
		name = "y-beg",
		icon = "__Yuoki__/graphics/entity/energy-t2/beg_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-beg"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 0.92,
		fluid_usage_per_tick = 2.0674,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-2.4, -1.3}, {2.4, 1.3}},
		selection_box = {{-2.5, -1.5}, {2.5, 1.5}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = { 0,  2.0} },
				{ position = { 0, -2.0} },
			},
		},
		energy_source = { type = "electric", usage_priority = "secondary-output", },
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/beg-hac.png",
			width = 96,
			height = 160,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/beg-vac.png",
			width = 160,
			height = 120,
			frame_count = 18,
			line_length = 9,
			shift = {0.015, 0.0}
		},
	},  
	-- huge electric generator
	{
		type = "generator",
		name = "y-heg",
		icon = "__Yuoki__/graphics/entity/energy-t2/heg-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "y-heg"},
		max_health = 500,
		corpse = "big-remnants",
		effectivity = 0.88,
		fluid_usage_per_tick = 3.2754,
		resistances = {{ type = "fire", percent = 70 }},
		collision_box = {{-3.4, -1.3}, {3.4, 1.3}},
		selection_box = {{-3.5, -1.5}, {3.5, 1.5}},
		fluid_box =
		{
			base_area = 5,			
			pipe_connections =
			{
				{ position = { 0,  2.0} },
				{ position = { 0, -2.0} },
			},
		},
		energy_source = { type = "electric", usage_priority = "secondary-output", },
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/heg-ha.png",
			width = 100,
			height = 224,
			frame_count = 18,
			line_length = 18,
			shift = {0.0, 0.0}
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/energy-t2/heg-va.png",
			width = 224,
			height = 146,
			frame_count = 18,
			line_length = 9,
			shift = {0.00, -0.35}
		},
	},  	
	-- stirling solar-dish
	{
		type = "solar-panel",
		name = "y-stirling-solar-dish",
		icon = "__Yuoki__/graphics/icons/stir-solar-dish-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-stirling-solar-dish"},
		max_health = 150,
		corpse = "medium-remnants",
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		energy_source =
		{
			type = "electric",
			usage_priority = "solar"
		},
		picture =
		{
			filename = "__Yuoki__/graphics/entity/stir-solar-dish.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0,0},
		},
		production = "75kW"
	},	
	
	
})


