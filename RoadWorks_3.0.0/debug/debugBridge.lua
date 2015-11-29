-- Change this to true to see the underlying special tiles under bridges
local bridgeXRay = false

if bridgeXRay then
	data.raw.tile["RW_walkable-water"].variants.main[1].picture = "__base__/graphics/terrain/concrete/concrete1.png"
	data.raw.tile["RW_walkable-water"].variants.main[1].count = 16
	data.raw.tile["RW_walkable-water"].variants.main[2].picture = "__base__/graphics/terrain/concrete/concrete2.png"
	data.raw.tile["RW_walkable-water"].variants.main[2].count = 4
	data.raw.tile["RW_walkable-water"].variants.main[3].picture = "__base__/graphics/terrain/concrete/concrete4.png"
	data.raw.tile["RW_walkable-water"].variants.main[3].count = 4

	data.raw.tile["RW_walkable-water"].variants["inner_corner"].picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png"
	data.raw.tile["RW_walkable-water"].variants["inner_corner"].count = 8
	data.raw.tile["RW_walkable-water"].variants["outer_corner"].picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png"
	data.raw.tile["RW_walkable-water"].variants["outer_corner"].count = 8
	data.raw.tile["RW_walkable-water"].variants.side.picture = "__base__/graphics/terrain/concrete/concrete-side.png"
	data.raw.tile["RW_walkable-water"].variants.side.count = 8
	data.raw.tile["RW_walkable-water"].variants["u_transition"].picture = "__base__/graphics/terrain/concrete/concrete-u.png"
	data.raw.tile["RW_walkable-water"].variants["u_transition"].count = 8
	data.raw.tile["RW_walkable-water"].variants["o_transition"].picture = "__base__/graphics/terrain/concrete/concrete-o.png"
	data.raw.tile["RW_walkable-water"].variants["o_transition"].count = 1
	
	-- ###
	
	data.raw.tile["RW_walkable-deepwater"].variants.main[1].picture = "__base__/graphics/terrain/stone-path/stone-path-1.png"
	data.raw.tile["RW_walkable-deepwater"].variants.main[1].count = 16
	data.raw.tile["RW_walkable-deepwater"].variants.main[2].picture = "__base__/graphics/terrain/stone-path/stone-path-2.png"
	data.raw.tile["RW_walkable-deepwater"].variants.main[2].count = 4
	data.raw.tile["RW_walkable-deepwater"].variants.main[3].picture = "__base__/graphics/terrain/stone-path/stone-path-4.png"
	data.raw.tile["RW_walkable-deepwater"].variants.main[3].count = 4

	data.raw.tile["RW_walkable-deepwater"].variants["inner_corner"].picture = "__base__/graphics/terrain/stone-path/stone-path-inner-corner.png"
	data.raw.tile["RW_walkable-deepwater"].variants["inner_corner"].count = 8
	data.raw.tile["RW_walkable-deepwater"].variants["outer_corner"].picture = "__base__/graphics/terrain/stone-path/stone-path-outer-corner.png"
	data.raw.tile["RW_walkable-deepwater"].variants["outer_corner"].count = 1
	data.raw.tile["RW_walkable-deepwater"].variants.side.picture = "__base__/graphics/terrain/stone-path/stone-path-side.png"
	data.raw.tile["RW_walkable-deepwater"].variants.side.count = 10
	data.raw.tile["RW_walkable-deepwater"].variants["u_transition"].picture = "__base__/graphics/terrain/stone-path/stone-path-u.png"
	data.raw.tile["RW_walkable-deepwater"].variants["u_transition"].count = 10
	data.raw.tile["RW_walkable-deepwater"].variants["o_transition"].picture = "__base__/graphics/terrain/stone-path/stone-path-o.png"
	data.raw.tile["RW_walkable-deepwater"].variants["o_transition"].count = 10

	-- ### ### ###
	
	data.raw.tile["RW_walkable-water-green"].variants.main[1].picture = "__base__/graphics/terrain/concrete/concrete1.png"
	data.raw.tile["RW_walkable-water-green"].variants.main[1].count = 16
	data.raw.tile["RW_walkable-water-green"].variants.main[2].picture = "__base__/graphics/terrain/concrete/concrete2.png"
	data.raw.tile["RW_walkable-water-green"].variants.main[2].count = 4
	data.raw.tile["RW_walkable-water-green"].variants.main[3].picture = "__base__/graphics/terrain/concrete/concrete4.png"
	data.raw.tile["RW_walkable-water-green"].variants.main[3].count = 4

	data.raw.tile["RW_walkable-water-green"].variants["inner_corner"].picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png"
	data.raw.tile["RW_walkable-water-green"].variants["inner_corner"].count = 8
	data.raw.tile["RW_walkable-water-green"].variants["outer_corner"].picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png"
	data.raw.tile["RW_walkable-water-green"].variants["outer_corner"].count = 8
	data.raw.tile["RW_walkable-water-green"].variants.side.picture = "__base__/graphics/terrain/concrete/concrete-side.png"
	data.raw.tile["RW_walkable-water-green"].variants.side.count = 8
	data.raw.tile["RW_walkable-water-green"].variants["u_transition"].picture = "__base__/graphics/terrain/concrete/concrete-u.png"
	data.raw.tile["RW_walkable-water-green"].variants["u_transition"].count = 8
	data.raw.tile["RW_walkable-water-green"].variants["o_transition"].picture = "__base__/graphics/terrain/concrete/concrete-o.png"
	data.raw.tile["RW_walkable-water-green"].variants["o_transition"].count = 1
	
	-- ###
	
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[1].picture = "__base__/graphics/terrain/stone-path/stone-path-1.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[1].count = 16
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[2].picture = "__base__/graphics/terrain/stone-path/stone-path-2.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[2].count = 4
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[3].picture = "__base__/graphics/terrain/stone-path/stone-path-4.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants.main[3].count = 4

	data.raw.tile["RW_walkable-deepwater-green"].variants["inner_corner"].picture = "__base__/graphics/terrain/stone-path/stone-path-inner-corner.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants["inner_corner"].count = 8
	data.raw.tile["RW_walkable-deepwater-green"].variants["outer_corner"].picture = "__base__/graphics/terrain/stone-path/stone-path-outer-corner.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants["outer_corner"].count = 1
	data.raw.tile["RW_walkable-deepwater-green"].variants.side.picture = "__base__/graphics/terrain/stone-path/stone-path-side.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants.side.count = 10
	data.raw.tile["RW_walkable-deepwater-green"].variants["u_transition"].picture = "__base__/graphics/terrain/stone-path/stone-path-u.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants["u_transition"].count = 10
	data.raw.tile["RW_walkable-deepwater-green"].variants["o_transition"].picture = "__base__/graphics/terrain/stone-path/stone-path-o.png"
	data.raw.tile["RW_walkable-deepwater-green"].variants["o_transition"].count = 10

	-- Make bridges transparent
	data.raw["simple-entity"]["RW_concrete-bridge"].pictures[1].filename = "__RoadWorks__/debug/graphics/debugBridge.png"
	data.raw["simple-entity"]["RW_concrete-bridge"].pictures[1].width = 64
	data.raw["simple-entity"]["RW_concrete-bridge"].pictures[1].height = 64
	data.raw["simple-entity"]["RW_concrete-bridge"].pictures[1].shift = {0, 0}
end











