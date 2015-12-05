
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

	-- 
	{
	  type = "recipe",
	  name = "ye_can_petrol_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_petrol" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "petroleum-gas", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_petrol_e.png",
	  order = "f84", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_petrol_fill_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "fluid", name = "petroleum-gas" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_petrol", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_petrol_f.png",
	  order = "f084", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_co_fill_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "fluid", name = "crude-oil" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_co", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_co_f.png",
	  order = "f081", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_ho_fill_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "fluid", name = "heavy-oil" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_ho", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_ho_f.png",
	  order = "f082", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_sa_fill_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_sealing" , amount = 3.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "fluid", name = "sulfuric-acid" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_sa", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_sa_f.png",
	  order = "f083", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_co_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_co" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "crude-oil", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_co_e.png",
	  order = "f81", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_ho_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_ho" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "heavy-oil", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_ho_e.png",
	  order = "f82", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_sa_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_sa" , amount = 4.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 3.0, },
		{ type = "fluid", name = "sulfuric-acid", amount = 140.0, },
	  },
	  icon = "__yi_engines__/graphics/can_sa_e.png",
	  order = "f83", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_granulate_trifitan_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_celluose" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 14.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_granulate_vuger_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_b" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 2.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_granulate_corn_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_a" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 1.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye-corn2fluid-recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 30.00,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.3, },
		{ type = "item", name = "ye_corn_a" , amount = 100.0, },
	  },
	  results = {
		{ type = "fluid", name = "ye_cornoil", amount = 20.0, },
	  },
	  icon = "__yi_engines__/graphics/steam-low.png",
	  order = "0", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_cooking_meat",
	  category = "smelting", -- all furnace stuff
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "ye_rawmeat" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_meatcooked", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/cooked_meat.png",
	  order = "p07", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_trademeat2_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_meatcooked" , amount = 7.0, },
	  },
	  results = {
		{ type = "item", name = "y-quantrinum", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/trade_cooked_meat.png",
	  order = "t01", group = "yie_harvest", subgroup = "yie_trades",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_trademeat1_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_rawmeat" , amount = 120.0, },
	  },
	  results = {
		{ type = "item", name = "y-unicomp-a2", amount = 4.0, },
		{ type = "item", name = "ye_dna", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/trade_raw_meat.png",
	  order = "t00", group = "yie_harvest", subgroup = "yie_trades",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_slurry2ethanol_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 90.00,
	  ingredients = {
		{ type = "fluid", name = "ye_slurry" , amount = 150.0, },
		{ type = "item", name = "ye_sugar" , amount = 2.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_syngas_raw", amount = 30.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
	  order = "c04", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_tradeblood_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "ye_can_blood" , amount = 10.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/blood.png",
	  order = "t02", group = "yie_harvest", subgroup = "yie_trades",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_cornb_ws_recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 270.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 500.0, },
		{ type = "item", name = "ye_seed_b" , amount = 2.0, },
		{ type = "fluid", name = "ye_slurry" , amount = 62.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_b", amount = 400.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/icon_sugarcane_ws.png",
	  order = "a14", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye-growcorn_ws-recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 200.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 500.0, },
		{ type = "fluid", name = "ye_slurry" , amount = 48.0, },
		{ type = "item", name = "ye_seed_a" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_a", amount = 600.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/icon_corn_ws.png",
	  order = "a11", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_dna_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 8.00,
	  ingredients = {
		{ type = "item", name = "ye_rawmeat" , amount = 3.0, },
		{ type = "item", name = "science-pack-1" , amount = 8.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 3.0, },
		{ type = "fluid", name = "ye_blood" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_dna", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/dna2.png",
	  order = "p06", group = "yie_harvest", subgroup = "yie_dnaline",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_grow_animal_a",
	  category = "yrcat_meat", -- meat-category
	  enabled = "true",
	  energy_required = 600.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 600.0, },
		{ type = "item", name = "ye_corn_a" , amount = 140.0, },
		{ type = "item", name = "ye_dna" , amount = 1.0, },
		{ type = "item", name = "ye_corn_b" , amount = 50.0, },
	  },
	  results = {
		{ type = "item", name = "ye_rawmeat", amount = 44.0, },
		{ type = "fluid", name = "ye_blood", amount = 13.0, },
		{ type = "fluid", name = "ye_slurry", amount = 57.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/brain-parasite-1.png",
	  order = "fa1", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_dnai_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 8.00,
	  ingredients = {
		{ type = "item", name = "alien-artifact" , amount = 5.0, },
		{ type = "item", name = "science-pack-2" , amount = 100.0, },
		{ type = "item", name = "science-pack-3" , amount = 20.0, },
	  },
	  results = {
		{ type = "item", name = "ye_dna", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/dna.png",
	  order = "p05", group = "yie_harvest", subgroup = "yie_dnaline",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_meatfarm_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "stone-brick" , amount = 12.0, },
		{ type = "item", name = "pipe" , amount = 4.0, },
		{ type = "item", name = "y-iron-case" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "ye_meatfarm", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/cage_empty_icon.png",
	  order = "mf2", group = "yie_harvest", subgroup = "yie_agromachinery",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_blood_fill_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "ye_blood" , amount = 20.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "fluid", name = "ye_steam" , amount = 75.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_blood", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_red_f.png",
	  order = "f07", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_blood_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_blood" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "ye_blood", amount = 20.0, },
	  },
	  icon = "__yi_engines__/graphics/can_red_e.png",
	  order = "f61", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_slurry_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_slurry" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "ye_slurry", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_dg_e.png",
	  order = "f51", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_mf_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_mf" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "y-mechanical-force", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_mf_e.png",
	  order = "f41", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_lub_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_lub" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "lubricant", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_lub_e.png",
	  order = "f41", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_veg_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_veg" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "ye_cornoil", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_veg_e.png",
	  order = "f21", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_eth_empty_recipe",
	  category = "crafting-with-fluid", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "ye_can_eth" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
		{ type = "fluid", name = "light-oil", amount = 35.0, },
	  },
	  icon = "__yi_engines__/graphics/can_eth_e.png",
	  order = "f11", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_lub_fill",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "lubricant" , amount = 35.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_lub", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/can_lub_f.png",
	  order = "f05", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_slurry_fill",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "ye_slurry" , amount = 35.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_slurry", amount = 1.0, },
	  },
	  order = "f06", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_mf_fill",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_mf", amount = 1.0, },
	  },
	  order = "f04", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_veg_fill",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
		{ type = "fluid", name = "ye_cornoil" , amount = 35.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_veg", amount = 1.0, },
	  },
	  order = "f03", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_can_eth_fill",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "light-oil" , amount = 35.0, },
		{ type = "item", name = "ye_canister" , amount = 1.0, },
		{ type = "item", name = "ye_sealing" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_can_eth", amount = 1.0, },
	  },
	  order = "f02", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_sealing",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "copper-plate" , amount = 1.0, },
		{ type = "item", name = "ye_celluose" , amount = 2.0, },
		{ type = "item", name = "ye_corn_b" , amount = 12.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.7, },
	  },
	  results = {
		{ type = "item", name = "ye_sealing", amount = 40.0, },
	  },
	  icon = "__yi_engines__/graphics/sealing.png",
	  order = "f00", group = "yi_engines", subgroup = "yie-parts",
	},

	-- fluid handling
	{
	  type = "recipe",
	  name = "ye_canmachine_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-gearbox-power" , amount = 2.0, },
		{ type = "item", name = "y-sfe" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_canmachine", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/canning-icon.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_machinery",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_canister_recipe",
	  category = "yrcat_fluidhandle", -- fluid handling
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y_structure_vessel" , amount = 1.0, },
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 1.3, },
	  },
	  results = {
		{ type = "item", name = "ye_canister", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/canister.png",
	  order = "f01", group = "yi_engines", subgroup = "yie_fluid_handle",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_tfmw_generator-s-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_tfmw_generator-s", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/wip.png",
	  order = "0", group = "yi_engines", subgroup = "yie_machinery",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_biofuel_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_biomixed" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 72.0, },
	  },
	  icon = "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "p04", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_synwood_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "ye_celluose" , amount = 18.0, },
	  },
	  results = {
		{ type = "item", name = "raw-wood", amount = 3.0, },
	  },
	  icon = "__base__/graphics/icons/raw-wood.png",
	  order = "p09", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- sugar
	{
	  type = "recipe",
	  name = "ye_sugar_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 6.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_b" , amount = 30.0, },
	  },
	  results = {
		{ type = "item", name = "ye_sugar", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/sugar.png",
	  order = "p03", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- rabio
	{
	  type = "recipe",
	  name = "ye_biomixed_recipe",
	  category = "advanced-crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_sugar" , amount = 4.0, },
		{ type = "item", name = "ye_corn_a" , amount = 70.0, },
	  },
	  results = {
		{ type = "item", name = "ye_biomixed", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/biomixed.png",
	  order = "p02", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_seed_b_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_seed_a" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_b", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/sugar-seed.png",
	  order = "a03", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_celluose_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_a" , amount = 40.0, },
		{ type = "item", name = "ye_corn_b" , amount = 80.0, },
		{ type = "fluid", name = "water" , amount = 30.0, },
	  },
	  results = {
		{ type = "item", name = "ye_celluose", amount = 12.0, },
	  },
	  icon = "__yi_engines__/graphics/cellulose.png",
	  order = "p01", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- 
	{
	  type = "recipe",
	  name = "ye_cornb_recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 420.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 500.0, },
		{ type = "item", name = "ye_seed_b" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_b", amount = 300.0, },
	  },
	  icon = "__yi_engines__/graphics/sugarcane.png",
	  order = "a13", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- only for testings
	{
	  type = "recipe",
	  name = "ye_rheinsberg_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum-charge" , amount = 1.0, },
		{ type = "item", name = "y-electric-air-heater" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "ye_rheinsberg", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/rheinsberg-icon.png",
	  order = "0", group = "yi_engines", subgroup = "yie_machinery",
	},

	-- steam to mechanical power
	{
	  type = "recipe",
	  name = "ye_steam2mf_recipe",
	  category = "yrcat_turbine", -- steam to mechanical power
	  enabled = "true",
	  energy_required = 1.20,
	  ingredients = {
		{ type = "fluid", name = "ye_steam" , amount = 480.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 24.0, },
		{ type = "fluid", name = "water", amount = 40.0, },
	  },
	  icon = "__yi_engines__/graphics/mf-1.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- Steam-Turbine
	{
	  type = "recipe",
	  name = "ye_sturbine_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_sturbine", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/wip.png",
	  order = "0", group = "yi_engines", subgroup = "yie-engines",
	},

	-- overheater for steam
	{
	  type = "recipe",
	  name = "ye_overheater_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_overheater", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/wip.png",
	  order = "0", group = "yi_engines", subgroup = "yie_machinery",
	},

	-- make steam - needs lua-code
	{
	  type = "recipe",
	  name = "ye_makesteam_recipe",
	  category = "yrcat-heater", -- overheater for steam
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 20.0, },
	  },
	  results = {
		{ type = "fluid", name = "ye_steam", amount = 240.0, },
	  },
	  icon = "__yi_engines__/graphics/steam.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission without lubricant
	{
	  type = "recipe",
	  name = "y-mf2b-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.50,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 1.6, },
		{ type = "fluid", name = "water" , amount = 5.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 1.4, },
	  },
	  icon = "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- water-pump
	{
	  type = "recipe",
	  name = "y-mfwater-recipe",
	  category = "yrcat-pump", -- water-pump
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.1, },
	  },
	  results = {
		{ type = "fluid", name = "water", amount = 50.0, },
	  },
	  icon = "__yi_engines__/graphics/water-clean2.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- elektromotor + stirling
	{
	  type = "recipe",
	  name = "y-mf1c-recipe",
	  category = "yrcat-mf1c", -- mechanical force primary - stirling
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 0.4, },
	  },
	  icon = "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 1
	{
	  type = "recipe",
	  name = "y-mf1-q1-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 25.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 2
	{
	  type = "recipe",
	  name = "y-mf1-q2-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-infused-uca2" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 100.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- quantrium-reactor power-generation recipe 3
	{
	  type = "recipe",
	  name = "y-mf1-q3-recipe",
	  category = "yrcat-mf1q", -- mechanical force quantrinum-reactor
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum-charge" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 500.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_xtra.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- gearbox transmission with lubricant
	{
	  type = "recipe",
	  name = "y-mf2a-recipe",
	  category = "yrcat-mf2", -- gearbox
	  enabled = "true",
	  energy_required = 0.25,
	  ingredients = {
		{ type = "fluid", name = "y-mechanical-force" , amount = 2.6, },
		{ type = "fluid", name = "lubricant" , amount = 0.1, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 2.5, },
	  },
	  icon = "__yi_engines__/graphics/gears_br.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- without lubricant, still water for cooling - sfe
	{
	  type = "recipe",
	  name = "y-mf1a1-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 20.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 1.8, },
	  },
	  icon = "__yi_engines__/graphics/gear_basic.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- Hydromechanical Power
	{
	  type = "recipe",
	  name = "y-mf1b-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "heavy-oil" , amount = 3.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf1d-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "light-oil" , amount = 2.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 4.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- SFE - burn corn-oil - self lubricant
	{
	  type = "recipe",
	  name = "y-mf1e-recipe",
	  category = "yrcat-mf1b", -- mechanical force primary - ffe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "ye_cornoil" , amount = 3.0, },
		{ type = "fluid", name = "water" , amount = 15.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-mf1a-recipe",
	  category = "yrcat-mf1a", -- mechanical force primary - sfe
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 10.0, },
		{ type = "fluid", name = "lubricant" , amount = 0.2, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/gear_wet.png",
	  order = "0", group = "yi_engines", subgroup = "yie-fluids",
	},

	-- small e-motor
	{
	  type = "recipe",
	  name = "y-emotor-s-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "copper-cable" , amount = 2.0, },
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "y-winding" , amount = 1.0, },
		{ type = "item", name = "y-heat-pipe" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y-emotor-s", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/e-motor-icon.png",
	  order = "c", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Little Stirling Engine
	{
	  type = "recipe",
	  name = "y-1stirling-engine-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-gear-wheel" , amount = 3.0, },
		{ type = "item", name = "engine-unit" , amount = 1.0, },
		{ type = "item", name = "y-heat-pipe" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y-1stirling-engine", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/energy2/ast-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-engines",
	},

	-- Electric Air-Heater
	{
	  type = "recipe",
	  name = "y-electric-air-heater-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "engine-unit" , amount = 1.0, },
		{ type = "item", name = "iron-gear-wheel" , amount = 2.0, },
		{ type = "item", name = "copper-cable" , amount = 7.0, },
		{ type = "item", name = "y-heat-pipe" , amount = 4.0, },
	  },
	  results = {
		{ type = "item", name = "y-electric-air-heater", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/energy2/air-heater-icon.png",
	  order = "d", group = "yi_engines", subgroup = "yie_machinery",
	},

	-- gearbox
	{
	  type = "recipe",
	  name = "y-gearbox-power-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "iron-gear-wheel" , amount = 2.0, },
		{ type = "item", name = "y-heat-pipe" , amount = 3.0, },
		{ type = "item", name = "y-bluegear" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y-gearbox-power", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/gearbox-icon.png",
	  order = "1", group = "yi_engines", subgroup = "yie_machinery",
	},

	-- shaft-blue
	{
	  type = "recipe",
	  name = "y-shaft-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-icon.png",
	  order = "1a", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Shaft-Red
	{
	  type = "recipe",
	  name = "y-shaft-r-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-red", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-r-icon.png",
	  order = "1c", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Underground-Shaft
	{
	  type = "recipe",
	  name = "y-shaft-ground-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 10.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-ground", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-ground-icon.png",
	  order = "1b", group = "yi_engines", subgroup = "yie-parts",
	},

	-- growing corn
	{
	  type = "recipe",
	  name = "ye-growcorn-recipe",
	  category = "yrcat-farm", -- farm itself
	  enabled = "true",
	  energy_required = 300.00,
	  ingredients = {
		{ type = "item", name = "ye_seed_a" , amount = 1.0, },
		{ type = "fluid", name = "water" , amount = 500.0, },
	  },
	  results = {
		{ type = "item", name = "ye_corn_a", amount = 500.0, },
	  },
	  icon = "__yi_engines__/graphics/corn-icon.png",
	  order = "a10", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- process corn-oil to lubricant
	{
	  type = "recipe",
	  name = "ye-cf2lubricant-recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "fluid", name = "ye_cornoil" , amount = 30.0, },
	  },
	  results = {
		{ type = "fluid", name = "lubricant", amount = 10.0, },
	  },
	  icon = "__yi_engines__/graphics/lubricant.png",
	  order = "a", group = "yie_harvest", subgroup = "yie_agroproducts",
	},

	-- Underground-Shaft-Red
	{
	  type = "recipe",
	  name = "y-shaft-ground-r-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 10.0, },
	  },
	  results = {
		{ type = "item", name = "y-mftrans-shaft-ground-red", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/shaft-pipe/shaft-ground-r-icon.png",
	  order = "1d", group = "yi_engines", subgroup = "yie-parts",
	},

	-- core seed
	{
	  type = "recipe",
	  name = "ye-seed_a2-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_corn_a" , amount = 20.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_a", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/seed-icon.png",
	  order = "a01", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- core seed
	{
	  type = "recipe",
	  name = "ye-seed_a1-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 7.00,
	  ingredients = {
		{ type = "item", name = "science-pack-2" , amount = 35.0, },
		{ type = "item", name = "y-dirt" , amount = 400.0, },
	  },
	  results = {
		{ type = "item", name = "ye_seed_a", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/icons/icon_iseed.png",
	  order = "a00", group = "yie_harvest", subgroup = "yie_farming",
	},

	-- iron case
	{
	  type = "recipe",
	  name = "y-iron-case-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 6.0, },
	  },
	  results = {
		{ type = "item", name = "y-iron-case", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/caseing-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie-parts",
	},

	-- Farm itself
	{
	  type = "recipe",
	  name = "ye_farm_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "stone-brick" , amount = 12.0, },
		{ type = "item", name = "pipe" , amount = 2.0, },
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "ye_farm", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/farm-icon.png",
	  order = "mf1", group = "yie_harvest", subgroup = "yie_agromachinery",
	},

	-- removes pollution, add waste
	{
	  type = "recipe",
	  name = "y-rmvpol-recipe",
	  category = "yrcat-eg4", -- stirlings
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 60.0, },
		{ type = "fluid", name = "y-mechanical-force" , amount = 0.2, },
	  },
	  results = {
		{ type = "item", name = "y-pol-waste", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/hot-air.png",
	  order = "a", group = "yi_engines", subgroup = "yie-processed",
	},

	-- Motor Wicklung
	{
	  type = "recipe",
	  name = "y-winding-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-plate" , amount = 2.0, },
		{ type = "item", name = "copper-cable" , amount = 14.0, },
	  },
	  results = {
		{ type = "item", name = "y-winding", amount = 3.0, },
	  },
	  icon = "__yi_engines__/graphics/winding-icon.png",
	  order = "i1", group = "yi_engines", subgroup = "yie-parts",
	},

	-- quantrinum-charge
	{
	  type = "recipe",
	  name = "y-quantrinum-charge-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 30.00,
	  ingredients = {
		{ type = "item", name = "y-iron-case" , amount = 1.0, },
		{ type = "item", name = "y-quantrinum" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-quantrinum-charge", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/quantrinum-32.png",
	  order = "a", group = "yi_engines", subgroup = "yie-parts",
	},

	-- craft water-pump
	{
	  type = "recipe",
	  name = "y-mwater-pump-recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "iron-gear-wheel" , amount = 4.0, },
		{ type = "item", name = "pipe" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-mwater-pump", amount = 1.0, },
	  },
	  icon = "__yi_engines__/graphics/entity/pump-icon.png",
	  order = "a", group = "yi_engines", subgroup = "yie_machinery",
	},

})