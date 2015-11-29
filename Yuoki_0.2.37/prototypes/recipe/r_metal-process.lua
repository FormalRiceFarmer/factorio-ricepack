data:extend(
{

	{
		type = "recipe",
		name = "y-infused-uca2-recipe",		
		enabled = "true", energy_required = 60, ingredients = {{"y-unicomp-a2", 1},}, result = "y-infused-uca2", result_count = 1, subgroup = "y-fuel", category="yuoki-alien-recipe",		
	},	
	{
		type = "recipe",
		name = "y-infused-mud-recipe",		
		enabled = "true", energy_required = 16, ingredients = {{"y-dry_mud", 10},}, result = "y-infused-mud", result_count = 10, subgroup = "y-fuel", category="yuoki-alien-recipe",		
	},	

	
	-- first step, crushing unicomp, rawfuel	
	{
		type = "recipe",
		name = "y-crush-unicomp-raw-recipe",
		category = "y-crushing-recipe",
		energy_required = 6,
		ingredients = {
			{"y-res1", 1},			
			{type="fluid", name="water", amount=2},
		},
		results=
		{
			{type="item", name="y-crush-yres1", amount=2, },      	  						
		},
		enabled = "true",
		order = "m-refined-rare4",					
		subgroup = "y_line3",
	},
	
	{
		type = "recipe",
		name = "y-crush-fuel-raw-recipe",
		category = "y-crushing-recipe",
		energy_required = 6,
		ingredients = {
			{"y-res2", 1},			
			{type="fluid", name="water", amount=2},
		},
		results=
		{
			{type="item", name="y-crush-yres2", amount=2, },      	  						
		},
		enabled = "true",
		order = "m-refined-rare4",					
		subgroup = "y_line3",
	},
	
	-- mixing-recipe
	{
		type = "recipe",
		name = "y-mixing-rich-recipe",
		--category = "smelting",		
		enabled = "true", energy_required = 2.0, ingredients = {{"y-crush-yres1", 10}, {"y-crush-yres2", 10}}, result = "y-richdust", result_count = 20, subgroup = "y_line3",
		order="m-refined-",
	},	
	
	-- smeltings
	{
		type = "recipe",
		name = "y-press-richdust-recipe", category = "yuoki-formpress-recipe",		
		icon = "__Yuoki__/graphics/icons/uni-komp-a2-icon.png",
		enabled = "true", energy_required = 4.0, ingredients = {{"y-richdust", 20}}, results = { {type="item", name="y-unicomp-a2", amount=1,}, {type="item", name="y-slag", amount=1,},}, subgroup = "y_line4",
		order="m-refined-x1",
	},	
	{
		type = "recipe",
		name = "y-smelt-richdust-recipe", category = "smelting",		
		icon = "__Yuoki__/graphics/icons/orange-stuff.png",
		enabled = "true", energy_required = 3.0, ingredients = {{"y-richdust", 3}}, results = {{type="item", name="y-orange-stuff", amount=2,},}, subgroup = "y_line4",
		order="m-refined-x2",
	},	
	
	{
		type = "recipe",
		name = "y-smelt-crush-res1-recipe", category = "yuoki-formpress-recipe",		
		icon = "__Yuoki__/graphics/icons/coilsb32.png",
		enabled = "true", energy_required = 4.0, ingredients = {{"y-crush-yres1", 3}}, results = { {type="item", name="y-refined-yres1", amount=1,}, {type="item", name="y-slag", amount=1,},}, subgroup = "y_line4",				
		order="m-refined-",
	},
	{
		type = "recipe",
		name = "y-unicomp-raw-recipe",
		category = "yuoki-formpress-recipe",		
		enabled = "true", energy_required = 8.0, ingredients = {{"y-refined-yres1", 3},}, result = "y-unicomp-raw", result_count = 1, subgroup = "y_line4",				
		order="m-refined-",
	},	
	{
		type = "recipe",
		name = "y-smelt-crush-res2-recipe", category = "yuoki-formpress-recipe",		
		icon = "__Yuoki__/graphics/icons/coilsgru32.png",
		enabled = "true", energy_required = 6.0, ingredients = {{"y-crush-yres2", 2}}, results = { {type="item", name="y-refined-yres2", amount=1,}, {type="item", name="y-slag", amount=1,}, }, subgroup = "y_line4",								
		order="m-refined-",
	},
	{
		type = "recipe",
		name = "y-raw-fuelnium-recipe",
		category = "yuoki-formpress-recipe",		
		enabled = "true", energy_required = 10.0, ingredients = {{"y-refined-yres2", 2},}, result = "y-raw-fuelnium", result_count = 1, subgroup = "y_line4",					
		order="m-refined-",
	},	
	{
		type = "recipe",
		name = "y-fuel-reactor-recipe",
		icon = "__Yuoki__/graphics/icons/reactor-fuel.png", enabled = true, energy_required = 10,
		ingredients ={{"y-raw-fuelnium", 1},{"y-unicomp-raw", 1},{"iron-plate", 3}}, result = "y-fuel-reactor", result_count = 1,			
		subgroup = "y-fuel",				
	},	
		
	-- Quantrinum
	{
		type = "recipe",
		name = "y-quantrinum-recipe",		
		category = "yuoki-wonder-recipe",	
		energy_required = 20, enabled = "true",
		ingredients = {{"y-unicomp-a2", 15},{"y-raw-fuelnium", 12},{"y-unicomp-raw", 12},{"y-crystal2", 8},},
		result="y-quantrinum", result_count=1,
		icon = "__Yuoki__/graphics/icons/quantrinum.png",
		subgroup = "y-tech", order="m-quantrinum",
	},	
	-- Lachnan-Crystal
	{
		type = "recipe",
		name = "y-crystal-cnd-recipe",		
		category = "yuoki-wonder-recipe",	
		energy_required = 30, enabled = "true",
		ingredients = {{"y-pure-iron", 10}, {"y-slag", 40}, {"y-unicomp-a2", 8},{"y-crystal2", 10},},
		result="y-crystal-cnd", result_count=1,
		icon = "__Yuoki__/graphics/icons/crystal_3.png",
		subgroup = "y-tech", order="m-crystal",
	},	
	-- Alien Fuel Cell
	--[[
	{
		type = "recipe",
		name = "y-fuel-alien-recipe",
		icon = "__Yuoki__/graphics/icons/fuel_cell_b.png", enabled = true, energy_required = 30,
		category = "yuoki-wonder-recipe",
		ingredients ={{"y-fuel-reactor", 1},}, result = "y-fuel-alien", result_count = 1,			
		subgroup = "y-energy",				
	},	
	]]
	{
		type = "recipe",
		name = "y-pure-copper-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{"copper-ore",5}, 
			{type="fluid", name="water", amount=8},
		},
		results=
		{
			{type="item", name="y-pure-copper", amount=3 },      	  
			{type="fluid", name="y-con_water", amount=5 }
		},
		enabled = "true",				
		icon = "__Yuoki__/graphics/icons/pure-copper-n.png",
		group = "yuoki", subgroup = "y_line2", order="z-b-copper",		
	},
	
	{
		type = "recipe",
		name = "y-pure-iron-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{"iron-ore",5}, 
			{type="fluid", name="water", amount=8},
		},
		results=
		{
			{type="item", name="y-pure-iron", amount=3 },      	  
			{type="fluid", name="y-con_water", amount=5 }
		},
		enabled = "true",				
		icon = "__Yuoki__/graphics/icons/pure-iron-n.png",		
		group = "yuoki", subgroup = "y_line2", order="z-a-iron",		
	},	
	
	{
		type = "recipe",
		name = "y-refined-copper",
		category = "smelting",
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-pure-copper", 1}},
		result = "copper-plate",
		result_count = 2,
		icon = "__Yuoki__/graphics/icons/pure-copper-n.png",
		order="m-refined-copper",
	},
	{
		type = "recipe",
		name = "y-refined-iron",
		category = "smelting",
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-pure-iron", 1}},
		result = "iron-plate",
		result_count = 2,
		icon = "__Yuoki__/graphics/icons/pure-iron-n.png",
		order="m-refined-iron",		
	},
		
	-- washings
	{
		type = "recipe",		
		name = "y-wash-dirt-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{"y-dirt", 80},			
			{type="fluid", name="water", amount=70},
		},
		results=
		{
			{type="item", name="stone", amount=8, },      	  			
			{type="item", name="y-crystal2", amount=1, },      	
			{type="fluid", name="y-con_water", amount=60, }
		},
		enabled = "true",		
		icon = "__Yuoki__/graphics/icons/alien-crystal.png",
		order = "m-refined-rare3",
		subgroup = "y_line4",
	},
			
	{
		type = "recipe",
		name = "y-wash-special-recipe",
		category = "yuoki-archaeology-wash", enabled = "true", energy_required = 6.0, 
		ingredients = {{"y-dirt", 80},{type="fluid", name="water", amount=120},}, 		
		results={ {type="item", name="y-c_mud", amount=10, },},
		icon = "__Yuoki__/graphics/icons/c_mud_icon.png",
		subgroup = "y_line3", order="m-refined-",
	},	

	
})