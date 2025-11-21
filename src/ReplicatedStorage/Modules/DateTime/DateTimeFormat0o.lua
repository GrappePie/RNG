-- What the sigma?

local v_u_1 = {}
local v2 = {}
local v_u_3 = {}
local v_u_4 = {}
v_u_1.EnumDayOfWeek = {
	["Monday"] = 1,
	["Tuesday"] = 2,
	["Wednesday"] = 3,
	["Thursday"] = 4,
	["Friday"] = 5,
	["Saturday"] = 6,
	["Sunday"] = 7
}
function v_u_3.__index(p5, p6)
	-- upvalues: (copy) v_u_1
	if rawget(p5, p6) then
		return rawget(p5, p6)
	end
	if v_u_1[p6] and p6 ~= "new" then
		return v_u_1[p6]
	end
	error(p6 .. " is not a valid member of DateTimeFormat0o")
end
function v_u_3.__newindex(p7, p8)
	if p7.ReadOnly or not p7[p8] or p8 == "ReadOnly" then
		error(p8 .. " cannot be assigned to")
	end
end
function v_u_1.new(p9)
	-- upvalues: (copy) v_u_1, (copy) v_u_3
	local v10 = p9 or {}
	local v11 = {
		["StandaloneMonthNames"] = v10.StandaloneMonthNames or {
			"M01",
			"M02",
			"M03",
			"M04",
			"M05",
			"M06",
			"M07",
			"M08",
			"M09",
			"M10",
			"M11",
			"M12"
		},
		["StandaloneDayNames"] = v10.StandaloneDayNames or {
			"Mon",
			"Tue",
			"Wed",
			"Thu",
			"Fri",
			"Sat",
			"Sun"
		},
		["MonthNames"] = v10.MonthNames or {
			"M01",
			"M02",
			"M03",
			"M04",
			"M05",
			"M06",
			"M07",
			"M08",
			"M09",
			"M10",
			"M11",
			"M12"
		},
		["DayNames"] = v10.DayNames or {
			"Mon",
			"Tue",
			"Wed",
			"Thu",
			"Fri",
			"Sat",
			"Sun"
		},
		["AbbreviatedStandaloneMonthNames"] = v10.AbbreviatedStandaloneMonthNames or {
			"M01",
			"M02",
			"M03",
			"M04",
			"M05",
			"M06",
			"M07",
			"M08",
			"M09",
			"M10",
			"M11",
			"M12"
		},
		["AbbreviatedStandaloneDayNames"] = v10.AbbreviatedStandaloneDayNames or {
			"Mon",
			"Tue",
			"Wed",
			"Thu",
			"Fri",
			"Sat",
			"Sun"
		},
		["AbbreviatedMonthNames"] = v10.AbbreviatedMonthNames or {
			"M01",
			"M02",
			"M03",
			"M04",
			"M05",
			"M06",
			"M07",
			"M08",
			"M09",
			"M10",
			"M11",
			"M12"
		},
		["AbbreviatedDayNames"] = v10.AbbreviatedDayNames or {
			"Mon",
			"Tue",
			"Wed",
			"Thu",
			"Fri",
			"Sat",
			"Sun"
		},
		["AMDesignator"] = v10.AMDesignator or "AM",
		["PMDesignator"] = v10.PMDesignator or "PM",
		["DateSeparator"] = v10.DateSeparator or "-",
		["TimeSeparator"] = v10.TimeSeparator or ":",
		["ShortDatePattern"] = v10.ShortDatePattern or "y/MM/dd",
		["LongDatePattern"] = v10.LongDatePattern or "y MMMM d",
		["ShortTimePattern"] = v10.ShortTimePattern or "HH:mm:ss",
		["LongTimePattern"] = v10.LongTimePattern or "HH:mm",
		["FullDateTimePattern"] = v10.FullDateTimePattern or "y MMMM d HH:mm:ss",
		["MonthDayPattern"] = v10.MonthDayPattern or "MMMM d",
		["YearMonthPattern"] = v10.YearMonthPattern or "y MMMM",
		["FirstDayOfWeek"] = v_u_1.EnumDayOfWeek.Monday,
		["ReadOnly"] = v10.ReadOnly or false
	}
	local v12 = v_u_3
	return setmetatable(v11, v12)
