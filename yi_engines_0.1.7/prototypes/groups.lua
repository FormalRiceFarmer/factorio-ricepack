
--automatically generated file | fMT-Export (c)YT v0.03-215Jul17 

data:extend({

	--YI-Engines/Experiments
	{ type="item-group", name="yi_engines", icon="__yi_engines__/graphics/yi-engines-icon.png", inventory_order="y", order="yi-e1" },
	--YI-Agronomie
	{ type="item-group", name="yie_harvest", icon="__yi_engines__/graphics/yi_engines_harvest.png", inventory_order="y", order="yi-e2" },

	{ type="item-subgroup", group="yi_engines", order="e", name="yie-engines", }, --Engines
	{ type="item-subgroup", group="yi_engines", order="y", name="yie-exp", }, --temporary experimental stuff
	{ type="item-subgroup", group="yi_engines", order="f", name="yie-fluids", }, --all fluids (MF)
	{ type="item-subgroup", group="yi_engines", order="a", name="yie-parts", }, --building parts
	{ type="item-subgroup", group="yi_engines", order="p", name="yie-processed", }, --products
	{ type="item-subgroup", group="yi_engines", order="h", name="yie_machinery", }, --machinery
	{ type="item-subgroup", group="yi_engines", order="x", name="ys-test", },
	{ type="item-subgroup", group="yuoki_liquids", order="g", name="yie_fluid_handle", }, --fluid handling
	{ type="item-subgroup", group="yie_harvest", order="mc", name="yie_agromachinery", }, --agriculture machinery
	{ type="item-subgroup", group="yie_harvest", order="mb", name="yie_agroproducts", }, --agriculture products
	{ type="item-subgroup", group="yie_harvest", order="dna", name="yie_dnaline", }, --DNA-Line
	{ type="item-subgroup", group="yie_harvest", order="m", name="yie_farming", }, --farming stuff
	{ type="item-subgroup", group="yie_harvest", order="l", name="yie_trades", }, --trade stuff

	{ type="recipe-category", name="yrcat-eg1" }, --c
	{ type="recipe-category", name="yrcat-eg2" }, --c
	{ type="recipe-category", name="yrcat-eg3" }, --c
	{ type="recipe-category", name="yrcat-eg4" }, --stirlings
	{ type="recipe-category", name="yrcat-farm" }, --farm itself
	{ type="recipe-category", name="yrcat-heater" }, --overheater for steam
	{ type="recipe-category", name="yrcat-mf1a" }, --mechanical force primary - sfe
	{ type="recipe-category", name="yrcat-mf1b" }, --mechanical force primary - ffe
	{ type="recipe-category", name="yrcat-mf1c" }, --mechanical force primary - stirling
	{ type="recipe-category", name="yrcat-mf1q" }, --mechanical force quantrinum-reactor
	{ type="recipe-category", name="yrcat-mf2" }, --gearbox
	{ type="recipe-category", name="yrcat-pump" }, --water-pump
	{ type="recipe-category", name="yrcat_fluidhandle" }, --fluid handling
	{ type="recipe-category", name="yrcat_meat" }, --meat-category
	{ type="recipe-category", name="yrcat_turbine" }, --steam to mechanical power

})