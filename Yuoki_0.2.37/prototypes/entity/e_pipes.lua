pipepictures_hv = function()
return {
	straight_vertical_single =
	{
		filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-single.png",
		priority = "extra-high",
		width = 44,
		height = 58
	},
	straight_vertical =
	{
		filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
		priority = "extra-high",
		width = 44,
		height = 42
	},
	straight_vertical_window =
	{
		filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
		priority = "extra-high",
		width = 44,
		height = 32
	},
	straight_horizontal_window =
	{
		filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
		priority = "extra-high",
		width = 32,
		height = 42
	},
	straight_horizontal =
	{
		filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
		priority = "extra-high",
		width = 32,
		height = 42
	},
	corner_up_right =
	{
		filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
		priority = "extra-high",
		width = 32,
		height = 40
	},
	corner_up_left =
	{
		filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
		priority = "extra-high",
		width = 44,
		height = 44
	},
	corner_down_right =
	{
		filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	corner_down_left =
	{
		filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
		priority = "extra-high",
		width = 36,
		height = 32
	},
	t_up =
	{
		filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
		priority = "extra-high",
		width = 32,
		height = 42
	},
	t_down =
	{
		filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
		priority = "extra-high",
		width = 40,
		height = 44
	},
	t_right =
	{
		filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
		priority = "extra-high",
		width = 40,
		height = 32
	},
	t_left =
	{
		filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
		priority = "extra-high",
		width = 44,
		height = 42
	},
	cross =
	{
		filename = "__base__/graphics/entity/pipe/pipe-cross.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_up =
	{
		filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
		priority = "extra-high",
		width = 44,
		height = 42
	},
	ending_down =
	{
		filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
		priority = "extra-high",
		width = 44,
		height = 32
	},
	ending_right =
	{
		filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
		priority = "extra-high",
		width = 32,
		height = 44
	},
	ending_left =
	{
		filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
		priority = "extra-high",
		width = 58,
		height = 44
	},
	horizontal_window_background =
	{
		filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
		priority = "extra-high",
		width = 32,
		height = 42
	},
	vertical_window_background =
	{
		filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
		priority = "extra-high",
		width = 44,
		height = 32
	},
	fluid_background =
	{
		filename = "__base__/graphics/entity/pipe/fluid-background.png",
		priority = "extra-high",
		width = 32,
		height = 20
	},
	low_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow.png",
		priority = "extra-high",
		width = 128,
		height = 18
	},
	middle_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow.png",
		priority = "extra-high",
		width = 128,
		height = 18
	},
	high_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow.png",
		priority = "extra-high",
		width = 128,
		height = 18
	}
}
end


