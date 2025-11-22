local module = {
	Init = function()
	end,
}
--[[local module = {}
local Candles_upvr = workspace:WaitForChild("Map"):WaitForChild("Miscs"):WaitForChild("Candles")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local _1_upvr = script:WaitForChild('1')
_1_upvr.Name = "candle"
local _2_upvr = script:WaitForChild('2')
_2_upvr.Name = "candle"
local Portal_upvr = script:WaitForChild("Portal")
Portal_upvr.Name = math.random()
Portal_upvr.Parent = nil
local any_new_result1_upvr = require(Modules:WaitForChild("GoodSignal")).new()
local function SetCandleColor_upvr(arg1) -- Line 31, Named "SetCandleColor"
	--[[ Upvalues[1]:
		[1]: Candles_upvr (readonly)
	
	for _, v in Candles_upvr:GetDescendants() do
		if v:IsA("PointLight") then
			v.Color = arg1
		elseif v:IsA("ParticleEmitter") then
			v.Color = ColorSequence.new(arg1)
		end
	end
end
local tbl_upvr = {}
local function SetEnabled_upvr(arg1, arg2) -- Line 41, Named "SetEnabled"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	
	if tbl_upvr[arg1] == arg2 then
	else
		tbl_upvr[arg1] = arg2
		for _, v_3 in arg1:GetDescendants() do
			if v_3:IsA("PointLight") or v_3:IsA("ParticleEmitter") then
				v_3.Enabled = arg2
			end
		end
		arg1:SetAttribute("Enabled", arg2)
		any_new_result1_upvr:Fire()
	end
end
local function OnEnabledChanged_upvr() -- Line 55, Named "OnEnabledChanged"
	--[[ Upvalues[3]:
		[1]: Candles_upvr (readonly)
		[2]: SetCandleColor_upvr (readonly)
		[3]: Portal_upvr (readonly)
	
	local var26
	for i_2, v_2 in Candles_upvr:GetChildren() do
		local var27
		if v_2:GetAttribute("Enabled") then
			var27 = 1
		else
			var27 = 0
		end
		var26 += var27
	end
	if var26 == 3 then
		i_2 = 1
		v_2 = 1
		SetCandleColor_upvr(Color3.new(1, i_2, v_2))
		Portal_upvr.Parent = workspace
	else
		SetCandleColor_upvr(Color3.fromRGB(255, 142, 62))
		Portal_upvr.Parent = nil
	end
end
local RunService_upvr = game:GetService("RunService")
local any_WaitForReplica_result1_upvr = require(Modules:WaitForChild("Utility")).Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local candle_upvr = Candles_upvr:WaitForChild("candle")
function module.Init() -- Line 68
	--[[ Upvalues[9]:
		[1]: SetEnabled_upvr (readonly)
		[2]: 1_upvr (readonly)
		[3]: 2_upvr (readonly)
		[4]: Candles_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: any_WaitForReplica_result1_upvr (readonly)
		[7]: OnEnabledChanged_upvr (readonly)
		[8]: candle_upvr (readonly)
		[9]: any_new_result1_upvr (readonly)
	
	SetEnabled_upvr(_1_upvr, false)
	SetEnabled_upvr(_2_upvr, false)
	_1_upvr.Parent = Candles_upvr
	_2_upvr.Parent = Candles_upvr
	RunService_upvr.RenderStepped:Connect(function() -- Line 75
		--[[ Upvalues[4]:
			[1]: SetEnabled_upvr (copied, readonly)
			[2]: 1_upvr (copied, readonly)
			[3]: any_WaitForReplica_result1_upvr (copied, readonly)
			[4]: 2_upvr (copied, readonly)
		
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Rune_of_Nothing_2 = any_WaitForReplica_result1_upvr.Data.Buffs["Rune of Nothing"]
		if Rune_of_Nothing_2 then
			if 0 >= any_WaitForReplica_result1_upvr.Data.Buffs["Rune of Nothing"][1] then
				Rune_of_Nothing_2 = false
			else
				Rune_of_Nothing_2 = true
			end
		end
		SetEnabled_upvr(_1_upvr, Rune_of_Nothing_2)
		local Resonance_of_Elements_3 = any_WaitForReplica_result1_upvr.Data.Buffs["Resonance of Elements"]
		if Resonance_of_Elements_3 then
			if 0 < Resonance_of_Elements_3[1] then
				if Resonance_of_Elements_3[3] then
					if table.find(Resonance_of_Elements_3[3].BiomeList, "Null") == nil then
					else
					end
				end
			end
		end
		SetEnabled_upvr(_2_upvr, true)
	end)
	OnEnabledChanged_upvr()
	candle_upvr:GetAttributeChangedSignal("Enabled"):Connect(OnEnabledChanged_upvr)
	any_new_result1_upvr:Connect(OnEnabledChanged_upvr)
end
return module]]