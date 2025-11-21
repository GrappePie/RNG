-- What the sigma?

local v_u_1 = {}
local v_u_2 = {}
local v3 = script.Parent
local v_u_4 = require(v3.TimeSpan)
local v_u_5 = require(v3.PrivateFunction)
local v_u_6 = math.floor
local v_u_7 = math.min
function v_u_2.__index(p8, p9)
	-- upvalues: (copy) v_u_5, (copy) v_u_4, (copy) v_u_1
	local v10 = rawget(p8, "_raw")
	local v11, v12, v13, v14, v15 = v_u_5.from_raw(v10)
	local v16, v17, v18 = v_u_5.ord2ymd(v11)
	local v19 = {
		["Year"] = v16,
		["Month"] = v17,
		["Day"] = v18,
		["Hour"] = v12,
		["Minute"] = v13,
		["Second"] = v14,
		["Millisecond"] = v15,
		["Weekday"] = (v11 - 1) % 7 + 1,
		["Ordinal"] = v_u_5.days_before_month(v16, v17) + v18,
		["TimeOfDay"] = v_u_4.new(v12, v17, v14)
	}
	if v19[p9] then
		return v19[p9]
	end
	if v_u_1[p9] and p9 ~= "new" then
		return v_u_1[p9]
	end
	error(p9 .. " is not a valid member of DateTime")
end
function v_u_2.__add(p20, p21)
	-- upvalues: (copy) v_u_5, (copy) v_u_1
	local v22 = v_u_5.to_raw(p20) + v_u_5.to_raw(p21)
	local v23, v24, v25, v26, _ = v_u_5.from_raw(v22)
	local v27, v28, v29 = v_u_5.ord2ymd(v23)
	return v_u_1.new(v27, v28, v29, v24, v25, v26)
end
function v_u_2.__sub(p30, p_u_31)
	-- upvalues: (copy) v_u_5, (copy) v_u_1, (copy) v_u_4
	local v32 = v_u_5.to_raw(p30) - v_u_5.to_raw(p_u_31)
	local v33, _ = pcall(function()
		-- upvalues: (copy) p_u_31
		return p_u_31.TotalSeconds
	end)
	if not v33 then
		return v_u_4.new(v32)
	end
	local v34, v35, v36, v37, _ = v_u_5.from_raw(v32)
	local v38, v39, v40 = v_u_5.ord2ymd(v34)
	return v_u_1.new(v38, v39, v40, v35, v36, v37)
end
function v_u_2.__lt(p41, p42)
	-- upvalues: (copy) v_u_5
	return v_u_5.to_raw(p41) < v_u_5.to_raw(p42)
end
function v_u_2.__le(p43, p44)
	-- upvalues: (copy) v_u_5
	return v_u_5.to_raw(p43) <= v_u_5.to_raw(p44)
end
function v_u_2.__eq(p45, p46)
	-- upvalues: (copy) v_u_5
	return v_u_5.to_raw(p45) == v_u_5.to_raw(p46)
end
function v_u_2.__tostring(p47)
	return p47:ISO8601()
end
v_u_2.__newindex = v_u_5.READONLY
v_u_2.__metatable = v_u_5.METATABLE
function v_u_1.new(p48, p49, p50, p51, p52, p53, p54)
	-- upvalues: (copy) v_u_5, (copy) v_u_2
	local v55 = p51 or 0
	local v56 = p52 or 0
	local v57 = p53 or 0
	local v58 = p54 or 0
	if p48 < v_u_5.MINYEAR or v_u_5.MAXYEAR < p48 or p49 < 1 or 12 < p49 or p50 < 1 or v_u_5.days_in_month(p48, p49) < p50 then
		error("year, month, and day parameters describe an un-representable DateTime.")
	elseif v55 < 0 or 59 < v55 or v56 < 0 or 59 < v56 or v57 < 0 or 59 < v57 then
		error("hour, minute, and second parameters describe an un-representable DateTime.")
	elseif 999 < v58 or v58 < 0 then
		error("millisecond paramter describe an un-representable DateTime.")
	end
	local v59 = {
		["_raw"] = v_u_5.to_raw(p48, p49, p50, v55, v56, v57, v58)
	}
	local v60 = v_u_2
	return setmetatable(v59, v60)
end
function v_u_1.FromEpoch(p61)
	-- upvalues: (copy) v_u_1, (copy) v_u_4
	return v_u_1.new(1970, 1, 1) + v_u_4.new(0, 0, p61)
end
function v_u_1.FromMillisecondsEpoch(p62)
	-- upvalues: (copy) v_u_1, (copy) v_u_4
	return v_u_1.new(1970, 1, 1) + v_u_4.new(p62)
end
function v_u_1.FromISO8601(p63)
	-- upvalues: (copy) v_u_1
	return v_u_1.new(p63:match("(%d%d%d%d)-(%d%d)-(%d%d)T?(%d%d):(%d%d):(%d%d)Z?"))
end
function v_u_1.FromOsDate(p64)
	-- upvalues: (copy) v_u_1
	return v_u_1.new(p64.year, p64.month, p64.day, p64.hour, p64.min, p64.sec)
