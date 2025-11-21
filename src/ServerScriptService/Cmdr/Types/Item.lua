-- What the sigma?

local v1 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("ItemDB"))
local v_u_2 = require(script.Parent.Parent.Shared.Util)
local v3 = {}
for v4, _ in v1 do
	table.insert(v3, v4)
end
local v_u_5 = v_u_2.MakeFuzzyFinder(v3)
local v_u_13 = {
	["Transform"] = function(p6)
		-- upvalues: (copy) v_u_5
		local v7 = {}
		for v8, v9 in pairs(v_u_5(p6)) do
			v7[v8] = v9
		end
		return v7
	end,
	["Validate"] = function(p10)
		return 0 < #p10, "No valid items with that name could be found."
	end,
	["Autocomplete"] = function(p11)
		-- upvalues: (copy) v_u_2
		return v_u_2.GetNames(p11)
	end,
	["Parse"] = function(p12)
		return p12[1]
	end
}
return function(p14)
	-- upvalues: (copy) v_u_13, (copy) v_u_2
	p14:RegisterType("item", v_u_13)
	p14:RegisterType("items", v_u_2.MakeListableType(v_u_13))
end