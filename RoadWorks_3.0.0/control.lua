require "controlDefinitions"

--require "debug.debugControlFunctions"

require "scripts.bridgeHandling"

--[[script.on_init(function()
	global.RWbridgeTileRestoreList = {}
	
end)

script.on_event(defines.events.on_tick, function(event)

	RWcarSpeedModifiersTick()
end)]]

script.on_event(defines.events.on_built_entity, function(event)
	
	RW_updateBridgeTiles(event.created_entity)
	
	RW_updateBridgeEndings(event.created_entity)
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	
	RW_updateBridgeTiles(event.created_entity)
	
	RW_updateBridgeEndings(event.created_entity)
end)

script.on_event(defines.events.on_preplayer_mined_item, function(event)
	
	RW_updateBridgeTiles(event.entity, true)
	
	RW_updateBridgeEndings(event.entity, true)
end)

script.on_event(defines.events.on_preplayer_mined_item, function(event)
	
	RW_updateBridgeTiles(event.entity, true)
	
	RW_updateBridgeEndings(event.entity, true)
end)

script.on_event(defines.events.on_robot_pre_mined, function(event)
	
	RW_updateBridgeTiles(event.entity, true)
	
	RW_updateBridgeEndings(event.entity)
end)

script.on_event(defines.events.on_entity_died, function(event)
	
	RW_updateBridgeTiles(event.entity, true)
end)