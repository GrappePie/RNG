local Modules = game.ReplicatedStorage:WaitForChild("Modules")
local DebrisCreater = require(Modules.DebrisCreater)
local CameraShaker = require(Modules.CameraShaker)

local updateCamera = function(a1)
	game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * a1
end

local shaker = CameraShaker.new(Enum.RenderPriority.Camera.Value, updateCamera)
shaker:Start()
shaker:ShakeOnce(6, 12, 0.050, 1.500)

local position = script.Parent.Position
DebrisCreater.DebrisCreate(position, 40, 45, Vector3.new(6, 6, 6), 0.200, true, 4, nil)

local Message = script:WaitForChild("Message")
Message.Parent = game.Players.LocalPlayer.PlayerGui.MainInterface

local TweenService = game:GetService("TweenService")
local InOut = Enum.EasingDirection.InOut
local TweenInfo = TweenInfo.new(7, Enum.EasingStyle.Sine, InOut, 0, false, 5)

local tweenGoals = { TextTransparency = 1 }
local tween = TweenService:Create(Message, TweenInfo, tweenGoals)
tween:Play()

local Debris = game:GetService("Debris")
Debris:AddItem(Message, 12)

local function applyColorCorrection()
	local Lighting = game.Lighting

	local colorEffect1 = Instance.new("ColorCorrectionEffect", Lighting)
	colorEffect1.Saturation = 65535
	colorEffect1.Contrast = 500
	Debris:AddItem(colorEffect1, 0.030)

	task.wait(0.050)

	local colorEffect2 = Instance.new("ColorCorrectionEffect", Lighting)
	colorEffect2.Saturation = 65535
	colorEffect2.Contrast = 500
	Debris:AddItem(colorEffect2, 0.030)
end

coroutine.wrap(applyColorCorrection)()

for _, child in ipairs(script.Parent:GetChildren()) do
	if child:IsA("ParticleEmitter") then
		child:Emit(child:GetAttribute("EmitCount"))
	elseif child:IsA("Sound") then
		child:Play()
	end
end
