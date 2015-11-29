	gatling_turret_extension =
	{
		filename = "__Yuoki__/graphics/entity/gatling_turret/gatling_fold.png",
		priority = "medium",
		width = 72,
		height = 72,
		direction_count = 4,
		frame_count = 1,
		axially_symmetrical = false,
		shift = { 0, -0.625},
	}

	biggun_turret_extension =
	{
		filename = "__Yuoki__/graphics/entity/biggun_turret/biggun_fold.png",
		priority = "medium",
		width = 80,
		height = 72,
		direction_count = 4,
		frame_count = 1,
		axially_symmetrical = false,
		shift = { 0, -0.625},
	}
	y_vds_a =
	{
		filename = "__Yuoki__/graphics/entity/wall-forcefield-ae.png",
		priority = "medium", width = 48, height = 48, shift = {0.1, 0},
		direction_count = 1,
		frame_count = 1,
		line_length = 1,
		axially_symmetrical = false,				
	}
	y_weapon_ztt =
	{
		filename = "__Yuoki__/graphics/entity/defense/zzt-place.png",
		priority = "medium", width = 160, height = 160, shift = {0.31, -0.75},
		--filename = "__Yuoki__/graphics/entity/y_weapon-ztt-c.png",
		--priority = "medium", width = 112, height = 112, shift = {0.35, 0.2},
		direction_count = 8,
		frame_count = 1,
		line_length = 1,
		axially_symmetrical = false,				
	}
	y_laser2x2 =
	{
		filename = "__Yuoki__/graphics/entity/defense/laser22f12-h-place.png",
		priority = "medium",
		width = 128,
		height = 128,
		direction_count = 8,
		frame_count = 1,
		axially_symmetrical = false,
		shift = { 0.1875, -0.625},
	}
	

