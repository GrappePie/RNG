local song = script.Parent.Parent.Sound
local model = script.Parent
local scalar = 50

local loweroffset = 0 -- up to half of upperbound-lowerbound
local upperoffset = 200 -- up to half of upperbound-lowerbound
--[[
	The lower and upper bound represent the limit of the scaling and the color changing. 
	ex: lowerbound = 200 and upperbound = 500 would limit the changes to in between 200-500
	
	the lower offset makes it change color from black a bit later 0than the lowerbound. 
	ex: lowerbound = 200 and loweroffset = 50 would make the scaling start at 200, but the color changing  200+50
	
	the upper offset makes the color stop at white earlier than the upperbound
	ex: upperbound = 500 and upperoffset = 50 would make the scaling stop at 500, the color changing at 500-50
]]
local scalerange = 10 -- in studs
local lowerscale = 2 -- in studs
local upperscale = lowerscale+scalerange

local function chooseS(lowerbound, upperbound)
	local halfsize = (upperbound-upperoffset-lowerbound-loweroffset)/2
	local midbound = lowerbound+loweroffset+halfsize
	if song.PlaybackLoudness >= midbound and song.PlaybackLoudness <= upperbound-upperoffset then
		return 1 - (song.PlaybackLoudness - midbound) / halfsize
	elseif song.PlaybackLoudness < midbound then
		return 1
	elseif song.PlaybackLoudness > upperbound-upperoffset then
		return 0
	end
end

local function chooseV(lowerbound, upperbound)
	local halfsize = (upperbound-upperoffset-lowerbound-loweroffset)/2
	local midbound = lowerbound+loweroffset+halfsize
	if song.PlaybackLoudness < midbound and song.PlaybackLoudness >= lowerbound+loweroffset then
		return (song.PlaybackLoudness - lowerbound) / halfsize
	elseif song.PlaybackLoudness >= midbound then
		return 1
	elseif song.PlaybackLoudness < lowerbound+loweroffset then
		return 0
	end
end

local function pickHeight(lowerbound, upperbound)
	local scalehalfsize = (upperbound-lowerbound)/2
	if song.PlaybackLoudness < lowerbound then
		return lowerscale
	elseif song.PlaybackLoudness >= lowerbound and song.PlaybackLoudness <= upperbound then
		return (song.PlaybackLoudness - lowerbound) / (2*scalehalfsize) * scalerange + lowerscale
	elseif song.PlaybackLoudness > upperbound then
		return upperscale
	end
end
