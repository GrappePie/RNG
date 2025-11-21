-- What the sigma?

local v_u_1 = game:GetService("Debris")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("Players")
local v_u_4 = require(game.ServerStorage.ModuleScripts.TeleportHandler)
local function v_u_11(p5, p6)
	local v7 = script.DamageUI:Clone()
	v7.Parent = p6
	v7.Enabled = true
	local v8 = math.random(15, 20) / 10 * (math.random(1, 2) == 1 and -1 or 1)
	local v9 = math.random(15, 20) / 10 * (math.random(1, 2) == 1 and -1 or 1)
	local v10 = math.random(15, 20) / 10 * (math.random(1, 2) == 1 and -1 or 1)
	v7.StudsOffset = Vector3.new(v8, v9, v10)
	v7.TextLabel.Text = "-" .. p5
	v7.FadeOut.Disabled = false
	game:GetService("Debris"):AddTag(v7, 4)
end
return {
	["DamagePlayerWithHitbox"] = function(p12, p13, p14, p15, p16, p17, p18, p19, p20)
		-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3, (copy) v_u_11, (copy) v_u_4
		if v_u_2:IsClient() then
			return
		end
		if not p20:GetAttribute("PVP") then
			return
		end
		print(p17)
		local v21 = {}
		local v22 = Instance.new("Part", game.Workspace)
		v22.Anchored = true
		v22.CanCollide = false
		v22.CFrame = p13 * (p14 or CFrame.new(0, 0, 0)) * (p15 or CFrame.Angles(0, 0, 0))
		v22.Shape = p16
		v22.Size = p12
		v22.Material = Enum.Material.ForceField
		v22.Color = Color3.new(1, 0, 0)
		v22.CastShadow = false
		v22.CanQuery = false
		if p19 then
			v22.Transparency = 0.1
		else
			v22.Transparency = 1
		end
		v_u_1:AddItem(v22, 1)
		for _, v23 in ipairs(game.Workspace:GetPartsInPart(v22, OverlapParams.new())) do
			if v23 and v23.Parent then
				local v24 = v23.Parent:FindFirstChildOfClass("Humanoid")
				if v24 and not table.find(p17, v_u_3:GetPlayerFromCharacter(v23.Parent)) and 0 < v24.Health and not table.find(v21, v23.Parent) then
					local v25 = v23.Parent
					table.insert(v21, v25)
				end
			end
		end
		for _, v26 in ipairs(v21) do
			local v27 = v26:FindFirstChildOfClass("Humanoid")
			if v27 then
				v_u_11(p18, v26.HumanoidRootPart)
				if v27.Health <= p18 then
					v27.Health = v27.MaxHealth
					if v_u_3:GetPlayerFromCharacter(v26) then
						v_u_4.TeleportPlayer(v_u_3:GetPlayerFromCharacter(v26), workspace.SpawnLocation.Position + Vector3.yAxis * 3)
					end
					return
				end
				v27:TakeDamage(p18)
			end
		end
	end,
	["GetPlayersPVPDisabled"] = function()
		local v28 = {}
		for _, v29 in ipairs(game.Players:GetPlayers()) do
			if not v29:GetAttribute("PVP") then
				table.insert(v28, v29)
			end
		end
		return v28
	end
}