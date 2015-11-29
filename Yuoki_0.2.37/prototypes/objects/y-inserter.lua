data:extend(
{


	{
		type = "recipe",
		name = "y-inserter-s4-recipe",
		enabled = "true",
		ingredients =
		{
			{"long-handed-inserter", 1},
			{"y-chip-1", 1},      
		},
		result = "y-inserter-s4",
	},

	{
		type = "item",
		name = "y-inserter-s4",
		icon = "__base__/graphics/icons/long-handed-inserter.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		--subgroup = "y-storage",	
		subgroup = "y-tools",		
		order = "c[long-handed-inserter]",
		place_result = "y-inserter-s4",
		stack_size = 50,
	},

	{
		type = "inserter",
		name = "y-inserter-s4",
		icon = "__base__/graphics/icons/long-handed-inserter.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "long-handed-inserter"},
		max_health = 50,
		corpse = "small-remnants",
		resistances = 
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 4.2},
		energy_per_movement = 5000,
		energy_per_rotation = 5000,
		rotation_speed = 0.02,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.7kW"
		},
		extension_speed = 0.04,
		fast_replaceable_group = "inserter",
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_picture =
		{
			filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 46,
				height = 46,
				filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png"
			}
		}
	},

})