--!strict
local SOME = (function(arg1, arg2)
	local SOME

	repeat
		SOME = arg1:FindFirstChild(arg2)
		if not SOME then
			arg1.ChildAdded:Wait()
		end
	until
		SOME

	return SOME
end)(
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"),
	"MainInterface"
)

local MainUI = require(script:WaitForChild("Quad")).Init("MainUI")
local NewSignal = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("GoodSignal")).new()

local metatable = setmetatable({
	ScreenUpdated = NewSignal,
	MainInterface = SOME,
	FontBold = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold),
	FontDefault = Font.new("rbxasset://fonts/families/Sarpanch.json"),
	IsMobile = game:GetService("UserInputService").TouchEnabled
}, {
	__index = MainUI
})

local Store = MainUI.Store

function metatable.CloseAllWindows()
	for _, v in Store.GetObjects("Window") :: any do
		v.Visible = false
	end
end

local function SendSignal()
	NewSignal:Fire(SOME.AbsoluteSize)
end

local db
SOME:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
	if db then
		task.cancel(db)
	end
	db = task.delay(1, SendSignal)
end)

return metatable