data:extend(
{
	
	{
		type = "recipe",
		name = "y-bluegear-recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g1", icon = "__Yuoki__/graphics/icons/bluegear-icon.png",    		
		ingredients ={{"steel-plate", 1},{"y-refined-yres1", 1},}, result = "y-bluegear", result_count = 3, 
	},		
	--{ type = "item", name = "y-bluegear", icon = "__Yuoki__/graphics/icons/bluegear-icon.png", flags = {"goes-to-main-inventory"}, subgroup = "y-parts", stack_size = 100, order="p-g1",},
	{
		type = "recipe",
		name = "y_structure_element_recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g2", icon = "__Yuoki__/graphics/icons/structur_element.png",    		
		ingredients ={{"iron-plate", 4},{"y-unicomp-raw", 2},}, result = "y_structure_element", result_count = 3, 
	},		
	--{ type = "item", name = "y_structure_element", icon = "__Yuoki__/graphics/icons/structur_element.png", flags = {"goes-to-main-inventory"}, subgroup = "y-parts", stack_size = 100, order="p-g2",},	
	{
		type = "recipe",
		name = "y_structure_vessel_recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g3", icon = "__Yuoki__/graphics/icons/vessel_structure_icon.png",    		
		ingredients ={{"steel-plate", 2},{"y-unicomp-raw", 1},}, result = "y_structure_vessel", result_count = 2, 
	},		
	--{ type = "item", name = "y_structure_vessel", icon = "__Yuoki__/graphics/icons/vessel_structure_icon.png", flags = {"goes-to-main-inventory"}, subgroup = "y-parts", stack_size = 100, order="p-g3",},
	
	-- basic stage-1 maschine frame
	{
		type = "recipe",
		name = "y-basic-st1-mf-recipe",
		ingredients = {{"y-conductive-wire-1",3},{"engine-unit",1},{"iron-gear-wheel",3}, {"y-unicomp-raw", 1}},
		result = "y-basic-t1-mf",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-parts",					
		order="p-g4",
	},	
	{
		type = "item",
		name = "y-basic-t1-mf", stack_size = 50, default_request_amount = 20, 
		icon = "__Yuoki__/graphics/icons/maschine-frame-t1.png",
		flags = {"goes-to-quickbar"},
		subgroup = "y-parts",	
		order="p-g4",
	},	

	-- basic stage-2 maschine frame
	{
		type = "recipe",
		name = "y-basic-st2-mf-recipe",
		ingredients = {{"y-conductive-coil-1",2},{"y-conductive-wire-1",8},{"electric-engine-unit",2},{"iron-gear-wheel",5}, {"y-orange-stuff",4}, {"y-unicomp-raw", 2} },
		result = "y-basic-t2-mf",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-parts",					
		order="p-g5",
	},	
	-- basic stage-2 maschine frame
	{
		type = "item",
		name = "y-basic-t2-mf", stack_size = 50, default_request_amount = 20, 
		icon = "__Yuoki__/graphics/icons/maschine-frame-t2.png",
		flags = {"goes-to-quickbar"},
		subgroup = "y-parts",	
		order="p-g5",
	},	
	
	-- Heat-Cool-Rib-Block
	{
		type = "recipe",
		name = "y-heat-pipe-recipe",
		ingredients = {{"copper-plate",2},{"iron-plate",1},},
		result = "y-heat-pipe",
		enabled = "true",		
		result_count = 1,
		order="p-g6",
		subgroup = "y-parts",	
	},	
	{
		type = "item",
		name = "y-heat-pipe",
		icon = "__Yuoki__/graphics/icons/heat-pipe.png",
		flags = {"goes-to-quickbar"},
		order="p-g6",
		subgroup = "y-parts",	
		stack_size = 50, default_request_amount = 20, 
	},	
		
})