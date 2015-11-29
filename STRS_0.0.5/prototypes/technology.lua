data:extend({

{
    type = "technology",
    name = "lr-radar",
    icon = "__STRS__/graphics/icons/lr-radar.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lr-radar"
      },
    },
    prerequisites = {"optics", "electronics",},
    unit =
    {
      count = 15,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "a-d-e",
  },
  
  
  {
    type = "technology",
    name = "doppler-radar",
    icon = "__STRS__/graphics/icons/doppler-radar.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "doppler-radar"
      }
    },
    prerequisites = {"optics", "advanced-electronics-2",},
    unit =
    {
      count = 25,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 1}},
      time = 50
    },
    order = "a-d-f",
  },
  
 })
  