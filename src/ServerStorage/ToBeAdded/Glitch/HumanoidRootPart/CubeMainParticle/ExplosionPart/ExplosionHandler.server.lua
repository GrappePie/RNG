while wait(math.random(70, 150) / 10) do
	script.Parent.Distortion:Play()
	for i, v in pairs(script.Parent.Explosion:GetChildren()) do
		v:Emit(20)
	end
end