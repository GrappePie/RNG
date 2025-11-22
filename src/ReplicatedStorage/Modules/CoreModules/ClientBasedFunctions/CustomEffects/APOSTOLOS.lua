local v0_0_ = game
local v0_2_ = "StarterGui"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local new = TweenInfo.new
v0_3_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_2_ = new(v0_3_, Quart)
local new = TweenInfo.new
local v0_4_ = 0.300000
local Quart = Enum.EasingStyle.Quart
v0_3_ = new(v0_4_, Quart)
local new = TweenInfo.new
local v0_5_ = 0.500000
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_4_ = new(v0_5_, Quart, In)
local new = TweenInfo.new
local v0_6_ = 1
local Quart = Enum.EasingStyle.Quart
v0_5_ = new(v0_6_, Quart)
local new = TweenInfo.new
local v0_7_ = 2
local Quart = Enum.EasingStyle.Quart
v0_6_ = new(v0_7_, Quart)
local new = TweenInfo.new
local v0_8_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_7_ = new(v0_8_, Quart, In)
v0_8_ = game
local v0_10_ = "ReplicatedStorage"
v0_8_ = v0_8_:GetService(v0_10_)
local v0_9_ = game
local v0_11_ = "RunService"
v0_9_ = v0_9_:GetService(v0_11_)
v0_11_ = v0_8_.Assets
v0_10_ = v0_11_.SFXs
v0_11_ = {}
local v0_12_ = 0.600000
v0_11_.BackgroundTransparency = v0_12_
v0_12_ = {}
local v0_13_ = 1
v0_12_.BackgroundTransparency = v0_13_
v0_13_ = {}
local v0_14_ = 0
v0_13_.BackgroundTransparency = v0_14_
v0_14_ = game
local v0_16_ = "Debris"
v0_14_ = v0_14_:GetService(v0_16_)
local v0_15_ = function(a1, a2, a3)
	local new = Instance.new
	local v1_4_ = "ImageLabel"
	local v1_5_ = a1
	local v1_3_ = new(v1_4_, v1_5_)
	v1_4_ = "rbxassetid://6909741538"
	v1_3_.Image = v1_4_
	local random = math.random
	v1_5_ = 1
	local v1_6_ = 2
	v1_4_ = random(v1_5_, v1_6_)
	if v1_4_ == 1.000000 then
		local fromRGB = Color3.fromRGB
		v1_5_ = 115
		v1_6_ = 169
		local v1_7_ = 255
		v1_4_ = fromRGB(v1_5_, v1_6_, v1_7_)
		v1_3_.ImageColor3 = v1_4_
		v1_4_ = v0_1_
		v1_6_ = v1_3_
		local new = TweenInfo.new
		local random = math.random
		local v1_10_ = 15
		local v1_11_ = 35
		local v1_9_ = random(v1_10_, v1_11_)
		local v1_8_ = v1_9_ / 10.000000
		local Sine = Enum.EasingStyle.Sine
		local InOut = Enum.EasingDirection.InOut
		v1_11_ = -1
		local v1_12_ = true
		v1_7_ = new(v1_8_, Sine, InOut, v1_11_, v1_12_)
		v1_8_ = {}
		local fromRGB = Color3.fromRGB
		v1_10_ = 255
		v1_11_ = 80
		v1_12_ = 80
		v1_9_ = fromRGB(v1_10_, v1_11_, v1_12_)
		v1_8_.ImageColor3 = v1_9_
		v1_4_ = v1_4_:Create(v1_6_, v1_7_, v1_8_)
		v1_4_:Play()
	else
		local fromRGB = Color3.fromRGB
		v1_5_ = 255
		v1_6_ = 80
		local v1_7_ = 80
		v1_4_ = fromRGB(v1_5_, v1_6_, v1_7_)
		v1_3_.ImageColor3 = v1_4_
		v1_4_ = v0_1_
		v1_6_ = v1_3_
		local new = TweenInfo.new
		local random = math.random
		local v1_10_ = 15
		local v1_11_ = 35
		local v1_9_ = random(v1_10_, v1_11_)
		local v1_8_ = v1_9_ / 10.000000
		local Sine = Enum.EasingStyle.Sine
		local InOut = Enum.EasingDirection.InOut
		v1_11_ = -1
		local v1_12_ = true
		v1_7_ = new(v1_8_, Sine, InOut, v1_11_, v1_12_)
		v1_8_ = {}
		local fromRGB = Color3.fromRGB
		v1_10_ = 115
		v1_11_ = 169
		v1_12_ = 255
		v1_9_ = fromRGB(v1_10_, v1_11_, v1_12_)
		v1_8_.ImageColor3 = v1_9_
		v1_4_ = v1_4_:Create(v1_6_, v1_7_, v1_8_)
		v1_4_:Play()
	end
	local RelativeXX = Enum.SizeConstraint.RelativeXX
	v1_3_.SizeConstraint = RelativeXX
	v1_4_ = 1
	v1_3_.BackgroundTransparency = v1_4_
	local random = math.random
	v1_6_ = 2
	local v1_7_ = 6
	v1_5_ = random(v1_6_, v1_7_)
	v1_4_ = v1_5_ / 100.000000
	local random = math.random
	v1_6_ = -15
	v1_7_ = 15
	v1_5_ = random(v1_6_, v1_7_)
	v1_3_.Rotation = v1_5_
	local new = Vector2.new
	v1_6_ = 0.500000
	v1_7_ = 0.500000
	v1_5_ = new(v1_6_, v1_7_)
	v1_3_.AnchorPoint = v1_5_
	local fromScale = UDim2.fromScale
	v1_6_ = v1_4_
	v1_7_ = v1_4_
	v1_5_ = fromScale(v1_6_, v1_7_)
	v1_3_.Size = v1_5_
	v1_5_ = 1
	v1_3_.ImageTransparency = v1_5_
	v1_5_ = v0_1_
	v1_7_ = v1_3_
	local v1_8_ = v0_2_
	local v1_9_ = {}
	local v1_10_ = 0
	v1_9_.ImageTransparency = v1_10_
	v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
	v1_5_:Play()
	local fromScale = UDim2.fromScale
	local random = math.random
	v1_8_ = 0
	v1_9_ = 100
	v1_7_ = random(v1_8_, v1_9_)
	v1_6_ = v1_7_ / 100.000000
	local random = math.random
	v1_9_ = 20
	v1_10_ = 100
	v1_8_ = random(v1_9_, v1_10_)
	v1_7_ = v1_8_ / 100.000000
	v1_5_ = fromScale(v1_6_, v1_7_)
	local random = math.random
	v1_8_ = 50
	v1_9_ = 70
	v1_7_ = random(v1_8_, v1_9_)
	local random = math.random
	v1_10_ = 1
	local v1_11_ = 2
	v1_9_ = random(v1_10_, v1_11_)
	if v1_9_ == 1.000000 then
		v1_8_ = -1
	else
		v1_8_ = 1
	end
	v1_6_ = v1_7_ * v1_8_
	local random = math.random
	v1_9_ = 2
	v1_10_ = 5
	v1_8_ = random(v1_9_, v1_10_)
	v1_7_ = v1_8_ / 1000.000000
	local wrap = coroutine.wrap
	v1_9_ = function()
		local v2_0_ = time
		v2_0_ = v2_0_()
		local random = math.random
		local v2_4_ = 15
		local v2_5_ = 20
		local v2_3_ = random(v2_4_, v2_5_)
		local v2_2_ = v2_3_ / 10.000000
		local v2_1_ = v2_0_ + v2_2_
		v2_2_ = v1_3_
		while v2_2_ do
			v2_3_ = v1_3_
			v2_2_ = v2_3_.Parent
			while v2_2_ do
				v2_2_ = time
				v2_2_ = v2_2_()
				v2_3_ = v2_1_ - 0.500000
				if v2_3_ <= v2_2_ then
					v2_2_ = v1_3_
					v2_4_ = "Removing"
					v2_2_ = v2_2_:GetAttribute(v2_4_)
					if not v2_2_ then
						v2_2_ = v1_3_
						v2_4_ = "Removing"
						v2_5_ = true
						v2_2_:SetAttribute(v2_4_, v2_5_)
						v2_2_ = v0_1_
						v2_4_ = v1_3_
						v2_5_ = v0_4_
						local v2_6_ = {}
						local fromScale = UDim2.fromScale
						local v2_8_ = 0
						local v2_9_ = 0
						local v2_7_ = fromScale(v2_8_, v2_9_)
						v2_6_.Size = v2_7_
						v2_2_ = v2_2_:Create(v2_4_, v2_5_, v2_6_)
						v2_2_:Play()
						v2_2_ = v0_14_
						v2_4_ = v1_3_
						v2_5_ = 0.500000
						v2_2_:AddItem(v2_4_, v2_5_)
					end
				end
				v2_4_ = time
				v2_4_ = v2_4_()
				v2_3_ = v2_4_ - v2_0_
				v2_2_ = v2_3_ * 50.000000
				v2_3_ = v1_3_
				v2_5_ = v1_5_
				local fromScale = UDim2.fromScale
				local v2_7_ = 0
				local v2_10_ = v1_7_
				local v2_9_ = -v2_10_
				local v2_8_ = v2_2_ * v2_9_
				local v2_6_ = fromScale(v2_7_, v2_8_)
				v2_4_ = v2_5_ + v2_6_
				v2_3_.Position = v2_4_
				v2_4_ = v0_9_
				v2_3_ = v2_4_.Heartbeat
				v2_3_:Wait()
			end
		end
	end
	v1_8_ = wrap(v1_9_)
	v1_8_()
