-- What the sigma?

local v1 = {
	{
		["ItemName"] = "Wind essence",
		["EarningPoints"] = 1
	},
	{
		["ItemName"] = "Icicle",
		["EarningPoints"] = 1
	},
	{
		["ItemName"] = "Rainy Bottle",
		["EarningPoints"] = 1
	},
	{
		["ItemName"] = "Eternal Flame",
		["EarningPoints"] = 13
	},
	{
		["ItemName"] = "Piece of Star",
		["EarningPoints"] = 15
	},
	{
		["ItemName"] = "Curruptaine",
		["EarningPoints"] = 18
	},
	{
		["ItemName"] = "NULL?",
		["EarningPoints"] = 27
	},
	{
		["ItemName"] = "Stella Star",
		["EarningPoints"] = 3
	},
	{
		["ItemName"] = "Void Coin",
		["EarningPoints"] = 100
	}
}
local v_u_2 = {}
for v3, v4 in ipairs(v1) do
	v4.Index = v3
	v_u_2[v4.ItemName] = v4
end
setmetatable(v1, {
	["__index"] = function(_, p5)
		-- upvalues: (copy) v_u_2
		if p5 == "Container" then
			return v_u_2
		end
		local v6 = v_u_2
		return rawget(v6, p5)
	end
})
return v1