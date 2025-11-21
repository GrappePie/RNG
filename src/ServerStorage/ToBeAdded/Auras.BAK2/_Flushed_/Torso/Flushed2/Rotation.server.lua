for _, v in pairs(script.Parent:GetChildren()) do
	if v:IsA("Attachment") then
		local angle = 0
		local radius = 5  -- how far out it is from torso
		local speed = 5  -- speed
		coroutine.resume(coroutine.create(function()
			while true do
				angle = angle + speed * 0.03  
				local xOffset = math.cos(angle) * radius
				local zOffset = math.sin(angle) * radius

				local torso = script.Parent.Parent
				if torso then
					local newPosition = torso.Position + Vector3.new(xOffset, 0, zOffset)
					v.WorldCFrame = CFrame.new(newPosition)
				end

				task.wait(0.03) 
			end
		end))
	end
	task.wait(4)
end