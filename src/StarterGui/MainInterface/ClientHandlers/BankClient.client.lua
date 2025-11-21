-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v_u_3 = game:GetService("RunService")
local v_u_4 = v1.LocalPlayer
local v5 = v2:WaitForChild("Remotes")
local v6 = require(v2:WaitForChild("ReplicaController"))
v6.RequestData()
repeat
	task.wait()
until v6.InitialDataReceived
local v_u_7 = v6.GetReplicaById(v_u_4:GetAttribute("UID"))
local v8 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_9 = v8:WaitForChild("BankCapacityUpgrade")
local v10 = v_u_9:WaitForChild("Yes")
local v11 = v_u_9:WaitForChild("Nevermind")
local v_u_12 = v8:WaitForChild("BankCapacityIsMax")
local v13 = v_u_12:WaitForChild("Okay")
local v_u_14 = workspace:WaitForChild("Bank")
local v15 = v_u_14:WaitForChild("Screen"):WaitForChild("SurfaceGui")
local v_u_16 = v15:WaitForChild("Contain")
local v_u_17 = v15:WaitForChild("Refresh")
local v18 = v2:WaitForChild("Modules")
local v19 = require(v18:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
function format_int(p20)
	if p20 == (1 / 0) or p20 == tonumber("0") then
		return "0"
	end
	local _, _, v21, v22, v23 = tostring(p20):find("([-]?)(%d+)([.]?%d*)")
	return v21 .. v22:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. v23
end
local function v_u_32(p24)
	local v25 = (p24 - p24 % 60) / 60
	local v26 = p24 - v25 * 60
	local v27 = (v25 - v25 % 60) / 60
	local v28 = v25 - v27 * 60
	local v29 = (v27 - v27 % 24) / 24
	local v30 = v27 - v29 * 24
	local v31 = {}
	if 0 < v29 then
		table.insert(v31, v29)
		table.insert(v31, "d ")
	end
	if 0 < v30 then
		table.insert(v31, v30)
		table.insert(v31, "h ")
	end
	if 0 < v28 then
		table.insert(v31, v28)
		table.insert(v31, "m ")
	end
	if 0 < v26 then
		table.insert(v31, v26)
		table.insert(v31, "s")
	end
	return table.concat(v31)
end
local function v_u_36()
	-- upvalues: (copy) v_u_7, (copy) v_u_17, (copy) v_u_32
	local v33 = v_u_17
	local v34 = v_u_32
	local v35 = DateTime.fromUnixTimestamp(v_u_7.Data.BankRefreshTimeStamp).UnixTimestamp - DateTime.now().UnixTimestamp
	v33.Text = ("Refresh at %*"):format((v34((math.ceil(v35)))))
end
local v37 = v5:WaitForChild("ShowBank")
local v_u_38 = v5:WaitForChild("BankUpgrade")
local v_u_39 = v_u_14:WaitForChild("ProximityPrompt")
local v_u_40 = v2:WaitForChild("Assets"):WaitForChild("SFXs")
v37.OnClientEvent:Connect(function(_)
	-- upvalues: (copy) v_u_14
	for _, v41 in v_u_14:GetDescendants() do
		if v41:IsA("BasePart") then
			v41.Transparency = 0
			v41.CanCollide = true
		elseif v41:IsA("SurfaceGui") then
			v41.Enabled = true
		elseif v41:IsA("ProximityPrompt") then
			v41.Enabled = true
		end
	end
end)
if v_u_7.Data.BankEnabled then
	v_u_3.RenderStepped:Connect(v_u_36)
end
v_u_7:ListenToChange("BankEnabled", function()
	-- upvalues: (copy) v_u_7, (copy) v_u_3, (copy) v_u_36
	if v_u_7.Data.BankEnabled then
		v_u_3.RenderStepped:Connect(v_u_36)
	end
end)
v_u_16.Text = ("[ %* / %* ]"):format(format_int(v_u_7.Data.Bank), (format_int(v_u_7.Data.BankCapacity)))
v_u_7:ListenToChange("Bank", function()
	-- upvalues: (copy) v_u_16, (copy) v_u_7
	v_u_16.Text = ("[ %* / %* ]"):format(format_int(v_u_7.Data.Bank), (format_int(v_u_7.Data.BankCapacity)))
end)
v_u_39.Triggered:Connect(function(p42)
	-- upvalues: (copy) v_u_4, (copy) v_u_7, (copy) v_u_12, (copy) v_u_9, (copy) v_u_40
	if p42 == v_u_4 then
		if 3 <= 1 + (v_u_7.Data.BankCapacity - 100000) / 25000 then
			v_u_12.Visible = true
		else
			v_u_9.Visible = true
		end
		v_u_40.Click:Play()
	end
end)
v13.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_12
	v_u_12.Visible = false
end)
v19.LoadButtonEffects(v13, 1)
v10.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_9, (copy) v_u_38, (copy) v_u_40
	if v_u_9.Visible then
		v_u_38:FireServer("a")
		v_u_9.Visible = false
		v_u_40.Money:Play()
	end
end)
v19.LoadButtonEffects(v10, 1)
v11.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_9
	v_u_9.Visible = false
end)
v_u_7:ListenToChange("BankCapacity", function()
	-- upvalues: (copy) v_u_7, (copy) v_u_39, (copy) v_u_16
	v_u_39.ObjectText = ("Current Bank Level: %*"):format(1 + (v_u_7.Data.BankCapacity - 100000) / 25000)
	v_u_16.Text = ("[ %* / %* ]"):format(format_int(v_u_7.Data.Bank), (format_int(v_u_7.Data.BankCapacity)))
end)
v_u_39.ObjectText = ("Current Bank Level: %*"):format(1 + (v_u_7.Data.BankCapacity - 100000) / 25000)