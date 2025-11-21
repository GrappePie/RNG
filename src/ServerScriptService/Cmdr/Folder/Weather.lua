-- What the sigma?

local v_u_1 = require(script.Parent.Parent.Shared.Util)
local v_u_2 = {}
local v3 = game:GetService("RunService"):IsServer()
local v4 = v3 and Instance.new("RemoteFunction", script) or script:WaitForChild("RemoteFunction")
if v3 then
	for _, v5 in pairs(require(game:GetService("ServerStorage"):WaitForChild("ModuleScripts"):WaitForChild("DB"):WaitForChild("BiomeSettings"))) do
		local v6 = v5.BiomeName
		local v7 = v_u_2
		table.insert(v7, v6)
	end
	function v4.OnServerInvoke()
		-- upvalues: (ref) v_u_2
		return v_u_2
	end
else
	v_u_2 = v4:InvokeServer()
end
local v_u_8 = v_u_1.MakeFuzzyFinder(v_u_2)
local v_u_16 = {
	["Transform"] = function(p9)
		-- upvalues: (copy) v_u_8
		local v10 = {}
		for v11, v12 in pairs(v_u_8(p9)) do
			v10[v11] = v12
		end
		return v10
	end,
	["Validate"] = function(p13)
		return 0 < #p13, "No valid weathers with that name could be found."
	end,
	["Autocomplete"] = function(p14)
		-- upvalues: (copy) v_u_1
		return v_u_1.GetNames(p14)
	end,
	["Parse"] = function(p15)
		return p15[1]
	end
}
return function(p17)
	-- upvalues: (copy) v_u_16, (copy) v_u_1
	p17:RegisterType("weather", v_u_16)
	p17:RegisterType("weathers", v_u_1.MakeListableType(v_u_16))
end