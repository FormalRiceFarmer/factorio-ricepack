data:extend(
{
	
	{
		type = "recipe",
		name = "y-coal-brikett-recipe",
		enabled = true,	
		energy_required = 4,
		category = "yuoki-formpress-recipe",
		ingredients =
		{
			{"y-coal-dust", 3},
		},
		result = "y-coal-brikett",
		result_count = 1,	
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "coal-b",
		icon = "__Yuoki__/graphics/icons/coal_brikett_32.png",    		
	},

	{
		type = "recipe",
		name = "y-coal-stack-recipe",
		enabled = true,	
		energy_required = 3,
		category = "yuoki-formpress-recipe",
		ingredients =
		{
			{"y-coal-brikett", 3},
		},
		result = "y-coal-stack",
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "coal-s",
		icon = "__Yuoki__/graphics/icons/coal_briketts_2ed.png",    
		result_count = 1,	
	},

	-- new-coal-things 215-0103
	{
		type = "recipe",
		name = "y-coaldust-recipe",
		enabled = true,	energy_required = 2, category = "y-crushing-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s", icon = "__Yuoki__/graphics/icons/coal-dust.png",    		
		ingredients ={{"coal", 4},}, result = "y-coal-dust", result_count = 6, 
	},
	{
		type = "recipe",
		name = "y-coaldust-mixing-recipe",
		enabled = true,	energy_required = 2, category = "yuoki-formpress-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s", icon = "__Yuoki__/graphics/icons/mix-fuel.png",    		
		ingredients ={{"y-coal-dust", 2},{"y-crush-yres2", 2},}, result = "y-mixed-fuel", result_count = 1, 
	},
	{
		type = "recipe",
		name = "y-mixfuel-load-recipe",
		enabled = true,	energy_required = 2, category = "yuoki-formpress-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s", icon = "__Yuoki__/graphics/icons/mix-fuel-loaded.png",    		
		ingredients ={{"y-mixed-fuel", 1},{"y-refined-yres2", 1},}, result = "y-mixed-fuel-loaded", result_count = 1, 
	},

	{
		type = "recipe",
		name = "y-wooden-brikett-recipe",
		enabled = true,	
		energy_required = 3,
		ingredients =
		{
			{"raw-wood", 4},
		},
		result = "y-wooden-brikett",
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "wooden",
		icon = "__Yuoki__/graphics/icons/wood_brikett_32.png",    
		result_count = 2	
	},

	{
		type = "recipe",
		name = "y-wooden-brikett-packed-recipe",
		enabled = true,	
		energy_required = 4,
		ingredients =
		{
			{"y-wooden-brikett", 4},
		},
		result = "y-wooden-brikett-packed",
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "wooden",
		icon = "__Yuoki__/graphics/icons/wood-pellets.png",    
		result_count = 1	
	},	
	
	{
		type = "recipe",
		name = "y-digfdirt-recipe",		
		enabled = "true", energy_required = 4, ingredients = {}, result = "y-dirt", result_count = 10, subgroup = "y_line3", category="yuoki-raw-material-recipe",		
	},	
	
	{
		type = "recipe",
		name = "y-alien-artifact-recipe",		
		energy_required = 6,
		ingredients = {
			{"y-crystal2",12}, 
			{"science-pack-1",2}, 
			{"science-pack-2",6}, 
			{"science-pack-3",4}, 			
		},			
		subgroup = "y_line4",
		result = "alien-artifact",
		enabled = "true",		
		result_count = 1,
		order="z-a",
	},		
	
	{
		type = "recipe",
		name = "y-release-cwater",
		category = "yuoki-formpress-recipe",				
		energy_required = 1,
		ingredients = {
			{type="fluid", name="y-con_water", amount=48 } 			
		},			
		results=
		{
			{type="item", name="y-c_mud", amount=4, },			
			{type="item", name="y-toxic-dust", amount=1, },			
		},		
		enabled = "true",				
		icon = "__Yuoki__/graphics/icons/c_mud_icon.png",
		group = "yuoki",
		subgroup = "y_line3",	
	},	
	
	{
		type = "recipe",
		name = "y-pressed_dry_mud-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-c_mud", 4},}, 
		result = "y-dry_mud",
		result_count = 1,
		icon = "__Yuoki__/graphics/icons/dry_mud_icon.png",
		category = "yuoki-formpress-recipe",		
		group = "yuoki",
		subgroup = "y_line4",
	},

	{
		type = "recipe",
		name = "y-filtering-dust-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-c_mud", 40},}, 
		results=
		{
			{type="item", name="y-crush-yres1", amount=1, },			
			{type="item", name="y-crush-yres2", amount=1, },			
		},		
		icon = "__Yuoki__/graphics/icons/bg-dusts.png",
		category = "yuoki-formpress-recipe",		
		group = "yuoki",
		subgroup = "y_line3",
	},

	
	
	
})