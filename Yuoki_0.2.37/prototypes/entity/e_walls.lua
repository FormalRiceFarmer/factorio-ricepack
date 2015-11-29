data:extend({	 
	{
		type = "wall",
		name = "y-mud-wall",
		icon = "__Yuoki__/graphics/icons/m_wall_icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-mud-wall"},
		max_health = 480,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		resistances =
		{
			{
				type = "physical",
				decrease = 3,
				percent = 40
			},
			{
				type = "explosion",
				decrease = 10,
				percent = 30
			},
			{
				type = "fire",
				percent = 100
			},
			{
				type = "laser",
				percent = 70
			}
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw_single.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw-ns1.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				},
				
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw-we1.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-clu.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-cru.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-td.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-el.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-er.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			}
		}
	},
	
	{
		type = "wall",
		name = "y-rare-wall-basic",
		icon = "__Yuoki__/graphics/icons/rareore-wall-icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-rare-wall-basic"},
		max_health = 820,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		resistances =
		{
			{
				type = "physical",
				decrease = 4,
				percent = 50,
			},
			{
				type = "explosion",
				decrease = 5,
				percent = 50,
			},
			{
				type = "fire",
				percent = 100
			},
			{
				type = "laser",
				percent = 70
			}
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/rare1-wall.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-ns.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, -0.15}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-we.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_cr.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_cl.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_tu.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-end-left.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-end-right.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			}
		}
	},	
	
	
	{
		type = "wall",
		name = "y-rare-wall-adv",
		icon = "__Yuoki__/graphics/icons/rare2-wall-icon2.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-rare-wall-adv"},
		max_health = 1200,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		
		resistances =
		{
			{
				type = "physical",
				decrease = 5,
				percent = 50,
			},
			{
				type = "explosion",
				decrease = 5,
				percent = 50,
			},
			{
				type = "fire",
				percent = 90,
			},
			{
				type = "laser",
				percent = 70,
			}
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_single.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_ns.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_we.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_cr.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_cl.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_tu.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_el.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_er.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			}
		}
	},	
	


	{
		type = "wall",
		name = "y-wall-forcefield",
		icon = "__Yuoki__/graphics/icons/wall-forcefield-icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-wall-forcefield"},
		max_health = 700,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		
		attack_reaction =
		{
			{
				---- how far the mirroring works
				range = 2,
				---- what kind of damage triggers the mirroring
				---- if not present then anything triggers the mirroring
				damage_type = "physical",
				---- caused damage will be multiplied by this and added to the subsequent damages
				reaction_modifier = 0.2,
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							---- always use at least 0.1 damage
							damage = {amount = 0.1, type = "physical"}
						}
					}
				},
			}
		},
		
		
		resistances =
		{
			{
				type = "physical",
				decrease = 5,
				percent = 60,
			},
			{
				type = "explosion",
				decrease = 5,
				percent = 60,
			},
			{
				type = "fire",
				percent = 50,
			},
		},
		pictures =
		{
			single ={{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_single.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_ns.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_we.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_cr.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_cl.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_single.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_el.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_er.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			}
		}
	},			

	{
		type = "electric-turret",
		name = "y-wall-forcefield-a",
		icon = "__Yuoki__/graphics/icons/wall-forcefield-a-icon.png",		
		flags = { "placeable-player", "placeable-enemy", "player-creation"},
		minable = { mining_time = 0.5, result = "y-wall-forcefield-a" },
		max_health = 700,
		corpse = "small-remnants",
		collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
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
			buffer_capacity = "1800kJ",
			input_flow_limit = "800kW",
			drain = "2kW",
			usage_priority = "primary-input"
		},
		
		folded_animation = (function()
		local res = util.table.deepcopy(y_vds_a)
		res.frame_count = 1
		res.line_length = 1
		return res
		end)(),
		
		preparing_animation = y_vds_a,
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
			filename = "__Yuoki__/graphics/entity/wall-forcefield-ae.png",
			priority = "medium", width = 48, height = 48, shift = {0.1, 0},
			direction_count = 1,
			frame_count = 1,
			line_length = 1,
			axially_symmetrical = false,
			
		},
		
		folding_animation = (function()
		local res = util.table.deepcopy(y_vds_a)
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
			damage = 1.0,
			projectile_center = {0, 0},
			projectile_creation_distance = 0.2,
			range = 5,
			sound = {{ filename = "__base__/sound/fight/laser-1.ogg", volume = 0.1 }},
			ammo_type =
			{
				type = "projectile",
				category = "laser-turret",
				energy_consumption = "200kJ",
				action =
				{
					{
						type = "direct",
						action_delivery =
						{
							{
								type = "projectile",
								projectile = "laser",
								starting_speed = 0.25,
							}
						}
					}
				}
			},
		},
		order="a";
	},		

	{
		type = "wall",
		name = "y_wall22_hardic",
		icon = "__Yuoki__/graphics/entity/walls/wall_hardic_icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		minable = {mining_time = 1, result = "y_wall22_hardic"},
		max_health = 4000,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		resistances =
		{
			{ type = "physical", decrease = 7, percent = 50, },
			{ type = "explosion", decrease = 5, percent = 50, },
			{ type = "fire", percent = 100 },
			{ type = "laser", percent = 70 }
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			}
		}
	},	
	
	

})