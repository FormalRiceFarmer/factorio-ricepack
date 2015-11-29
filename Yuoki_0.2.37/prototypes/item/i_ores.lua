data:extend(
{		
	{
		type = "item",
		name = "y-quantrinum",
		icon = "__Yuoki__/graphics/icons/quantrinum.png",
		flags = {"goes-to-main-inventory"},
		group = "yuoki",		
		stack_size = 25, default_request_amount = 5, 
	},					

	-- compressed dirt -> lachnan crystal 
	{
		type = "item",
		name = "y-crystal-cnd",
		icon = "__Yuoki__/graphics/icons/crystal_3.png",
		flags = {"goes-to-main-inventory"},
		group = "yuoki",		
		stack_size = 500, default_request_amount = 15, 
	},					
		
	{ type = "item", name = "y-unicomp-a2", icon = "__Yuoki__/graphics/icons/uni-komp-a2-icon.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 2500, default_request_amount = 100, },	
	-- dust		
	{ type = "item", name = "y-crush-yres1", icon = "__Yuoki__/graphics/icons/dust-blue.png", flags = {"goes-to-main-inventory"}, subgroup = "yuoki-archaeology", stack_size = 1000, default_request_amount = 100, },
	{ type = "item", name = "y-crush-yres2", icon = "__Yuoki__/graphics/icons/dust-green.png", flags = {"goes-to-main-inventory"}, subgroup = "yuoki-archaeology", stack_size = 1000, default_request_amount = 100, },
	-- pellets	
	{ type = "item", name = "y-refined-yres1", icon = "__Yuoki__/graphics/icons/coilsb32.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 600, default_request_amount = 50, },	
	{ type = "item", name = "y-refined-yres2", icon = "__Yuoki__/graphics/icons/coilsgru32.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 600, default_request_amount = 50, },	
	-- blaue Brocken
	{ type = "item", name = "y-unicomp-raw", icon = "__Yuoki__/graphics/icons/uni-komp-n4-icon.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 500, default_request_amount = 50, },

	{ type = "item", name = "y-slag", icon = "__Yuoki__/graphics/icons/y-slag.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 2500, default_request_amount = 100, },
	{ type = "item", name = "y-orange-stuff", icon = "__Yuoki__/graphics/icons/orange-stuff.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 750, default_request_amount = 50, },
	
	-- raw-fuelnium (shard)
	{ type = "item", name = "y-raw-fuelnium", icon = "__Yuoki__/graphics/icons/crystal_energy.png", flags = {"goes-to-main-inventory"}, subgroup = "y-raw-material", stack_size = 900,  default_request_amount = 20, },
	-- fuelnium
	{ type = "item", name = "y-fuel-reactor", icon = "__Yuoki__/graphics/icons/reactor-fuel.png", flags = {"goes-to-main-inventory"}, subgroup = "y-fuel", stack_size = 335, fuel_value = "300MJ", default_request_amount = 20, },
	-- super-alien-fuel
	--{ type = "item", name = "y-fuel-alien", icon = "__Yuoki__/graphics/icons/fuel_cell_b.png", flags = {"goes-to-main-inventory"}, subgroup = "y-fuel", stack_size = 50, fuel_value = "800MJ"},
	-- rich dust
	{ type = "item", name = "y-richdust", icon = "__Yuoki__/graphics/icons/richdust.png", flags = {"goes-to-main-inventory"}, subgroup = "yuoki-archaeology", stack_size = 1500, default_request_amount = 100, },
	-- infused UC-A2
	{ type = "item", name = "y-infused-uca2", icon = "__Yuoki__/graphics/icons/infused_uca2.png", flags = {"goes-to-main-inventory"}, subgroup = "y-fuel", stack_size = 50, fuel_value = "3GJ", default_request_amount = 10, },
	-- infused dry-mud
	{ type = "item", name = "y-infused-mud", icon = "__Yuoki__/graphics/icons/fuel_cell_d.png", flags = {"goes-to-main-inventory"}, subgroup = "y-fuel", stack_size = 625, fuel_value = "80MJ", default_request_amount = 100, },

})