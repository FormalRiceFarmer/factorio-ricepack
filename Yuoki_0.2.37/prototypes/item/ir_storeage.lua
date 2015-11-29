data:extend(
{
	--recipe
	
	{
		type = "recipe",
		name = "y-rare-chest-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-refined-yres1", 2}, {"iron-plate", 5},}, 
		result = "y_sc11",
		group = "yuoki",
		subgroup = "y-storage",	
		order = "a-a",			
		result_count = 1,
	},	
	
	{
		type = "recipe",
		name = "y-rare-s1bunker-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_structure_element", 2}, {"iron-plate", 2},}, 
		result = "y_c22",
		group = "yuoki",
		subgroup = "y-storage",	
		order = "b-a",			
		result_count = 1,
	},	
	
	-- provider chest 22
	{
		type = "recipe",
		name = "y_pc22_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_structure_element", 2}, {"iron-plate", 2}, {"y-chip-2", 1},}, 
		result = "y_pc22",		
		subgroup = "y-storage",	
		order = "h-a",			
		result_count = 1,
	},	
	{
		type = "recipe",
		name = "y_rc22_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_structure_element", 2}, {"iron-plate", 2}, {"y-chip-2", 1},}, 
		result = "y_rc22",		
		subgroup = "y-storage",	
		order = "h-b",			
		result_count = 1,
	},			
	{
		type = "recipe",
		name = "y_cg33_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_structure_element", 4}, {"steel-plate", 2},}, 
		result = "y_cg33",
		group = "yuoki",
		subgroup = "y-storage",	
		order = "c-a",			
		result_count = 1,
	},	
	
	-- 4x4
	{
		type = "recipe",
		name = "y_sc44_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_structure_element", 8}, {"steel-plate", 3},}, 
		result = "y_sc44",
		group = "yuoki",
		subgroup = "y-storage",	
		order = "d-a",			
		result_count = 1,
	},	

	{
		type = "recipe",
		name = "y-rare-chest-log-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y_sc11", 1}, {"y-conductive-wire-1", 2}, {"y-chip-1", 1},}, 
		result = "y-rare-chest-log", 
		group = "yuoki",
		subgroup = "y-storage",	
		order = "k-a",			
		result_count = 1,
	},		
	{
		type = "recipe",
		name = "y-rare-m1bunker-log-recipe", result = "y-rare-m1bunker-log",
		energy_required = 3.0, enabled = "true", 
		ingredients = {{"y_cg33", 1},{"y-chip-1", 1},{"y-conductive-wire-1", 8},},  
		result_count = 1,		
		group = "yuoki", subgroup = "y-storage", order = "k-b",			
	},	
	
	
	-- old chest 1x1
	{
		type = "item",
		name = "y-rare-chest",
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y-rare-chest",
		stack_size = 30, default_request_amount = 5,
	},
	-- new chest 1x1
	{
		type = "item",
		name = "y_sc11",
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y_sc11",
		stack_size = 30, default_request_amount = 5,
	},	
	-- old chest 2x2
	{
		type = "item",
		name = "y-rare-s1bunker",
		icon = "__Yuoki__/graphics/entity/bunker-s-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y-rare-s1bunker",
		stack_size = 30, default_request_amount = 5,
	},
	-- new chest 2x2
	{
		type = "item",
		name = "y_c22",
		icon = "__Yuoki__/graphics/entity/store/y-c22-icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-storage",
		place_result = "y_c22",
		stack_size = 30, default_request_amount = 5,
	},	
	-- old chest 3x3
	{
		type = "item",
		name = "y-rare-m1bunker",
		icon = "__Yuoki__/graphics/icons/bunker-m-storeage-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y-rare-m1bunker",
		stack_size = 30, default_request_amount = 5,
	},
	-- new chest 3x3
	{
		type = "item",
		name = "y_cg33",
		icon = "__Yuoki__/graphics/entity/store/y-c33-icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-storage",
		place_result = "y_cg33",
		stack_size = 30, default_request_amount = 5,
	},	
	-- old chest 4x4
	{
		type = "item",
		name = "y-rare-b1bunker",
		icon = "__Yuoki__/graphics/icons/bunker-b-storeage-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y-rare-b1bunker",
		stack_size = 30, default_request_amount = 5,
	},
	-- new chest 4x4
	{
		type = "item",
		name = "y_sc44",
		icon = "__Yuoki__/graphics/entity/store/y-c44-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y_sc44",
		stack_size = 30, default_request_amount = 5,
	},

		
	-- new requester 2x2
	{
		type = "item",
		name = "y_rc22",
		icon = "__Yuoki__/graphics/entity/store/y-rc22-icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-storage",
		place_result = "y_rc22",
		stack_size = 30, default_request_amount = 5,
	},
	-- new provider 2x2
	{
		type = "item",
		name = "y_pc22",
		icon = "__Yuoki__/graphics/entity/store/y-pc22-icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-storage",
		place_result = "y_pc22",
		stack_size = 30, default_request_amount = 5,
	},
	
			
	-- logistic chest 1x1
	{
		type = "item",
		name = "y-rare-chest-log",
		icon = "__Yuoki__/graphics/entity/store/y-lc11-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-storage",
		place_result = "y-rare-chest-log",
		stack_size = 30, default_request_amount = 5,
	},		
	-- logistic chest 3x3
	{
		type = "item",
		name = "y-rare-m1bunker-log", place_result = "y-rare-m1bunker-log",
		icon = "__Yuoki__/graphics/entity/store/y-cl33-icon.png",
		flags = {"goes-to-quickbar"}, group = "yuoki", subgroup = "y-storage",
		stack_size = 30, default_request_amount = 5,
	},
	
})