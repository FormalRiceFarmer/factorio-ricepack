data:extend(
{
	
	{
		type = "item",
		name = "y-boiler-t2",
		icon = "__Yuoki__/graphics/icons/boiler-icon.png",
		flags = {"goes-to-quickbar"},
		group = "Yuoki",
		subgroup = "y-boiler",
		order = "b[steam-power]-a1",
		place_result = "y-boiler-t2",
		stack_size = 30, default_request_amount = 5, 
	},

	{
		type = "item",
		name = "y-boiler-t3",
		icon = "__Yuoki__/graphics/icons/boiler-t3-icon.png",
		flags = {"goes-to-quickbar"},
		group = "Yuoki",
		subgroup = "y-boiler",
		order = "b[steam-power]-a2",
		place_result = "y-boiler-t3",
		stack_size = 20, default_request_amount = 5, 
	},
	
	{
		type = "item",
		name = "y-boiler-iv",
		icon = "__Yuoki__/graphics/icons/boiler-3m-icon.png",
		flags = {"goes-to-quickbar"},
		group = "Yuoki",
		subgroup = "y-boiler",
		order = "b[steam-power]-a3",
		place_result = "y-boiler-iv",
		stack_size = 10, default_request_amount = 5, 
	},

	--
	{
		type = "item",
		name = "y-obninsk-reactor",
		icon = "__Yuoki__/graphics/icons/obninsk-reactor-icon.png",
		flags = {"goes-to-quickbar"},
		group = "Yuoki",
		subgroup = "y-boiler",
		order = "b[steam-power]-a4",
		place_result = "y-obninsk-reactor",
		stack_size = 5,
	},
	
	{
		type = "item",
		name = "y-obninsk-turbine",
		icon = "__Yuoki__/graphics/icons/rensuir-turbine_icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-obninsk-turbine",
		stack_size = 5,
	},	

	
	{
		type = "item",
		name = "y-steam-turbine",
		icon = "__Yuoki__/graphics/icons/steam-turbine_icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-steam-turbine",
		stack_size = 20, default_request_amount = 5, 
	},

	--[[
	{
		type = "item",
		name = "y-steam-turbine-mk2",
		icon = "__Yuoki__/graphics/icons/small_steam_icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",
		order = "b[steam-power]-b[steam-engine]-c[t1]",		
		stack_size = 20,
	},
	{
		type = "item",
		name = "y-small-turbine-t",
		icon = "__Yuoki__/graphics/icons/small_steam_icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",
		order = "b[steam-power]-b[steam-engine]-c[t2]",		
		stack_size = 20,
	},
	]]
	-- power plant
	{
		type = "item",
		name = "y-steam-turbine-mk3",
		icon = "__Yuoki__/graphics/icons/small_steam_icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-steam-turbine-mk3",
		stack_size = 20, default_request_amount = 5, 
	},
	
	{
		type = "item",
		name = "y-notfall-generator-s1",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2p-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-notfall-generator-s1",
		stack_size = 25, default_request_amount = 5, 
	},
	{
		type = "item",
		name = "y-notfall-generator-s2",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2s-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-notfall-generator-s2",
		stack_size = 25, default_request_amount = 5, 
	},
	{
		type = "item",
		name = "y-notfall-generator-s3",
		icon = "__Yuoki__/graphics/entity/energy-t2/lt-v2t-icon.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",
		subgroup = "y-energy-2",		
		place_result = "y-notfall-generator-s3",
		stack_size = 25, default_request_amount = 5, 
	},

	
})