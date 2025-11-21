local v0 = {};
local v1 = {};
local v2 = require(script.Parent.PrivateFunction);
local l_floor_0 = math.floor;
local function __(v4, v5)
	return (l_floor_0(v4 / v5));
end;
local function __(v7, v8)
	return l_floor_0(v7 / v8), v7 % v8;
end;
v1.__index = function(v10, v11)
	local v12 = rawget(v10, "_raw");
	local v13, v14, v15, v16, v17 = v2.from_raw(v12);
	local v18 = {
		TotalDays = v12 / 86400000, 
		TotalHours = v12 / 3600000, 
		TotalMinutes = v12 / 60000, 
		TotalSeconds = v12 / 1000, 
		TotalMilliseconds = v12, 
		Days = v13, 
		Hours = v14, 
		Minutes = v15, 
		Seconds = v16, 
		Milliseconds = v17
	};
	if v18[v11] then
		return v18[v11];
	elseif v0[v11] and v11 ~= "new" then
		return v0[v11];
	else
		error(v11 .. " is not a valid member of TimeSpan");
		return ;
	end;
end;
v1.__add = function(v19, v20)
	return v0.new(v2.to_raw(v19) + v2.to_raw(v20));
end;
v1.__sub = function(v21, v22)
	return v0.new(v2.to_raw(v21) - v2.to_raw(v22));
end;
v1.__mul = function(v23, v24)
	return v0.new(v2.to_raw(v23) * v24);
end;
v1.__div = function(v25, v26)
	return v0.new(v2.to_raw(v25) / v26);
end;
v1.__unm = function(v27)
	return v0.new(v2.to_raw(v27) * -1);
end;
v1.__lt = function(v28, v29)
	return v2.to_raw(v28) < v2.to_raw(v29);
end;
v1.__le = function(v30, v31)
	return v2.to_raw(v30) <= v2.to_raw(v31);
end;
v1.__eq = function(v32, v33)
	return v2.to_raw(v32) == v2.to_raw(v33);
end;
v1.__tostring = function(v34)
	return ("%d,%02d:%02d:%02d%s"):format(v34.Days, v34.Hours, v34.Minutes, v34.Seconds, v34.Milliseconds == 0 and "" or (",%02d"):format(v34.Milliseconds));
end;
v1.__newindex = v2.READONLY;
v1.__metatable = v2.METATABLE;
v0.new = function(v35, v36, v37, v38, v39)
	if ((not v36 and not v37) and not v38) and not v39 then
		v39 = v35;
		v35 = 0;
		v36 = 0;
		v37 = 0;
		v38 = 0;
	elseif not v38 and not v39 then
		v38 = v37;
		v37 = v36;
		v36 = v35;
		v35 = 0;
		v39 = 0;
	elseif not v39 then
		v39 = 0;
	end;
	return (setmetatable({
		_raw = v2.to_raw(v35, v36, v37, v38, v39)
	}, v1));
end;
v0.FromMilliseconds = function(v40)
	return v0.new(v40);
end;
v0.FromSeconds = function(v41)
	return v0.new(0, 0, v41);
end;
v0.FromMinutes = function(v42)
	return v0.new(0, v42, 0);
end;
v0.FromHours = function(v43)
	return v0.new(v43, 0, 0);
end;
v0.FromDays = function(v44)
	return v0.new(v44, 0, 0, 0);
end;
v0.Format = function(v45, v46, v47)
	if v47 then
		v46 = ({
			dhms = v47.DayHourMinuteSecondPattern, 
			hms = v47.HourMinuteSecondPattern, 
			hmsf = v47.HourMinuteSecondMillisecondPattern, 
			ms = v47.MinuteSecondPattern, 
			msf = v47.MinuteSecondMillisecondPattern, 
			sf = v47.SecondMillisecondPattern, 
			adhms = v47.AbbreviatedDayHourMinuteSecondPattern, 
			ahms = v47.AbbreviatedHourMinuteSecondPattern, 
			ahmsf = v47.AbbreviatedHourMinuteSecondMillisecondPattern, 
			af = v47.AbbreviatedMinuteSecondPattern, 
			amsf = v47.AbbreviatedMinuteSecondMillisecondPattern, 
			asf = v47.AbbreviatedSecondMillisecondPattern, 
			fdhms = v47.FullDayHourMinuteSecondPattern, 
			fhms = v47.FullHourMinuteSecondPattern, 
			fhmsf = v47.FullHourMinuteSecondMillisecondPattern, 
			fms = v47.FullMinuteSecondPattern, 
			fmsf = v47.FullMinuteSecondMillisecondPattern, 
			fsf = v47.FullSecondMillisecondPattern
		})[v46] or v46;
	else
		v47 = {};
	end;
	local v48 = v45 < v0.new(0);
	if v48 and not v46:gsub("'[^']+'", ""):match(";") then
		v46 = v46 .. ";-" .. v46;
	end;
	local v49 = {
		d = v45.Days, 
		dd = ("%02d"):format(v45.Days), 
		ddd = ("%03d"):format(v45.Days), 
		dddd = ("%04d"):format(v45.Days), 
		ddddd = ("%05d"):format(v45.Days), 
		dddddd = ("%06d"):format(v45.Days), 
		ddddddd = ("%07d"):format(v45.Days), 
		dddddddd = ("%08d"):format(v45.Days), 
		h = v45.Hours, 
		hh = ("%02d"):format(v45.Hours), 
		m = v45.Minutes, 
		mm = ("%02d"):format(v45.Minutes), 
		s = v45.Seconds, 
		ss = ("%02d"):format(v45.Seconds), 
		f = v45.Milliseconds % 10, 
		ff = ("%02d"):format(v45.Milliseconds % 100), 
		fff = ("%03d"):format(v45.Milliseconds), 
		ffff = v45.Milliseconds
	};
	local v50 = false;
	local v51 = {
		[true] = "", 
		[false] = ""
	};
	local v52 = 1;
	while true do
		local v53 = v46:sub(v52, v52);
		local v54 = v52 + 1;
		local v55 = "";
		if v53 == "'" then
			v54 = (v46:find("'", v52 + 1) or #v46) + 1;
			v55 = v46:sub(v52 + 1, v54 - 2);
			v55 = v55 == "" and "'" or v55;
		elseif v53 == "%" then
			v55 = v46:sub(v54, v54);
			if v55:match("[dhmsf':,;]") then
				v55 = v49[v55];
				v54 = v54 + 1;
			else
				v55 = "%";
			end;
		elseif v53 == ";" then
			v50 = true;
		elseif v53 == ":" then
			v55 = v47.TimeSeparator or ":";
		elseif v53 == "," then
			v55 = v47.MillisecondSeparator or ",";
		elseif v53:match("[dhmsf':,;]") then
			local v56, v57 = v46:find(v53 .. "+", v52);
			_ = v56;
			v54 = v57;
			v55 = v49[v46:sub(v52, v54)] or "";
			v54 = (v54 or #v46) + 1;
		else
			v54 = v46:find("[dhmsf':,;]", v52) or #v46 + 1;
			v55 = v46:sub(v52, v54 - 1);
		end;
		v52 = v54;
		v51[v50] = v51[v50] .. v55;
		if not (v53 ~= "" and v52) then
			break;
		end;
	end;
	return v51[v48];
end;
return v0;