data:extend({	 
		
		{
			type = "electric-turret",
			name = "y-weapon-ztt",
			icon = "__Yuoki__/graphics/entity/defense/zzt-icon.png",		
			flags = { "placeable-player", "placeable-enemy", "player-creation"},
			minable = { mining_time = 0.5, result = "y-weapon-ztt" },
			max_health = 6000,
			corpse = "small-remnants",
			collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
			selection_box = {{ -1.4, -1.4}, {1.4, 1.4}},
			rotation_speed = 0.01,
			preparing_speed = 0.05,
			dying_explosion = "medium-explosion",
			folding_speed = 0.05,
			resistances =
			{
				{ type = "physical", decrease = 5, percent = 60, },
				{ type = "explosion", decrease = 5, percent = 60, },
				{ type = "fire", percent = 50, },
			},			
			
			energy_source =
			{
				type = "electric",
				buffer_capacity = "30MJ",
				input_flow_limit = "6MW",
				drain = "2kW",
				usage_priority = "primary-input"
			},
			
			folded_animation = (function()
			local res = util.table.deepcopy(y_weapon_ztt)
			res.frame_count = 1
			res.line_length = 1
			return res
			end)(),
			
			preparing_animation = y_weapon_ztt,
			--[[
			preparing_animation =
			{
				filename = "__Yuoki__/graphics/entity/wall-forcefield-ae.png",
				priority = "medium", width = 48, height = 48, shift = {0.075, 0},
				direction_count = 1,
				frame_count = 1,
				line_length = 1,
				axially_symmetrical = false,
				
			},
			]]
			prepared_animation =
			{
				filename = "__Yuoki__/graphics/entity/defense/zzt-sheet.png",
				priority = "medium", width = 160, height = 160, shift = {0.31, -0.75},
				direction_count = 64,
				frame_count = 1,
				line_length = 8,
				axially_symmetrical = false,
				
			},
			
			folding_animation = (function()
			local res = util.table.deepcopy(y_weapon_ztt)
			res.run_mode = "backward"
			return res
			end)(),
			
			--[[
			base_picture =
			{
				filename = "__Yuoki__/graphics/entity/wall-forcefield-ae.png",
				priority = "high", width = 48, height = 48, shift = {0.075, 0}			
			},
			]]
			attack_parameters =
			{
				type = "projectile",
				damage_modifier = 4,

				ammo_category = "electric",
				cooldown = 5,
				damage = 3,
				projectile_center = {0, 0.5},
				projectile_creation_distance = 0.75,
				range = 35,
				sound = {{ filename = "__base__/sound/fight/laser-1.ogg", volume = 0.1 }},
				ammo_type =
				{
					type = "projectile",
					category = "laser-turret",
					energy_consumption = "750KJ",
					action =
					{
						{
							type = "direct",
							action_delivery =
							{
								{
									type = "projectile",
									projectile = "cyan-laser",
									starting_speed = 0.9,
								}
							}
						}
					}
				},
			},
			order="a";
		},	
		
		{
			type = "electric-turret",
			name = "y-laser-def-s4",
			icon = "__Yuoki__/graphics/entity/defense/laser2x2_r16n-icon.png",		
			flags = { "placeable-player", "placeable-enemy", "player-creation"},
			minable = { mining_time = 0.5, result = "y-laser-def-s4" },
			max_health = 2800,
			corpse = "small-remnants",
			collision_box = {{ -0.9, -0.9}, {0.9, 0.9}},
			selection_box = {{ -1.0, -1.0}, {1.0, 1.0}},
			rotation_speed = 0.01,
			preparing_speed = 0.05,
			dying_explosion = "medium-explosion",
			folding_speed = 0.05,
			resistances =
			{
				{ type = "physical", decrease = 5, percent = 60, },
				{ type = "explosion", decrease = 5, percent = 60, },
				{ type = "fire", percent = 50, },
			},						
			energy_source =
			{									
				type = "electric",
				buffer_capacity = "7MJ",
				input_flow_limit = "1000kW",
				drain = "12kW",
				usage_priority = "primary-input"
			},
			
			--energy_usage = "350kW",
			
			folded_animation = (function()
			local res = util.table.deepcopy(y_laser2x2)
			res.frame_count = 1
			res.line_length = 1
			return res
			end)(),
			preparing_animation = y_laser2x2,
			
			prepared_animation =
			{
				filename = "__Yuoki__/graphics/entity/defense/laser22f12-h-sheet.png",
				priority = "medium", width = 128, height = 128, shift = { 0.1875, -0.625},
				direction_count = 64,
				frame_count = 1,
				line_length = 8,
				axially_symmetrical = false,
			},
			
			folding_animation = (function()
			local res = util.table.deepcopy(y_laser2x2)
			res.run_mode = "backward"
			return res
			end)(),
			
			attack_parameters =
			{
				type = "projectile",
				damage_modifier = 3,
				ammo_category = "electric",
				cooldown = 12,
				damage = 6,
				projectile_center = {0, 0},
				projectile_creation_distance = 0.2,				
				range = 26,
				sound = {{ filename = "__base__/sound/fight/laser-1.ogg", volume = 0.1 }},
				ammo_type =
				{
					type = "projectile",
					category = "laser-turret",
					energy_consumption = "300KJ",
					action =
					{
						{
							type = "direct",
							action_delivery =
							{
								{
									type = "projectile",
									projectile = "white-laser",
									starting_speed = 0.35,
								},
							}							
						}
					}
				},
			},
			order="a";
		},	

		
		{
			type = "ammo-turret",
			name = "y-gun-turret-mk2",
			icon = "__Yuoki__/graphics/entity/gatling_turret/gatling_icon2.png",
			flags = {"placeable-player", "player-creation"},
			minable = {mining_time = 0.5, result = "y_turret_gun2f12"},
			max_health = 400,
			resistances =
			{
				{ type = "physical", decrease = 4, percent = 50, },
				{ type = "explosion", decrease = 4, percent = 50, },
				{ type = "fire", percent = 50, },
			},						
			corpse = "small-remnants",
			collision_box = {{-0.29, -0.29 }, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5 }, {0.5, 0.5}},
			rotation_speed = 0.020, -- 0.015 orginal
			preparing_speed = 0.08,
			folding_speed = 0.08,
			dying_explosion = "medium-explosion",
			inventory_size = 2,
			automated_ammo_count = 30,
			
			folded_animation = (function()
			local res = util.table.deepcopy(gatling_turret_extension)
			res.frame_count = 1
			res.line_length = 1
			return res
			end)(),
			preparing_animation = gatling_turret_extension,
			
			prepared_animation =
			{
				filename = "__Yuoki__/graphics/entity/gatling_turret/gatling_phased.png",
				priority = "medium",
				width = 72,
				height = 72,
				direction_count = 64,
				frame_count = 1,
				line_length = 16,
				axially_symmetrical = false,
				shift = { 0, -0.625},			
			},
			
			folding_animation = (function()
			local res = util.table.deepcopy(gatling_turret_extension)
			res.run_mode = "backward"
			return res
			end)(),
			
			--[[
			base_picture =
			{
				filename = "__Yuoki__/graphics/entity/gatling_turret/gun-turret-base.png",
				priority = "high",
				width = 43,
				height = 28,
				shift = { 0.0, 0.2 }
			},
			]]
			
			attack_parameters =
			{
				type="projectile",
				ammo_category = "bullet",
				cooldown = 6,
				projectile_center = {0, 0.6},
				projectile_creation_distance = 1.2,
				damage_modifier = 2,
				shell_particle = 
				{
					name = "shell-particle",
					direction_deviation = 0.1,
					speed = 0.1,
					speed_deviation = 0.03,
					center = {0, 0.6},
					creation_distance = 0.6,
					starting_frame_speed = 0.2,
					starting_frame_speed_deviation = 0.1
				},
				range = 25,
				sound =
				{
					{
						filename = "__base__/sound/railgun.ogg",
						volume = 0.3
					}
				}
			}
		},
		{
			type = "ammo-turret",
			name = "y-gun-turret-mk3",
			icon = "__Yuoki__/graphics/entity/biggun_turret/biggun_icon.png",
			flags = {"placeable-player", "player-creation"},
			minable = {mining_time = 0.5, result = "y_turret_gun1f12"},
			max_health = 600,
			resistances =
			{
				{ type = "physical", decrease = 4, percent = 60, },
				{ type = "explosion", decrease = 4, percent = 60, },
				{ type = "fire", percent = 50, },
			},						
			corpse = "small-remnants",
			collision_box = {{-0.29, -0.29 }, {0.29, 0.29}},
			selection_box = {{-0.5, -0.5 }, {0.5, 0.5}},
			rotation_speed = 0.020, -- 0.015 orginal
			preparing_speed = 0.08,
			folding_speed = 0.08,
			dying_explosion = "medium-explosion",
			inventory_size = 3,
			automated_ammo_count = 30,
			
			folded_animation = (function()
			local res = util.table.deepcopy(biggun_turret_extension)
			res.frame_count = 1
			res.line_length = 1
			return res
			end)(),
			preparing_animation = biggun_turret_extension,
			
			prepared_animation =
			{
				filename = "__Yuoki__/graphics/entity/biggun_turret/biggun_anim_e.png",
				priority = "medium",
				width = 80,
				height = 72,
				direction_count = 64,
				frame_count = 1,
				line_length = 16,
				axially_symmetrical = false,
				shift = { 0, -0.625},			
			},
			
			folding_animation = (function()
			local res = util.table.deepcopy(biggun_turret_extension)
			res.run_mode = "backward"
			return res
			end)(),
			--[[
			base_picture =
			{
				filename = "__Yuoki__/graphics/entity/gatling_turret/gun-turret-base.png",
				priority = "high",
				width = 43,
				height = 28,
				shift = { 0.0, 0.2 }
			},
			]]
			
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 6,
				projectile_center = {0, 0.6},
				projectile_creation_distance = 1.2,
				damage_modifier = 2,
				shell_particle = 
				{
					name = "shell-particle",
					direction_deviation = 0.1,
					speed = 0.1,
					speed_deviation = 0.03,
					center = {0, 0.6},
					creation_distance = 0.6,
					starting_frame_speed = 0.2,
					starting_frame_speed_deviation = 0.1
				},
				range = 30,
				sound =
				{
					{
						filename = "__base__/sound/railgun.ogg",
						volume = 0.3
					}
				}
			}
		},		
	})
