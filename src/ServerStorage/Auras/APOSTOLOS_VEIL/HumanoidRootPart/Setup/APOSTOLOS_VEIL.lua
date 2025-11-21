--!strict
local module = {
	animationTracks = {}
} :: {
	[any]: any,
	animationTracks: {
		[any]: Animation
	}
}

local OtherAnims = script.OtherAnims

local Animations = {
	PortalOrange = OtherAnims.PortalOrange,
	PortalGreen = OtherAnims.PortalGreen,
	PortalPurple = OtherAnims.PortalPurple,
	Candle1 = OtherAnims.Candle1,
	Candle2 = OtherAnims.Candle2,
	Pumpkin1 = OtherAnims.Pumpkin1,
	Pumpkin2 = OtherAnims.Pumpkin2,
	Lantern1 = OtherAnims.Lantern1,
	Lantern2 = OtherAnims.Lantern2,
	Grave1 = OtherAnims.Grave1,
	Grave2 = OtherAnims.Grave2,
	BroomSpin1 = OtherAnims.BroomSpin1,
	BroomSpin2 = OtherAnims.BroomSpin2,
	SwordOrange = OtherAnims.SwordOrange,
	SwordGreen = OtherAnims.SwordGreen,
	SwordOrange2 = OtherAnims.SwordOrange2,
	SwordGreen2 = OtherAnims.SwordGreen2,
	CollumnOrange = OtherAnims.CollumnOrange,
	CollumnGreen = OtherAnims.CollumnGreen,
} :: {
	[any]: Animation
}

function module.setup(Character): ()
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	if Humanoid ~= nil and Humanoid:IsA("Humanoid") then
		local Animator = Humanoid:FindFirstChildOfClass("Animator")
		if Animator then
			for _, Animation in Animations do
				local AnimationTrack = Animator:LoadAnimation(Animation)
				AnimationTrack:Play()

				if module.animationTracks == nil then
					module.animationTracks = {}
				end

				table.insert(module.animationTracks, AnimationTrack)
			end
		end
	end
end

function module.loop(_): ()
	-- nun lol
end

function module.cleanup(_): ()
	for _, Animation: any in module.animationTracks do
		Animation:Stop()
		Animation:Destroy()
		Animation = nil
	end
end

return module