data:extend(
{

	-- unicomp
	{
		type = "autoplace-control",
		name = "y-res1",
		richness = true,
		order = "y-ore",
	},
	{
		type = "noise-layer",
		name = "y-res1",
	},

	{
		type = "item",
		name = "y-res1",
		icon = "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-resource",
		order = "r",
		stack_size = 500,
	},

	{
		type = "resource",
		name = "y-res1",
		icon = "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"placeable-neutral"},
		order="a-b-d",
		minable =
		{
			hardness = 0.8,
			mining_particle = "stone-particle",
			mining_time = 3,
			result = "y-res1",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "y-res1",
			sharpness = 1,
			richness_multiplier = 8000,
			richness_base = 200,
			size_control_multiplier = 0.04,
			peaks = {
				{
					influence = 0.2,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
				{
					influence = 0.65,
					noise_layer = "y-res1",
					noise_octaves_difference = -1.9,
					noise_persistence = 0.3,
					starting_area_weight_optimal = 0,
					starting_area_weight_range = 0,
					starting_area_weight_max_range = 2,
				},
			},
		},
		stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
		stages = { 
		sheet = {
			filename = "__Yuoki__/graphics/entity/resources/yi-res-1e.png",
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 4,
			variation_count = 8
		}
		},
		map_color = {r=0.000, g=0.00, b=0.65}
	}
})
