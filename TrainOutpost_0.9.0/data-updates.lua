require "config"

for resource_name, resource in pairs(data.raw.resource) do
	-- do not spawn the resource naturally
	resource.autoplace.peaks[#resource.autoplace.peaks+1] = {influence=-1000}

	-- make resource infinite
	data.raw.resource[resource_name].infinite = true
	if ((resources_config[resource_name] ~= nil) and (resources_config[resource_name].type == "resource-liquid")) then
		data.raw.resource[resource_name].minimum  = liquid_min
		data.raw.resource[resource_name].normal   = liquid_normal
	else
		data.raw.resource[resource_name].minimum  = resource_min
		data.raw.resource[resource_name].normal   = resource_normal
	end
end

for _, spawner in pairs(data.raw["unit-spawner"]) do
	-- do not spawn enemies naturally
	spawner.autoplace.peaks[#spawner.autoplace.peaks+1] = {influence=-1000}
end

for _, turret in pairs(data.raw.turret) do
	-- do not spawn (enemy) turrets naturally
	if turret.subgroup == "enemies" then
		turret.autoplace.peaks[#turret.autoplace.peaks+1] = {influence=-1000}
	end
end


data.raw["recipe"]["straight-rail"].result_count = 20
data.raw["recipe"]["curved-rail"].result_count = 20