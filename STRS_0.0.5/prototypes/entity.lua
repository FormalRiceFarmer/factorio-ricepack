data:extend(
{   --long range radar
    {
    type = "radar",
    name = "lr-radar",
    icon = "__STRS__/graphics/icons/lr-radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "lr-radar"},
    max_health = 150,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},    
	energy_per_sector = "18MJ",				     --time between scans; 30kW = 1MJ = 1second
    max_distance_of_sector_revealed = 28,		 --range to scan max
    max_distance_of_nearby_sector_revealed = -1,  --Revealing FOW in each directions in chuncks
    energy_per_nearby_scan = "250kJ",			 --i dont have an idea

    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "900kW",
    pictures =
    {                      
      filename = "__STRS__/graphics/entity/lr-radar/lr-radar.png",
      priority = "low",
      width = 153,
      height = 131,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.34375} -- shift = {0.875, -0.34375}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
    },
	
	 --doppler radar
	{
    type = "radar",
    name = "doppler-radar",
    icon = "__STRS__/graphics/icons/lr-radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "doppler-radar"},
    max_health = 150,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},    
	energy_per_sector = "50MJ",				     --time between scans; 30kW = 1MJ = 1second
    max_distance_of_sector_revealed = 3,		 --range to scan max
    max_distance_of_nearby_sector_revealed = 8,  --Revealing FOW in each directions in chuncks
    energy_per_nearby_scan = "250kJ",			 --i dont have an idea

    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "660kW",
    pictures =
    {
      filename = "__STRS__/graphics/entity/doppler-radar/doppler-radar.png",
      priority = "low",
      width = 150,
      height = 128,
      apply_projection = false,
      direction_count = 128,
      line_length = 8,
      shift = {0.875, -0.35}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
    },
})
