-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:34:54
-- Luau version 6, Types version 3
-- Time taken: 0.002979 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UI = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI")
local module_upvr_2 = require(UI:WaitForChild("Quad"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("RarityDB"))
local Class = module_upvr_2.Class
local any_Extend_result1 = Class.Extend()
local function GetAuraText_upvr_upvr(arg1) -- Line 13, Named "GetAuraText_upvr"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local __self = arg1.__self
	local Aura_2 = __self.Aura
	if __self.UseCustomText then
		return __self.Text
	end
	local any_GetValueName_result1_2 = module_upvr:GetValueName(Aura_2)
	if any_GetValueName_result1_2 then
		return any_GetValueName_result1_2:gsub('_', " : ")
	end
	return Aura_2:gsub('_', " : ")
end
function any_Extend_result1.Init(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	arg2:Default("Size", UDim2.fromOffset(100, 100))
	arg2:Default("Position", UDim2.fromScale(0.5, 0.5))
	arg2:Default("AnchorPoint", Vector2.new(0.5, 0.5))
	arg2:Default("ZIndex", 1)
	arg2:Default("Visible", true)
	arg2:Default("Aura", "Common")
	arg2:Default("UseCustomText", false)
	arg2:Default("UseScaledText", true)
	arg2:Default("TextSize", 14)
	arg2:Default("Text", "Text")
	arg2:Default("TextXAlignment", Enum.TextXAlignment.Center)
	arg2:Default("TextYAlignment", Enum.TextYAlignment.Center)
	arg2.TextChanged = module_upvr_2.Signal.Bindable.New()
end
local Class_result1_upvr = Class("TextLabel")
local Event_upvr = module_upvr_2.Event
local module_upvr_3 = require(UI:WaitForChild("RollUI"))
function any_Extend_result1.Render(arg1, arg2) -- Line 49
	--[[ Upvalues[5]:
		[1]: Class_result1_upvr (readonly)
		[2]: GetAuraText_upvr_upvr (readonly)
		[3]: Event_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_upvr (readonly)
	]]
	return Class_result1_upvr({
		Text = arg2("Aura,UseCustomText,Text"):With(GetAuraText_upvr_upvr);
		Size = arg2("Size");
		Position = arg2("Position");
		AnchorPoint = arg2("AnchorPoint");
		ZIndex = arg2("ZIndex");
		Visible = arg2("Visible");
		BackgroundTransparency = 1;
		TextScaled = arg2("UseScaledText");
		TextWrapped = arg2("UseScaledText");
		TextSize = arg2("TextSize");
		TextXAlignment = arg2("TextXAlignment");
		TextYAlignment = arg2("TextYAlignment");
		TextTransparency = 1;
		[Event_upvr.CreatedAsync] = function(arg1_2) -- Line 71
			--[[ Upvalues[3]:
				[1]: module_upvr_3 (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			local function LoadLabel(arg1_3) -- Line 78
				--[[ Upvalues[3]:
					[1]: module_upvr_3 (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
				]]
				local clone = module_upvr_3:GetRollUI(arg1_3, false, true):Clone()
				local unpacked_value_1, unpacked_value_2 = table.unpack(arg1_3:split('_'))
				if unpacked_value_2 then
					clone = clone:FindFirstChild("Mutation")
				end
				if arg1._AuraLabel then
					arg1._AuraLabel:Destroy()
				end
				arg1._AuraLabel = clone
				clone.Size = UDim2.fromScale(1, 1)
				clone.Position = UDim2.fromScale(0.5, 0.5)
				clone.AnchorPoint = Vector2.new(0.5, 0.5)
				if not arg2.__self.UseCustomText then
				end
			end
			LoadLabel(arg2.Aura)
			arg2("Aura"):Observe(LoadLabel)
		end;
		[Event_upvr("Changed")] = function(arg1_4, arg2_2) -- Line 111
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: module_upvr (copied, readonly)
			]]
			if arg1._AuraLabel then
				arg1._AuraLabel.TextXAlignment = arg1_4.TextXAlignment
				arg1._AuraLabel.TextYAlignment = arg1_4.TextYAlignment
				arg1._AuraLabel.TextScaled = arg1_4.TextScaled
				arg1._AuraLabel.TextWrapped = arg1_4.TextWrapped
				arg1._AuraLabel.TextSize = arg1_4.TextSize
				local var19 = arg1
				local __self_2 = arg2.__self
				local Aura = __self_2.Aura
				if __self_2.UseCustomText then
					var19 = __self_2.Text
				else
					local any_GetValueName_result1 = module_upvr:GetValueName(Aura)
					if any_GetValueName_result1 then
						var19 = any_GetValueName_result1:gsub('_', " : ")
					else
						var19 = Aura:gsub('_', " : ")
					end
				end
				var19._AuraLabel.Text = var19
			end
		end;
	})
end
return any_Extend_result1