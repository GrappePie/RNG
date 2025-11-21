--!strict
if script:IsDescendantOf(workspace) then
	local Attachment = script:FindFirstAncestorWhichIsA("Attachment")
	local ExplosionSFX = Attachment:WaitForChild("Sound")
	coroutine.wrap(function()
		while task.wait(5) do
			Attachment:WaitForChild("START1"):Emit(1)
			task.wait(0.5)
			for _, child in Attachment:GetChildren() do
				if child:IsA("ParticleEmitter") and child.Name ~= "START1" then
					local emitCount = string.find(child.Name, "burst") and 10 or string.find(child.Name, "deb") and 5 or string.find(child.Name, "flare") and 5 or string.find(child.Name, "glow") and 1 or string.find(child.Name:lower(), "roll") and 1 or string.find(child.Name, "shockwave") and 5 or string.find(child.Name, "smoke") and 5 or string.find(child.Name, "wind") and 5 or 0
					child:Emit(emitCount)
					ExplosionSFX:Play()
				end
			end
		end
	end)()
end