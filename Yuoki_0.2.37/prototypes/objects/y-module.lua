data:extend(
{
	-- recipes
	{
		type = "recipe",
		name = "y_modul_blue1-recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-speed-module-1",
		result_count = 1,
		order = "m-1a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-1",
		icon = "__Yuoki__/graphics/icons/modul_blue_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-1a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.125}, pollution = {bonus = 0.075}, }
	},
	-- recipes
	{
		type = "recipe",
		name = "y_modul_blue2-recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-speed-module-1",2}, {"y_crystal2_combined", 1}}, 		
		result = "y-speed-module-2",
		result_count = 1,
		order = "m-2a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-2",
		icon = "__Yuoki__/graphics/icons/modul_blue_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-2a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.25}, pollution = {bonus = 0.15}, }
	},

	-- greens
	{
		type = "recipe",
		name = "y_modul_green1_recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-green-module-1",
		result_count = 1,
		order = "m-1b",
	},		
	{
		type = "module",
		name = "y-green-module-1",
		icon = "__Yuoki__/graphics/icons/modul_green_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-1b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.25}},
		limitation = production	
	},

	-- green-2
	{
		type = "recipe",
		name = "y_modul_green2_recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-green-module-1",2}, {"y_crystal2_combined", 1}}, 
		result = "y-green-module-2",
		result_count = 1,
		order = "m-2b",
	},		
	{
		type = "module",
		name = "y-green-module-2",
		icon = "__Yuoki__/graphics/icons/modul_green_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-2b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.35}},
		limitation = production	
	},
	
	-- red-op1
	{
		type = "recipe",
		name = "y_modul_red1_recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-speed-module-1", 1}, {"y-green-module-1",1}, {"y-crystal-cnd", 3}}, 
		result = "y_modul_red1",
		result_count = 1,
		order = "m-3a",
	},		
	{
		type = "module",
		name = "y_modul_red1",
		icon = "__Yuoki__/graphics/icons/modul_red_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-3a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.10}, consumption = {bonus = -0.175 }},
		limitation = production	
	},

	-- red-op2
	{
		type = "recipe",
		name = "y_modul_red2_recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-speed-module-2", 1}, {"y-green-module-2",1}, {"y-quantrinum", 3}}, 
		result = "y_modul_red2",
		result_count = 1,
		order = "m-3b",
	},		
	{
		type = "module",
		name = "y_modul_red2",
		icon = "__Yuoki__/graphics/icons/modul_red_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-3b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.20}, consumption = {bonus = -0.275 }},
		limitation = production	
	},

	
	-- pink ->dropped ->revieved 0509-215
	-- pinks	
	{
		type = "recipe",
		name = "y-pink-module-1-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-pink-module-1",
		result_count = 1,
		order = "m-4a",
	},		
	
	{
		type = "module",
		name = "y-pink-module-1",
		icon = "__Yuoki__/graphics/icons/modul_pink_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-4a",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.125}, pollution = {bonus = -0.075},},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},

	{
		type = "recipe",
		name = "y-pink-module-2-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-pink-module-1",2}, {"y_crystal2_combined", 1}}, 		
		result = "y-pink-module-2",
		result_count = 1,
		order = "m-4b",
	},		
	
	{
		type = "module",
		name = "y-pink-module-2",
		icon = "__Yuoki__/graphics/icons/modul_pink_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-4b",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.125}, consumption = {bonus = 0.2}, pollution = {bonus = -0.15},},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},

	{
		type = "recipe",
		name = "y-pink-module-3-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-pink-module-2", 1}, {"y-crystal-cnd",2}, {"y-infused-uca2", 1}}, 		
		result = "y-pink-module-3",
		result_count = 1,
		order = "m-4c",
	},		
	
	{
		type = "module",
		name = "y-pink-module-3",
		icon = "__Yuoki__/graphics/icons/modul_pink_3.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "y-module",
		order = "m-4c",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.20}, consumption = {bonus = 0.275}, pollution = {bonus = -0.2},},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},
	
	-- orginale
	--[[
	{
		type = "module",
		name = "speed-module",
		icon = "__base__/graphics/icons/speed-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-a[speed-module-1]",
		stack_size = 50,
		effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.5}}
	},
	{
		type = "module",
		name = "speed-module-2",
		icon = "__base__/graphics/icons/speed-module-2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-b[speed-module-2]",
		stack_size = 50,
		effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.6}}
	},
	{
		type = "module",
		name = "speed-module-3",
		icon = "__base__/graphics/icons/speed-module-3.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "a[speed]-c[speed-module-3]",
		stack_size = 50,
		effect = { speed = {bonus = 0.5}, consumption = {bonus = 0.7}}
	},
	
	{
		type = "module",
		name = "effectivity-module",
		icon = "__base__/graphics/icons/effectivity-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "c[effectivity]-a[effectivity-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.3}},
		limitation = production
	},
	{
		type = "module",
		name = "productivity-module",
		icon = "__base__/graphics/icons/productivity-module.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		order = "c[productivity]-a[productivity-module-1]",
		stack_size = 50,
		default_request_amount = 10,
		effect = { productivity = {bonus = 0.04}, consumption = {bonus = 0.4}, pollution = {bonus = 0.3}, speed = {bonus = -0.15}},
		limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermeidates"
	},
	
	]]

})