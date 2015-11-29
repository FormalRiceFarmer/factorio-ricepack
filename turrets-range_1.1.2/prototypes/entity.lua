data:extend({
    {
        type = "decorative",
        name = "gun-turret-range-overlay",
        flags = {"placeable-neutral", "not-on-map"},
        icon = "__turrets-range__/graphics/overlay-gun.png",
        collision_mask = { "ghost-layer"},
        subgroup = "grass",
        order = "b[decorative]-b[turret-range-overlay-gun]",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        render_layer = "radius-visualization",
        pictures = {
            {
                filename = "__turrets-range__/graphics/overlay-gun.png",
                width = 32,
                height = 32
            }
        }
    },
    {
        type = "decorative",
        name = "laser-turret-range-overlay",
        flags = {"placeable-neutral", "not-on-map"},
        icon = "__turrets-range__/graphics/overlay-gun.png",
        collision_mask = { "ghost-layer"},
        subgroup = "grass",
        order = "b[decorative]-b[turret-range-overlay-gun]",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        render_layer = "radius-visualization",
        pictures = {
            {
                filename = "__turrets-range__/graphics/overlay-laser.png",
                width = 32,
                height = 32
            }
        }
    },
    {
        type = "decorative",
        name = "turret-probe",
        flags = {"placeable-neutral", "not-on-map"},
        icon = "__turrets-range__/graphics/turret-probe-entity.png",
        collision_mask = { "ghost-layer"},
        subgroup = "grass",
        order = "b[decorative]-b[turret-range-overlay-gun]",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        render_layer = "radius-visualization",
        pictures = {
            {
                filename = "__turrets-range__/graphics/turret-probe-entity.png",
                width = 32,
                height = 32
            }
        }
    }
})

