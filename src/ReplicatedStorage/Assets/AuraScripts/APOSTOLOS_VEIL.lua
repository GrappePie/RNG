-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:25
-- Luau version 6, Types version 3
-- Time taken: 0.001161 seconds

local module_upvr = {}
local OtherAnims = script.OtherAnims
local tbl_upvr = {
	PortalOrange = OtherAnims.PortalOrange;
	PortalGreen = OtherAnims.PortalGreen;
	PortalPurple = OtherAnims.PortalPurple;
	Candle1 = OtherAnims.Candle1;
	Candle2 = OtherAnims.Candle2;
	Pumpkin1 = OtherAnims.Pumpkin1;
	Pumpkin2 = OtherAnims.Pumpkin2;
	Lantern1 = OtherAnims.Lantern1;
	Lantern2 = OtherAnims.Lantern2;
	Grave1 = OtherAnims.Grave1;
	Grave2 = OtherAnims.Grave2;
	BroomSpin1 = OtherAnims.BroomSpin1;
	BroomSpin2 = OtherAnims.BroomSpin2;
	SwordOrange = OtherAnims.SwordOrange;
	SwordGreen = OtherAnims.SwordGreen;
	SwordOrange2 = OtherAnims.SwordOrange2;
	SwordGreen2 = OtherAnims.SwordGreen2;
	CollumnOrange = OtherAnims.CollumnOrange;
	CollumnGreen = OtherAnims.CollumnGreen;
}
function module_upvr.setup(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then
	else
		local class_Animator = class_Humanoid:FindFirstChildOfClass("Animator")
		if not class_Animator then return end
		for _, v_2 in tbl_upvr do
			local any_LoadAnimation_result1 = class_Animator:LoadAnimation(v_2)
			any_LoadAnimation_result1:Play()
			if not module_upvr.animationTracks then
				module_upvr.animationTracks = {}
			end
			table.insert(module_upvr.animationTracks, any_LoadAnimation_result1)
		end
	end
end
function module_upvr.loop(arg1) -- Line 53
end
function module_upvr.cleanup(arg1) -- Line 57
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v in module_upvr.animationTracks do
		v:Stop()
		v:Destroy()
		v = nil
	end
end
return module_upvr