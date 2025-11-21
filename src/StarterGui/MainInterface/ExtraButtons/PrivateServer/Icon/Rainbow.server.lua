-- This script isn't FE to my knowledge so don't rely on it being synced up between clients.
-- Best used in things like GUIs, however it works with anything that has a color property.

local speed = 0.05 -- Sets the delay/speed for changing colors.
local part = script.Parent


-- Main script below here
function zz(X) return math.acos(math.cos(X*math.pi))/math.pi end

count = 0

while wait(speed)do
	part.ImageColor3 = Color3.fromHSV(zz(count),1,1)
	--[[
		If the part has a different color3 you wish to change
		this is the part you must change to do that
			EG: BackgroundColor/TextColor
	]]--
	
	count = count + 0.01
end