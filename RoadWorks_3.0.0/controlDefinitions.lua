-- BASIC SETTINGS

-- list of bridge entities
RW_walkableBridgeList = {"RW_concrete-bridge", "RW_concrete-bridge-top", "RW_concrete-bridge-bottom", "RW_concrete-bridge-left", "RW_concrete-bridge-right"}

-- list of endings for bridges
RW_bridgeEndingList = {}
RW_bridgeEndingList["RW_concrete-bridge"] = {"RW_concrete-bridge", "RW_concrete-bridge-top", "RW_concrete-bridge-bottom", "RW_concrete-bridge-left", "RW_concrete-bridge-right"}

-- how much is effectivity and total consumption modified by different fuels
RW_fuelSpeedModifierList = {
	["RW_high-octane-fuel"] = {0.675, 2}, -- 200% consumption * 67.5% efficiency = 135% original speed (35% speed boost)
}





-- ADVANCED SETTINGS, DON'T MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING!!

-- terrain tiles which are to be changed to walkable tiles (in order of priority)
RW_bridgeTerrainConversionList = {
	{"water", "RW_walkable-water"},
	{"deepwater", "RW_walkable-deepwater"},
	{"water-green", "RW_walkable-water-green"},
	{"deepwater-green", "RW_walkable-deepwater-green"}
}

-- bridges won't become land-variations when over these tiles
RW_bridgeWaterList = {"water", "deepwater", "water-green", "deepwater-green", "RW_walkable-water", "RW_walkable-deepwater", "RW_walkable-water-green", "RW_walkable-deepwater-green"}

RWcarSpeedModifiersFrequency = 30 -- how often to check cars for upgrades and fuel types