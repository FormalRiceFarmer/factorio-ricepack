require "defines"

-- math shortcuts
local floor = math.floor
local ceil = math.ceil
local abs = math.abs
local cos = math.cos
local sin = math.sin
local pi = math.pi
local max = math.max
local min = math.min
local rad = math.rad

local vector = require("vector")


local function findClosest(reference, vectors)
	candidateIndex = 1
	candidate = vectors[candidateIndex]
	distance = reference:dist2(candidate)
	for index, vec in ipairs(vectors) do
		currentDistance = reference:dist2(vec)
		if currentDistance < distance then
			candidate = vec
			distance = currentDistance
			candidateIndex = index
		end
	end
	return candidateIndex, candidate
end

local function printTable(name, vectors)
	buff = ""
	for index, vec in ipairs(vectors) do
		x,y = vec:unpack()
		buff = buff .. "(" .. x .. "," .. y .. "), "
	end
	game.player.print(name .. ": " .. buff)
end

local function generatePoints(number, rpg)
	points = {}
	for i = 1, number do
		pos = rpg()
		points[#points + 1] = pos
	end
	return points
end

local function printIfPlayer(message)
	if game.tick > 60 then
		game.player.print(message)
	end
end

-----------------------------------------------------------------

Polygon = {}
Polygon.__index = Polygon

function Polygon.new(rpg)
	local poly = {}				-- our new object
	setmetatable(poly, Polygon)	-- make Polygon handle lookup
	
	
	points = generatePoints(15, rpg)
	
	poly.vertices = {}
	poly:fromPoints(points)
	
	-- poly:print()
	
	return poly
end

function Polygon.newCircular(rng, minRadius, maxRadius)
	local poly = {}
	setmetatable(poly, Polygon)
	
	local max_radius_diff = 3
	
	local minX = 0
	local maxX = 0
	local minY = 0
	local maxY = 0
	
	local last_radius = floor((minRadius + maxRadius) / 2)
	
	local angle = 0
	local angle_step_min = 15
	-- local angle_step_max = ceil(120 / maxRadius) + angle_step_min
	local angle_step_max = 45
	
	local points = {}
	
	while angle < 360 do
		radius = rng(minRadius, maxRadius)
		
		-- make sure we do not have vastly differing radii
		if abs(radius - last_radius) > max_radius_diff then
			if radius > last_radius then
				radius = last_radius + max_radius_diff
			else
				radius = last_radius - max_radius_diff
			end
		end
		
		
		point = vector.new(cos(rad(angle))*radius, sin(rad(angle))*radius)
		points[#points + 1] = point
		
		if point.x < minX then minX = point.x end
		if point.x > maxX then maxX = point.x end
		if point.y < minY then minY = point.y end
		if point.y > maxY then maxY = point.y end
		
		angle = angle + rng(angle_step_min, angle_step_max)
	end
	
	poly.vertices = points
	poly.minX = minX
	poly.maxX = maxX
	poly.minY = minY
	poly.maxY = maxY
	
	return poly
end

function Polygon:getSize()
	return self.size
end

function Polygon:getMinX()
	return self.minX
end

function Polygon:getMaxX()
	return self.maxX
end

function Polygon:getMinY()
	return self.minY
end

function Polygon:getMaxY()
	return self.maxY
end

function Polygon:print()
	printTable("polygon", self.vertices)
end

function Polygon:fromPoints(points)
	local minXIndex = 1
	local maxXIndex = 1
	
	local vectors = {}
	
	for index, point in ipairs(points) do
		if point.x < points[minXIndex].x then minXIndex = index end
		if point.x > points[maxXIndex].x then maxXIndex = index end
		
		vectors[index] = vector.new(point.x, point.y)
	end
	
	minVector = vectors[minXIndex]
	maxVector = vectors[maxXIndex]
	table.remove(vectors, maxXIndex)
	table.remove(vectors, minXIndex)
	
	
	divider = maxVector - minVector
	
	-- printTable("vectors", vectors)
	
	aboveVectors = {}
	belowVectors = {}
	
	for index, vec in ipairs(vectors) do
		local relativeVector = vec - minVector
		
		if divider:cross(relativeVector) < 0 then
			belowVectors[#belowVectors + 1] = vec
		else
			aboveVectors[#aboveVectors + 1] = vec
		end
	end
	
	-- printTable("aboveVectors", aboveVectors)
	-- printTable("belowVectors", belowVectors)
	
	
	vertices = {}
	vertices[#vertices + 1] = minVector
	currentPos = minVector
	while #aboveVectors > 0 do
		index, closestVector = findClosest(currentPos, aboveVectors)
		vertices[#vertices + 1] = closestVector
		currentPos = closestVector
		table.remove(aboveVectors, index)
	end
	
	belowPath = {}
	vertices[#vertices + 1] = maxVector
	currentPos = maxVector
	while #belowVectors > 0 do
		index, closestVector = findClosest(currentPos, belowVectors)
		vertices[#vertices + 1] = closestVector
		currentPos = closestVector
		table.remove(belowVectors, index)
	end
	
	self.vertices = vertices
	
	-- x,y = minVector:unpack()
	-- buff = "(" .. x .. "," .. y .. "), "
	-- for index, vec in ipairs(abovePath) do
		-- x,y = vec:unpack()
		-- buff = buff .. "(" .. x .. "," .. y .. "), "
	-- end
	-- game.player.print("above: " .. buff)
	
	-- x,y = maxVector:unpack()
	-- buff = "(" .. x .. "," .. y .. "), "
	-- for index, vec in ipairs(belowPath) do
		-- x,y = vec:unpack()
		-- buff = buff .. "(" .. x .. "," .. y .. "), "
	-- end
	-- game.player.print("below: " .. buff)
	
end

function Polygon:contains(point)
        -- test if an edge cuts the ray
        local function cut_ray(p,q)
                return ((p.y > point.y and q.y < point.y) or (p.y < point.y and q.y > point.y)) -- possible cut
                        and (point.x - p.x < (point.y - p.y) * (q.x - p.x) / (q.y - p.y)) -- x < cut.x
        end

        -- test if the ray crosses boundary from interior to exterior.
        -- this is needed due to edge cases, when the ray passes through
        -- polygon corners
        local function cross_boundary(p,q)
                return (p.y == point.y and p.x > point.x and q.y < point.y)
                        or (q.y == point.y and q.x > point.x and p.y < point.y)
        end

        local v = self.vertices
        local in_polygon = false
        for i = 1, #v do
                local p, q = v[i], v[(i % #v) + 1]
                if cut_ray(p,q) or cross_boundary(p,q) then
                        in_polygon = not in_polygon
                end
        end
        return in_polygon
end

function Polygon:getVertices()
	return self.vertices
end



return Polygon