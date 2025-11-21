pcall(function()
	-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
	-- Decompiled on 2024-12-14 17:03:16
	-- Luau version 6, Types version 3
	-- Time taken: 0.002800 seconds

	local Parent_upvr = script.Parent
	local random_state_upvr = Random.new()
	local Real_upvr = script:WaitForChild("Real")
	local tbl_upvr = {"▮", "◾", "Δ", "θ", "Π", "Ψ", "Λ", "ͳ", '{', '}', '[', ']', '|', '%', '$', '&', '#'}
	local var5_upvw
	local var6_upvw
	local function Clean_upvr_upvr() -- Line 12, Named "Clean_upvr"
	--[[ Upvalues[3]:
		[1]: var5_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: Real_upvr (readonly)
	]]
		if var5_upvw then
			var5_upvw:Disconnect()
		end
		if var6_upvw then
			var6_upvw:Disconnect()
		end
		Real_upvr:Destroy()
	end
	local function CreateGlitchText_upvr_upvr(arg1) -- Line 26, Named "CreateGlitchText_upvr"
	--[[ Upvalues[2]:
		[1]: random_state_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for i_upvr = 1, #arg1 do
			local any_NextNumber_result1 = random_state_upvr:NextNumber()
			if any_NextNumber_result1 <= 0.1 then
				table.insert({}, tbl_upvr[math.random(1, #tbl_upvr)])
			else
				local var12_upvw
				if any_NextNumber_result1 <= 0.3 then
					if 0.5 <= math.random() or not (function() -- Line 38, Named "INLINED"
					--[[ Upvalues[3]:
						[1]: var12_upvw (read and write)
						[2]: arg1 (readonly)
						[3]: i_upvr (readonly)
					]]
							var12_upvw = arg1:sub(i_upvr, i_upvr):lower()
							return var12_upvw
						end)() then
						var12_upvw = arg1:sub(i_upvr, i_upvr):upper()
					end
					table.insert({}, var12_upvw)
				else
					var12_upvw = arg1:sub(i_upvr, i_upvr)
					table.insert({}, var12_upvw)
				end
			end
		end
		return table.concat({})
	end
	if not script:IsDescendantOf(game:GetService("ReplicatedStorage")) then
		pcall(function()
			Real_upvr.Parent = Parent_upvr
			local var14_upvw = false	
			local var15_upvw = 0
			var5_upvw = game:GetService("RunService").RenderStepped:Connect(function() -- Line 61
			--[[ Upvalues[7]:
				[1]: Parent_upvr (readonly)
				[2]: Real_upvr (readonly)
				[3]: Clean_upvr_upvr (readonly)
				[4]: var14_upvw (read and write)
				[5]: CreateGlitchText_upvr_upvr (readonly)
				[6]: var15_upvw (read and write)
				[7]: random_state_upvr (readonly)
			]]
				if Parent_upvr.Parent == nil or Real_upvr.Parent ~= Parent_upvr then
					return Clean_upvr_upvr()
				end
				if var14_upvw then
					Real_upvr.Text = CreateGlitchText_upvr_upvr(Parent_upvr.LocalizedText)
				end
				local var16
				if 3 <= os.clock() - var15_upvw and not var14_upvw then
					var14_upvw = true
					var16 = 1
					task.wait(1)
					var15_upvw = os.clock()
					var14_upvw = false
				elseif not var14_upvw then
					var16 = 0.2
					Real_upvr.Text = Parent_upvr.LocalizedText
				end
				Real_upvr.Position = UDim2.fromScale(0.5 + random_state_upvr:NextNumber(-0.03, 0.03) * var16, 0.5 + random_state_upvr:NextNumber(-0.03, 0.03) * var16)
			end)
			Parent_upvr:GetPropertyChangedSignal("TextXAlignment"):Connect(function() -- Line 90
				--[[ Upvalues[2]:
					[1]: Real_upvr (readonly)
					[2]: Parent_upvr (readonly)
				]]
				Real_upvr.TextXAlignment = Parent_upvr.TextXAlignment
			end)
			Real_upvr.TextXAlignment = Parent_upvr.TextXAlignment
			var6_upvw = Parent_upvr.Destroying:Once(Clean_upvr_upvr)
		end)
	end
end)