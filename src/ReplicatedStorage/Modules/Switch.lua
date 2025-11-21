-- What the sigma?

local v_u_1 = {}
v_u_1.__index = v_u_1
function v_u_1.__call(p2, p3, ...)
	local v4 = p2._callbacks[p3] or p2._default
	if not v4 then
		error("No case statement defined for variable, and :default is not defined")
	end
	return v4(p3, ...)
end
function v_u_1.case(p5, p6, p7)
	p5._callbacks[p6] = p7
	return p5
end
function v_u_1.default(p8, p9)
	p8._default = p9
	return p8
end
return function()
	-- upvalues: (copy) v_u_1
	local v10 = v_u_1
	local v11 = setmetatable({}, v10)
	v11._callbacks = {}
	return v11
end