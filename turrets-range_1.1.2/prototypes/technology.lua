data:extend({
    {
        type = "technology",
        name = "turret-range-probing",
        icon = "__turrets-range__/graphics/turret-probe.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "turret-probe"
            }
        },
        unit = {
            count = 20,
            ingredients = {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 }
            },
            time = 20
        },
        order = "a-j-c",
        prerequisites = { "electronics", "turrets" }
    }
})

