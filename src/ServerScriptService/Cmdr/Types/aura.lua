-- What the sigma?

local v_u_1 = require(script.Parent.Parent.Shared.Util)
local v2 = {}
local v3 = game:GetService("ReplicatedStorage")
local v4 = require(v3:WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("RarityDB"))
local v5 = require(v3:WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("TierSkins"))
for _, v6 in ipairs(v4) do
	local v7 = v6.Value
	table.insert(v2, v7)
	if v5[v6.Value] then
		for v8 in v5[v6.Value] do
			local v9 = ("%*_%*"):format(v6.Value, v8)
			table.insert(v2, v9)
		end
	end
end
local v_u_10 = v_u_1.MakeFuzzyFinder(v2)
local v_u_18 = {
	["Transform"] = function(p11)
		-- upvalues: (copy) v_u_10
		local v12 = {}
		for v13, v14 in pairs(v_u_10(p11)) do
			v12[v13] = v14
		end
		return v12
	end,
	["Validate"] = function(p15)
		return 0 < #p15, "No valid auras with that name could be found."
	end,
	["Autocomplete"] = function(p16)
		-- upvalues: (copy) v_u_1
		return v_u_1.GetNames(p16)
	end,
	["Parse"] = function(p17)
		return p17[1]
	end
}
return function(p19)
	-- upvalues: (copy) v_u_18, (copy) v_u_1
	p19:RegisterType("aura", v_u_18)
	p19:RegisterType("auras", v_u_1.MakeListableType(v_u_18))
end