end
function v_u_1.Now()
	-- upvalues: (copy) v_u_1, (copy) v_u_6
	return v_u_1.FromEpoch((v_u_6((tick()))))
end
function v_u_1.MillisecondsNow()
	-- upvalues: (copy) v_u_1, (copy) v_u_6
	return v_u_1.FromMillisecondsEpoch((v_u_6(tick() * 1000)))
end
function v_u_1.UtcNow()
	-- upvalues: (copy) v_u_1
	return v_u_1.FromEpoch(os.time())
end
function v_u_1.UtcMillisecondsNow()
	-- upvalues: (copy) v_u_1, (copy) v_u_6
	return v_u_1.FromMillisecondsEpoch(os.time() * 1000 + v_u_6(tick() * 1000 % 1000))
end
function v_u_1.Today()
	-- upvalues: (copy) v_u_1
	local v65 = v_u_1.Now()
	return v_u_1.new(v65.Year, v65.Month, v65.Day)
end
function v_u_1.DaysInMonth(p66, p67)
	-- upvalues: (copy) v_u_5
	return v_u_5.days_in_month(p66, p67)
end
function v_u_1.IsLeapYear(p68)
	-- upvalues: (copy) v_u_5
	return v_u_5.is_leap(p68)
end
function v_u_1.AddMilliseconds(p69, p70)
	-- upvalues: (copy) v_u_4
	return p69 + v_u_4.new(p70)
end
function v_u_1.AddSeconds(p71, p72)
	-- upvalues: (copy) v_u_4
	return p71 + v_u_4.new(0, 0, p72)
end
function v_u_1.AddMinutes(p73, p74)
	-- upvalues: (copy) v_u_4
	return p73 + v_u_4.new(0, p74, 0)
end
function v_u_1.AddHours(p75, p76)
	-- upvalues: (copy) v_u_4
	return p75 + v_u_4.new(p76, 0, 0)
end
function v_u_1.AddDays(p77, p78)
	-- upvalues: (copy) v_u_4
	return p77 + v_u_4.new(p78, 0, 0, 0)
end
function v_u_1.AddMonths(p79, p80)
	-- upvalues: (copy) v_u_6, (copy) v_u_5, (copy) v_u_7, (copy) v_u_1
	local v81 = p79.Day
	local v82 = p79.Month + p80
	local v83 = p79.Year + v_u_6(v82 / 12)
	local v84 = (v82 - 1) % 12 + 1
	local v85 = v_u_7(v_u_5.days_in_month(v83, v84), v81)
	return v_u_1.new(v83, v84, v85, p79.Hour, p79.Minute, p79.Second)
end
function v_u_1.AddYears(p86, p87)
	-- upvalues: (copy) v_u_5, (copy) v_u_7, (copy) v_u_1
	local v88 = p86.Day
	local v89 = p86.Month
	local v90 = p86.Year + p87
	local v91 = v_u_7(v_u_5.days_in_month(v90, v89), v88)
	return v_u_1.new(v90, v89, v91, p86.Hour, p86.Minute, p86.Second)
end
function v_u_1.ISO8601(p92, p93)
	return ("%04d-%02d-%02d%s%02d:%02d:%02d%s"):format(p92.Year, p92.Month, p92.Day, p93 or " ", p92.Hour, p92.Minute, p92.Second, p92.Millisecond == 0 and "" or (".%06d"):format(p92.Millisecond))
end
function v_u_1.RFC2822(p94)
	-- upvalues: (copy) v_u_5
	return ("%s, %02d %s %04d, %02d:%02d:%02d +0000"):format(v_u_5.DAYNAMES[p94.Weekday], p94.Day, v_u_5.MONTHNAMES[p94.Month], p94.Year, p94.Hour, p94.Minute, p94.Second)
end
function v_u_1.ctime(p95)
	-- upvalues: (copy) v_u_5
	return ("%s %s %2d %02d:%02d:%02d %04d"):format(v_u_5.DAYNAMES[p95.Weekday], v_u_5.MONTHNAMES[p95.Month], p95.Day, p95.Hour, p95.Minute, p95.Second, p95.Year)
end
function v_u_1.Epoch(p96)
	-- upvalues: (copy) v_u_1
	return (p96 - v_u_1.new(1970, 1, 1)).TotalSeconds
end
function v_u_1.EpochMilliseconds(p97)
	-- upvalues: (copy) v_u_1
	return (p97 - v_u_1.new(1970, 1, 1)).TotalMilliseconds
end
function v_u_1.OsDate(p98)
	return os.date("!*t", p98:Epoch())
