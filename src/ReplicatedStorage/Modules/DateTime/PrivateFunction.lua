-- What the sigma?

local v_u_1 = {}
local v_u_2 = math.floor
v_u_1.DAYS_IN_MONTH = {
	31,
	28,
	31,
	30,
	31,
	30,
	31,
	31,
	30,
	31,
	30,
	31
}
v_u_1.DAYS_BEFORE_MONTH = {
	0,
	31,
	59,
	90,
	120,
	151,
	181,
	212,
	243,
	273,
	304,
	334
}
v_u_1.MINYEAR = 1
v_u_1.MAXYEAR = 99999
v_u_1.MAXORDINAL = 4
function v_u_1.is_leap(p3)
	local v4
	if p3 % 4 == 0 then
		v4 = p3 % 100 ~= 0 and true or p3 % 400 == 0
	else
		v4 = false
	end
	return v4
end
function v_u_1.days_before_year(p5)
	-- upvalues: (copy) v_u_2
	local v6 = p5 - 1
	return v6 * 365 + v_u_2(v6 / 4) - v_u_2(v6 / 100) + v_u_2(v6 / 400)
end
function v_u_1.days_in_month(p7, p8)
	-- upvalues: (copy) v_u_1
	return v_u_1.DAYS_IN_MONTH[p8] + (v_u_1.is_leap(p7) and p8 == 2 and 1 or 0)
end
function v_u_1.days_before_month(p9, p10)
	-- upvalues: (copy) v_u_1
	return v_u_1.DAYS_BEFORE_MONTH[p10] + (v_u_1.is_leap(p9) and 2 < p10 and 1 or 0)
end
function v_u_1.ymd2ord(p11, p12, p13)
	-- upvalues: (copy) v_u_1
	return v_u_1.days_before_year(p11) + v_u_1.days_before_month(p11, p12) + p13
end
v_u_1.DI400Y = v_u_1.days_before_year(401)
v_u_1.DI100Y = v_u_1.days_before_year(101)
v_u_1.DI4Y = v_u_1.days_before_year(5)
function v_u_1.ord2ymd(p14)
	-- upvalues: (copy) v_u_1, (copy) v_u_2
	local v15 = p14 - 1
	local v16 = v_u_1.DI400Y
	local v17 = v_u_2(v15 / v16)
	local v18 = v15 % v16
	local v19 = v_u_1.DI100Y
	local v20 = v_u_2(v18 / v19)
	local v21 = v18 % v19
	local v22 = v_u_1.DI4Y
	local v23 = v_u_2(v21 / v22)
	local v24 = v21 % v22
	local v25 = v_u_2(v24 / 365)
	local v26 = v24 % 365
	local v27 = v17 * 400 + 1 + v20 * 100 + v23 * 4 + v25
	if v25 == 4 or v20 == 4 then
		return v27 - 1, 12, 31
	end
	local v28
	if v25 == 3 then
		v28 = v23 ~= 24 and true or v20 == 3
	else
		v28 = false
	end
	local v29 = v26 + 50
	local v30 = bit32.rshift(v29, 5)
	local v31 = v_u_1.DAYS_BEFORE_MONTH[v30] + (v28 and 2 < v30 and 1 or 0)
	if v26 < v31 then
		v30 = v30 - 1
		v31 = v31 - v_u_1.DAYS_IN_MONTH[v30] + (v28 and v30 == 2 and 1 or 0)
	end
	return v27, v30, v26 - v31 + 1
end
v_u_1.MONTHNAMES = {
	"Jan",
	"Feb",
	"Mar",
	"Apr",
	"May",
	"Jun",
	"Jul",
	"Aug",
	"Sep",
	"Oct",
	"Nov",
	"Dec"
}
v_u_1.DAYNAMES = {
	"Mon",
	"Tue",
	"Wed",
	"Thu",
	"Fri",
	"Sat",
	"Sun"
}
v_u_1.METATABLE = "The metatable is locked"
function v_u_1.READONLY(_, p32, _)
	return error(p32 .. " cannot be assigned to")
end
function v_u_1.to_raw(p33, p34, p35, p36, p37, p38, p39)
	-- upvalues: (copy) v_u_1
	if not p34 and not p35 and not p36 and not p37 and not p38 and not p39 and type(p33) == "table" then
		return rawget(p33, "_raw")
	end
	local v40, v41
	if p38 then
		v40 = p33
		p33 = p35
		p35 = p37
		p37 = p39
		v41 = p34
		p34 = p36
		p36 = p38
	elseif p39 then
		v40 = p33
		p33 = p35
		p35 = p37
		p37 = p39
		v41 = p34
		p34 = p36
		p36 = p38
	else
		v41 = 1
		v40 = 1
	end
	return v_u_1.ymd2ord(v40, v41, p33) * 86400000 + p34 * 3600000 + p35 * 60000 + p36 * 1000 + p37
end
function v_u_1.from_raw(p42)
	-- upvalues: (copy) v_u_2
	return v_u_2(p42 / 86400000), v_u_2(p42 / 3600000) % 24, v_u_2(p42 / 60000) % 60, v_u_2(p42 / 1000) % 60, p42 % 1000
end
return v_u_1