script.on_init(function()
   if global.TickerA == nil then
      global.TickerA = 59
   end
   if global.TickerB == nil then
      global.TickerB = 5
   end

end)

script.on_load(function()
   if global.TickerA == nil then
      global.TickerA = 59
   end
   if global.TickerB == nil then
      global.TickerB = 5
   end
end)

-- following code by Fatmice, used with permission
script.on_event(defines.events.on_built_entity, function(event)
   Registration(event.created_entity)
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
   Registration(event.created_entity)
end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) 
   Unregistration(event.entity)
end)
script.on_event(defines.events.on_robot_pre_mined, function(event)
   Unregistration(event.entity)
end)
script.on_event(defines.events.on_entity_died, function(event)
   Unregistration(event.entity)
end)

function Registration(entity)
   if entity.name == "y-gearbox-power" then
      if global.YGBX == nil then
         global.YGBX = {}
      end
      local yegearboxen = {}
      yegearboxen[1] = entity
      table.insert(global.YGBX, yegearboxen)
   elseif entity.name == "ye_overheater" then
      if global.YFYO == nil then
         global.YFYO = {}
      end
      local ye_overh = {}
      ye_overh[1] = entity
      table.insert(global.YFYO, ye_overh)
   elseif entity.name == "ye_sturbine" then
      if global.YSTT == nil then
         global.YSTT = {}
      end
      local yesturbines = {}
      yesturbines[1] = entity
      table.insert(global.YSTT, yesturbines)
   end
end

function Unregistration(entity)
   if entity.name == "y-gearbox-power" then
      local found_index
      local found_entity
     local found_entity_x = entity.position.x
     local found_entity_y = entity.position.y
      for index,entry in ipairs(global.YGBX) do
         if entry[1] == entity and found_entity_x == entry[1].position.x and found_entity_y == entry[1].position.y then
            found_index = index
            found_entity = entry
            break
         end
      end
      table.remove(global.YGBX, found_index)
   elseif entity.name == "ye_overheater" then
      local found_index
      local found_entity
     local found_entity_x = entity.position.x
     local found_entity_y = entity.position.y
      for index,entry in ipairs(global.YFYO) do
         if entry[1] == entity and found_entity_x == entry[1].position.x and found_entity_y == entry[1].position.y then
            found_index = index
            found_entity = entry
            break
         end
      end
      table.remove(global.YFYO, found_index)
   elseif entity.name == "ye_sturbine" then
      local found_index
      local found_entity
     local found_entity_x = entity.position.x
     local found_entity_y = entity.position.y
      for index,entry in ipairs(global.YSTT) do
         if entry[1] == entity and found_entity_x == entry[1].position.x and found_entity_y == entry[1].position.y then
         found_index = index
            found_entity = entry
            break
         end
      end
      table.remove(global.YSTT, found_index)
   end
end

script.on_event(defines.events.on_tick, function(event)
   if global.TickerA == 0 then
      global.TickerA = 59
      --For things that tick each second
   else
      global.TickerA = global.TickerA - 1
   end
   if global.TickerB == 0 then
      global.TickerB = 5
      --For things that tick every 5/60th second
      gearbox()
      overHeater()
      steamTurbine()
   else
      global.TickerB = global.TickerB - 1
   end
   --For things that tick every 1/60th second
end)

function gearbox()
   if global.YGBX ~= nil then
      for k,YGBX in ipairs(global.YGBX) do
         if YGBX[1].valid then
            local fbin=1
            local fbout=3
            local yegearboxin = {}   
            -- added line because aritmethic-error in line 107 
            yegearboxin.temperature = 0       
            if YGBX[1].fluidbox[fbin] ~= nil then
               yegearboxin = YGBX[1].fluidbox[fbin]
            end
            if YGBX[1].fluidbox[fbout] ~= nil then
               YGBX[1].fluidbox[fbout] = {
                  ["type"] = YGBX[1].fluidbox[fbout].type,
                  ["amount"] = YGBX[1].fluidbox[fbout].amount,
                  ["temperature"] = yegearboxin.temperature + 100              
               }
            end
         else
            table.remove(global.YGBX, k)
         end
      end
   end
end

function overHeater()
   if global.YFYO ~= nil then
      for k,YFYO in ipairs(global.YFYO) do
         if YFYO[1].valid then
            local fbin=1
            local fbout=2
            if YFYO[1].fluidbox[fbin] ~= nil then
               if YFYO[1].fluidbox[fbin].temperature > 92 then
                  if YFYO[1].fluidbox[fbout] ~= nil then
                     YFYO[1].fluidbox[fbout] = {
                        ["type"] = YFYO[1].fluidbox[fbout].type,
                        ["amount"] = YFYO[1].fluidbox[fbout].amount,
                        ["temperature"] = 275
                     }
                  end
               end
            end
         else
            table.remove(global.YFYO, k)
         end
      end
   end
end

function steamTurbine()
   if global.YSTT ~= nil then
      for k,YSTT in ipairs(global.YSTT) do
         if YSTT[1].valid then
            local fbin=1
            local fbout_mechForce=2
            local fbout_water=3
            if YSTT[1].fluidbox[fbin] ~= nil then
               if YSTT[1].fluidbox[fbout_mechForce] ~= nil and YSTT[1].fluidbox[fbin]["temperature"] > 205 then
                  YSTT[1].fluidbox[fbout_mechForce] = {
                     ["type"] = YSTT[1].fluidbox[fbout_mechForce].type,
                     ["amount"] = YSTT[1].fluidbox[fbout_mechForce].amount,
                     ["temperature"] = 400
                  }
               end
               if YSTT[1].fluidbox[fbout_water] ~= nil and YSTT[1].fluidbox[fbin]["temperature"] > 205 then
                  YSTT[1].fluidbox[fbout_water] = {
                     ["type"] = YSTT[1].fluidbox[fbout_water].type,
                     ["amount"] = YSTT[1].fluidbox[fbout_water].amount,
                     ["temperature"] = 86
                  }
               end
            end
         else
            table.remove(global.YSTT, k)
         end
      end
   end
end
