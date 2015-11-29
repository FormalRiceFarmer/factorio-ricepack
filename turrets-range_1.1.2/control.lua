require "defines"

global.turret_range_entities = {}

function round(x) 
    return x + 0.5 - (x + 0.5) % 1
end

function draw_turret_range(turret_type, sx, sy, r)

    local x = 0
    local y = 0
    local angle = 0
    local drawmap = {}

    sx = round(sx) - 1
    sy = round(sy) - 1

    while angle < math.pi * 2 do

        angle = angle + 0.03
        x = round(math.cos(angle) * r + sx)
        y = round(math.sin(angle) * r + sy)

        if drawmap[x .. "x" .. y] == nil then
            drawmap[x .. "x" .. y] = true
            table.insert(global.turret_range_entities, game.get_surface(1).create_entity{
                name = turret_type .. "-turret-range-overlay",
                position = { x = x, y = y }
            })
        end

    end

end

script.on_event(defines.events.on_built_entity, function(event) 

    local player = game.get_player(event.player_index)
    local created_entity = event.created_entity
    local entity = nil
    local pos = created_entity.position
    local turret_type = ""
    local found = false

    if created_entity.name == "turret-probe" then

        player.insert{name = "turret-probe", count = 1}
        created_entity.destroy()

        entity = game.get_surface(1).find_entities{{ pos.x, pos.y }, { pos.x, pos.y }}
        if #entity > 0 then
            if entity[1].type == "electric-turret" or entity[1].type == "ammo-turret" or entity[1].type == "turret" then
                found = true
                if entity[1].type == "electric-turret" then
                    turret_type = "laser"
                else
                    turret_type = "gun"
                end
                draw_turret_range(turret_type, entity[1].position.x, entity[1].position.y, entity[1].prototype.turret_range)
            end
        end

        if not found then
            for i = 1, #global.turret_range_entities do
                global.turret_range_entities[i].destroy()
            end
            global.turret_range_entities = {}
        end

    end

end)

