data:extend(
{
  {
    type = "technology",
    name = "RW_bridge-building",
    icon = "__RoadWorks__/graphics/technology/bridgeBuilding.png",
    prerequisites = {"concrete"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "RW_concrete-bridge"
      }
    },
    order = "c-c-d"
  }
}
)
