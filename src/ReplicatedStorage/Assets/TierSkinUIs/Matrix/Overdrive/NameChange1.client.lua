pcall(function()
	local v0_0_ = game
	local v0_2_ = "RunService"
	v0_0_ = v0_0_:GetService(v0_2_)
	local v0_1_ = game
	local v0_3_ = "TweenService"
	v0_1_ = v0_1_:GetService(v0_3_)
	v0_2_ = game
	local v0_4_ = "ReplicatedStorage"
	v0_2_ = v0_2_:GetService(v0_4_)
	v0_4_ = script
	v0_3_ = v0_4_.Parent
	local new = Random.new
	v0_4_ = new()
	local v0_5_ = script
	local v0_7_ = "Real"
	v0_5_ = v0_5_:WaitForChild(v0_7_)
	local v0_6_ = table.create(17)
	v0_7_ = "▮"
	local v0_8_ = "◾"
	local v0_9_ = "Δ"
	local v0_10_ = "θ"
	local v0_11_ = "Π"
	local v0_12_ = "Ψ"
	local v0_13_ = "Λ"
	local v0_14_ = "ͳ"
	local v0_15_ = "{"
	local v0_16_ = "}"
	local v0_17_ = "["
	local v0_18_ = "]"
	local v0_19_ = "|"
	local v0_20_ = "%"
	local v0_21_ = "$"
	local v0_22_ = "&"
	v0_6_[1] = v0_7_
	v0_6_[2] = v0_8_
	v0_6_[3] = v0_9_
	v0_6_[4] = v0_10_
	v0_6_[5] = v0_11_
	v0_6_[6] = v0_12_
	v0_6_[7] = v0_13_
	v0_6_[8] = v0_14_
	v0_6_[9] = v0_15_
	v0_6_[10] = v0_16_
	v0_6_[11] = v0_17_
	v0_6_[12] = v0_18_
	v0_6_[13] = v0_19_
	v0_6_[14] = v0_20_
	v0_6_[15] = v0_21_
	v0_6_[16] = v0_22_
	v0_7_ = "#"
	v0_6_[17] = v0_7_
	v0_7_ = nil
	v0_8_ = nil
	v0_9_ = 0
	v0_10_ = function()
		local v1_0_ = v0_7_
		if v1_0_ then
			v1_0_ = v0_7_
			v1_0_:Disconnect()
		end
		v1_0_ = v0_8_
		if v1_0_ then
			v1_0_ = v0_8_
			v1_0_:Disconnect()
		end
		v1_0_ = v0_5_
		v1_0_:Destroy()
	end
	v0_11_ = function(a1)
		local v2_1_ = {}
		local v2_4_ = 1
		local v2_2_ = #a1
		local v2_3_ = 1
		for v2_4_ = v2_4_, v2_2_, v2_3_ do
			local v2_7_ = v2_4_
			local v2_8_ = v2_4_
			local v2_5_ = a1:sub(v2_7_, v2_8_)
			local v2_6_ = v0_4_
			v2_6_ = v2_6_:NextNumber()
			v2_7_ = 0.100000
			if v2_6_ <= v2_7_ then
				local v2_10_ = v0_6_
				local random = math.random
				local v2_12_ = 1
				local v2_14_ = v0_6_
				local v2_13_ = #v2_14_
				local v2_11_ = random(v2_12_, v2_13_)
				local v2_9_ = v2_10_[v2_11_]
				v2_8_ = v2_1_
				local insert = table.insert
				insert(v2_8_, v2_9_)
			else
				v2_7_ = 0.300000
				if v2_6_ <= v2_7_ then
					local random = math.random
					local v2_10_ = random()
					local v2_11_ = 0.500000
					if v2_10_ < v2_11_ then
						local v2_9_ = v2_5_:lower()
						if not v2_9_ then
							v2_9_ = v2_5_:upper()
						end
					end
					local v2_9_ = v2_5_:upper()
					v2_8_ = v2_1_
					local insert = table.insert
					insert(v2_8_, v2_9_)
				else
					v2_8_ = v2_1_
					local v2_9_ = v2_5_
					local insert = table.insert
					insert(v2_8_, v2_9_)
				end
			end
		end
		local concat = table.concat
		v2_3_ = v2_1_
		return concat(v2_3_)
	end
	v0_12_ = script
	v0_14_ = v0_2_
	v0_12_ = v0_12_:IsDescendantOf(v0_14_)
	if not v0_12_ then
		v0_12_ = false
		v0_5_.Parent = v0_3_
		v0_13_ = v0_0_.RenderStepped
		v0_15_ = function()
			local v3_1_ = v0_3_
			local v3_0_ = v3_1_.Parent
			if v3_0_ ~= nil then
				v3_1_ = v0_5_
				v3_0_ = v3_1_.Parent
				v3_1_ = v0_3_
				if v3_0_ ~= v3_1_ then
					v3_0_ = v0_10_
					return v3_0_()
				end
			end
			v3_0_ = v0_10_
			return v3_0_()
		end
		v0_13_ = v0_13_:Connect(v0_15_)
		v0_7_ = v0_13_
		v0_15_ = "TextXAlignment"
		v0_13_ = v0_3_:GetPropertyChangedSignal(v0_15_)
		v0_15_ = function()
			local v4_0_ = v0_5_
			local v4_2_ = v0_3_
			local v4_1_ = v4_2_.TextXAlignment
			v4_0_.TextXAlignment = v4_1_
		end
		v0_13_:Connect(v0_15_)
		v0_13_ = v0_3_.TextXAlignment
		v0_5_.TextXAlignment = v0_13_
		v0_13_ = v0_3_.Destroying
		v0_15_ = v0_10_
		v0_13_ = v0_13_:Once(v0_15_)
		v0_8_ = v0_13_
	end
end)