data:extend(
{
	--[[
  {
    type = "technology",
    name = "y-gunturret-compatible-dmg1-tech",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
		turret_id = "gun-turret-mk2",
        modifier = "0.15"
      },	  
      {
        type = "turret-attack",
		turret_id = "gun-turret-mk3",
        modifier = "0.2"
      }	 	  
    },
    prerequisites = {"turrets"},
    unit =
    {
      count = 15,
      ingredients =
      {
        {"science-pack-1", 1},    
        {"science-pack-2", 1}
      },
      time = 20
    },
    upgrade = "true",
    order = "e-o-a"	
  },
  {
    type = "technology",
    name = "y-gunturret-compatible-dmg2-tech",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
		turret_id = "gun-turret-mk2",
        modifier = "0.4"
      },	  
      {
        type = "turret-attack",
		turret_id = "gun-turret-mk3",
        modifier = "0.35"
      }	 	  	  
    },
    prerequisites = {"gun-turret-damage-3"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},    
        {"science-pack-2", 1}
      },
      time = 20
    },
    upgrade = "true",
    order = "e-o-b"
  },  
  ]]
}
)
