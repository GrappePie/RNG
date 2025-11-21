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
local v_u_6 = v1:WaitForChild("Events"):WaitForChild("StrangeControllerCoolDownStart")
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
		table.insert(v10, v11)
	end
end
local v_u_12 = v10
local function v_u_29()
	-- upvalues: (ref) v_u_12
	if math.random(1, 15000 * (1716649200 >= DateTime.now().UnixTimestamp and 1 or 2)) == 5 then
		return "Glitched"
	end
	local v13 = {}
	for _, v14 in v_u_12 do
		local v15 = v14.BiomeName
		table.insert(v13, v15)
	end
	local v16 = {}
	for _, v17 in v_u_12 do
		local v18 = 1 / v17.Rarity
		table.insert(v16, v18)
	end
	local v19 = 0
	for _, v20 in ipairs(v16) do
		v19 = v19 + v20
	end
	local v21 = {}
	local v22 = 0
	for v23, v24 in ipairs(v16) do
		v22 = v22 + v24 / v19
		v21[v23] = v22
	end
	local v25 = math.random()
	local v26 = nil
	for v27, v28 in v21 do
		if v25 <= v28 then
			return v13[v27]
		end
	end
	return v26
end
return function(p30)
	-- upvalues: (copy) v_u_4, (ref) v_u_9, (copy) v_u_29, (copy) v_u_7, (copy) v_u_5, (copy) v_u_6
	local v31 = v_u_4.GetStore(p30, true).StrangeControllerCoolDown
	if 1 <= v_u_4.GetStore(p30, true).StrangeControllerCoolDown then
		return ("Strange Controller cool down: %* : %* left"):format(v31 // 60, v31 % 60)
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
	local v32 = v_u_29()
	local v33 = nil
	for v34, v35 in v_u_7 do
		if v35.BiomeName == v32 then
			v33 = v_u_7[v34]
		end
	end
	v_u_5:LoadWeather(v33.BiomeName, v33.Duration)
	v_u_6:Fire(p30)
end