data:extend(
{
	{
		type = "pipe",
		name = "y-pipe-h",
		icon = "__Yuoki__/graphics/icons/pipe-h.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
		max_health = 50,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1,
			pipe_connections =
			{
				--{ position = {0, -1} },
				{ position = {1, 0} },
				--{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = pipepictures_hv(),
		horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
	},
	
	{
		type = "pipe",
		name = "y-pipe-v",
		icon = "__Yuoki__/graphics/icons/pipe-v.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
		max_health = 50,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1,
			pipe_connections =
			{
				{ position = {0, -1} },
				--{ position = {1, 0} },
				{ position = {0, 1} },
				--{ position = {-1, 0} }
			},
		},
		pictures = pipepictures_hv(),
		horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
	},

	-- PipeBuffer also flow restriction test
	{
		type = "storage-tank",
		name = "y-valve-direction-buffer",
		icon = "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 3, result = "y-valve-direction-buffer"},
		max_health = 150,
		corpse = "small-remnants",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 5,						
			base_level = 0,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				
				{ type="input", position = {-1, 0},},
				{ type="output", position = { 1, 0} },
				--{ position = {1, 2} },
				--{ position = {-2, -1} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={
			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/pressure_pipe_shift.png",
					priority = "high",
					frames = 4,
					width = 32,
					height = 64,
					shift = {0.0, 0.15}
				}			
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 16,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 0			
	},

	{
		type = "pipe",
		name = "y-pipe-hc",
		icon = "__Yuoki__/graphics/icons/pipe-hc.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-pipe-hc"},
		max_health = 80, corpse = "small-remnants",
		resistances ={{type = "fire",percent = 50,}},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 0.8,
			base_level = 0,
			pipe_connections =
			{
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = pipepictures_hv(),
		working_sound =
		{
			sound = {
				{
					filename = "__base__/sound/pipe.ogg",
					volume = 0.65
				},
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
	},

	{
		type = "pipe-to-ground",
		name = "y-pipe-to-ground-hc",
		icon = "__Yuoki__/graphics/icons/pipe-tg-hc.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-pipe-to-ground-hc"},
		max_health = 80,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 80
			}
		},
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 0.8,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {0, -1} },
				{
					position = {0, 1},
					max_underground_distance = 16,
				}
			},
		},
		underground_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "high",
			width = 32,
			height = 32
		},
		pictures =
		{
			up =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/hc-pipe-to-ground-up.png",
				priority = "high",
				width = 44,
				height = 32 --, shift = {0.10, -0.04}
			},
			down =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/hc-pipe-to-ground-down.png",
				priority = "high",
				width = 40,
				height = 32 --, shift = {0.05, 0}
			},
			left =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/hc-pipe-to-ground-left.png",
				priority = "high",
				width = 32,
				height = 42 --, shift = {-0.12, 0.1}
			},
			right =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/hc-pipe-to-ground-right.png",
				priority = "high",
				width = 32,
				height = 40 --, shift = {0.1, 0.1}
			},
		}
	},
	{
		type = "pipe",
		name = "y-pipe-ec",
		icon = "__Yuoki__/graphics/icons/pipe-ec.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-pipe-ec"},
		max_health = 100, corpse = "small-remnants",
		resistances ={{type = "fire",percent = 50,}},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1.5,
			pipe_connections =
			{
				{ position = {0, -1} },
				{ position = {1, 0} },
				{ position = {0, 1} },
				{ position = {-1, 0} }
			},
		},
		pictures = pipepictures_hv(),
		working_sound =
		{
			sound = {
				{
					filename = "__base__/sound/pipe.ogg",
					volume = 0.65
				},
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
	},

	{
		type = "pipe-to-ground",
		name = "y-pipe-to-ground-ec",
		icon = "__Yuoki__/graphics/icons/pipe-tg-ec.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-pipe-to-ground-ec"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1.5,
			base_level = 0,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {0, -1} },
				{
					position = {0, 1},
					max_underground_distance = 28,
				}
			},
		},
		underground_sprite =
		{
			filename = "__core__/graphics/arrows/underground-lines.png",
			priority = "high",
			width = 32,
			height = 32
		},
		pictures =
		{
			up =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/ec-pipe-to-ground-up.png",
				priority = "high",
				width = 44,
				height = 32 --, shift = {0.10, -0.04}
			},
			down =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/ec-pipe-to-ground-down.png",
				priority = "high",
				width = 40,
				height = 32 --, shift = {0.05, 0}
			},
			left =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/ec-pipe-to-ground-left.png",
				priority = "high",
				width = 32,
				height = 42 --, shift = {-0.12, 0.1}
			},
			right =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/ec-pipe-to-ground-right.png",
				priority = "high",
				width = 32,
				height = 40 --, shift = {0.1, 0.1}
			},
		}
	},
	
	
	
	{
		type = "storage-tank",
		name = "y-tank-1000",
		icon = "__Yuoki__/graphics/icons/tank-1000-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 3, result = "y-tank-1000"},
		max_health = 150,
		corpse = "small-remnants",
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fluid_box =
		{
			base_area = 400,
			base_level = 0,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {  -0.5,  1.5} },
				{ position = {   0.5, -1.5} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/tank_35n.png",
					priority = "high",
					frames = 2,
					width = 96,
					height = 96,
					shift = { 0.31, 0.0 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,
			
		},
	},
	{
		type = "storage-tank",
		name = "y-tank-4500",
		icon = "__Yuoki__/graphics/entity/tank-4500-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 3, result = "y-tank-4500"},
		max_health = 250,
		corpse = "small-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			base_area = 900, base_level = -1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {{ position = {  0,  2} },{ position = {  0, -2} },{ position = {  2,  0} },{ position = { -2,  0} },},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/tank-4500-e.png",
					priority = "high",
					frames = 1, width = 128, height = 112,
					shift = { 0.315, 0.15 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,				
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,			
		},
	},
	{
		type = "storage-tank",
		name = "y-tank-8000",
		icon = "__Yuoki__/graphics/entity/tank-8000-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 3, result = "y-tank-8000"},
		max_health = 300,
		corpse = "small-remnants",
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
		fluid_box =
		{
			base_area = 1500, base_level = -1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {{ position = {  2.5, -1.5} },{ position = {  1.5, -2.5} },{ position = { -1.5,  2.5} },{ position = { -2.5,  1.5} },},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/tank-15kn-s.png",
					priority = "high",
					frames = 2,
					width = 190,
					height = 180,
					shift = { 0.8, -0.15 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,				
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,			
		},
	},
	
	{
		type = "storage-tank",
		name = "y-tank-24k",
		icon = "__Yuoki__/graphics/entity/tank-48k-icon.png",
		flags = {"placeable-player", "player-creation"}, minable = {hardness = 0.2, mining_time = 3, result = "y-tank-24k"}, corpse = "medium-remnants",
		max_health = 350,		
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			base_area = 5000, base_level = -1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {{ position = {  0,  2} },{ position = {  0, -2} },{ position = {  2,  0} },{ position = { -2,  0} },},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture = {
				sheet={
					filename = "__Yuoki__/graphics/entity/tank-48k-e.png",
					priority = "high",
					frames = 1, width = 128, height = 112,
					shift = { 0.315, 0.15 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,				
		working_sound = { sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 }, apparent_volume = 1.5, },
	},
	
	{
		type = "storage-tank",
		name = "y_flowcheck_10",
		icon = "__Yuoki__/graphics/icons/flow_indicator_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 3, result = "y_flowcheck_10"},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			base_area = 1,
			base_level = 0,			
			pipe_connections =
			{
				{ position = {  -1,  0} },
				{ position = {   1,  0} },
				{ position = {   0, -1} },
				{ position = {   0,  1} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={
			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/flow_indicator.png",
					priority = "high",
					frames = 1,
					width = 64,
					height = 64,
					shift = { 0.25, -0.125 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			
		},
		circuit_wire_max_distance = 7.5,
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,
			
		},
	},	
	
})	
