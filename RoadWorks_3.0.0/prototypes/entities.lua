data:extend
(
	{
		{
			type = "simple-entity",
			name = "RW_concrete-bridge",
			minable = {hardness = 0.2, mining_time = 2.0, result = "RW_concrete-bridge"},
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			collision_mask = {"object-layer"},
			order = "x[bridge]-b[concrete-bridge]",
			icon = "__RoadWorks__/graphics/icons/concreteBridge.png",
			collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
			selection_box = {{-1, -1}, {1, 1}},
			render_layer = "floor",
			max_health = 250,
			resistances =
			{
				{
					type = "fire",
					percent = 100
				}
			},
			pictures =
			{
				{
					filename = "__RoadWorks__/graphics/entity/concreteBridge/concreteBridge_Center.png",
					width = 64,
					height = 82,
					count = 1,
					shift = {0, 0.268}
				},
			}
		},
		
		{
			type = "simple-entity",
			name = "RW_concrete-bridge-top",
			minable = {hardness = 0.2, mining_time = 2.0, result = "RW_concrete-bridge"},
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			collision_mask = {"object-layer"},
			order = "x[bridge]-b[concrete-bridge]",
			icon = "__RoadWorks__/graphics/icons/concreteBridge.png",
			collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
			selection_box = {{-1, -1}, {1, 1}},
			render_layer = "floor",
			max_health = 250,
			resistances =
			{
				{
					type = "fire",
					percent = 100
				}
			},
			pictures =
			{
				{
					filename = "__RoadWorks__/graphics/entity/concreteBridge/concreteBridge_Top.png",
					--width = 85,
					width = 64,
					height = 64,
					count = 1,
					--shift = {0.294, 0}
				},
			}
		},
		
		{
			type = "simple-entity",
			name = "RW_concrete-bridge-bottom",
			minable = {hardness = 0.2, mining_time = 2.0, result = "RW_concrete-bridge"},
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			collision_mask = {"object-layer"},
			order = "x[bridge]-b[concrete-bridge]",
			icon = "__RoadWorks__/graphics/icons/concreteBridge.png",
			collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
			selection_box = {{-1, -1}, {1, 1}},
			render_layer = "floor",
			max_health = 250,
			resistances =
			{
				{
					type = "fire",
					percent = 100
				}
			},
			pictures =
			{
				{
					filename = "__RoadWorks__/graphics/entity/concreteBridge/concreteBridge_Bottom.png",
					--width = 85,
					width = 64,
					height = 64,
					count = 1,
					--shift = {0.294, 0}
				},
			}
		},
		
		{
			type = "simple-entity",
			name = "RW_concrete-bridge-left",
			minable = {hardness = 0.2, mining_time = 2.0, result = "RW_concrete-bridge"},
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			collision_mask = {"object-layer"},
			order = "x[bridge]-b[concrete-bridge]",
			icon = "__RoadWorks__/graphics/icons/concreteBridge.png",
			collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
			selection_box = {{-1, -1}, {1, 1}},
			render_layer = "floor",
			max_health = 250,
			resistances =
			{
				{
					type = "fire",
					percent = 100
				}
			},
			pictures =
			{
				{
					filename = "__RoadWorks__/graphics/entity/concreteBridge/concreteBridge_Left.png",
					width = 64,
					height = 82,
					count = 1,
					shift = {0, 0.268}
				},
			}
		},
		
		{
			type = "simple-entity",
			name = "RW_concrete-bridge-right",
			minable = {hardness = 0.2, mining_time = 2.0, result = "RW_concrete-bridge"},
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			collision_mask = {"object-layer"},
			order = "x[bridge]-b[concrete-bridge]",
			icon = "__RoadWorks__/graphics/icons/concreteBridge.png",
			collision_box = {{-0.95, -0.95}, {0.95, 0.95}},
			selection_box = {{-1, -1}, {1, 1}},
			render_layer = "floor",
			max_health = 250,
			resistances =
			{
				{
					type = "fire",
					percent = 100
				}
			},
			pictures =
			{
				{
					filename = "__RoadWorks__/graphics/entity/concreteBridge/concreteBridge_Right.png",
					width = 64,
					height = 82,
					count = 1,
					shift = {0, 0.268}
				},
			}
		}
	}
)