b = script.Parent
x = 0

while true do
	local col = Color3.fromHSV(x,0.75,1)
	local col2 = Color3.fromHSV(x,0.675,1)
	x = x + 8/255
	for i, v in pairs(script.Parent.Parent.V1.Part.Attachment:GetChildren()) do
		if v:IsA("Attachment") then
			v.ParticleEmitter.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Aura:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "WShine" and v.Name ~= "WShine1" then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura1:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "WShine" and v.Name ~= "WShine1" then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura2:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "WShine" and v.Name ~= "WShine1" then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura3:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "WShine" and v.Name ~= "WShine1" then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Parent.Head.horn:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "question" then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.Parent.Parent.Torso.AuraA:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent.SPIN:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v.Color = ColorSequence.new(col)
		end
	end
	for i, v in pairs(script.Parent:GetChildren()) do
		if v:IsA("ParticleEmitter") and v.Name ~= "question" then
			v.Color = ColorSequence.new(col)
		end
	end
	script.Parent.Parent.Parent.Head.Chance.Number.TextColor3 = col2
	script.Parent.Parent.Parent.Head.Chance.Number.UIStroke.Color = col2
	script.Parent.Parent.Parent.Head.TAG.Number.TextColor3 = col2
	script.Parent.Parent.Parent.Head.TAG.Number.UIStroke.Color = col2
	if x >= 1 then
		x = 0
	end
	wait()
end