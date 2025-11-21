-- / Heyo! Dev Dxniel here, I'll be leading you through this.

-- Right so first up go to drive.google.com and press new/create
-- Then press more -> Google Apps Script

-- Once you're there, copy the code from this pastebin link: https://pastebin.com/raw/QFHQZ806
-- Go back to the google drive tab and click "Use Classic Editor" on the top right
-- Pick a random option and continue

-- When you're finally there, click publish -> Deploy as Web App ( On the Top )
-- Change "Who has Access to this app" to Anyone, even anonymous

-- Then you should get a popup saying this is your link: ( Example )
-- https://script.google.com/macros/s/ID/exec
-- Copy your ID from the same spot on your popup
-- Then paste the ID in the ScriptId Value under this ModuleScript

-- Congrats, you've just created a proxy! \


-- Note: Inventory needs to be public in order for this to work.


local ID = script.ScriptId.Value

local Url = "https://script.google.com/macros/s/" .. ID .. "/exec"
local HttpService = game:GetService("HttpService")

local HttpProxy = {}

function JSONDecode(JSON)
	local JSONTable = {} 
	pcall(function ()
		JSONTable = HttpService:JSONDecode(JSON)
	end) 
	return JSONTable
end


function HttpProxy:GetAsync(Link)
	local JSON = HttpService:GetAsync(Url .. "?q="..game.HttpService:UrlEncode(Link))
	local Result = JSONDecode(JSON)
	if Result.result == "success" then
		return Result.response
	else
		warn(tostring(Link).." failed to fetch because "..tostring(Result.error))
		return
	end
end

return HttpProxy