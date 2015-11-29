data:extend(
{	
	{
		type = "item",
		name = "y-conductive-wire-1",
		icon = "__Yuoki__/graphics/gfx/wire_1.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-parts",
		order = "a[wire]",		
		stack_size = 250, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-conductive-coil-1",
		icon = "__Yuoki__/graphics/gfx/super_condative_coil.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-parts",
		order = "a[wire]",		
		stack_size = 250, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-chip-1",
		icon = "__Yuoki__/graphics/gfx/chip1-icon.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-parts",
		order = "a[chip]",		
		stack_size = 250, default_request_amount = 20,
	},
	{
		type = "item",
		name = "y-chip-2",
		icon = "__Yuoki__/graphics/gfx/chip2-icon.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-parts",
		order = "a[chip]",		
		stack_size = 250, default_request_amount = 20,
	},	
	{
		type = "item",
		name = "y-battery-single-use1",
		icon = "__Yuoki__/graphics/gfx/battery_2.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-electric",
		order = "a[battery]",				
		stack_size = 250, default_request_amount = 20,
	},	
	{
		type = "item",
		name = "y-battery-single-use2",
		icon = "__Yuoki__/graphics/gfx/battery_1.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-electric",
		order = "a[battery]",		
		fuel_value = "18MJ",
		stack_size = 250, default_request_amount = 20,
	},	
	{
		type = "item",
		name = "y-battery-single-use3",
		icon = "__Yuoki__/graphics/gfx/battery_3.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-electric",
		order = "a[battery]",		
		fuel_value = "38MJ",
		stack_size = 250, default_request_amount = 20,
	},	
	
	{
		type = "item",
		name = "y-substation-m",
		icon = "__Yuoki__/graphics/icons/substation-icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-lamps",
		order = "a[energy]-d[substation]",
		place_result = "y-substation-m",
		stack_size = 25, default_request_amount = 5,
	},
	{
		type = "item",
		name = "y-accumulator-s", place_result = "y-accumulator-s", stack_size = 50, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/small_accu_icon.png",		
		subgroup = "y-energy-2", order = "e[accumulator]-a1",		
	},
	{
		type = "item",
		name = "y-accumulator-m",
		icon = "__Yuoki__/graphics/gfx/medium_accu_icon.png",
		flags = {"goes-to-quickbar"},
		--group = "yuoki",		
		subgroup = "y-energy-2",
		order = "e[accumulator]-a2",
		place_result = "y-accumulator-m",
		stack_size = 50, default_request_amount = 10,
	},
	{
		type = "item",
		name = "y-accumulator-b",
		icon = "__Yuoki__/graphics/gfx/accu_b_icon.png",
		flags = {"goes-to-quickbar"},		
		subgroup = "y-energy-2",
		order = "e[accumulator]-a3",
		place_result = "y-accumulator-b",
		stack_size = 30, default_request_amount = 10,
	},

	{
		type = "item",
		name = "y-ups-flywheel-b", place_result = "y-ups-flywheel-b", stack_size = 30, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/accflywheel_b_icon.png",		
		subgroup = "y-energy-2", order = "f[accumulator]-a",		
	},
	
	{
		type = "item",
		name = "y-accumulator-s-t2", place_result = "y-accumulator-s-t2", stack_size = 50, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/scd-icon.png",		
		subgroup = "y-energy-2", order = "f[accumulator]-a",		
	},
	{
		type = "item",
		name = "y-accumulator-m-t2", place_result = "y-accumulator-m-t2", stack_size = 50, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/mcd-icon.png",		
		subgroup = "y-energy-2", order = "f[accumulator]-b",		
	},
	{
		type = "item",
		name = "y-accumulator-b-t2", place_result = "y-accumulator-b-t2", stack_size = 25, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/bcd-icon.png",		
		subgroup = "y-energy-2", order = "f[accumulator]-b",		
	},
	{
		type = "item",
		name = "y-accumulator-b-tx", place_result = "y-accumulator-b-tx", stack_size = 25, default_request_amount = 10, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/aqe-icon.png",		
		subgroup = "y-energy-2", order = "g[accumulator]-c",		
	},
	-- Accumulator Crystal
	{
		type = "item",
		name = "y-accumulator-crystal-m", place_result = "y-accumulator-crystal-m", stack_size = 25, default_request_amount = 10, flags = {"goes-to-main-inventory"},
		icon = "__Yuoki__/graphics/gfx/accu_crystal-m-icon.png",		
		subgroup = "y-energy-2", order = "g[accumulator]-c",		
	},
	
	-- compensator 25
	{
		type = "item",
		name = "y_compensator_25", place_result = "y_compensator_25", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/gfx/compensator25-icon.png",		
		subgroup = "y-energy-2", order = "c025",		
	},	
	
	
	
	-- small electric generator
	{
		type = "item",
		name = "y-seg", place_result = "y-seg", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/seg-s_icon.png",		
		subgroup = "y-energy", order = "g",		
	},
	-- small electric generator
	{
		type = "item",
		name = "y-seg-p", place_result = "y-seg-p", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/seg-p_icon.png",		
		subgroup = "y-energy", order = "g",		
	},
	
	-- medium-s electric generator
	{
		type = "item",
		name = "y-meg-s", place_result = "y-meg-s", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/meg-s-icon.png",		
		subgroup = "y-energy", order = "g",		
	},
	-- medium-t electric generator
	{
		type = "item",
		name = "y-meg-t", place_result = "y-meg-t", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/meg-t-icon.png",		
		subgroup = "y-energy", order = "g",		
	},	
	-- big electric generator
	{
		type = "item",
		name = "y-beg", place_result = "y-beg", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/beg_icon.png",		
		subgroup = "y-energy", order = "g",		
	},
	-- huge electric generator
	{
		type = "item",
		name = "y-heg", place_result = "y-heg", stack_size = 15, default_request_amount = 5, flags = {"goes-to-quickbar"},
		icon = "__Yuoki__/graphics/entity/energy-t2/heg-icon.png",		
		subgroup = "y-energy", order = "g",		
	},
	
	
	
})