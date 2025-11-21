-- What the sigma?

local v1 = script:WaitForChild("Value").Value
require(game.ReplicatedStorage:WaitForChild("ModuleScripts").DebrisCreater).DebrisCreate(v1, 30, 30, Vector3.new(5.5, 5.5, 5.5), 0.5, true, 3, nil)
local v2 = require(game.ReplicatedStorage:WaitForChild("ModuleScripts").CameraShaker)
local v_u_3 = game.Workspace.CurrentCamera
local v5 = v2.new(Enum.RenderPriority.Camera.Value, function(p4)
	-- upvalues: (copy) v_u_3
	v_u_3.CFrame = v_u_3.CFrame * p4
end)
v5:Start()
local v6 = 10 - (v_u_3.CFrame.Position - v1).Magnitude / 25
v5:ShakeOnce(math.clamp(v6, 0, 6), 12, 0.25, 0.25)