end
function v_u_1.Clone(p13)
	-- upvalues: (copy) v_u_1
	local v14 = {}
	for v15, v16 in next, p13 do
		if not v15 == "ReadOnly" then
			v14[v15] = v16
		end
	end
	return v_u_1.new(v14)
end
local v17 = {
	["da"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"januar",
			"februar",
			"marts",
			"april",
			"maj",
			"juni",
			"juli",
			"august",
			"september",
			"oktober",
			"november",
			"december"
		},
		["StandaloneDayNames"] = {
			"mandag",
			"tirsdag",
			"onsdag",
			"torsdag",
			"fredag",
			"l\195\184rdag",
			"s\195\184ndag"
		},
		["MonthNames"] = {
			"januar",
			"februar",
			"marts",
			"april",
			"maj",
			"juni",
			"juli",
			"august",
			"september",
			"oktober",
			"november",
			"december"
		},
		["DayNames"] = {
			"mandag",
			"tirsdag",
			"onsdag",
			"torsdag",
			"fredag",
			"l\195\184rdag",
			"s\195\184ndag"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"jan.",
			"feb.",
			"mar.",
			"apr.",
			"maj",
			"jun.",
			"jul.",
			"aug.",
			"sep.",
			"okt.",
			"nov.",
			"dec."
		},
		["AbbreviatedStandaloneDayNames"] = {
			"man",
			"tir",
			"ons",
			"tor",
			"fre",
			"l\195\184r",
			"s\195\184n"
		},
		["AbbreviatedMonthNames"] = {
			"jan.",
			"feb.",
			"mar.",
			"apr.",
			"maj",
			"jun.",
			"jul.",
			"aug.",
			"sep.",
			"okt.",
			"nov.",
			"dec."
		},
		["AbbreviatedDayNames"] = {
			"man",
			"tir",
			"ons",
			"tor",
			"fre",
			"l\195\184r",
			"s\195\184n"
		},
		["TimeSeparator"] = ".",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d. MMMM y",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "d. MMMM y HH:mm:ss",
		["MonthDayPattern"] = "d. MMMM",
		["YearMonthPattern"] = "MMMM y"
	}),
	["de"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"Januar",
			"Februar",
			"M\195\164rz",
			"April",
			"Mai",
			"Juni",
			"Juli",
			"August",
			"September",
			"Oktober",
			"November",
			"Dezember"
		},
		["StandaloneDayNames"] = {
			"Montag",
			"Dienstag",
			"Mittwoch",
			"Donnerstag",
			"Freitag",
			"Samstag",
			"Sonntag"
		},
		["MonthNames"] = {
			"Januar",
			"Februar",
			"M\195\164rz",
			"April",
			"Mai",
			"Juni",
			"Juli",
			"August",
			"September",
			"Oktober",
			"November",
			"Dezember"
		},
		["DayNames"] = {
			"Montag",
			"Dienstag",
			"Mittwoch",
			"Donnerstag",
			"Freitag",
			"Samstag",
			"Sonntag"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"Jan",
			"Feb",
			"M\195\164r",
			"Apr",
			"Mai",
			"Jun",
			"Jul",
			"Aug",
			"Sep",
			"Okt",
			"Nov",
			"Dez"
		},
		["AbbreviatedStandaloneDayNames"] = {
			"Mo.",
			"Di.",
			"Mi.",
			"Do.",
			"Fr.",
			"Sa.",
			"So."
		},
		["AbbreviatedMonthNames"] = {
			"Jan",
			"Feb",
			"M\195\164r",
			"Apr",
			"Mai",
			"Jun",
			"Jul",
			"Aug",
			"Sep",
			"Okt",
			"Nov",
			"Dez"
		},
		["AbbreviatedDayNames"] = {
			"Mo.",
			"Di.",
			"Mi.",
			"Do.",
			"Fr.",
			"Sa.",
			"So."
		},
		["DateSeparator"] = ".",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d MMMM y",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "d MMMM y HH:mm:ss",
		["MonthDayPattern"] = "d MMMM",
		["YearMonthPattern"] = "MMMM y"
	}),
	["en"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
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
		["StandaloneDayNames"] = {
			"Monday",
			"Tuesday",
			"Wednesday",
			"Thursday",
			"Friday",
			"Saturday",
			"Sunday"
		},
		["MonthNames"] = {
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
		["DayNames"] = {
			"Monday",
			"Tuesday",
			"Wednesday",
			"Thursday",
			"Friday",
			"Saturday",
			"Sunday"
		},
		["AbbreviatedStandaloneMonthNames"] = {
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
		},
		["AbbreviatedMonthNames"] = {
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
		},
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "M/d/y",
		["LongDatePattern"] = "MMMM d, y",
		["ShortTimePattern"] = "h:mm:ss a",
		["LongTimePattern"] = "h:mm a",
		["FullDateTimePattern"] = "MMMM d, y h:mm:ss a",
		["MonthDayPattern"] = "MMMM d",
		["YearMonthPattern"] = "MMMM y",
		["FirstDayOfWeek"] = v_u_1.EnumDayOfWeek.Sunday
	}),
	["en_001"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
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
		["StandaloneDayNames"] = {
			"Monday",
			"Tuesday",
			"Wednesday",
			"Thursday",
			"Friday",
			"Saturday",
			"Sunday"
		},
		["MonthNames"] = {
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
		["DayNames"] = {
			"Monday",
			"Tuesday",
			"Wednesday",
			"Thursday",
			"Friday",
			"Saturday",
			"Sunday"
		},
		["AbbreviatedStandaloneMonthNames"] = {
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
		},
		["AbbreviatedMonthNames"] = {
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
		},
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d MMMM y",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "d MMMM y HH:mm:ss",
		["MonthDayPattern"] = "d MMMM",
		["YearMonthPattern"] = "MMMM y"
	}),
	["es"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"enero",
			"febrero",
			"marzo",
			"abril",
			"mayo",
			"junio",
			"julio",
			"agosto",
			"septiembre",
			"octubre",
			"noviembre",
			"diciembre"
		},
		["StandaloneDayNames"] = {
			"lunes",
			"martes",
			"mi\195\169rcoles",
			"jueves",
			"viernes",
			"s\195\161bado",
			"domingo"
		},
		["MonthNames"] = {
			"enero",
			"febrero",
			"marzo",
			"abril",
			"mayo",
			"junio",
			"julio",
			"agosto",
			"septiembre",
			"octubre",
			"noviembre",
			"diciembre"
		},
		["DayNames"] = {
			"lunes",
			"martes",
			"mi\195\169rcoles",
			"jueves",
			"viernes",
			"s\195\161bado",
			"domingo"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"ene.",
			"feb.",
			"mar.",
			"abr.",
			"may.",
			"jun.",
			"jul.",
			"ago.",
			"sept.",
			"oct.",
			"nov.",
			"dic."
		},
		["AbbreviatedStandaloneDayNames"] = {
			"lun.",
			"mar.",
			"mi\195\169.",
			"jue.",
			"vie.",
			"s\195\161b.",
			"dom."
		},
		["AbbreviatedMonthNames"] = {
			"ene.",
			"feb.",
			"mar.",
			"abr.",
			"may.",
			"jun.",
			"jul.",
			"ago.",
			"sept.",
			"oct.",
			"nov.",
			"dic."
		},
		["AbbreviatedDayNames"] = {
			"lun.",
			"mar.",
			"mi\195\169.",
			"jue.",
			"vie.",
			"s\195\161b.",
			"dom."
		},
		["AMDesignator"] = "a. m.",
		["PMDesignator"] = "p. m.",
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d \'de\' MMMM \'de\' y",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "d \'de\' MMMM \'de\' y HH:mm:ss",
		["MonthDayPattern"] = "d \'de\' MMMM",
		["YearMonthPattern"] = "MMMM \'de\' y"
	}),
	["es_419"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"enero",
			"febrero",
			"marzo",
			"abril",
			"mayo",
			"junio",
			"julio",
			"agosto",
			"septiembre",
			"octubre",
			"noviembre",
			"diciembre"
		},
		["StandaloneDayNames"] = {
			"lunes",
			"martes",
			"mi\195\169rcoles",
			"jueves",
			"viernes",
			"s\195\161bado",
			"domingo"
		},
		["MonthNames"] = {
			"enero",
			"febrero",
			"marzo",
			"abril",
			"mayo",
			"junio",
			"julio",
			"agosto",
			"septiembre",
			"octubre",
			"noviembre",
			"diciembre"
		},
		["DayNames"] = {
			"lunes",
			"martes",
			"mi\195\169rcoles",
			"jueves",
			"viernes",
			"s\195\161bado",
			"domingo"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"ene.",
			"feb.",
			"mar.",
			"abr.",
			"may.",
			"jun.",
			"jul.",
			"ago.",
			"sept.",
			"oct.",
			"nov.",
			"dic."
		},
		["AbbreviatedStandaloneDayNames"] = {
			"lun.",
			"mar.",
			"mi\195\169.",
			"jue.",
			"vie.",
			"s\195\161b.",
			"dom."
		},
		["AbbreviatedMonthNames"] = {
			"ene.",
			"feb.",
			"mar.",
			"abr.",
			"may.",
			"jun.",
			"jul.",
			"ago.",
			"sept.",
			"oct.",
			"nov.",
			"dic."
		},
		["AbbreviatedDayNames"] = {
			"lun.",
			"mar.",
			"mi\195\169.",
			"jue.",
			"vie.",
			"s\195\161b.",
			"dom."
		},
		["AMDesignator"] = "a. m.",
		["PMDesignator"] = "p. m.",
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d \'de\' MMMM \'de\' y",
		["ShortTimePattern"] = "hh:mm:ss tt",
		["LongTimePattern"] = "hh:mm tt",
		["FullDateTimePattern"] = "d \'de\' MMMM \'de\' y hh:mm:ss tt",
		["MonthDayPattern"] = "d \'de\' MMMM",
		["YearMonthPattern"] = "MMMM \'de\' y",
		["FirstDayOfWeek"] = v_u_1.EnumDayOfWeek.Sunday
	}),
	["fr"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"janvier",
			"f\195\169vrier",
			"mars",
			"avril",
			"mai",
			"juin",
			"juillet",
			"ao\195\187t",
			"septembre",
			"octobre",
			"novembre",
			"d\195\169cembre"
		},
		["StandaloneDayNames"] = {
			"lundi",
			"mardi",
			"mercredi",
			"jeudi",
			"vendredi",
			"samedi",
			"dimanche"
		},
		["MonthNames"] = {
			"janvier",
			"f\195\169vrier",
			"mars",
			"avril",
			"mai",
			"juin",
			"juillet",
			"ao\195\187t",
			"septembre",
			"octobre",
			"novembre",
			"d\195\169cembre"
		},
		["DayNames"] = {
			"lundi",
			"mardi",
			"mercredi",
			"jeudi",
			"vendredi",
			"samedi",
			"dimanche"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"janv.",
			"f\195\169vr.",
			"mars",
			"avr.",
			"mai",
			"juin",
			"juil.",
			"ao\195\187t",
			"sept.",
			"oct.",
			"nov.",
			"d\195\169c."
		},
		["AbbreviatedStandaloneDayNames"] = {
			"lun.",
			"mar.",
			"mer.",
			"jeu.",
			"ven.",
			"sam.",
			"dim."
		},
		["AbbreviatedMonthNames"] = {
			"janv.",
			"f\195\169vr.",
			"mars",
			"avr.",
			"mai",
			"juin",
			"juil.",
			"ao\195\187t",
			"sept.",
			"oct.",
			"nov.",
			"d\195\169c."
		},
		["AbbreviatedDayNames"] = {
			"lun.",
			"mar.",
			"mer.",
			"jeu.",
			"ven.",
			"sam.",
			"dim."
		},
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "dd/MM/y",
		["LongDatePattern"] = "d MMMM y",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "d MMMM y HH:mm:ss",
		["MonthDayPattern"] = "d MMMM",
		["YearMonthPattern"] = "MMMM y"
	}),
	["ja"] = v_u_1.new({
		["ReadOnly"] = true,
		["StandaloneMonthNames"] = {
			"1\230\156\136",
			"2\230\156\136",
			"3\230\156\136",
			"4\230\156\136",
			"5\230\156\136",
			"6\230\156\136",
			"7\230\156\136",
			"8\230\156\136",
			"9\230\156\136",
			"10\230\156\136",
			"11\230\156\136",
			"12\230\156\136"
		},
		["StandaloneDayNames"] = {
			"\230\156\136\230\155\156\230\151\165",
			"\231\129\171\230\155\156\230\151\165",
			"\230\176\180\230\155\156\230\151\165",
			"\230\156\168\230\155\156\230\151\165",
			"\233\135\145\230\155\156\230\151\165",
			"\229\156\159\230\155\156\230\151\165",
			"\230\151\165\230\155\156\230\151\165"
		},
		["MonthNames"] = {
			"1\230\156\136",
			"2\230\156\136",
			"3\230\156\136",
			"4\230\156\136",
			"5\230\156\136",
			"6\230\156\136",
			"7\230\156\136",
			"8\230\156\136",
			"9\230\156\136",
			"10\230\156\136",
			"11\230\156\136",
			"12\230\156\136"
		},
		["DayNames"] = {
			"\230\156\136\230\155\156\230\151\165",
			"\231\129\171\230\155\156\230\151\165",
			"\230\176\180\230\155\156\230\151\165",
			"\230\156\168\230\155\156\230\151\165",
			"\233\135\145\230\155\156\230\151\165",
			"\229\156\159\230\155\156\230\151\165",
			"\230\151\165\230\155\156\230\151\165"
		},
		["AbbreviatedStandaloneMonthNames"] = {
			"1\230\156\136",
			"2\230\156\136",
			"3\230\156\136",
			"4\230\156\136",
			"5\230\156\136",
			"6\230\156\136",
			"7\230\156\136",
			"8\230\156\136",
			"9\230\156\136",
			"10\230\156\136",
			"11\230\156\136",
			"12\230\156\136"
		},
		["AbbreviatedStandaloneDayNames"] = {
			"\230\156\136",
			"\231\129\171",
			"\230\176\180",
			"\230\156\168",
			"\233\135\145",
			"\229\156\159",
			"\230\151\165"
		},
		["AbbreviatedMonthNames"] = {
			"1\230\156\136",
			"2\230\156\136",
			"3\230\156\136",
			"4\230\156\136",
			"5\230\156\136",
			"6\230\156\136",
			"7\230\156\136",
			"8\230\156\136",
			"9\230\156\136",
			"10\230\156\136",
			"11\230\156\136",
			"12\230\156\136"
		},
		["AbbreviatedDayNames"] = {
			"\230\156\136",
			"\231\129\171",
			"\230\176\180",
			"\230\156\168",
			"\233\135\145",
			"\229\156\159",
			"\230\151\165"
		},
		["DateSeparator"] = "/",
		["ShortDatePattern"] = "y/MM/dd",
		["LongDatePattern"] = "y\229\185\180M\230\156\136d\230\151\165",
		["ShortTimePattern"] = "HH:mm:ss",
		["LongTimePattern"] = "HH:mm",
		["FullDateTimePattern"] = "y\229\185\180M\230\156\136d\230\151\165 HH:mm:ss",
		["MonthDayPattern"] = "M\230\156\136d\230\151\165",
		["YearMonthPattern"] = "y\229\185\180M\230\156\136",
		["FirstDayOfWeek"] = v_u_1.EnumDayOfWeek.Sunday
	})
}
v_u_1.Preset = v17
function v_u_4.__index(p18, p19)
	-- upvalues: (copy) v_u_1
	if rawget(p18, p19) then
		return rawget(p18, p19)
	end
	if v_u_1[p19] and p19 ~= "new" then
		return v_u_1[p19]
	end
	error(p19 .. " is not a valid member of TimeSpan0o")