end
v0_16_ = function(a1, a2)
	local new = Instance.new
	local v3_3_ = "ImageLabel"
	local v3_4_ = a1
	local v3_2_ = new(v3_3_)
	local fromScale = UDim2.fromScale
	v3_4_ = 1
	local v3_5_ = 1
	v3_3_ = fromScale(v3_4_, v3_5_)
	v3_2_.Size = v3_3_
	v3_3_ = "rbxassetid://7216855489"
	v3_2_.Image = v3_3_
	v3_2_.ImageColor3 = a1
	local RelativeXX = Enum.SizeConstraint.RelativeXX
	v3_2_.SizeConstraint = RelativeXX
	v3_3_ = 1
	v3_2_.BackgroundTransparency = v3_3_
	v3_3_ = 1
	v3_2_.ImageTransparency = v3_3_
	local random = math.random
	v3_4_ = 0
	v3_5_ = 360
	v3_3_ = random(v3_4_, v3_5_)
	v3_2_.Rotation = v3_3_
	local new = Vector2.new
	v3_4_ = 0.500000
	v3_5_ = 0.500000
	v3_3_ = new(v3_4_, v3_5_)
	v3_2_.AnchorPoint = v3_3_
	v3_3_ = v0_1_
	v3_5_ = v3_2_
	local v3_6_ = v0_2_
	local v3_7_ = {}
	local v3_8_ = 0.950000
	v3_7_.ImageTransparency = v3_8_
	v3_3_ = v3_3_:Create(v3_5_, v3_6_, v3_7_)
	v3_3_:Play()
	local fromScale = UDim2.fromScale
	local random = math.random
	v3_6_ = 0
	v3_7_ = 100
	v3_5_ = random(v3_6_, v3_7_)
	v3_4_ = v3_5_ / 100.000000
	local random = math.random
	v3_7_ = 0
	v3_8_ = 100
	v3_6_ = random(v3_7_, v3_8_)
	v3_5_ = v3_6_ / 100.000000
	v3_3_ = fromScale(v3_4_, v3_5_)
	local random = math.random
	v3_7_ = 2
	v3_8_ = 5
	v3_6_ = random(v3_7_, v3_8_)
	v3_5_ = v3_6_ / 2400.000000
	local random = math.random
	v3_8_ = 1
	local v3_9_ = 2
	v3_7_ = random(v3_8_, v3_9_)
	if v3_7_ == 1.000000 then
		v3_6_ = -1
	else
		v3_6_ = 1
	end
	v3_4_ = v3_5_ * v3_6_
	local random = math.random
	v3_8_ = 2
	v3_9_ = 5
	v3_7_ = random(v3_8_, v3_9_)
	v3_6_ = v3_7_ / 2400.000000
	local random = math.random
	v3_9_ = 1
	local v3_10_ = 2
	v3_8_ = random(v3_9_, v3_10_)
	if v3_8_ == 1.000000 then
		v3_7_ = -1
	else
		v3_7_ = 1
	end
	v3_5_ = v3_6_ * v3_7_
	local wrap = coroutine.wrap
	v3_7_ = function()
		local v4_0_ = time
		v4_0_ = v4_0_()
		local random = math.random
		local v4_4_ = 20
		local v4_5_ = 30
		local v4_3_ = random(v4_4_, v4_5_)
		local v4_2_ = v4_3_ / 10.000000
		local v4_1_ = v4_0_ + v4_2_
		v4_2_ = v3_2_
		while v4_2_ do
			v4_3_ = v3_2_
			v4_2_ = v4_3_.Parent
			while v4_2_ do
				v4_2_ = time
				v4_2_ = v4_2_()
				v4_3_ = v4_1_ - 0.500000
				if v4_3_ <= v4_2_ then
					v4_2_ = v3_2_
					v4_4_ = "Removing"
					v4_2_ = v4_2_:GetAttribute(v4_4_)
					if not v4_2_ then
						v4_2_ = v3_2_
						v4_4_ = "Removing"
						v4_5_ = true
						v4_2_:SetAttribute(v4_4_, v4_5_)
						v4_2_ = v0_1_
						v4_4_ = v3_2_
						v4_5_ = v0_4_
						local v4_6_ = {}
						local v4_7_ = 1
						v4_6_.ImageTransparency = v4_7_
						v4_2_ = v4_2_:Create(v4_4_, v4_5_, v4_6_)
						v4_2_:Play()
						v4_2_ = v0_14_
						v4_4_ = v3_2_
						v4_5_ = 0.500000
						v4_2_:AddItem(v4_4_, v4_5_)
					end
				end
				v4_4_ = time
				v4_4_ = v4_4_()
				v4_3_ = v4_4_ - v4_0_
				v4_2_ = v4_3_ * 50.000000
				v4_3_ = v3_2_
				v4_5_ = v3_3_
				local fromScale = UDim2.fromScale
				local v4_9_ = v3_4_
				local v4_8_ = -v4_9_
				local v4_7_ = v4_2_ * v4_8_
				local v4_10_ = v3_5_
				v4_9_ = -v4_10_
				v4_8_ = v4_2_ * v4_9_
				local v4_6_ = fromScale(v4_7_, v4_8_)
				v4_4_ = v4_5_ + v4_6_
				v4_3_.Position = v4_4_
				v4_4_ = v0_9_
				v4_3_ = v4_4_.Heartbeat
				v4_3_:Wait()
			end
		end
	end
	v3_6_ = wrap(v3_7_)
	v3_6_()
