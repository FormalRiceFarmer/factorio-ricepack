data:extend(
{	

	
	-- Little Stirling Engine	
	--[[
	{
		type = "recipe",
		name = "y-small-stirling-engine-recipe",
		ingredients = {{"y-basic-t1-mf",1},{"y-heat-pipe",2},},
		result = "y-small-stirling-engine",
		enabled = "true",		
		result_count = 1,
		order="p-b",
		subgroup = "yuoki-energy-gen",	
	},	
	]]	
	{
		type = "item",
		name = "y-small-stirling-engine",
		icon = "__Yuoki__/graphics/icons/fce-icon.png",
		flags = {"goes-to-quickbar"},
		order = "1",
		--place_result = "y-small-stirling-engine",
		stack_size = 25,
	},	

	{
		type = "recipe",
		name = "y-solar-dish-recipe",
		ingredients = {{"y-basic-t1-mf",1},{"y-heat-pipe",2},{"iron-plate",8},},
		result = "y-stirling-solar-dish",
		enabled = "true",		
		result_count = 1,
		order="e-a",
		group="yuoki",
		subgroup = "y-boiler",	
	},		
	{
		type = "item",
		name = "y-stirling-solar-dish",
		icon = "__Yuoki__/graphics/icons/stir-solar-dish-icon.png",
		flags = {"goes-to-quickbar"},
		order = "a", subgroup = "y-boiler",	
		place_result = "y-stirling-solar-dish",
		stack_size = 25,
	},	
		
	
	-- small electric generator
	{
		type = "recipe",
		name = "y-seg-recipe",
		ingredients = {{"y-basic-t2-mf",1}, {"y-unicomp-raw", 2}, {"y-chip-1", 2}, {"y-unicomp-a2", 1}},
		result = "y-seg",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-d2",
	},	
	{
		type = "recipe",
		name = "y-seg-p-recipe",
		ingredients = {{"y-seg",1},{"y-chip-1", 1}},
		result = "y-seg-p",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-d1",
	},	

	-- medium-s electric generator
	{
		type = "recipe",
		name = "y-meg-s-recipe",
		ingredients = {{"y-basic-t2-mf",2}, {"y-unicomp-raw", 6}, {"y-chip-2", 3}, {"y-unicomp-a2", 2}},
		result = "y-meg-s",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-e",
	},	
	-- medium-t electric generator
	--[[
	{
		type = "recipe",
		name = "y-meg-t-recipe",
		ingredients = {{"y-meg-s",1},{"y-chip-1", 3}},
		result = "y-meg-t",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-b-bb",
	},	
	]]

	-- big electric generator
	{
		type = "recipe",
		name = "y-beg-recipe",
		ingredients = {{"y-basic-t2-mf",4}, {"y-unicomp-raw", 12}, {"y-chip-2", 6}, {"y-unicomp-a2", 4}},
		result = "y-beg",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-f",
	},	
	-- huge electric generator
	{
		type = "recipe",
		name = "y-heg-recipe",
		ingredients = {{"y-basic-t2-mf",4}, {"y-unicomp-raw", 10}, {"y-chip-2", 4}, {"y-unicomp-a2", 8}, {"y-bluegear", 8},},
		result = "y-heg",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-e-gens",					
		order="g-f",
	},	

	
	
	-- boilers	
	{
		type = "recipe",
		name = "y-boiler-t2-recipe",
		ingredients = {{"boiler", 1}, {"steel-plate", 2}, {"pipe", 3}},
		result = "y-boiler-t2",
		group = "yuoki",
		subgroup = "y-boiler",					
		order="b-a1",
	},

	{
		type = "recipe",
		name = "y-boiler-t3-recipe",
		ingredients = {{"y-refined-yres1", 4}, {"iron-plate", 9}, {"pipe", 5}},
		result = "y-boiler-t3",
		group = "yuoki",
		subgroup = "y-boiler",					
		order="b-a2",
	},
	
	{
		type = "recipe",
		name = "y-boiler-iv-recipe",
		ingredients = {{"y-boiler-t2", 4}, {"steel-plate", 4}, {"y-pipe-hc", 5}},
		result = "y-boiler-iv",
		group = "yuoki",
		subgroup = "y-boiler",					
		order="b-a3",
	},
	--y-obninsk-reactor
	{
		type = "recipe",
		name = "y-obninsk-reactor-recipe",
		ingredients = {{"y-rare-wall-adv", 8}, {"steel-plate", 15}, {"y-pipe-ec", 8},{"y-basic-t2-mf", 3}},
		result = "y-obninsk-reactor",
		group = "yuoki", subgroup = "y-boiler",					
		order="b-a4",
	},

	
	-- Generators
	
	--y-obninsk-turbine (rensuir)
	{
		type = "recipe",
		name = "y-obninsk-turbine-recipe",
		ingredients = {{"y-orange-stuff", 15}, {"y-unicomp-raw", 15}, {"y-basic-t2-mf", 2}, {"y-pipe-ec", 10},{"y-quantrinum", 3}},
		result = "y-obninsk-turbine",
		group = "yuoki", subgroup = "yuoki_energy_gen_steam",		
		order="g-c",	
	},	
	{
		type = "recipe",
		name = "y-notfall-generator-s1-recipe",
		ingredients = {{"iron-plate",4}, {"iron-gear-wheel",2}, {"copper-plate",4},},
		result = "y-notfall-generator-s1",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "yuoki_energy_gen_steam",			
		order="g-a1",	
	},	
	{
		type = "recipe",
		name = "y-notfall-generator-s2-recipe",
		ingredients = {{"y-notfall-generator-s1",1}, {"electronic-circuit",1},},
		result = "y-notfall-generator-s2",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "yuoki_energy_gen_steam",			
		order="g-a2",	
	},
	--[[
	{
		type = "recipe",
		name = "y-notfall-generator-s3-recipe",
		ingredients = {{"y-notfall-generator-s2",1}, {"electronic-circuit",1},},
		result = "y-notfall-generator-s3",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "yuoki_energy_gen_steam",					
		order="g-a3",
	},	
	]]
	
	-- big (ab Jan/2015 standard-steam-turbine)
	{
		type = "recipe",
		name = "y-steam-turbine-recipe",
		ingredients = {{"engine-unit",2},{"steel-plate",3},{"copper-plate",3},{"y-unicomp-raw",3},},		
		result = "y-steam-turbine",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "yuoki_energy_gen_steam",					
		order="g-b",	
	},	
	-- plant	
	{
		type = "recipe",
		name = "y-steam-turbine-mk3-recipe",
		ingredients = {{"y-steam-turbine",2},{"steel-plate",4},{"stone-wall",8} },
		result = "y-steam-turbine-mk3",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "yuoki_energy_gen_steam",					
		order="g-t-c",	
	},	
		
	
})