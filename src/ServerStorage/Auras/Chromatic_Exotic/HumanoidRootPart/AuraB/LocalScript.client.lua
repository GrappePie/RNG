
while task.wait(0.001) do
	script.Parent.SPIN.mid:Emit(script.Parent.Parent.Music.PlaybackLoudness / 765)
	script.Parent.SPIN.mid2:Emit(script.Parent.Parent.Music.PlaybackLoudness / 765)
	script.Parent.Parent.Aura.Pulse.Size = NumberSequence.new(2.375+script.Parent.Parent.Music.PlaybackLoudness / 200)
	script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura1.Pulse.Size = NumberSequence.new(0.25+script.Parent.Parent.Music.PlaybackLoudness / 200)
	script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura2.Pulse.Size = NumberSequence.new(0.25+script.Parent.Parent.Music.PlaybackLoudness / 200)
	script.Parent.Parent.Parent.Torso.AuraA.Spin.Aura3.Pulse.Size = NumberSequence.new(0.25+script.Parent.Parent.Music.PlaybackLoudness / 200)
	script.Parent.Parent.V1:ScaleTo(0.8 + script.Parent.Parent.Music.PlaybackLoudness / 2500)
	for i, v in pairs(script.Parent.Parent.V1.Part.Attachment:GetChildren()) do
		if v:IsA("Attachment") then
			v.ParticleEmitter.Squash = NumberSequence.new(script.Parent.Parent.Music.PlaybackLoudness / math.random(60, 600))
			v.ParticleEmitter.Size = NumberSequence.new(0.075+script.Parent.Parent.Music.PlaybackLoudness / math.random(80, 1000))
		end
	end
end