end
local v0_17_ = function(a1, a2, a3, a4)
	local v5_4_ = script
	local v5_6_ = "Whoosh"
	v5_4_ = v5_4_:WaitForChild(v5_6_)
	v5_6_ = "Whoosh"
	local v5_5_ = 0.300000
	v5_4_.Volume = v5_5_
	v5_4_ = script
	v5_6_ = "Whoosh"
	v5_4_ = v5_4_:WaitForChild(v5_6_)
	v5_4_:Play()
	local new = Instance.new
	v5_5_ = "ImageLabel"
	v5_6_ = a1
	v5_4_ = new(v5_5_, v5_6_)
	local fromScale = UDim2.fromScale
	v5_6_ = 0.800000
	local v5_7_ = 0.800000
	v5_5_ = fromScale(v5_6_, v5_7_)
	v5_4_.Size = v5_5_
	v5_4_.Image = a4
	if a2 then
		local fromRGB = Color3.fromRGB
		v5_6_ = 255
		v5_7_ = 185
		local v5_8_ = 186
		v5_5_ = fromRGB(v5_6_, v5_7_, v5_8_)
		v5_4_.ImageColor3 = v5_5_
	else
		local fromRGB = Color3.fromRGB
		v5_6_ = 143
		v5_7_ = 173
		local v5_8_ = 255
		v5_5_ = fromRGB(v5_6_, v5_7_, v5_8_)
		v5_4_.ImageColor3 = v5_5_
	end
	local RelativeYY = Enum.SizeConstraint.RelativeYY
	v5_4_.SizeConstraint = RelativeYY
	v5_5_ = 1
	v5_4_.BackgroundTransparency = v5_5_
	v5_4_.ImageTransparency = a3
	local new = Vector2.new
	v5_6_ = 0.500000
	v5_7_ = 0.500000
	v5_5_ = new(v5_6_, v5_7_)
	v5_4_.AnchorPoint = v5_5_
	local fromScale = UDim2.fromScale
	v5_6_ = 0.500000
	v5_7_ = 0.500000
	v5_5_ = fromScale(v5_6_, v5_7_)
	v5_4_.Position = v5_5_
	v5_5_ = v0_1_
	v5_7_ = v5_4_
	local v5_8_ = v0_6_
	local v5_9_ = {}
	local fromScale = UDim2.fromScale
	local v5_11_ = 0.700000
	local v5_12_ = 0.700000
	local v5_10_ = fromScale(v5_11_, v5_12_)
	v5_9_.Size = v5_10_
	if a2 then
		local fromRGB = Color3.fromRGB
		v5_11_ = 255
		v5_12_ = 26
		local v5_13_ = 30
		v5_10_ = fromRGB(v5_11_, v5_12_, v5_13_)
		if not v5_10_ then
			local fromRGB = Color3.fromRGB
			v5_11_ = 33
			v5_12_ = 118
			v5_13_ = 255
			v5_10_ = fromRGB(v5_11_, v5_12_, v5_13_)
		end
	end
	local fromRGB = Color3.fromRGB
	v5_11_ = 33
	v5_12_ = 118
	local v5_13_ = 255
	v5_10_ = fromRGB(v5_11_, v5_12_, v5_13_)
	v5_9_.ImageColor3 = v5_10_
	v5_10_ = 1
	v5_9_.ImageTransparency = v5_10_
	v5_5_ = v5_5_:Create(v5_7_, v5_8_, v5_9_)
	v5_5_:Play()
	v5_5_ = v0_14_
	v5_7_ = v5_4_
	v5_8_ = 2
	v5_5_:AddItem(v5_7_, v5_8_)