end
local v_u_99 = {
	["d"] = "y-MM-dd",
	["D"] = "EEEE, d MMMM y",
	["f"] = "EEEE, d MMMM y HH:mm",
	["F"] = "EEEE, d MMMM y HH:mm:ss",
	["g"] = "y-MM-dd HH:mm",
	["G"] = "y-MM-dd HH:mm:ss",
	["m"] = "d MMMM",
	["M"] = "d MMMM",
	["t"] = "HH:mm",
	["T"] = "HH:mm:ss",
	["y"] = "MMMM y",
	["Y"] = "MMMM y"
}
local v_u_100 = {
	["mo"] = {
		"January",
		"February",
		"March",
		"April",
		"May",
		"June",
		"July",
		"August",
		"September",
		"October",
		"November",
		"December"
	},
	["wd"] = {
		"Monday",
		"Tuesday",
		"Wednesday",
		"Thursday",
		"Friday",
		"Saturday",
		"Sunday"
	}
}
function v_u_1.Format(p101, p102, p103)
	-- upvalues: (copy) v_u_99, (copy) v_u_100, (copy) v_u_5
	local v104 = v_u_99
	if p103 then
		v104 = {
			["d"] = p103.ShortDatePattern,
			["D"] = p103.LongDatePattern
		}
		local v105 = p103.LongDatePattern
		local v106 = p103.ShortTimePattern
		v104.f = v105 .. " " .. v106
		v104.F = p103.FullDateTimePattern
		local v107 = p103.ShortDatePattern
		local v108 = p103.ShortTimePattern
		v104.g = v107 .. " " .. v108
		local v109 = p103.ShortDatePattern
		local v110 = p103.LongTimePattern
		v104.G = v109 .. " " .. v110
		v104.m = p103.MonthDayPattern
		v104.M = p103.MonthDayPattern
		v104.t = p103.ShortTimePattern
		v104.T = p103.ShortDatePattern
		v104.y = p103.YearMonthPattern
		v104.Y = p103.YearMonthPattern
	else
		p103 = {}
	end
	local v111 = {
		["mo"] = p103.MonthNames or v_u_100.mo,
		["abmo"] = p103.AbbreviatedMonthNames or v_u_5.MONTHNAMES,
		["wd"] = p103.AbbreviatedMonthNames or v_u_100.wd,
		["abwd"] = p103.AbbreviatedDayNames or v_u_5.DAYNAMES,
		["dp"] = {
			[true] = v_u_5.AMDesignator or "AM",
			[false] = v_u_5.PMDesignator or "PM"
		}
	}
	local v112 = v104[p102] or p102
	local v113 = {
		["y"] = p101.Year,
		["yy"] = ("%02d"):format(p101.Year % 100),
		["yyy"] = ("%03d"):format(p101.Year),
		["yyyy"] = ("%04d"):format(p101.Year),
		["yyyyy"] = ("%05d"):format(p101.Year),
		["yyyyyy"] = ("%06d"):format(p101.Year),
		["M"] = p101.Month,
		["MM"] = ("%02d"):format(p101.Month),
		["MMM"] = v111.abmo[p101.Month],
		["MMMM"] = v111.mo[p101.Month],
		["d"] = p101.Day,
		["dd"] = ("%02d"):format(p101.Day),
		["E"] = v111.abwd[p101.Weekday],
		["EE"] = v111.abwd[p101.Weekday],
		["EEE"] = v111.abwd[p101.Weekday],
		["EEEE"] = v111.wd[p101.Weekday],
		["a"] = v111.dp[p101.Hour < 12],
		["aa"] = v111.dp[p101.Hour < 12],
		["h"] = (p101.Hour - 1) % 12 + 1,
		["hh"] = ("%02d"):format((p101.Hour - 1) % 12 + 1),
		["H"] = p101.Hour,
		["HH"] = ("%02d"):format(p101.Hour),
		["m"] = p101.Minute,
		["mm"] = ("%02d"):format(p101.Minute),
		["s"] = p101.Second,
		["ss"] = ("%02d"):format(p101.Second),
		["f"] = p101.Millisecond % 10,
		["ff"] = ("%02d"):format(p101.Millisecond % 100),
		["fff"] = ("%03d"):format(p101.Millisecond)
	}
	local v114 = 1
	local v115 = ""
	while true do
		if true then
			local v116 = v112:sub(v114, v114)
			local v117 = v114 + 1
			local v118
			if v116 == "\'" then
				local v119 = (v112:find("\'", v114 + 1) or #v112) + 1
				local v120 = v112:sub(v114 + 1, v119 - 2)
				v118 = v120 == "" and "\'" or v120
				v114 = v119
			elseif v116 == "/" then
				v118 = p103.DateSeparator or "/"
				v114 = v117
			elseif v116 == ":" then
				v118 = p103.TimeSeparator or ":"
				v114 = v117
			elseif v116:match("[yMdEahHmsf\':/]") then
				local v121, v122 = v112:find(v116 .. "+", v114)
				_ = v121
				v118 = v113[v112:sub(v114, v122)] or ""
				v114 = (v122 or #v112) + 1
			else
				local v123 = v112:find("[yMdEahHmsf\':/]", v114) or #v112 + 1
				v118 = v112:sub(v114, v123 - 1)
				v114 = v123
			end
		end
		v115 = v115 .. v118
		if v116 == "" or not v114 then
			return v115
		end
	end
end
return v_u_1