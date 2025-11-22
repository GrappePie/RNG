-- What the sigma?

local v_u_1 = game:GetService("ReplicatedStorage")
local v_u_2 = require(script.Rain)
v_u_2:SetColor(Color3.fromRGB(script.Color.Value.x, script.Color.Value.y, script.Color.Value.z))
v_u_2:SetDirection(script.Direction.Value)
v_u_2:SetTransparency(script.Transparency.Value)
v_u_2:SetSpeedRatio(script.SpeedRatio.Value)
v_u_2:SetIntensityRatio(script.IntensityRatio.Value)
v_u_2:SetLightInfluence(script.LightInfluence.Value)
v_u_2:SetLightEmission(script.LightEmission.Value)
v_u_2:SetVolume(script.Volume.Value)
v_u_2:SetSoundId(script.SoundId.Value)
v_u_2:SetStraightTexture(script.StraightTexture.Value)
v_u_2:SetTopDownTexture(script.TopDownTexture.Value)
v_u_2:SetSplashTexture(script.SplashTexture.Value)
local v_u_3 = script.TransparencyThreshold.Value
if script.TransparencyConstraint.Value and script.CanCollideConstraint.Value then
	v_u_2:SetCollisionMode(v_u_2.CollisionMode.Function, function(p4)
		-- upvalues: (copy) v_u_3
		local v5
		if p4.Transparency <= v_u_3 then
			v5 = p4.CanCollide
		else
			v5 = false
		end
		return v5
	end)
elseif script.TransparencyConstraint.Value then
	v_u_2:SetCollisionMode(v_u_2.CollisionMode.Function, function(p6)
		-- upvalues: (copy) v_u_3
		return p6.Transparency <= v_u_3
	end)
elseif script.CanCollideConstraint.Value then
	v_u_2:SetCollisionMode(v_u_2.CollisionMode.Function, function(p7)
		return p7.CanCollide
	end)
end
local function v8()
	-- upvalues: (copy) v_u_1, (copy) v_u_2
	if v_u_1.ServerInfo:GetAttribute("CurrentBiome") == "Rainy" then
		v_u_2:Enable(TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out))
	else
		v_u_2:Disable(TweenInfo.new(2, Enum.EasingStyle.Linear))
	end
end
v8()
v_u_1.ServerInfo:GetAttributeChangedSignal("CurrentBiome"):Connect(v8)