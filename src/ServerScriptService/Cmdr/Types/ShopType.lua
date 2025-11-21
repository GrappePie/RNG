-- What the sigma?

local v_u_1 = require(script.Parent.Parent.Shared.Util)
local v2 = game:GetService("ReplicatedStorage")
require(v2:WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("RarityDB"))
require(v2:WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("TierSkins"))
local v_u_3 = v_u_1.MakeFuzzyFinder({ "Normal", "Special" })
local v_u_11 = {
	["Transform"] = function(p4)
		-- upvalues: (copy) v_u_3
		local v5 = {}
		for v6, v7 in pairs(v_u_3(p4)) do
			v5[v6] = v7
		end
		return v5
	end,
	["Validate"] = function(p8)
		return 0 < #p8, "No valid auras with that name could be found."
	end,
	["Autocomplete"] = function(p9)
		-- upvalues: (copy) v_u_1
		return v_u_1.GetNames(p9)
	end,
	["Parse"] = function(p10)
		return p10[1]
	end
}
return function(p12)
	-- upvalues: (copy) v_u_11
	p12:RegisterType("shop", v_u_11)
end