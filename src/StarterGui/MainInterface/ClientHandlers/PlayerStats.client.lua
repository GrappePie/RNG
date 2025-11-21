-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("StarterGui")
local v2 = game:GetService("RunService")
local v3 = game:GetService("ReplicatedStorage")
local v4 = v1.LocalPlayer
local v5 = v4.PlayerGui:WaitForChild("Stats"):WaitForChild("ScrollingFrame")
local v_u_6 = nil 
repeat v_u_6 = v4:GetAttribute("PlayBegin") wait() until v_u_6 ~= nil
local v_u_7 = workspace:WaitForChild("Terrain"):GetAttribute("ServerCreated")
local v_u_8 = v5:WaitForChild("Playtime")
local v_u_9 = v5:WaitForChild("Rarest")
local v_u_10 = v5:WaitForChild("Rolls")
local v_u_11 = v5:WaitForChild("Lucks")
local v_u_12 = v5:WaitForChild("SessionTime")
local v13 = v3:WaitForChild("Modules")
local v_u_14 = require(v13:WaitForChild("Utility"))
require(v13:WaitForChild("DB"):WaitForChild("RarityDB"))
require(v13:WaitForChild("DB"):WaitForChild("TierSkins"))
local v_u_15 = v4:WaitForChild("leaderstats"):WaitForChild("Rolls")
local v16 = require(v3:WaitForChild("ReplicaController"))
v16.RequestData()
repeat
	task.wait()
until v16.InitialDataReceived
local v_u_17 = v16.GetReplicaById(v4:GetAttribute("UID"))
local function v_u_26(p18)
	local v19 = (p18 - p18 % 60) / 60
	local v20 = p18 - v19 * 60
	local v21 = (v19 - v19 % 60) / 60
	local v22 = v19 - v21 * 60
	local v23 = (v21 - v21 % 24) / 24
	local v24 = v21 - v23 * 24
	local v25 = {}
	if 0 < v23 then
		table.insert(v25, v23)
		table.insert(v25, "d ")
	end
	if 0 < v24 then
		table.insert(v25, v24)
		table.insert(v25, "h ")
	end
	if 0 < v22 then
		table.insert(v25, v22)
		table.insert(v25, "m ")
	end
	if 0 < v20 then
		table.insert(v25, v20)
		table.insert(v25, "s")
	end
	return table.concat(v25)
end
v2.RenderStepped:Connect(function()
	-- upvalues: (copy) v_u_12, (copy) v_u_26, (copy) v_u_7, (copy) v_u_8, (copy) v_u_6, (copy) v_u_17, (copy) v_u_10, (copy) v_u_15, (copy) v_u_11, (copy) v_u_14, (copy) v_u_9
	local v27 = v_u_12
	local v28 = v_u_26
	local v29 = workspace:GetServerTimeNow() - v_u_7
	v27.Text = ("Session time : %*"):format((v28((math.floor(v29)))))
	local v30 = v_u_8
	local v31 = v_u_26
	local v32 = workspace:GetServerTimeNow() - v_u_6 + v_u_17.Data.Playtime
	v30.Text = ("Playtime : %*"):format((v31((math.floor(v32)))))
	v_u_10.Text = ("Rolled : %* times"):format(v_u_15.Value)
	local v33 = v_u_11
	local v34 = v_u_14.GetLuck() * 1000
	v33.Text = ("Your luck : x%*"):format(math.round(v34) / 1000)
	local v35 = {}
	local v36 = 0
	for _, v37 in ipairs(v_u_17.Data.DiscoveredAura) do
		local v38 = v_u_14.GetGeneralRarityByName
		table.insert(v35, v38(v37))
	end
	for v39, v40 in pairs(v_u_17.Data.SkinsOwned) do
		for _, v41 in ipairs(v40) do
			local v42 = v39 .. "_" .. v41
			local v43 = v_u_14.GetGeneralRarityByName
			table.insert(v35, v43(v42))
		end
	end
	if #v35 ~= 0 then
		local v44 = table.unpack
		v36 = math.max(v44(v35))
	end
	v_u_9.Text = ("Rarest RNG : %*"):format((v_u_14.format_int(v36)))
end)