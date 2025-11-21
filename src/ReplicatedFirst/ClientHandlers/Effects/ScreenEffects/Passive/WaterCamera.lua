local module = {
	Init = function()
	end,
}
--[[local Lighting = game:GetService("Lighting")
local SoundService_upvr = game:GetService("SoundService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local module_2 = {}
local OverlapParams_new_result1_upvr = OverlapParams.new()
local Underwater_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Sounds"):WaitForChild("Underwater")
local Blur = Lighting:WaitForChild("Blur")
local DepthOfField = Lighting:WaitForChild("DepthOfField")
local var12_upvr = module.Class("ImageLabel")({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1, 1);
	BackgroundTransparency = 1;
	Image = "rbxassetid://18791203431";
	ImageColor3 = Color3.fromRGB(89, 142, 255);
	ImageTransparency = 1;
	ZIndex = -10;
})
local Tween0o_new_result1 = Tween0o.new(0.4, Enum.EasingStyle.Quint)
local tbl_2_upvr = {TweenService:Create(Underwater_upvr, Tween0o_new_result1, {
	Volume = 0.05;
}), TweenService:Create(var12_upvr, Tween0o_new_result1, {
		ImageTransparency = 0.2;
	}), TweenService:Create(Blur, Tween0o_new_result1, {
		Size = 8;
	}), TweenService:Create(DepthOfField, Tween0o_new_result1, {
		FarIntensity = 1;
		FocusDistance = 0;
		0ocusRadius = 15;
		NearIntensity = 1;
	})}
local tbl_upvr = {TweenService:Create(Underwater_upvr, Tween0o_new_result1, {
	Volume = 0;
}), TweenService:Create(var12_upvr, Tween0o_new_result1, {
		ImageTransparency = 1;
	}), TweenService:Create(Blur, Tween0o_new_result1, {
		Size = 0;
	}), TweenService:Create(DepthOfField, Tween0o_new_result1, {
		FarIntensity = 0.1;
		FocusDistance = 0.05;
		0ocusRadius = 30;
		NearIntensity = 0.75;
	})}
OverlapParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Include
OverlapParams_new_result1_upvr.FilterDescendantsInstances = {}
local function AddPart_upvr_upvr(arg1) -- Line 53, Named "AddPart_upvr"
	--[[ Upvalues[1]:
		[1]: OverlapParams_new_result1_upvr (readonly)
	
	local tbl = {}
	tbl[1] = arg1
	for _, v in OverlapParams_new_result1_upvr.FilterDescendantsInstances do
		table.insert(tbl, v)
	end
	OverlapParams_new_result1_upvr.FilterDescendantsInstances = tbl
end
local function RemovePart_upvr_upvr(arg1) -- Line 64, Named "RemovePart_upvr"
	--[[ Upvalues[1]:
		[1]: OverlapParams_new_result1_upvr (readonly)
	
	for _, v_2 in OverlapParams_new_result1_upvr.FilterDescendantsInstances do
		if v_2 == arg1 then
		else
			table.insert({}, v_2)
		end
	end
	OverlapParams_new_result1_upvr.FilterDescendantsInstances = {}
end
local function _() -- Line 77, Named "OnEnterWater_upvr"
	--[[ Upvalues[3]:
		[1]: SoundService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	
	SoundService_upvr.AmbientReverb = Enum.ReverbType.UnderWater
	for _, v_3 in ipairs(tbl_upvr) do
		v_3:Pause()
	end
	for _, v_4 in ipairs(tbl_2_upvr) do
		v_4:Play()
	end
end
local function _() -- Line 91, Named "OnExitWater_upvr"
	--[[ Upvalues[3]:
		[1]: SoundService_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
	
	SoundService_upvr.AmbientReverb = Enum.ReverbType.NoReverb
	for _, v_5 in ipairs(tbl_2_upvr) do
		v_5:Pause()
	end
	for _, v_6 in ipairs(tbl_upvr) do
		v_6:Play()
	end
end
local Mount_upvr = module.Mount
local MainInterface_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local CollectionService_upvr = game:GetService("CollectionService")
local RunService_upvr = game:GetService("RunService")
local CurrentCamera_upvr = workspace.CurrentCamera
function module_2.Init() -- Line 111
	--[[ Upvalues[10]:
		[1]: Underwater_upvr (readonly)
		[2]: Mount_upvr (readonly)
		[3]: MainInterface_upvr (readonly)
		[4]: var12_upvr (readonly)
		[5]: CollectionService_upvr (readonly)
		[6]: AddPart_upvr_upvr (readonly)
		[7]: RemovePart_upvr_upvr (readonly)
		[8]: RunService_upvr (readonly)
		[9]: CurrentCamera_upvr (readonly)
		[10]: OverlapParams_new_result1_upvr (readonly)
	
	Underwater_upvr.Volume = 0
	Underwater_upvr:Play()
	Mount_upvr(MainInterface_upvr, var12_upvr)
	CollectionService_upvr:GetInstanceAddedSignal("Water"):Connect(AddPart_upvr_upvr)
	CollectionService_upvr:GetInstanceRemovedSignal("Water"):Connect(RemovePart_upvr_upvr)
	CollectionService_upvr:GetInstanceAddedSignal("Lava"):Connect(AddPart_upvr_upvr)
	CollectionService_upvr:GetInstanceRemovedSignal("Lava"):Connect(RemovePart_upvr_upvr)
	for _, v_7 in CollectionService_upvr:GetTagged("Lava") do
		task.defer(AddPart_upvr_upvr, v_7)
	end
	for _, v_8 in CollectionService_upvr:GetTagged("Water") do
		task.defer(AddPart_upvr_upvr, v_8)
	end
	RunService_upvr:BindToRenderStep("WATER-SCREEN-EFFECT", Enum.RenderPriority.Camera.Value + 1, function() -- Line 140
		--[[ Upvalues[2]:
			[1]: CurrentCamera_upvr (copied, readonly)
			[2]: OverlapParams_new_result1_upvr (copied, readonly)
		
		local workspace_GetPartBoundsInRadius_result1 = workspace:GetPartBoundsInRadius(CurrentCamera_upvr.CFrame.Position, 0.001, OverlapParams_new_result1_upvr)
		if #workspace_GetPartBoundsInRadius_result1 <= 0 then
		end
		local _, _, _ = ipairs(workspace_GetPartBoundsInRadius_result1)
	end)
end
return module_2]]