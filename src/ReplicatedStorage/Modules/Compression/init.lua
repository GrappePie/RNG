-- What the sigma?

local v1 = {}
local v2 = require(script.compression)
local v_u_3 = require(script.bitbuffer)
local v_u_4 = v2.Zlib.Compress
local v_u_5 = v2.Zlib.Decompress
local v_u_6 = v_u_3.new()
local v_u_7 = true
local function v_u_9(p8)
	-- upvalues: (ref) v_u_7, (copy) v_u_6
	if not v_u_7 then
		v_u_6:ResetBuffer()
	end
	v_u_7 = false
	v_u_6:WriteString(p8)
	return v_u_6:ToBase128()
end
function v1.compress(p10, p11, p12)
	-- upvalues: (copy) v_u_4, (copy) v_u_9
	return v_u_9((v_u_4(p10, {
		["level"] = p11 or 6,
		["strategy"] = p12 or "dynamic"
	})))
end
function v1.decompress(p13)
	-- upvalues: (copy) v_u_3, (copy) v_u_5
	return v_u_5((v_u_3.FromBase128(p13):ReadString()))
end
return v1