end
local v0_18_ = function(a1, a2, a3, a4, a5)
	local v6_5_ = script
	local v6_7_ = "Ambient"
	v6_5_ = v6_5_:WaitForChild(v6_7_)
	v6_5_:Play()
	v6_5_ = a2.Blackboard
	local v6_6_ = a2.Colorboard
	v6_7_ = a2.Background
	local v6_8_ = a2.EquipButton
	local v6_9_ = a2.SkipButton
	local v6_10_ = a2.Star
	local v6_11_ = a2.Break1
	local v6_12_ = a2.Break2
	local v6_15_ = "ShakeAmount"
	local v6_13_ = a3:WaitForChild(v6_15_)
	local v6_16_ = "StarSpinSpeed"
	local v6_14_ = a3:WaitForChild(v6_16_)
	v6_15_ = v0_1_
	local v6_17_ = v6_7_
	local new = TweenInfo.new
	local v6_19_ = 1
	local Exponential = Enum.EasingStyle.Exponential
	local Out = Enum.EasingDirection.Out
	local v6_18_ = new(v6_19_, Exponential, Out)
	v6_19_ = v0_11_
	v6_15_ = v6_15_:Create(v6_17_, v6_18_, v6_19_)
	v6_16_ = v0_1_
	v6_18_ = v6_7_
	local new = TweenInfo.new
	local v6_20_ = 1
	local Exponential = Enum.EasingStyle.Exponential
	local Out = Enum.EasingDirection.Out
	v6_19_ = new(v6_20_, Exponential, Out)
	v6_20_ = v0_12_
	v6_16_ = v6_16_:Create(v6_18_, v6_19_, v6_20_)
	v6_17_ = v0_1_
	v6_19_ = v6_6_
	local new = TweenInfo.new
	local v6_21_ = 2
	local Quart = Enum.EasingStyle.Quart
	local In = Enum.EasingDirection.In
	v6_20_ = new(v6_21_, Quart, In)
	v6_21_ = {}
	local v6_22_ = 0
	v6_21_.ImageTransparency = v6_22_
	v6_17_ = v6_17_:Create(v6_19_, v6_20_, v6_21_)
	v6_18_ = v0_1_
	v6_20_ = v6_6_
	local new = TweenInfo.new
	v6_22_ = 2
	local Quart = Enum.EasingStyle.Quart
	local Out = Enum.EasingDirection.Out
	v6_21_ = new(v6_22_, Quart, Out)
	v6_22_ = {}
	local v6_23_ = 1
	v6_22_.ImageTransparency = v6_23_
	v6_18_ = v6_18_:Create(v6_20_, v6_21_, v6_22_)
	v6_19_ = v0_1_
	v6_21_ = v6_5_
	v6_22_ = v0_2_
	v6_23_ = v0_13_
	v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
	v6_20_ = true
	v6_21_ = v0_0_
	local All = Enum.CoreGuiType.All
	local v6_24_ = false
	v6_21_:SetCoreGuiEnabled(All, v6_24_)
	v6_21_ = false
	a4.Visible = v6_21_
	v6_19_:Play()
	v6_21_ = "http://www.roblox.com/asset/?id=12353440665"
	v6_6_.Image = v6_21_
	v6_21_ = 1
	v6_6_.ImageTransparency = v6_21_
	local new = Color3.new
	v6_22_ = 1
	v6_23_ = 1
	v6_24_ = 1
	v6_21_ = new(v6_22_, v6_23_, v6_24_)
	v6_6_.ImageColor3 = v6_21_
	local new = Color3.new
	v6_22_ = 1
	v6_23_ = 1
	v6_24_ = 1
	v6_21_ = new(v6_22_, v6_23_, v6_24_)
	v6_10_.ImageColor3 = v6_21_
	v6_23_ = "IgnoreTextColor"
	v6_21_ = a4:GetAttribute(v6_23_)
	if not v6_21_ then
		v6_21_ = a4.TextColor3
		v6_6_.ImageColor3 = v6_21_
		v6_21_ = v6_6_.ImageColor3
		v6_10_.ImageColor3 = v6_21_
	end
	v6_21_ = v0_10_
	v6_23_ = "OneMilPlus"
	v6_21_ = v6_21_:WaitForChild(v6_23_)
	v6_21_:Play()
	local fromScale = UDim2.fromScale
	v6_22_ = 1.500000
	v6_23_ = 1.500000
	v6_21_ = fromScale(v6_22_, v6_23_)
	v6_10_.Size = v6_21_
	v6_21_ = "rbxassetid://17068400400"
	v6_10_.Image = v6_21_
	v6_21_ = true
	v6_10_.Visible = v6_21_
	v6_23_ = "UIGradient"
	v6_21_ = v6_10_:FindFirstChildOfClass(v6_23_)
	if v6_21_ then
		v6_23_ = "UIGradient"
		v6_21_ = v6_10_:FindFirstChildOfClass(v6_23_)
		local new = ColorSequence.new
		local fromRGB = Color3.fromRGB
		v6_24_ = 255
		local v6_25_ = 34
		local v6_26_ = 34
		v6_23_ = fromRGB(v6_24_, v6_25_, v6_26_)
		local fromRGB = Color3.fromRGB
		v6_25_ = 255
		v6_26_ = 163
		local v6_27_ = 126
		v6_22_ = new(fromRGB(v6_25_, v6_26_, v6_27_))
		v6_21_.Color = v6_22_
	end
	v6_21_ = script
	v6_23_ = "CanvasGroup"
	v6_21_ = v6_21_:WaitForChild(v6_23_)
	v6_21_ = v6_21_:Clone()
	v6_21_.Parent = v6_5_
	v6_22_ = v0_1_
	v6_24_ = v6_21_
	local new = TweenInfo.new
	local v6_26_ = 3
	local Quart = Enum.EasingStyle.Quart
	local Out = Enum.EasingDirection.Out
	local v6_29_ = 0
	local v6_30_ = false
	local v6_31_ = 1
	local v6_25_ = new(v6_26_, Quart, Out, v6_29_, v6_30_, v6_31_)
	v6_26_ = {}
	local fromScale = UDim2.fromScale
	local v6_28_ = 1
	v6_29_ = 1
	local v6_27_ = fromScale(v6_28_, v6_29_)
	v6_26_.Size = v6_27_
	v6_27_ = 0.500000
	v6_26_.GroupTransparency = v6_27_
	v6_22_ = v6_22_:Create(v6_24_, v6_25_, v6_26_)
	v6_22_:Play()
	v6_22_ = v0_1_
	v6_24_ = v6_21_.MainCircle
	local new = TweenInfo.new
	v6_26_ = 3.500000
	local Sine = Enum.EasingStyle.Sine
	local InOut = Enum.EasingDirection.InOut
	v6_29_ = -1
	v6_30_ = true
	v6_25_ = new(v6_26_, Sine, InOut, v6_29_, v6_30_)
	v6_26_ = {}
	local fromRGB = Color3.fromRGB
	v6_28_ = 115
	v6_29_ = 169
	v6_30_ = 255
	v6_27_ = fromRGB(v6_28_, v6_29_, v6_30_)
	v6_26_.ImageColor3 = v6_27_
	v6_22_ = v6_22_:Create(v6_24_, v6_25_, v6_26_)
	v6_22_:Play()
	v6_22_ = v0_1_
	v6_24_ = v6_21_.Circle1
	local new = TweenInfo.new
	v6_26_ = 2.500000
	local Sine = Enum.EasingStyle.Sine
	local InOut = Enum.EasingDirection.InOut
	v6_29_ = -1
	v6_30_ = true
	v6_25_ = new(v6_26_, Sine, InOut, v6_29_, v6_30_)
	v6_26_ = {}
	local fromRGB = Color3.fromRGB
	v6_28_ = 255
	v6_29_ = 80
	v6_30_ = 80
	v6_27_ = fromRGB(v6_28_, v6_29_, v6_30_)
	v6_26_.ImageColor3 = v6_27_
	v6_22_ = v6_22_:Create(v6_24_, v6_25_, v6_26_)
	v6_22_:Play()
	v6_22_ = v0_1_
	v6_24_ = v6_21_.Circle2
	local new = TweenInfo.new
	v6_26_ = 3
	local Sine = Enum.EasingStyle.Sine
	local InOut = Enum.EasingDirection.InOut
	v6_29_ = -1
	v6_30_ = true
	v6_25_ = new(v6_26_, Sine, InOut, v6_29_, v6_30_)
	v6_26_ = {}
	local fromRGB = Color3.fromRGB
	v6_28_ = 115
	v6_29_ = 169
	v6_30_ = 255
	v6_27_ = fromRGB(v6_28_, v6_29_, v6_30_)
	v6_26_.ImageColor3 = v6_27_
	v6_22_ = v6_22_:Create(v6_24_, v6_25_, v6_26_)
	v6_22_:Play()
	v6_22_ = v0_1_
	v6_24_ = v6_21_.Circle3
	local new = TweenInfo.new
	v6_26_ = 2
	local Sine = Enum.EasingStyle.Sine
	local InOut = Enum.EasingDirection.InOut
	v6_29_ = -1
	v6_30_ = true
	v6_25_ = new(v6_26_, Sine, InOut, v6_29_, v6_30_)
	v6_26_ = {}
	local fromRGB = Color3.fromRGB
	v6_28_ = 255
	v6_29_ = 80
	v6_30_ = 80
	v6_27_ = fromRGB(v6_28_, v6_29_, v6_30_)
	v6_26_.ImageColor3 = v6_27_
	v6_22_ = v6_22_:Create(v6_24_, v6_25_, v6_26_)
	v6_22_:Play()
	v6_22_ = 0
	v6_24_ = v0_9_
	v6_23_ = v6_24_.Heartbeat
	v6_25_ = function(a1)
		local v7_2_ = v6_21_
		local v7_1_ = v7_2_.Circle1
		local v7_3_ = v7_1_.Rotation
		local v7_5_ = a1 * 60.000000
		local v7_4_ = v7_5_ * 0.500000
		v7_2_ = v7_3_ + v7_4_
		v7_1_.Rotation = v7_2_
		v7_2_ = v6_21_
		v7_1_ = v7_2_.Circle2
		v7_3_ = v7_1_.Rotation
		v7_5_ = a1 * 60.000000
		v7_4_ = v7_5_ * 0.800000
		v7_2_ = v7_3_ + v7_4_
		v7_1_.Rotation = v7_2_
		v7_2_ = v6_21_
		v7_1_ = v7_2_.Circle3
		v7_3_ = v7_1_.Rotation
		v7_5_ = a1 * 60.000000
		v7_4_ = v7_5_ * -0.300000
		v7_2_ = v7_3_ + v7_4_
		v7_1_.Rotation = v7_2_
		v7_3_ = v6_22_
		--a1:Clone().Parent = workspace
		--print(v7_3_, a1)
		--v7_2_ = v7_3_ + a1
		v6_22_ = v7_1_
		v7_3_ = v6_21_
		v7_2_ = v7_3_.MainCircle
		local fromScale = UDim2.fromScale
		v7_5_ = 1.700000
		local v7_7_ = 0.100000
		local v7_10_ = v6_22_
		local v7_9_ = 2.000000
		local sin = math.sin
		local v7_8_ = sin(v7_9_)
		local v7_6_ = v7_7_ * v7_8_
		v7_4_ = v7_5_ + v7_6_
		v7_6_ = 1.700000
		v7_8_ = 0.100000
		local v7_11_ = v6_22_
		v7_10_ = 2.000000
		local sin = math.sin
		v7_9_ = sin(v7_10_)
		v7_7_ = v7_8_ * v7_9_
		v7_5_ = v7_6_ + v7_7_
		v7_3_ = fromScale(v7_4_, v7_5_)
		v7_2_.Size = v7_3_
	end
	v6_23_ = v6_23_:Connect(v6_25_)
	local wrap = coroutine.wrap
	v6_25_ = function()
		local wait = task.wait
		local v8_1_ = 0.050000
		wait(v8_1_)
		local v8_0_ = v6_20_
		while v8_0_ do
			v8_0_ = v0_15_
			v8_1_ = v6_5_
			local fromRGB = Color3.fromRGB
			local v8_3_ = 255
			local v8_4_ = 160
			local v8_5_ = 92
			local v8_2_ = fromRGB(v8_3_, v8_4_, v8_5_)
			v8_3_ = "rbxassetid://6909741538"
			v8_0_(v8_1_, v8_2_, v8_3_)
			return
		end
	end
	v6_24_ = wrap(v6_25_)
	v6_24_()
	local wrap = coroutine.wrap
	v6_25_ = function()
		local wait = task.wait
		local v9_1_ = 0.200000
		local v9_0_ = wait(v9_1_)
		while v9_0_ do
			v9_0_ = true or v6_20_
			while v9_0_ do
				v9_0_ = v0_16_
				v9_1_ = v6_5_
				local fromRGB = Color3.fromRGB
				local v9_3_ = 255
				local v9_4_ = 160
				local v9_5_ = 92
				v9_0_(fromRGB(v9_3_, v9_4_, v9_5_))
				wait()
			end
		end
	end
	v6_24_ = wrap(v6_25_)
	v6_24_()
	v6_24_ = v0_1_
	v6_26_ = v6_10_
	v6_27_ = v0_6_
	v6_28_ = {}
	local fromScale = UDim2.fromScale
	v6_30_ = 0.600000
	v6_31_ = 0.600000
	v6_29_ = fromScale(v6_30_, v6_31_)
	v6_28_.Size = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	v6_24_ = 5
	v6_14_.Value = v6_24_
	v6_24_ = v0_1_
	v6_26_ = v6_14_
	v6_27_ = v0_6_
	v6_28_ = {}
	v6_29_ = 1
	v6_28_.Value = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	local wait = task.wait
	v6_25_ = 3.230000
	wait(v6_25_)
	v6_24_ = v0_1_
	v6_26_ = v6_14_
	v6_27_ = v0_7_
	v6_28_ = {}
	v6_29_ = 4
	v6_28_.Value = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	v6_24_ = v0_1_
	v6_26_ = v6_10_
	v6_27_ = v0_7_
	v6_28_ = {}
	local fromScale = UDim2.fromScale
	v6_30_ = 1.500000
	v6_31_ = 1.500000
	v6_29_ = fromScale(v6_30_, v6_31_)
	v6_28_.Size = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	local wait = task.wait
	v6_25_ = 4
	wait(v6_25_)
	v6_24_ = true
	a4.Visible = v6_24_
	v6_17_:Play()
	v6_24_ = v0_17_
	v6_25_ = v6_5_
	v6_26_ = false
	v6_27_ = 0.600000
	v6_28_ = "rbxassetid://127057321595695"
	v6_24_(v6_25_, v6_26_, v6_27_, v6_28_)
	v6_24_ = v6_21_.MainCircle
	v6_25_ = 0
	v6_24_.ImageTransparency = v6_25_
	v6_24_ = v0_1_
	v6_26_ = v6_21_.MainCircle
	v6_27_ = v0_5_
	v6_28_ = {}
	v6_29_ = 0.800000
	v6_28_.ImageTransparency = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	local wait = task.wait
	v6_25_ = 1
	wait(v6_25_)
	v6_24_ = v0_17_
	v6_25_ = v6_5_
	v6_26_ = true
	v6_27_ = 0.300000
	v6_28_ = "rbxassetid://127057321595695"
	v6_24_(v6_25_, v6_26_, v6_27_, v6_28_)
	v6_24_ = v6_21_.MainCircle
	v6_25_ = 0
	v6_24_.ImageTransparency = v6_25_
	v6_24_ = v0_1_
	v6_26_ = v6_21_.MainCircle
	v6_27_ = v0_5_
	v6_28_ = {}
	v6_29_ = 0.800000
	v6_28_.ImageTransparency = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	local wait = task.wait
	v6_25_ = 1
	wait(v6_25_)
	v6_23_:Disconnect()
	v6_21_:Destroy()
	v6_24_ = script
	v6_26_ = "Ambient"
	v6_24_ = v6_24_:WaitForChild(v6_26_)
	v6_24_:Stop()
	v6_24_ = script
	v6_26_ = "Omg"
	v6_24_ = v6_24_:WaitForChild(v6_26_)
	v6_24_:Play()
	v6_20_ = false
	v6_24_ = false
	v6_10_.Visible = v6_24_
	v6_24_ = "http://www.roblox.com/asset/?id=1195495135"
	v6_6_.Image = v6_24_
	local new = Color3.new
	v6_25_ = 1
	v6_26_ = 1
	v6_27_ = 1
	v6_24_ = new(v6_25_, v6_26_, v6_27_)
	v6_6_.ImageColor3 = v6_24_
	v6_26_ = "UIGradient"
	v6_24_ = v6_6_:FindFirstChildOfClass(v6_26_)
	if v6_24_ then
		v6_26_ = "UIGradient"
		v6_24_ = v6_6_:FindFirstChildOfClass(v6_26_)
		v6_24_:Destroy()
	end
	v6_18_:Play()
	v6_24_ = 0.020000
	v6_13_.Value = v6_24_
	v6_24_ = v0_1_
	v6_26_ = v6_13_
	v6_27_ = v0_6_
	v6_28_ = {}
	v6_29_ = 0
	v6_28_.Value = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	local fromScale = UDim2.fromScale
	v6_25_ = 0.500000
	v6_26_ = 0.500000
	v6_24_ = fromScale(v6_25_, v6_26_)
	a4.Position = v6_24_
	local fromScale = UDim2.fromScale
	v6_25_ = 0.600000
	v6_26_ = 0.200000
	v6_24_ = fromScale(v6_25_, v6_26_)
	a4.Size = v6_24_
	v6_24_ = v0_1_
	v6_26_ = a4
	v6_27_ = v0_5_
	v6_28_ = {}
	local fromScale = UDim2.fromScale
	v6_30_ = 0.400000
	v6_31_ = 0.100000
	v6_29_ = fromScale(v6_30_, v6_31_)
	v6_28_.Size = v6_29_
	v6_24_ = v6_24_:Create(v6_26_, v6_27_, v6_28_)
	v6_24_:Play()
	v6_24_ = 1
	v6_5_.BackgroundTransparency = v6_24_
	v6_24_ = script
	v6_24_:Destroy()
end
return v0_18_