end
function v_u_4.__newindex(p20, p21)
	if p20.ReadOnly or not p20[p21] or p21 == "ReadOnly" then
		error(p21 .. " cannot be assigned to")
	end
end
function v2.new(p22)
	-- upvalues: (copy) v_u_4
	local v23 = p22 or {}
	local v24 = {
		["TimeSeparator"] = v23.TimeSeparator or ":",
		["MillisecondSeparator"] = v23.MillisecondSeparator or ",",
		["DayHourMinuteSecondPattern"] = v23.DayHourMinuteSecondPattern or "d:hh:mm:ss",
		["HourMinuteSecondPattern"] = v23.HourMinuteSecondPattern or "h:mm:ss",
		["HourMinuteSecondMillisecondPattern"] = v23.HourMinuteSecondMillisecondPattern or "h:mm:ss,fff",
		["MinuteSecondPattern"] = v23.MinuteSecondPattern or "m:ss",
		["MinuteSecondMillisecondPattern"] = v23.MinuteSecondMillisecondPattern or "m:ss,fff",
		["SecondMillisecondPattern"] = v23.SecondMillisecondPattern or "ss,fff",
		["AbbreviatedDayHourMinuteSecondPattern"] = v23.AbbreviatedDayHourMinuteSecondPattern or "d:hh:mm:ss",
		["AbbreviatedHourMinuteSecondPattern"] = v23.AbbreviatedHourMinuteSecondPattern or "h:mm:ss",
		["AbbreviatedHourMinuteSecondMillisecondPattern"] = v23.AbbreviatedHourMinuteSecondMillisecondPattern or "h:mm:ss,fff",
		["AbbreviatedMinuteSecondPattern"] = v23.AbbreviatedMinuteSecondPattern or "m:ss",
		["AbbreviatedMinuteSecondMillisecondPattern"] = v23.AbbreviatedMinuteSecondMillisecondPattern or "m:ss,fff",
		["AbbreviatedSecondMillisecondPattern"] = v23.AbbreviatedSecondMillisecondPattern or "ss,fff",
		["FullDayHourMinuteSecondPattern"] = v23.FullDayHourMinuteSecondPattern or "d:hh:mm:ss",
		["FullHourMinuteSecondPattern"] = v23.FullHourMinuteSecondPattern or "h:mm:ss",
		["FullHourMinuteSecondMillisecondPattern"] = v23.FullHourMinuteSecondMillisecondPattern or "h:mm:ss,fff",
		["FullMinuteSecondPattern"] = v23.FullMinuteSecondPattern or "m:ss",
		["FullMinuteSecondMillisecondPattern"] = v23.FullMinuteSecondMillisecondPattern or "m:ss,fff",
		["FullSecondMillisecondPattern"] = v23.FullSecondMillisecondPattern or "ss,fff",
		["ReadOnly"] = v23.ReadOnly or false
	}
	local v25 = v_u_4
	return setmetatable(v24, v25)
