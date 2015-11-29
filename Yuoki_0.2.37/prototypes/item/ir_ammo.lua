data:extend(
{
	-- recipes
	{
		type = "recipe",
		name = "y-bullet-case-recipe",		
		category = "yuoki-formpress-recipe",
		enabled = "true",
		energy_required = 2,
		ingredients = {{"y-pure-copper", 1},{"y-refined-yres1", 1},},
		result = "y-bullet-case",		
		result_count=7,
		subgroup = "y-ammo",	
		order = "a-a",
	},		
	{
		type = "recipe",
		name = "y-ammo-acid-medium-recipe",
		category = "crafting-with-fluid",
		enabled = "true",
		energy_required = 3,
		ingredients = {{"y-bullet-case", 1},{"copper-plate", 1},{type="fluid", name="sulfuric-acid", amount=0.2 },},
		result = "y-ammo-acid-2",
		subgroup = "y-ammo",	
		order="a-b",
	},		
	{
		type = "recipe",
		name = "y-ammo-hohlspitz-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients = {{"y-bullet-case", 1},{"copper-plate", 1}},
		result = "y-ammo-hohlspitz",
		subgroup = "y-ammo",	
		order="a-c",
	},
	{
		type = "recipe",
		name = "y-ammo-explosiv-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients = {{"y-bullet-case", 1},{"y-richdust", 2},},
		result = "y-ammo-explosiv",
		subgroup = "y-ammo",	
		order="a-d",
	},
	{
		type = "recipe",
		name = "y-ammo-poison-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients ={{"y-bullet-case", 1},{"copper-plate", 1},{"y-toxic-dust", 8}},
		result = "y-ammo-poison",
		subgroup = "y-ammo",	
		order="a-e",
	},
	{
		type = "recipe",
		name = "y-ammo-biggun-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients ={{"y-bullet-case", 1},{"y-refined-yres1", 2},},
		result = "y-ammo-biggun",
		subgroup = "y-ammo",	
		order="a-f",
	},
	{
		type = "recipe",
		name = "y-ammo-krakon-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients ={{"y-bullet-case", 1},{"y-crush-yres2", 1},},
		result = "y-ammo-krakon",
		subgroup = "y-ammo",	
		order="a-g",
	},
	
	
	-- ammo
	{
		type = "item",
		name = "y-bullet-case",
		icon = "__Yuoki__/graphics/icons/shell-case.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",		
		subgroup = "y-ammo",
		order = "a[ammo]-a[case]",
		stack_size = 200,  default_request_amount = 40, 
	},
				
	{
		type = "ammo",
		name = "y-ammo-acid-2",
		icon = "__Yuoki__/graphics/icons/ammo_poison.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 8 , type = "acid"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order = "a[ammo]-b[acid]-c[size]",
		stack_size = 200, default_request_amount = 50, 
	},

	{
		type = "ammo",
		name = "y-ammo-hohlspitz",
		icon = "__Yuoki__/graphics/icons/ammo_fire.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 6 , type = "physical"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="a[ammo]-b[hohl]-h",
		stack_size = 200, default_request_amount = 50, 
	},

	{
		type = "ammo",
		name = "y-ammo-explosiv",
		icon = "__Yuoki__/graphics/icons/ammo_wot.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 11 , type = "explosion"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="a[ammo]-b[explosiv]-e",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-poison",
		icon = "__Yuoki__/graphics/icons/ammo_silver.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 7.5 , type = "poison"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="a[ammo]-b[poison]-p",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-biggun",
		icon = "__Yuoki__/graphics/icons/ammo_std.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 7 , type = "fire"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="a[ammo]-b[a]",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-krakon",
		icon = "__Yuoki__/graphics/icons/ammo_wolfram.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-gunshot"
						},
						{
							type = "damage", damage = { amount = 9 , type = "impact"},							
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="a[ammo]-b[physical]-c[krakon]",
		stack_size = 200, default_request_amount = 50, 		
	},		
	
})