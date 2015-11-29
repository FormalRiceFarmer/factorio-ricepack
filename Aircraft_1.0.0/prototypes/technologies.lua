data:extend({
	{
		type = "technology",
		name = "advanced-aerodynamics",
		icon = "__Aircraft__/graphics/gunship-1.png",
		prerequisites = {"flying"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 30
		},
		order = "c-h-b"
	},
	{
		type = "technology",
		name = "gunships",
		icon = "__Aircraft__/graphics/gunship-1.png",
		effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gunship"
      },
    },
		prerequisites = {"flying", "military-4", "advanced-aerodynamics"},
		unit = 
		{
			count = 200,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1}
			},
			time = 30
		},
		order = "c-h-c"
	},
})