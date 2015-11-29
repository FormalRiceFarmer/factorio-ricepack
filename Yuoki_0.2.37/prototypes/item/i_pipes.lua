data:extend(
{

	{
		type = "recipe",
		name = "y-pipe-h",				
		enabled = "true",
		ingredients = {{"pipe", 1}},
		result = "y-pipe-h",
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p1-",
		icon = "__Yuoki__/graphics/icons/pipe-h.png",
	},

	{
		type = "recipe",
		name = "y-pipe-v",			
		enabled = "true",
		ingredients = {{"pipe", 1}},
		result = "y-pipe-v",
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p2-",
		icon = "__Yuoki__/graphics/icons/pipe-v.png",
	},


	{
		type = "recipe",
		name = "y-valve-direction-buffer-recipe",
		ingredients = {{"iron-plate",8},{"steel-plate",2},{"iron-gear-wheel",2}},
		result = "y-valve-direction-buffer",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",			
	},	

	{
		type = "recipe",
		name = "y-pipe-hc-recipe",			
		result = "y-pipe-hc",
		ingredients = {{"y-unicomp-raw", 1}},
		enabled = "true", result_count = 4, group = "yuoki", subgroup = "y-pipe", order="p3-1",		
		icon = "__Yuoki__/graphics/icons/pipe-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-hc-recipe",			
		result = "y-pipe-to-ground-hc",		
		ingredients = {{"y-unicomp-raw", 4},},		
		enabled = "true", result_count = 2, group = "yuoki", subgroup = "y-pipe", order="p3-2",
		icon = "__Yuoki__/graphics/icons/pipe-tg-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-ec-recipe",			
		result = "y-pipe-ec",
		ingredients = {{"y-unicomp-a2", 1}},
		enabled = "true", result_count = 6, group = "yuoki", subgroup = "y-pipe", order="p3-4",		
		icon = "__Yuoki__/graphics/icons/pipe-ec.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-ec-recipe",			
		result = "y-pipe-to-ground-ec",		
		ingredients = {{"y-unicomp-a2", 4},},		
		enabled = "true", result_count = 2, group = "yuoki", subgroup = "y-pipe", order="p3-5",
		icon = "__Yuoki__/graphics/icons/pipe-tg-ec.png",
	},
		
	{
		type = "recipe",
		name = "y-tank-1000-recipe",
		result = "y-tank-1000",
		ingredients = {{"y_structure_element",2},{"y_structure_vessel",4},},		
		energy_required = 2, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T1",
	},	
	{
		type = "recipe",
		name = "y-tank-4500-recipe",
		result = "y-tank-4500",
		ingredients = {{"y_structure_element",6},{"y_structure_vessel",8},{"y-pipe-hc",4}},		
		energy_required = 3, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T2",
	},	
	{
		type = "recipe",
		name = "y-tank-8000-recipe",
		result = "y-tank-8000",
		ingredients = {{"y_structure_element",10},{"y_structure_vessel",14},{"y-pipe-hc",12}},		
		energy_required = 4, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T3",
	},	

	{
		type = "recipe",
		name = "y-tank-24k-recipe",
		result = "y-tank-24k",
		ingredients = {{"y-tank-8000",2},{"y_structure_element",8},{"y-pipe-to-ground-ec",6},{"y-orange-stuff",8},{"y-quantrinum",2},},		
		energy_required = 6, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T4",
	},	
	
	--items
	{
		type = "item",
		name = "y-pipe-h",
		icon = "__Yuoki__/graphics/icons/pipe-h.png",
		flags = {"goes-to-quickbar"},
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-h",
		stack_size = 150,  
	},

	{
		type = "item",
		name = "y-pipe-v",
		icon = "__Yuoki__/graphics/icons/pipe-v.png",
		flags = {"goes-to-quickbar"},
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-v",
		stack_size = 150,
	},
	
	{
		type = "item",
		name = "y-valve-direction-buffer",
		icon = "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		group = "yuoki",
		subgroup = "y-pipe",
		flags = {"goes-to-quickbar"}, order = "zubehoer",
		place_result = "y-valve-direction-buffer",
		stack_size = 20,
	},
	{
		type = "item",
		name = "y-pipe-hc", place_result = "y-pipe-hc",
		icon = "__Yuoki__/graphics/icons/pipe-hc.png",
		flags = {"goes-to-quickbar"}, order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-hc", place_result = "y-pipe-to-ground-hc",
		icon = "__Yuoki__/graphics/icons/pipe-tg-hc.png",				
		flags = {"goes-to-quickbar"}, order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-ec", place_result = "y-pipe-ec",
		icon = "__Yuoki__/graphics/icons/pipe-ec.png",
		flags = {"goes-to-quickbar"}, order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-ec", place_result = "y-pipe-to-ground-ec",
		icon = "__Yuoki__/graphics/icons/pipe-tg-ec.png",				
		flags = {"goes-to-quickbar"}, order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	
	{
		type = "item",
		name = "y-tank-1000", place_result = "y-tank-1000",
		icon = "__Yuoki__/graphics/icons/tank-1000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15, flags = {"goes-to-main-inventory"}, order = "tank-a1",
	},
	{
		type = "item",
		name = "y-tank-4500", place_result = "y-tank-4500",
		icon = "__Yuoki__/graphics/entity/tank-4500-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15, flags = {"goes-to-main-inventory"}, order = "tank-b1",
	},
	{
		type = "item",
		name = "y-tank-8000", place_result = "y-tank-8000",
		icon = "__Yuoki__/graphics/entity/tank-8000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15, flags = {"goes-to-main-inventory"}, order = "tank-c1",
	},	
	{
		type = "item",
		name = "y-tank-24k", place_result = "y-tank-24k",
		icon = "__Yuoki__/graphics/entity/tank-48k-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 5, flags = {"goes-to-main-inventory"}, order = "tank-c2",
	},	
	
})