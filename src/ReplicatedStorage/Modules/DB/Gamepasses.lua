-- What the sigma?

local v1 = {
	[1] = "QuickRoll",
	[2] = "VIP",
	[3] = "InvisibleGear"
}
local v_u_2 = {
	["__metatable"] = "locked"
}
for v3, v4 in pairs(v1) do
	v_u_2[v4] = v3
end
function v_u_2.__index(_, p5)
	-- upvalues: (copy) v_u_2
	if typeof(p5) == "string" and p5 ~= "__index" and p5 ~= "__metatable" then
		local v6 = v_u_2
		return rawget(v6, p5)
	end
end
setmetatable(v1, v_u_2)
return v1