end
function v2.Clone(p26)
	-- upvalues: (copy) v_u_1
	local v27 = {}
	for v28, v29 in next, p26 do
		if not v28 == "ReadOnly" then
			v27[v28] = v29
		end
	end
	return v_u_1.new(v27)
end
local v30 = {
	["da"] = v2.new({
		["ReadOnly"] = true,
		["TimeSeparator"] = ".",
		["AbbreviatedDayHourMinuteSecondPattern"] = "d\'d\' h\'t\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondPattern"] = "h\'t\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondMillisecondPattern"] = "h\'t\' m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedMinuteSecondPattern"] = "m\'m\' s\'s\'",
		["AbbreviatedMinuteSecondMillisecondPattern"] = "m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedSecondMillisecondPattern"] = "s\'s\' ffff\'ms\'",
		["FullDayHourMinuteSecondPattern"] = "d \'dag(e),\' h \'time(r),\' m \'minut(ter),\' s \'sekund(er)\'",
		["FullHourMinuteSecondPattern"] = "h \'time(r),\' m \'minut(ter),\' s \'sekund(er)\'",
		["FullHourMinuteSecondMillisecondPattern"] = "h \'time(r),\' m \'minut(ter),\' s \'sekund(er),\' ffff \'millisekund(er)\'",
		["FullMinuteSecondPattern"] = "m \'minut(ter),\' s \'sekund(er)\'",
		["FullMinuteSecondMillisecondPattern"] = "m \'minut(ter),\' s \'sekund(er),\' ffff \'millisekund(er)\'",
		["FullSecondMillisecondPattern"] = "s \'sekund(er),\' ffff \'millisekund(er)\'"
	}),
	["de"] = v2.new({
		["ReadOnly"] = true,
		["AbbreviatedDayHourMinuteSecondPattern"] = "d\'t\' h\'h\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondPattern"] = "h\'h\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondMillisecondPattern"] = "h\'h\' m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedMinuteSecondPattern"] = "m\'m\' s\'s\'",
		["AbbreviatedMinuteSecondMillisecondPattern"] = "m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedSecondMillisecondPattern"] = "s\'s\' ffff\'ms\'",
		["FullDayHourMinuteSecondPattern"] = "d \'tag(e),\' h \'stunde(n),\' m \'minute(s),\' s \'sekunde(n)\'",
		["FullHourMinuteSecondPattern"] = "h \'stunde(n),\' m \'minute(n),\' s \'sekunde(n)\'",
		["FullHourMinuteSecondMillisecondPattern"] = "h \'stunde(n),\' m \'minute(n),\' s \'sekunde(n),\' ffff \'millisekunde(n)\'",
		["FullMinuteSecondPattern"] = "m \'minute(s),\' s \'sekunde(n)\'",
		["FullMinuteSecondMillisecondPattern"] = "m \'minute(n),\' s \'sekunde(n),\' ffff \'millisekunde(n)\'",
		["FullSecondMillisecondPattern"] = "s \'sekunde(n),\' ffff \'millisekunde(n)\'"
	}),
	["en"] = v2.new({
		["ReadOnly"] = true,
		["MillisecondSeparator"] = ".",
		["AbbreviatedDayHourMinuteSecondPattern"] = "d\'d\' h\'h\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondPattern"] = "h\'h\' m\'m\' s\'s\'",
		["AbbreviatedHourMinuteSecondMillisecondPattern"] = "h\'h\' m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedMinuteSecondPattern"] = "m\'m\' s\'s\'",
		["AbbreviatedMinuteSecondMillisecondPattern"] = "m\'m\' s\'s\' ffff\'ms\'",
		["AbbreviatedSecondMillisecondPattern"] = "s\'s\' ffff\'ms\'",
		["FullDayHourMinuteSecondPattern"] = "d \'day(s),\' h \'hour(s),\' m \'minute(s),\' s \'second(s)\'",
		["FullHourMinuteSecondPattern"] = "h \'hour(s),\' m \'minute(s),\' s \'second(s)\'",
		["FullHourMinuteSecondMillisecondPattern"] = "h \'hour(s),\' m \'minute(s),\' s \'second(s),\' ffff \'millisecond(s)\'",
		["FullMinuteSecondPattern"] = "m \'minute(s),\' s \'second(s)\'",
		["FullMinuteSecondMillisecondPattern"] = "m \'minute(s),\' s \'second(s),\' ffff \'millisecond(s)\'",
		["FullSecondMillisecondPattern"] = "s \'second(s),\' ffff \'millisecond(s)\'"
	}),
	["ja"] = v2.new({
		["ReadOnly"] = true,
		["MillisecondSeparator"] = ".",
		["FullDayHourMinuteSecondPattern"] = "d\'\230\151\165,\'h\'\230\153\130\233\150\147,\'m\'\229\136\134,\'s\'\231\167\146\'",
		["FullHourMinuteSecondPattern"] = "h\'\230\153\130\233\150\147,\'m\'\229\136\134,\'s\'\231\167\146\'",
		["FullHourMinuteSecondMillisecondPattern"] = "h\'\230\153\130\233\150\147,\'m\'\229\136\134,\'s\'\231\167\146,\'ffff\'\227\131\159\227\131\170\231\167\146\'",
		["FullMinuteSecondPattern"] = "m\'\229\136\134,\'s\'\231\167\146\'",
		["FullMinuteSecondMillisecondPattern"] = "m\'\229\136\134,\'s\'\231\167\146,\'ffff\'\227\131\159\227\131\170\231\167\146\'",
		["FullSecondMillisecondPattern"] = "s\'\231\167\146,\'ffff\'\227\131\159\227\131\170\231\167\146\'"
	})
}
v2.Preset = v30
return {
	["dt"] = v_u_1,
	["ts"] = v2
}