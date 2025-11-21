local Parent = script.Parent

local GlobalFrame = Parent.Global
local LocalFrame = Parent.Local

local function _swapFrame_1()
	LocalFrame.Visible = true
	GlobalFrame.Visible = false
end
local function _swapFrame_2()
    LocalFrame.Visible = false
    GlobalFrame.Visible = true
end

local LOCAL = Parent.LOCAL
local GLOBAL = Parent.GLOBAL

LOCAL.MouseButton1Click:Connect(_swapFrame_1)
GLOBAL.MouseButton1Click:Connect(_swapFrame_2)