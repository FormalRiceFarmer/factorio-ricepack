data:extend(
{
	-- stargate trade recipes
	--[[
	{
		type = "recipe",
		name = "y-sgtrade1a-recipe", order="t1a",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"small-lamp", 1},}, 
		result = "y-richdust",
		result_count = 5,
		subgroup = "y-stargate-1", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-1.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade1b-recipe", order="t1b",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"boiler", 1},}, 
		result = "y-richdust",
		result_count = 6,
		subgroup = "y-stargate-1", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-1.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade1c-recipe", order="t1c",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"steel-furnace", 1},}, 
		results=
		{
			{type="item", name="y-unicomp-a2", amount=4, },			
			{type="item", name="y-richdust", amount=10, },			
		},		
		subgroup = "y-stargate-1", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-1.png",
	},		
	
	{
		type = "recipe",
		name = "y-sgtrade2a-recipe", order="t2a",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"steam-turbine", 1},}, 
		results=
		{
			{type="item", name="y-unicomp-a2", amount=5, },			
			{type="item", name="y-richdust", amount=15, },			
		},		
		subgroup = "y-stargate-2", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-2.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade2b-recipe", order="t2b",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"notfall-generator-s1", 1},}, 
		result = "y-richdust",
		result_count = 12,
		subgroup = "y-stargate-2", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-2.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade2c-recipe", order="t2c",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"steam-turbine-mk3", 1},}, 
		results=
		{
			{type="item", name="y-unicomp-a2", amount=9, },			
			{type="item", name="y-richdust", amount=14, },			
		},		
		subgroup = "y-stargate-2", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-2.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade2d-recipe", order="t2d",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"steam-turbine-mk2", 1},}, 
		results=
		{
			{type="item", name="y-unicomp-a2", amount=3, },			
			{type="item", name="y-richdust", amount=8, },			
		},		
		subgroup = "y-stargate-2", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-2.png",
	},			
	{
		type = "recipe",
		name = "y-sgtrade3-recipe", order="t3a",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"steam-engine", 2}}, 
		result = "y-unicomp-a2",
		result_count = 3,
		subgroup = "y-stargate-3", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-3.png",
	},		
	{
		type = "recipe",
		name = "y-sgtrade4-recipe", order="t4a",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"medium-electric-pole", 4}}, 
		result = "y-unicomp-a2",
		result_count = 3,
		subgroup = "y-stargate-4", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/trade/trade-4.png",
	},	
	]]	
		
	-- fame trade for fuel-cell
	{
		type = "recipe",
		name = "y-sgtrade-ic1-recipe", order="u1",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-fame", 1},}, 
		result = "y-fuel-cell-c",
		result_count = 1,
		subgroup = "y-stargate-r", 
		category = "yuoki-stargate-recipe",
		icon = "__Yuoki__/graphics/icons/fuel_cell_c.png",
	},		
		
	-- fuel-cell-c	
	{ type = "item", name = "y-fuel-cell-c", icon = "__Yuoki__/graphics/icons/fuel_cell_c.png", flags = {"goes-to-main-inventory"}, subgroup = "y-energy", fuel_value = "10GJ", stack_size = 500, default_request_amount = 10,},	
	-- fame recipe
	{ type = "recipe", name = "y-fame-recipe", order="x1", energy_required = 1800.0, enabled = "true", ingredients = {},  result = "y-fame", result_count = 1, subgroup = "y-tools", category = "yuoki-fame-recipe",},						
	-- fame	
	{ type = "item", name = "y-fame", icon = "__Yuoki__/graphics/icons/fame-icon.png", flags = {"goes-to-main-inventory"}, subgroup = "y-stargate-f", stack_size = 10000, default_request_amount = 10,},

	
	-- stargate recipe
	{
		type = "recipe",
		name = "y-stargate-recipe", order="a",
		energy_required = 5.0,
		enabled = "true",
		ingredients = {{"y-accumulator-b-tx", 1},{"y-alien-infuser", 1},{"y-ups-flywheel-b", 1}}, 
		result = "y-stargate",
		result_count = 1,					
		group = "yuoki",
	},				
	-- stargate itself
	{ type = "item", name = "y-stargate", place_result = "y-stargate", icon = "__Yuoki__/graphics/icons/laika-gate-icon.png", flags = {"goes-to-main-inventory"}, group = "Yuoki", subgroup = "y-tech", stack_size = 3,},			

	
	-- 40-Users recipe
	{ type = "recipe", name = "y-fame-gen-recipe", order="a", energy_required = 5.0, enabled = "true", ingredients = {{"y-alien-infuser", 1},{"y-ups-flywheel-b", 1},{"y-unicomp-a2",100}},  result = "y-fame-gen", result_count = 1, group = "yuoki",},					
	-- 40-Users
	{ type = "item", name = "y-fame-gen", place_result = "y-fame-gen", icon = "__Yuoki__/graphics/entity/thanks-icon.png", flags = {"goes-to-main-inventory"}, group = "Yuoki", subgroup = "y-tech", stack_size = 6,},			
		
		
})