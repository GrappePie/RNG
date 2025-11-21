-- What the sigma?

local v_u_1 = game:GetService("TweenService")
local v_u_2 = game:GetService("Debris")
local v_u_3 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_4 = Tween0o.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0.1)
local v_u_5 = Tween0o.new(0)
local v_u_6 = Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.In)
local v_u_7 = Instance.new("BindableEvent")
local function v_u_10(p_u_8)
	-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3, (copy) v_u_6, (copy) v_u_7
	if not (p_u_8 and p_u_8.Parent and p_u_8:GetAttribute("Disp")) then
		v_u_2:AddItem(p_u_8, 1)
		p_u_8:SetAttribute("Disp", true)
		pcall(function()
			-- upvalues: (copy) p_u_8, (ref) v_u_1, (ref) v_u_3, (ref) v_u_6
			local v9 = p_u_8:FindFirstChildOfClass("Frame")
			v9:FindFirstChild("Lifetime").BackgroundTransparency = 0
			v_u_1:Create(v9:FindFirstChild("Lifetime"), v_u_3, {
				["BackgroundTransparency"] = 1
			}):Play()
			v_u_1:Create(v9, v_u_6, {
				["Position"] = UDim2.fromScale(1, 0)
			}):Play()
		end)
		v_u_7:Fire(p_u_8)
	end
end
local function v_u_14(p11, p12)
	for _, v13 in ipairs(p11:GetDescendants()) do
		if v13:IsA("TextLabel") then
			v13.TextColor3 = p12
		elseif v13:IsA("Frame") and v13.BackgroundTransparency == 0 then
			v13.BackgroundColor3 = p12
		end
	end
end
local function v_u_17(p15)
	if p15:IsA("Sound") then
		local v_u_16 = p15:Clone()
		v_u_16.Parent = script:FindFirstChild("SFXHolder")
		v_u_16:Play()
		v_u_16.Ended:Once(function()
			-- upvalues: (copy) v_u_16
			v_u_16:Destroy()
		end)
	end
end
local function v33(p18, p19, p20, p21, p22, p23, p24)
	-- upvalues: (copy) v_u_17, (copy) v_u_14, (copy) v_u_1, (copy) v_u_3, (copy) v_u_4, (copy) v_u_5, (copy) v_u_10, (copy) v_u_7
	local v25 = script.Parent.AbsoluteSize.Y * 0.2
	local v_u_26 = script.Notification:Clone()
	v_u_26.Parent = script.Parent
	local v27 = script:FindFirstChild(p21 or "Normal") or script:FindFirstChild("Normal")
	if v27:IsA("Sound") then
		v_u_17(v27)
	end
	local v_u_28
	if p22 then
		v_u_28 = script.BaseImage:Clone()
		v_u_28.Icon.Image = "rbxassetid://" .. p22
		v_u_28.Icon.ImageColor3 = p23 or Color3.new(1, 1, 1)
	else
		v_u_28 = script.BaseText:Clone()
	end
	if p21 == "Warn" then
		v_u_14(v_u_28, Color3.fromRGB(255, 97, 97))
	elseif p21 == "Badge" then
		v_u_14(v_u_28, Color3.fromRGB(111, 181, 255))
	end
	v_u_28.Parent = v_u_26
	v_u_28.Size = UDim2.new(1, 0, 0, v25)
	v_u_1:Create(v_u_28, v_u_3, {
		["Position"] = UDim2.fromScale(0, 0)
	}):Play()
	v_u_1:Create(v_u_26, v_u_4, {
		["Size"] = UDim2.fromScale(1, 0.2)
	}):Play()
	local v29 = Tween0o.new(p20, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	v_u_1:Create(v_u_28.Lifetime, v29, {
		["Size"] = UDim2.fromScale(1, 1)
	}):Play()
	v_u_28.Title.Text = p18
	v_u_28.Context.Text = p19
	v_u_28.Close.MouseButton1Click:Once(function()
		-- upvalues: (ref) v_u_17, (ref) v_u_28, (ref) v_u_1, (ref) v_u_5, (ref) v_u_10, (copy) v_u_26
		v_u_17(game.ReplicatedStorage:WaitForChild("Assets").SFXs.Click)
		v_u_28.Close.Visible = false
		v_u_1:Create(v_u_28.Lifetime, v_u_5, {
			["Size"] = UDim2.fromScale(1, 1)
		}):Play()
		v_u_10(v_u_26)
	end)
	task.delay(p20, v_u_10, v_u_26)
	if p24 then
		local v_u_30 = coroutine.running()
		local v_u_31 = nil
		v_u_31 = v_u_7.Event:Connect(function(p32)
			-- upvalues: (copy) v_u_26, (ref) v_u_31, (copy) v_u_30
			if p32 == v_u_26 then
				v_u_31:Disconnect()
				task.defer(v_u_30)
			end
		end)
		coroutine.yield()
	end
end
return setmetatable({
	["Create"] = v33
}, {
	["__call"] = v33
})