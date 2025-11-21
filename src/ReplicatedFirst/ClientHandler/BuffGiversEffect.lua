-- What the sigma?

local v_u_1 = game:GetService("Players")
local v2 = workspace:WaitForChild("Map"):WaitForChild("BuffGivers")
local v_u_3 = v_u_1.LocalPlayer
local function v14(p_u_4)
	-- upvalues: (copy) v_u_1, (copy) v_u_3
	local v_u_5 = false
	local v_u_6 = p_u_4:WaitForChild("Explode", 2)
	if v_u_6 then
		local v_u_7 = p_u_4:GetDescendants()
		local v_u_8 = p_u_4:GetAttribute("Delay")
		p_u_4.Touched:Connect(function(p9)
			-- upvalues: (ref) v_u_1, (ref) v_u_3, (ref) v_u_5, (copy) v_u_7, (copy) v_u_6, (copy) v_u_8, (copy) p_u_4
			if p9 then
				p9 = p9.Parent
			end
			local v10 = v_u_1:GetPlayerFromCharacter(p9)
			if v10 == v_u_3 and not v_u_5 then
				v_u_5 = true
				for _, v11 in ipairs(v_u_7) do
					if v11:IsA("ParticleEmitter") then
						v11.Enabled = false
					end
				end
				for _, v12 in ipairs(v_u_6:GetChildren()) do
					if v12:IsA("ParticleEmitter") then
						v12:Emit(v12:GetAttribute("EmitCount"))
					end
				end
				task.wait(v_u_8 + 0.3)
				if v10:DistanceFromCharacter(p_u_4.Position) <= 100 then
					repeat
						task.wait(0.5)
					until v10:DistanceFromCharacter(p_u_4.Position) <= 100
				end
				for _, v13 in ipairs(v_u_7) do
					if v13:IsA("ParticleEmitter") and not v13:IsDescendantOf(v_u_6) then
						v13.Enabled = true
					end
				end
				v_u_5 = false
			end
		end)
	end
end
repeat
	task.wait()
until game:IsLoaded()
for _, v15 in ipairs(v2:GetChildren()) do
	task.spawn(v14, v15)
end
return nil