data:extend
(
	{
		{
			type = "tile",
			name = "RW_walkable-water",
			needs_correction = false,
			collision_mask = {"floor-layer"},
			layer = 200,
			variants =
			{
				main =
				{
					{
						picture = "__base__/graphics/terrain/water/water1.png",
						count = 8,
						size = 1
					},
					{
						picture = "__base__/graphics/terrain/water/water2.png",
						count = 8,
						size = 2
					},
					{
						picture = "__base__/graphics/terrain/water/water4.png",
						count = 6,
						size = 4
					}
				},
				inner_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-inner-corner.png",
					count = 6
				},
				outer_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-outer-corner.png",
					count = 6
				},
				side =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-side.png",
					count = 8
				},
				u_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-u.png",
					count = 8
				},
				o_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-o.png",
					count = 8
				}
			},
			walking_sound =
			{
				{
					filename = "__base__/sound/walking/concrete-01.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-02.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-03.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-04.ogg",
					volume = 1.2
				}
			},
			map_color={r=100, g=100, b=100},
			ageing=0,
			walking_speed_modifier = bridgeWalkingSpeed,
			vehicle_friction_modifier = bridgeVehicleFriction
		},
		{
			type = "tile",
			name = "RW_walkable-deepwater",
			needs_correction = false,
			collision_mask = {"floor-layer"},
			layer = 201,
			variants =
			{
				main =
				{
					{
						picture = "__base__/graphics/terrain/deepwater/deepwater1.png",
						count = 8,
						size = 1
					},
					{
						picture = "__base__/graphics/terrain/deepwater/deepwater2.png",
						count = 8,
						size = 2
					},
					{
						picture = "__base__/graphics/terrain/deepwater/deepwater4.png",
						count = 6,
						size = 4
					}
				},
				inner_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-inner-corner.png",
					count = 6
				},
				outer_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-outer-corner.png",
					count = 6
				},
				side =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-side.png",
					count = 8
				},
				u_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-u.png",
					count = 8
				},
				o_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-o.png",
					count = 8
				}
			},
			walking_sound =
			{
				{
					filename = "__base__/sound/walking/concrete-01.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-02.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-03.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-04.ogg",
					volume = 1.2
				}
			},
			map_color={r=100, g=100, b=100},
			ageing=0,
			walking_speed_modifier = bridgeWalkingSpeed,
			vehicle_friction_modifier = bridgeVehicleFriction
		},
		{
			type = "tile",
			name = "RW_walkable-water-green",
			needs_correction = false,
			collision_mask = {"floor-layer"},
			layer = 200,
			variants =
			{
				main =
				{
					{
						picture = "__base__/graphics/terrain/water-green/water-green1.png",
						count = 8,
						size = 1
					},
					{
						picture = "__base__/graphics/terrain/water-green/water-green2.png",
						count = 8,
						size = 2
					},
					{
						picture = "__base__/graphics/terrain/water-green/water-green4.png",
						count = 6,
						size = 4
					}
				},
				inner_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-green-inner-corner.png",
					count = 6
				},
				outer_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-green-outer-corner.png",
					count = 6
				},
				side =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-green-side.png",
					count = 8
				},
				u_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-green-u.png",
					count = 8
				},
				o_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/water-green-o.png",
					count = 8
				}
			},
			walking_sound =
			{
				{
					filename = "__base__/sound/walking/concrete-01.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-02.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-03.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-04.ogg",
					volume = 1.2
				}
			},
			map_color={r=100, g=100, b=100},
			ageing=0,
			walking_speed_modifier = bridgeWalkingSpeed,
			vehicle_friction_modifier = bridgeVehicleFriction
		},
		{
			type = "tile",
			name = "RW_walkable-deepwater-green",
			needs_correction = false,
			collision_mask = {"floor-layer"},
			layer = 201,
			variants =
			{
				main =
				{
					{
						picture = "__base__/graphics/terrain/deepwater-green/deepwater-green1.png",
						count = 8,
						size = 1
					},
					{
						picture = "__base__/graphics/terrain/deepwater-green/deepwater-green2.png",
						count = 8,
						size = 2
					},
					{
						picture = "__base__/graphics/terrain/deepwater-green/deepwater-green4.png",
						count = 6,
						size = 4
					}
				},
				inner_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-green-inner-corner.png",
					count = 6
				},
				outer_corner =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-green-outer-corner.png",
					count = 6
				},
				side =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-green-side.png",
					count = 8
				},
				u_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-green-u.png",
					count = 8
				},
				o_transition =
				{
					picture = "__RoadWorks__/graphics/terrain/walkableWater/deepwater-green-o.png",
					count = 8
				}
			},
			walking_sound =
			{
				{
					filename = "__base__/sound/walking/concrete-01.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-02.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-03.ogg",
					volume = 1.2
				},
				{
					filename = "__base__/sound/walking/concrete-04.ogg",
					volume = 1.2
				}
			},
			map_color={r=100, g=100, b=100},
			ageing=0,
			walking_speed_modifier = bridgeWalkingSpeed,
			vehicle_friction_modifier = bridgeVehicleFriction
		}
	}
)