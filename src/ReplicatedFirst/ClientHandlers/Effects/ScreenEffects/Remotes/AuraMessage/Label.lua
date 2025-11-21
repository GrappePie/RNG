local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_4_upvr = require(Modules:WaitForChild("Translator"))
local UI = Modules:WaitForChild("UI")
local module_2_upvr = require(UI:WaitForChild("Quad"))
local Class = module_2_upvr.Class
local Mount_upvr = module_2_upvr.Mount
local function _(arg1) -- Line 20, Named "GetAbsoluteSize"
	return UDim2.fromOffset(math.ceil(arg1.AbsoluteSize.X), math.ceil(arg1.AbsoluteSize.Y))
end
local var7_upvw
local module_5_upvr = require(Modules:WaitForChild("Utility"))
local function ChangeTextSize_upvr(arg1) -- Line 24, Named "ChangeTextSize"
	--[[ Upvalues[3]:
		[1]: var7_upvw (read and write)
		[2]: module_5_upvr (readonly)
		[3]: module_4_upvr (readonly)
	]]
	local __prop = arg1.__prop
	local ceiled = math.ceil(var7_upvw.AbsoluteSize.Y)
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = arg1._CustomLabel
		return var11
	end
	if not __prop.UseCustomStyle or not INLINED() then
		var11 = arg1._Container._AuraLabel
	end
	local var12 = var7_upvw
	local tbl = {}
	local any_translate_result1_2 = module_4_upvr.translate(__prop.Text)
	if not any_translate_result1_2 then
		any_translate_result1_2 = __prop.Text
	end
	tbl[1] = __prop.StartPrefix
	tbl[2] = any_translate_result1_2
	tbl[3] = __prop.EndPrefix
	local any_GetTextSize_result1 = module_5_upvr.GetTextSize(UDim2.fromOffset(math.ceil(var12.AbsoluteSize.X), math.ceil(var12.AbsoluteSize.Y)), var11.FontFace, table.concat(tbl), ceiled)
	if __prop.UseCustomStyle then
		arg1._CustomLabel.TextSize = ceiled
		arg1._CustomLabel.Size = UDim2.new(1, 0, 0, any_GetTextSize_result1.Y)
	else
		arg1._Container.TextSize = ceiled
		arg1._Container.Size = UDim2.new(1, 0, 0, any_GetTextSize_result1.Y)
	end
	arg1.RealSize = UDim2.new(1, 0, 0, any_GetTextSize_result1.Y)
end
local var5_result1_upvr = Class("Frame")
var7_upvw = var5_result1_upvr({
	AnchorPoint = Vector2.one * 0.5;
	Position = UDim2.fromScale(0.5, 0.8);
	Size = UDim2.fromScale(0.5, 0.035);
	BackgroundTransparency = 1;
	ZIndex = 100;

	Class("UIListLayout")({
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 5);
		VerticalAlignment = Enum.VerticalAlignment.Bottom;
	})
})
local var19_upvw = var7_upvw
local any_Extend_result1 = Class.Extend()
function any_Extend_result1.Init(arg1, arg2) -- Line 63
	arg2:Default("Aura", "Common")
	arg2:Default("UseCustomStyle", false)
	arg2:Default("CustomProperties", {})
	arg2:Default("Text", "Hello Testers!")
	arg2:Default("StartPrefix", "[ ")
	arg2:Default("EndPrefix", " ]")
	arg2:Default("AdditionalLifeTime", 3)
	arg2:Default("RealSize", UDim2.fromScale(1, 0))
end
local Class_result1_upvr = Class(UI:WaitForChild("Components"):WaitForChild("AuraLabel"))
local var5_result1_upvr_2 = Class("TextLabel")
local Event_upvr = module_2_upvr.Event
function any_Extend_result1.Render(arg1, arg2) -- Line 74
	--[[ Upvalues[5]:
		[1]: var5_result1_upvr (readonly)
		[2]: Class_result1_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: var5_result1_upvr_2 (readonly)
		[5]: Event_upvr (readonly)
	]]
	return var5_result1_upvr({
		Size = arg2("RealSize"):Tween({
			Easing = "Quint";
			Direction = "InOut";
			Time = 0.5;
		});
		BackgroundTransparency = 1;
		ClipsDescendants = true;

		arg1("_Holder"), Class_result1_upvr({
			Visible = arg2("UseCustomStyle"):With(function(arg1_2, arg2_2) -- Line 85
				return not arg2_2
			end);
			Aura = arg2("Aura");
			Size = UDim2.fromScale(1, 0);
			Position = UDim2.new();
			AnchorPoint = Vector2.zero;
			UseCustomText = true;
			UseScaledText = false;
			Text = arg2("StartPrefix,Text,EndPrefix"):With(function() -- Line 92
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: module_4_upvr (copied, readonly)
				]]
				local module = {}
				local any_translate_result1_3 = module_4_upvr.translate(arg2.Text)
				if not any_translate_result1_3 then
					any_translate_result1_3 = arg2.Text
				end
				module[1] = arg2.StartPrefix
				module[2] = any_translate_result1_3
				module[3] = arg2.EndPrefix
				return table.concat(module)
			end);
			arg1("_Container")
		}), var5_result1_upvr_2({
			Visible = arg2("UseCustomStyle");
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.new();
			AnchorPoint = Vector2.zero;
			TextSize = 14;
			Text = arg2("StartPrefix,Text,EndPrefix"):With(function() -- Line 105
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: module_4_upvr (copied, readonly)
				]]
				local module_3 = {}
				local any_translate_result1 = module_4_upvr.translate(arg2.Text)
				if not any_translate_result1 then
					any_translate_result1 = arg2.Text
				end
				module_3[1] = arg2.StartPrefix
				module_3[2] = any_translate_result1
				module_3[3] = arg2.EndPrefix
				return table.concat(module_3)
			end);
			[Event_upvr.CreatedAsync] = function(arg1_3) -- Line 109
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				for i, v in arg2.CustomProperties do
					arg1_3[i] = v
				end
			end;
			arg1("_CustomLabel")
		})
	})
end
function any_Extend_result1.AfterRender(arg1, arg2) -- Line 118
	--[[ Upvalues[4]:
		[1]: Mount_upvr (readonly)
		[2]: var19_upvw (read and write)
		[3]: ChangeTextSize_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	Mount_upvr(var19_upvw, arg2)
	local __prop_2 = arg1.__prop
	ChangeTextSize_upvr(arg1)
	task.wait(#__prop_2.Text * 0.03 + __prop_2.AdditionalLifeTime)
	module_2_upvr.ScreenUpdated:Connect(function() -- Line 123
		--[[ Upvalues[2]:
			[1]: ChangeTextSize_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		ChangeTextSize_upvr(arg1)
	end):Disconnect()
	__prop_2.RealSize = UDim2.fromScale(1, 0)
	task.wait(1)
	arg1:Destroy()
end
Mount_upvr(module_2_upvr.MainInterface, var19_upvw)
return any_Extend_result1