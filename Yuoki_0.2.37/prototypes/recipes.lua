
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

	-- 
	{
	  type = "recipe",
	  name = "y_gauge_analog_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_structure_vessel" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_gauge", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/gauge.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_flowcheck_10_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_gauge" , amount = 1.0, },
		{ type = "item", name = "y_structure_vessel" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_flowcheck_10", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/flow_indicator_icon.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_quantrinum_infusion_recipe",
	  category = "yuoki-alien-recipe", -- infuser ?
	  enabled = "true",
	  energy_required = 60.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum" , amount = 1.0, },
		{ type = "item", name = "y-crystal-cnd" , amount = 1.0, },
		{ type = "item", name = "y-unicomp-a2" , amount = 5.0, },
	  },
	  results = {
		{ type = "item", name = "y_quantrinum_infused", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/charged_quantrinum_icon.png",
	  order = "0", group = "vanilla", subgroup = "y-tech",
	},

	-- for recipes that uses research
	{
	  type = "recipe",
	  name = "y_data_crystal_recipe",
	  category = "yuoki-wonder-recipe", -- 
	  enabled = "true",
	  energy_required = 8.00,
	  ingredients = {
		{ type = "item", name = "y-crystal2" , amount = 20.0, },
		{ type = "item", name = "science-pack-2" , amount = 5.0, },
	  },
	  results = {
		{ type = "item", name = "y_crystal2_combined", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/blue_style.png",
	  order = "0", group = "vanilla", subgroup = "y-tech",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_ft_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "fluid", name = "y_syngas_raw" , amount = 15.0, },
		{ type = "item", name = "y_catalyst_ft" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "light-oil", amount = 1.0, },
		{ type = "fluid", name = "petroleum-gas", amount = 2.0, },
		{ type = "item", name = "y_usedcatalyst", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/ctl_ft_32.png",
	  order = "c2", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_rawsyngas2_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_organic_dust" , amount = 4.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_syngas_raw", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
	  order = "c4", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_regcatft_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
		{ type = "item", name = "y_usedcatalyst" , amount = 10.0, },
		{ type = "item", name = "y_catalyst_base" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_ft", amount = 10.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/icon_regftcat32.png",
	  order = "bb", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_regcatbp_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_usedcatalyst" , amount = 10.0, },
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_bp", amount = 10.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/icon_regbpcat28.png",
	  order = "ba", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_coal2liquid",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "fluid", name = "y_hydrogen" , amount = 20.0, },
		{ type = "item", name = "y-coal-dust" , amount = 10.0, },
		{ type = "item", name = "y_catalyst_bp" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_usedcatalyst", amount = 1.0, },
		{ type = "fluid", name = "crude-oil", amount = 10.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/ctl_b32.png",
	  order = "c1", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_refinehydrogen_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "y_syngas_raw" , amount = 3.0, },
		{ type = "fluid", name = "water" , amount = 8.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_hydrogen", amount = 8.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/obs/hydrogen_i32.png",
	  order = "d", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_rawsyngas1_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-coal-dust" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_syngas_raw", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
	  order = "c3", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_uc2catalyst",
	  category = "yuoki-atomics-recipe", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_base", amount = 48.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/atomics/buy_catbase.png",
	  order = "x", group = "yuoki-atomics", subgroup = "y-atomics-r",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_catalyst_ft_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-raw-fuelnium" , amount = 1.0, },
		{ type = "item", name = "y-unicomp-raw" , amount = 1.0, },
		{ type = "item", name = "y_catalyst_base" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_ft", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/icon_ftcat32.png",
	  order = "ab", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_catalyst_bp_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-raw" , amount = 1.0, },
		{ type = "item", name = "y-raw-fuelnium" , amount = 1.0, },
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_bp", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/icon_bpcat28.png",
	  order = "aa", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_granulate_wood_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "raw-wood" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 7.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

})