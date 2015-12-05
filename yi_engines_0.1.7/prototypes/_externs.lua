data:extend({


	-- Solid Fuel Engine	
	{
		type = "recipe",
		name = "y-sfe-recipe",
		ingredients = {{"y-basic-t1-mf",3},{"y-bluegear",2},{"iron-plate",4},},
		result = "y-sfe",
		enabled = "true",		
		result_count = 1,
		order="engine",
		subgroup = "yie-engines",
	},
	-- Fluid Fuel Engine	
	{
		type = "recipe",
		name = "y-ffe-recipe",
		ingredients = {{"y-basic-t2-mf",2},{"y-bluegear",6},{"steel-plate",4},},
		result = "y-ffe",
		enabled = "true",		
		result_count = 1,
		order="engine",
		subgroup = "yie-engines",
	},
	-- quantrinum reactor	
	{
		type = "recipe",
		name = "y-quantrinum-reactor-recipe",
		ingredients = {{"y-basic-t2-mf",5},{"y-rare-wall-adv",10}, {"y-accumulator-s-t2",8}, {"y-infused-uca2", 4}},
		result = "y-quantrinum-reactor",
		enabled = "true",		
		result_count = 1,
		order="engine",
		subgroup = "yie-engines",
	},

	-- waste condense 
	{
		type = "recipe",
		name = "y-waste-condense-recipe",
		--category = "yrcat-eg4",				
		enabled = "true",
		energy_required = 1,
		ingredients = {
			{ type="item", name="y-pol-waste", amount=150, },
		},
		results={
			--{ type="item", name="solid-fuel", amount=3, },
			{ type="item", name="y-mixed-fuel", amount=2, },
		},		
		icon = "__yi_engines__/graphics/waste1-icon.png",
		subgroup = "yie-processed",			
	},	
	
	-- quantrinum-charge		
	--[[
	{
		type = "recipe",
		name = "y-quantrinum-charge-recipe",
		category = "yuoki-alien-recipe",				
		enabled = "true",
		energy_required = 30,
		ingredients = {{ "y-quantrinum", 3 }, {"y-iron-case", 1}},
		result = "y-quantrinum-charge",
		icon = "__yi_engines__/graphics/quantrinum-32.png",
		subgroup = "yie-processed",			
	},		
	
	-- process corn to fluid-stage
	{
		type = "recipe",
		name = "ye-corn2fluid-recipe",
		category = "yuoki-formpress-recipe",				
		enabled = "true",
		energy_required = 30,
		ingredients = {
			{ type="fluid", name="y-mechanical-force", amount=0.2 },
			{ type="item", name="ye_corn_a", amount=100 },						
		},
		results={
			{ type="fluid", name="ye_cornoil", amount=20, },
		},		
		icon = "__yi_engines__/graphics/steam-low.png", subgroup = "yie-processed",			
	},	
	]]

})