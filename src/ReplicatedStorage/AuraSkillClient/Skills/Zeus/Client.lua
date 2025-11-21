-- What the sigma?

local v1 = {}
local v2 = require(game.ReplicatedStorage:WaitForChild("Modules").CameraShaker)
local v_u_3 = game.Workspace.CurrentCamera
local v_u_5 = v2.new(Enum.RenderPriority.Camera.Value, function(p4)
	-- upvalues: (copy) v_u_3
	v_u_3.CFrame = v_u_3.CFrame * p4
end)
v_u_5:Start()
function v1.Client()
	-- upvalues: (copy) v_u_5
	game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(script:WaitForChild("Active")):Play()
	task.wait(0.8)
	v_u_5:ShakeOnce(4, 12, 0.25, 0.25)
	coroutine.wrap(function()
		local v6 = Instance.new("ColorCorrectionEffect", game.Lighting)
		v6.Saturation = -1
		v6.Contrast = 500
		game:GetService("Debris"):AddItem(v6, 0.02)
		task.wait(0.05)
		local v7 = Instance.new("ColorCorrectionEffect", game.Lighting)
		v7.Saturation = -1
		v7.Contrast = 500
		game:GetService("Debris"):AddItem(v7, 0.02)
	end)()
end
return v1