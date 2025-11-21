local module = {
	Init = function()
	end,
}
--[[local TweenService = game:GetService("TweenService")
local module = {}
local Part_upvr = workspace:WaitForChild("Map"):WaitForChild("Miscs"):WaitForChild("EyeWall"):WaitForChild("Part")
local Eyeball = Part_upvr:WaitForChild("SurfaceGui"):WaitForChild("Eyeball")
local Eyeball2 = Part_upvr:WaitForChild("SurfaceGui"):WaitForChild("Eyeball2")
local Tween0o_new_result1 = Tween0o.new(0.5, Enum.EasingStyle.Linear)
local tbl_upvr_2 = {TweenService:Create(Part_upvr, Tween0o_new_result1, {
	Transparency = 0.8;
}), TweenService:Create(Eyeball, Tween0o_new_result1, {
		ImageTransparency = 1;
	}), TweenService:Create(Eyeball2, Tween0o_new_result1, {
		ImageTransparency = 0;
	})}
local tbl_upvr = {TweenService:Create(Part_upvr, Tween0o_new_result1, {
	Transparency = 0;
}), TweenService:Create(Eyeball, Tween0o_new_result1, {
		ImageTransparency = 0;
	}), TweenService:Create(Eyeball2, Tween0o_new_result1, {
		ImageTransparency = 1;
	})}
local function Open_upvr() -- Line 38, Named "Open"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: Part_upvr (readonly)
	
	for _, v in ipairs(tbl_upvr) do
		v:Pause()
	end
	for _, v_2 in ipairs(tbl_upvr_2) do
		v_2:Play()
	end
	Part_upvr.CanCollide = false
end
local function Close_upvr() -- Line 50, Named "Close"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Part_upvr (readonly)
	
	for _, v_3 in ipairs(tbl_upvr_2) do
		v_3:Pause()
	end
	for _, v_4 in ipairs(tbl_upvr) do
		v_4:Play()
	end
	Part_upvr.CanCollide = true
end
local any_WaitForReplica_result1_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility")).Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local var36_upvw = false
local function OnRenderStepped_upvr() -- Line 62, Named "OnRenderStepped"
	--[[ Upvalues[4]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
		[2]: var36_upvw (read and write)
		[3]: Open_upvr (readonly)
		[4]: Close_upvr (readonly)
	
	local True_Vision = any_WaitForReplica_result1_upvr.Data.Buffs["True Vision"]
	if True_Vision then
		True_Vision = any_WaitForReplica_result1_upvr.Data.Buffs["True Vision"][1]
		if True_Vision then
			if 0 >= any_WaitForReplica_result1_upvr.Data.Buffs["True Vision"][1] then
				True_Vision = false
			else
				True_Vision = true
			end
		end
	end
	if True_Vision ~= var36_upvw then
		var36_upvw = True_Vision
		if var36_upvw then
			Open_upvr()
			return
		end
		Close_upvr()
	end
end
local RunService_upvr = game:GetService("RunService")
function module.Init() -- Line 76
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: OnRenderStepped_upvr (readonly)
	
	RunService_upvr.RenderStepped:Connect(OnRenderStepped_upvr)
end
return module]]