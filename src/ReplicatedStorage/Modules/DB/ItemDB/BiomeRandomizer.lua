-- What the sigma?

if game:GetService("RunService"):IsClient() then
	return function()
		return ""
	end
end
game:GetService("ServerScriptService")
local v1 = game:GetService("ServerStorage")
game:GetService("ReplicatedStorage")
local v2 = v1:WaitForChild("ModuleScripts")
local v3 = v2:WaitForChild("DB")
local v_u_4 = require(v2:WaitForChild("DataStore"))
local v_u_5 = require(v2:WaitForChild("WeatherHandler"))
local v_u_6 = v1:WaitForChild("Events"):WaitForChild("BiomeRandomizerCoolDownStart")
local v_u_7 = require(v3:WaitForChild("BiomeSettings"))
local v8 = {
	["Normal"] = true,
	["Glitched"] = true,
	["Day"] = true,
	["Night"] = true
}
local v_u_9 = 0
local v10 = {}
for _, v11 in v_u_7 do
	if not v8[v11.BiomeName] then
		local v12 = v11.BiomeName
		table.insert(v10, v12)
	end
end
local v_u_13 = v10
return function(p14)
	-- upvalues: (copy) v_u_4, (ref) v_u_9, (ref) v_u_13, (copy) v_u_7, (copy) v_u_5, (copy) v_u_6
	local v15 = v_u_4.GetStore(p14, true).BiomeRandomizerCoolDown
	if 1 <= v_u_4.GetStore(p14, true).BiomeRandomizerCoolDown then
		return ("Biome Randomizer cool down: %* : %* left"):format(v15 // 60, v15 % 60)
	end
	if v_u_9 > 0 then
		return ("Server cool down: %* : %* left"):format(v_u_9 // 60, v_u_9 % 60)
	end
	task.spawn(function()
		-- upvalues: (ref) v_u_9
		v_u_9 = 600
		repeat
			task.wait(1)
			v_u_9 = v_u_9 - 1
		until v_u_9 <= 0
	end)
	local v16 = math.random(1, 15000 * (1716649200 >= DateTime.now().UnixTimestamp and 1 or 2)) == 5 and "Glitched" or v_u_13[math.random(1, #v_u_13)]
	local v17 = nil
	for v18, v19 in v_u_7 do
		if v19.BiomeName == v16 then
			v17 = v_u_7[v18]
		end
	end
	v_u_5:LoadWeather(v17.BiomeName, v17.Duration)
	v_u_6:Fire(p14)
end