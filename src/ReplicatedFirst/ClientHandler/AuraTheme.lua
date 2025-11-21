-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("CollectionService")
local v_u_3 = v1.LocalPlayer
local v_u_4 = {}
local v_u_5 = nil
local function v8(p_u_6)
	-- upvalues: (copy) v_u_3, (copy) v_u_4
	if (p_u_6:IsA("Sound") or p_u_6:IsA("AudioFader")) and not (p_u_6:IsDescendantOf(v_u_3.Character) or p_u_6:FindFirstAncestor("WikiDummy")) then
		v_u_4[p_u_6] = {
			["Volume"] = 0 < p_u_6.Volume and p_u_6.Volume or p_u_6:GetAttribute("Original"),
			["Connection"] = p_u_6.Changed:Connect(function(p7)
				-- upvalues: (copy) p_u_6, (ref) v_u_4, (ref) v_u_3
				if p7 == "Volume" then
					if 0 < p_u_6.Volume then
						v_u_4[p_u_6].Volume = p_u_6.Volume
					end
					if v_u_3:GetAttribute("OthersAuraSFX") then
						if p_u_6.Volume ~= v_u_4[p_u_6].Volume then
							p_u_6.Volume = v_u_4[p_u_6].Volume
							return
						end
					elseif p_u_6.Volume ~= 0 then
						p_u_6.Volume = 0
					end
				end
			end)
		}
		if v_u_3:GetAttribute("OthersAuraSFX") then
			if p_u_6.Volume ~= v_u_4[p_u_6].Volume then
				p_u_6.Volume = v_u_4[p_u_6].Volume
				return
			end
		elseif p_u_6.Volume ~= 0 then
			p_u_6.Volume = 0
		end
	end
end
local function v10(p9)
	-- upvalues: (copy) v_u_4, (copy) v_u_5
	if v_u_4[p9] then
		v_u_4[p9].Connection:Disconnect()
		table.clear(v_u_4[p9])
		v_u_4[p9] = v_u_5
	end
end
local function v14()
	-- upvalues: (copy) v_u_3, (copy) v_u_4
	if v_u_3:GetAttribute("OthersAuraSFX") then
		for v11, v12 in pairs(v_u_4) do
			v11.Volume = v12.Volume
		end
	else
		for v13, _ in pairs(v_u_4) do
			v13.Volume = 0
		end
	end
end
for _, v15 in ipairs(v2:GetTagged("AuraSound")) do
	task.defer(v8, v15)
end
task.defer(v14)
v2:GetInstanceAddedSignal("AuraSound"):Connect(v8)
v2:GetInstanceRemovedSignal("AuraSound"):Connect(v10)
v_u_3:GetAttributeChangedSignal("OthersAuraSFX"):Connect(v14)
return nil