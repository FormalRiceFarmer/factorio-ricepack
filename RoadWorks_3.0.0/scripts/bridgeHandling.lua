require "defines"

function RW_updateBridgeTiles(eventEntity, bridgeDestroyed)

	-- make sure the game doesn't crash when the entity placed is already deleted (by another mod or script)
	if not eventEntity.valid then
		return
	end
	
	local entityType = eventEntity.name
	
	for k,v in pairs(RW_walkableBridgeList) do
		if v == entityType then
			
			local surface = eventEntity.surface
			
			local tilesTable = {}
			
			local entityPosition = eventEntity.position
			
			for tX = -1, 0, 1 do
				for tY = -1, 0, 1 do
					local tileX = entityPosition.x + tX
					local tileY = entityPosition.y + tY
					
					local tileName = surface.get_tile(tileX, tileY).name
					
					for k, v in pairs(RW_bridgeTerrainConversionList) do
						if bridgeDestroyed then
							if tileName == v[2] then -- if a bridge was destroyed, remove the walkable bridge tiles
								tilesTable[#tilesTable + 1] = {name = v[1], position = {tileX, tileY}}
								break
							end
						else 
							if tileName == v[1] then -- otherwise the bridge was built, so create the walkable tiles
								tilesTable[#tilesTable + 1] = {name = v[2], position = {tileX, tileY}}
								break
							end
						end
					end
				end
			end
			
			surface.set_tiles(tilesTable)
			break
		end
	end
end

function RW_updateBridgeEndings(eventEntity, destroySelf)
	
	if not eventEntity.valid then
		return
	end
	
	local entityType = eventEntity.name
	
	for k,v in pairs(RW_bridgeEndingList) do
		for k1,v1 in pairs(RW_bridgeEndingList[k]) do
			if entityType == v1 then
				local surface = eventEntity.surface
				
				local entityX = eventEntity.position.x
				local entityY = eventEntity.position.y
				
				if destroySelf then
					eventEntity.destroy()
				end
				
				local nearbyEntities = surface.find_entities_filtered{area = {{entityX - 2, entityY - 2}, {entityX + 2, entityY + 2}}, type="simple-entity"}
				
				for k2,v2 in pairs(nearbyEntities) do
					local neighbourName = v2.name
				
					for k3,v3 in pairs(RW_bridgeEndingList[k]) do
						if neighbourName == v3 then
							RW_handleBridgeEnding(v2, k)
							break
						end
					end
				end
				
				break
			end
		end
	end
end

--[[function RW_updateBridgeEndings(eventEntity)
	
	if not eventEntity.valid then
		return
	end
	
	local entityType = eventEntity.name
	
	for k,v in pairs(RW_bridgeEndingList) do
		if entityType == k then
			local surface = eventEntity.surface
			
			local entityX = eventEntity.position.x
			local entityY = eventEntity.position.y
			
			local nearbyEntities = surface.find_entities_filtered{area = {{entityX - 2, entityY - 2}, {entityX + 2, entityY + 2}}, type="simple-entity"}
			
			for k2,v2 in pairs(nearbyEntities) do
				local neighbourName = v2.name
			
				for k3,v3 in pairs(RW_bridgeEndingList[k]) do
					if neighbourName == v3 then
						RW_handleBridgeEnding(v2, k)
						break
					end
				end
			end
			
			break
		end
	end
end]]--

function RW_handleBridgeEnding(entity, baseEntityType)
	
	if not entity.valid then
		return
	end
	
	local surface = entity.surface
	
	local entityX = entity.position.x
	local entityY = entity.position.y
	
	-- abort if the bridge is wholly above water
	--[[local waterCounter = 0
	
	for tX = -1, 0, 1 do
		for tY = -1, 0, 1 do
			local tileX = entityX + tX
			local tileY = entityY + tY
					
			local tileName = surface.get_tile(tileX, tileY).name
			
			for k,v in pairs(RW_bridgeWaterList) do
				if (tileName == v) then
					waterCounter = waterCounter + 1
					break
				end
			end
		end
	end
	
	if (waterCounter == 4) then
		return
	end]]--
	
	-- abort if any part of the bridge still protrudes above water
	for tX = -1, 0, 1 do
		for tY = -1, 0, 1 do
			local tileX = entityX + tX
			local tileY = entityY + tY
					
			local tileName = surface.get_tile(tileX, tileY).name
			
			for k,v in pairs(RW_bridgeWaterList) do
				if (tileName == v) then
					return
				end
			end
		end
	end
	
	local entityType = entity.name
	
	-- neighbourBits
	-- horizontal - 1 = left, 2 = right
	-- vertical - 1 = top, 2 = bottom
	-- both - 0 = none, 3 = both
	
	local desiredPiece = RW_bridgeEndingList[baseEntityType][1]
	
	local verticalNeighbours = 0
		
	for k,v in pairs(RW_bridgeEndingList[baseEntityType]) do
		local neighbours = surface.count_entities_filtered{area = {{entityX, entityY - 2}, {entityX, entityY - 2}}, name=v}
			
		if (neighbours > 0) then
			verticalNeighbours = verticalNeighbours + 1
			break
		end
	end
		
	for k,v in pairs(RW_bridgeEndingList[baseEntityType]) do
		local neighbours = surface.count_entities_filtered{area = {{entityX, entityY + 2}, {entityX, entityY + 2}}, name=v}
			
		if (neighbours > 0) then
			verticalNeighbours = verticalNeighbours + 2
			break
		end
	end
		
	if (verticalNeighbours == 1) then
		desiredPiece = RW_bridgeEndingList[baseEntityType][3]
	elseif (verticalNeighbours == 2) then
		desiredPiece = RW_bridgeEndingList[baseEntityType][2]
	end
	
	if ((verticalNeighbours == 0) or (verticalNeighbours == 3)) then
	
		local horizontalNeighbours = 0
	
		for k,v in pairs(RW_bridgeEndingList[baseEntityType]) do
			local neighbours = surface.count_entities_filtered{area = {{entityX - 2, entityY}, {entityX - 2, entityY}}, name=v}
			
			if (neighbours > 0) then
				horizontalNeighbours = horizontalNeighbours + 1
				break
			end
		end
		
		for k,v in pairs(RW_bridgeEndingList[baseEntityType]) do
			local neighbours = surface.count_entities_filtered{area = {{entityX + 2, entityY}, {entityX + 2, entityY}}, name=v}
			
			if (neighbours > 0) then
				horizontalNeighbours = horizontalNeighbours + 2
				break
			end
		end
		
		if (horizontalNeighbours == 1) then
			desiredPiece = RW_bridgeEndingList[baseEntityType][5]
		elseif (horizontalNeighbours == 2) then
			desiredPiece = RW_bridgeEndingList[baseEntityType][4]
		end
	end
	
	if (entityType ~= desiredPiece) then
		local newEntity = surface.create_entity
		{
			name = desiredPiece,
			position = entity.position,
			force = entity.force
		}	
		
		newEntity.health = entity.health
		
		entity.destroy()
	end
end
















