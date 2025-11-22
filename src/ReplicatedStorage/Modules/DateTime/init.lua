-- What the sigma?

local v1 = require(script.DateTimeFormatInfo)
return {
	["DateTime"] = require(script.DateTime),
	["TimeSpan"] = require(script.TimeSpan),
	["DateTimeFormatInfo"] = v1.dt,
	["TimeSpanFormatInfo"] = v1.ts
}