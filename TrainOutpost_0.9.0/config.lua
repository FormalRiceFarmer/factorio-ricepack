require "defines"
require "util"

debug_enabled = true

resource_min = 175
resource_normal = 350
liquid_min = 500
liquid_normal = 5000

region_size = 7
resource_starting_area_size = {width = 64, height = 64}
enemy_protection_zone_by_starting_area = {
	["none"] = 0,
	["very-small"] = 200,
	["small"] = 400,
	["medium"] = 600,
	["big"] = 800,
	["very-big"] = 1000,
}

generation_frequency = {
	["none"]		= 0,
	["very-low"]	= 0.35,
	["low"]			= 0.7,
	["normal"]		= 1,
	["high"]		= 2,
	["very-high"]	= 3,
}

generation_size = {
	["none"]		= 0,
	["very-small"]	= 0.35,
	["small"]		= 0.7,
	["medium"]		= 1,
	["big"]			= 1.5,
	["very-big"]	= 2,
}

generation_richness = {
	["very-poor"]	= {min=150, max=350},
	["poor"]		= {min=250, max=500},
	["regular"]		= {min=400, max=600},
	["good"]		= {min=600, max=800},
	["very-good"]	= {min=800, max=1000},
}

generation_richness_liquid = {
	["very-poor"]	= {min=2500, max=4500},
	["poor"]		= {min=3500, max=5500},
	["regular"]		= {min=4500, max=6500},
	["good"]		= {min=5500, max=7500},
	["very-good"]	= {min=6500, max=8500},
}

global_size_distance_factor = 1.35
global_richness_distance_factor = 1.01
global_spawn_probability = 0.15

global_enemy_size_distance_factor = 0.7
enemy_bases_per_region = 2

max_retries = 20

resources_config = {
	["iron-ore"] = {
		type = "resource-ore",
		size_base = 3,
		size_min = 2,
		size_max = 5,
		size_starting_min = 3,
		size_starting_max = 6,
		size_distance_adjust = 1.1,
		richness_distance_adjust = 1,
		probability_multiplier = 1,
	},
	["copper-ore"] = {
		type = "resource-ore",
		size_base = 3,
		size_min = 2,
		size_max = 5,
		size_starting_min = 3,
		size_starting_max = 6,
		size_distance_adjust = 1.1,
		richness_distance_adjust = 1,
		probability_multiplier = 1,
	},
	["coal"] = {
		type = "resource-ore",
		size_base = 2,
		size_min = 2,
		size_max = 4,
		size_starting_min = 3,
		size_starting_max = 6,
		size_distance_adjust = 1,
		richness_distance_adjust = 1,
		probability_multiplier = 1,
	},
	["stone"] = {
		type = "resource-ore",
		size_base = 2,
		size_min = 1,
		size_max = 2,
		size_starting_min = 1,
		size_starting_max = 3,
		size_distance_adjust = 0.6,
		richness_distance_adjust = 1,
		probability_multiplier = 0.9,
	},
	["crude-oil"] = {
		type="resource-liquid",
		size_base = 0,
		size_min = 1,
		size_max = 2,
		size_starting_min = 1,
		size_starting_max = 3,
		size_distance_adjust = 0.7,
		richness_distance_adjust = 1.2,
		probability_multiplier = 1,
	},["y-res1"] = {
		type = "resource-ore",
		size_base = 2,
		size_min = 1,
		size_max = 2,
		size_starting_min = 1,
		size_starting_max = 3,
		size_distance_adjust = 0.6,
		richness_distance_adjust = 1,
		probability_multiplier = 0.6,
	},["y-res2"] = {
		type = "resource-ore",
		size_base = 2,
		size_min = 1,
		size_max = 2,
		size_starting_min = 1,
		size_starting_max = 3,
		size_distance_adjust = 0.6,
		richness_distance_adjust = 1,
		probability_multiplier = 0.6,
	},["uranium-ore"] = {
		type = "resource-ore",
		size_base = 2,
		size_min = 1,
		size_max = 2,
		size_starting_min = 1,
		size_starting_max = 3,
		size_distance_adjust = 0.6,
		richness_distance_adjust = 1,
		probability_multiplier = 0.6,
	},
}

enemies_config = {
	["spawner"] = {
		size_base = 1,
		size_min = 0,
		size_max = 2,
		size_distance_adjust = 0.9,
		types = {
			["biter-spawner"] = {
				weight = 2,
				min_distance = 0
			},
			["spitter-spawner"] = {
				weight = 1,
				min_distance = 1
			},
		}
	},
	["turret"] = {
		size_base = 0,
		size_min = 0,
		size_max = 1,
		size_distance_adjust = 0.9,
		types = {
			["small-worm-turret"] = {
				weight = 3,
				min_distance = 0
			},
			["medium-worm-turret"] = {
				weight = 2,
				min_distance = 1
			},
			["big-worm-turret"] = {
				weight = 1,
				min_distance = 2
			}
		}
	}
}