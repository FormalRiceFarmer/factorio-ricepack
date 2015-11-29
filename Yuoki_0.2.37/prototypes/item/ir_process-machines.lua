data:extend(
{

	--[[ removed 215-0101
	{
		type = "recipe",
		name = "y-archsite-recipe", enabled = "true",
		ingredients = {{"steel-plate", 2}, {"pipe", 3}, {"stone", 20}}, 
		result = "archsite", result_count = 1,
	},
	]]
	
	-- low tiers	
	{
		type = "recipe",
		name = "y-dirtwasher-recipe", enabled = "true",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",4},{"copper-plate",3},{"iron-gear-wheel",2}},
		result = "y-dirtwasher", result_count = 1,
		subgroup = "y_line2",
	},	
	{
		type = "recipe",
		name = "y-heat-form-press-recipe",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",6},{"copper-plate",2},{"iron-gear-wheel",3}},
		result = "y-heat-form-press",
		enabled = "true", result_count = 1,
		subgroup = "y_line2",
	},
	{
		type = "recipe",
		name = "y-mining-drill-recipe",
		ingredients = {{"burner-mining-drill",2},{"steel-plate",4},{"copper-plate",3},{"iron-gear-wheel",4}},
		result = "y-mining-drill",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line1",
	},
	{
		type = "recipe",
		name = "y-crusher-recipe",
		ingredients = {{"assembling-machine-1",2},{"copper-plate",2},{"iron-gear-wheel",6}},
		result = "y-crusher",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line2",
	},
	
	-- medium tiers
	{
		type = "recipe",
		name = "y-mining-drill-e2-recipe",
		ingredients = {{"basic-mining-drill",1},{"y-bluegear",1},{"y-refined-yres1",4}},
		result = "y-mining-drill-e2",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line1",
	},
	{
		type = "recipe",
		name = "y-underground-drill-recipe",
		ingredients = {{"y-mining-drill-e2",1},{"y-unicomp-raw",5},},
		result = "y-underground-drill",
		enabled = "true",		
		result_count = 1,	
		subgroup = "y_line1",		
	},	
	{
		type = "recipe",
		name = "y-atomic-constructor-recipe",
		ingredients = {{"assembling-machine-2",1},{"y-crusher",1},{"y-heat-form-press",1},{"y-fuel-reactor",3}},
		result = "y-atomic-constructor",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line2",
	},
	{
		type = "recipe",
		name = "y-water-gen-recipe",
		ingredients = {{"y-atomic-constructor",1},{"y-unicomp-raw",8},{"y-unicomp-a2",2}},
		result = "y-water-gen",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_refine_machinery",
	},
	{
		type = "recipe",
		name = "y-water-gen-recipe-e",
		ingredients = {{"y-water-gen",1},{"y-conductive-coil-1",4 }},
		result = "y-water-gen-e",
		enabled = "true",		
		result_count = 1,		
		subgroup = "y_refine_machinery",
	},
	
	
	-- high tiers
	{
		type = "recipe",
		name = "y-atomic-quantum-composer-recipe",
		ingredients = {{"assembling-machine-3",1},{"y-basic-t2-mf",3},{"alien-artifact",8}},
		result = "y-atomic-quantum-composer",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line2",
	},
	{
		type = "recipe",
		name = "y-alien-infuser-recipe",
		ingredients = {{"y-atomic-quantum-composer",1},{"y-atomic-constructor",1},{"y-heat-form-press",1},{"y-fuel-reactor",2}},
		result = "y-alien-infuser",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line2",
	},
	
	{
		type = "item",
		name = "y-dirtwasher", place_result = "y-dirtwasher", stack_size = 20, default_request_amount = 5, 
		icon = "__Yuoki__/graphics/icons/dw.png",		
		flags = {"goes-to-quickbar"},		
		order = "a[items]-washer",		
		subgroup = "y_line2",
	},
	{
		type = "item",
		name = "y-heat-form-press", place_result = "y-heat-form-press",	stack_size = 20, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/pressure_icon.png",		
		flags = {"goes-to-quickbar"},		
		order = "a[items]-hfp",		
		subgroup = "y_line2",
	},		
	{
		type = "item",
		name = "y-mining-drill", place_result = "y-mining-drill", stack_size = 20, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/mine-drill-o-icon.png",
		flags = {"goes-to-quickbar"},		
		order = "a[items]-drill-a",
		subgroup = "y_line1",
	},
	{
		type = "item",
		name = "y-mining-drill-e2", place_result = "y-mining-drill-e2", stack_size = 20, default_request_amount = 6,
		icon = "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		flags = {"goes-to-quickbar"},		
		order = "a[items]-drill-b",				
		subgroup = "y_line1",
	},	
	
	{
		type = "item",
		name = "y-underground-drill", place_result = "y-underground-drill", stack_size = 20, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/deep-drill-v1-icon.png",
		flags = {"goes-to-quickbar"},		
		order = "a[items]-drill-u",				
		subgroup = "y_line2",
	},	
	
	{
		type = "item",
		name = "y-crusher", place_result = "y-crusher", stack_size = 20, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/crusher-icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-crusher",	
		subgroup = "y_line1",		
	},
	{
		type = "item",
		name = "y-atomic-quantum-composer", place_result = "y-atomic-quantum-composer", stack_size = 10, 
		icon = "__Yuoki__/graphics/entity/space-assembly-icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-1atomic",				
		subgroup = "y_line2",
	},
	{
		type = "item",
		name = "y-atomic-constructor", place_result = "y-atomic-constructor", stack_size = 10,
		icon = "__Yuoki__/graphics/icons/cimota-icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-1atomic",				
		subgroup = "y_line2",
	},
	{
		type = "item",
		name = "y-alien-infuser", place_result = "y-alien-infuser", stack_size = 5,
		icon = "__Yuoki__/graphics/icons/alien_infuser_icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-1atomic",				
		subgroup = "y_line2",
	},
	-- alien Water generator
	{
		type = "item",
		name = "y-water-gen", place_result = "y-water-gen", stack_size = 15, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/alien_water_gen_icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-1atomic",				
		subgroup = "y_refine_machinery",
	},
	-- alien Water generator electric
	{
		type = "item",
		name = "y-water-gen-e", place_result = "y-water-gen-e", stack_size = 15, default_request_amount = 5,
		icon = "__Yuoki__/graphics/icons/alien_water_gen-e-icon.png",
		flags = {"goes-to-quickbar"},
		order = "a[items]-1atomic",	
		subgroup = "y_refine_machinery",		
	},
	
})