-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:33:19
-- Luau version 6, Types version 3
-- Time taken: 0.011026 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Utility"))
local UI = Modules:WaitForChild("UI")
local module_upvr_3 = require(UI:WaitForChild("Quad"))
local LocalPlayer = game:GetService("Players").LocalPlayer
local MainInterface_upvr = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local any_WaitForReplica_result1_upvr = module_upvr.Replica.WaitForReplica(LocalPlayer)
local tbl_upvr = {}
local Components = UI:WaitForChild("Components")
local Class = module_upvr_3.Class
local Mount_upvr = module_upvr_3.Mount
local Event_upvr = module_upvr_3.Event
local Class_result1_upvr = Class("Frame")
local var12_result1_upvr_4 = Class("TextLabel")
local var12_result1 = Class(require(Components:WaitForChild("Shadow")))
local var12_result1_upvr_2 = Class(require(Components:WaitForChild("Corner")))
local var12_result1_upvr_3 = Class("UIStroke")
local any_GetStore_result1 = module_upvr_3.Store.GetStore("PlayerSettings")
local BuffEnabled_upvw = any_GetStore_result1.BuffEnabled
if not BuffEnabled_upvw then
	BuffEnabled_upvw = any_WaitForReplica_result1_upvr.Data.Settings.BuffEnabled
end
local any_Extend_result1 = Class.Extend()
local var23_upvw
local var17_result1_upvr = var12_result1({
	Visible = false;
})
local var26_upvw
local var27_upvw
var26_upvw = Class_result1_upvr({
	AnchorPoint = Vector2.new(1, 1);
	Position = UDim2.new(1, -5, 1, -5);
	Size = UDim2.fromScale(0, 0.05);
	BackgroundTransparency = 1;
	[Event_upvr("ChildAdded")] = function(arg1) -- Line 43
		--[[ Upvalues[2]:
			[1]: var26_upvw (read and write)
			[2]: var17_result1_upvr (readonly)
		]]
		local var30 = #var26_upvw:GetChildren() - 2
		local var31 = 0
		arg1.Size = UDim2.new(var31, var30 * arg1.AbsoluteSize.Y + 3 * math.max(0, var30 - 1), 0.05, 0)
		if var30 <= 0 then
			var31 = false
		else
			var31 = true
		end
		var17_result1_upvr.Visible = var31
	end;
	[Event_upvr("ChildRemoved")] = function(arg1) -- Line 58
		--[[ Upvalues[2]:
			[1]: var26_upvw (read and write)
			[2]: var17_result1_upvr (readonly)
		]]
		local var33 = #var26_upvw:GetChildren() - 2
		local var34 = 0
		arg1.Size = UDim2.new(var34, var33 * arg1.AbsoluteSize.Y + 3 * math.max(0, var33 - 1), 0.05, 0)
		if var33 <= 0 then
			var34 = false
		else
			var34 = true
		end
		var17_result1_upvr.Visible = var34
	end;
	[Event_upvr.Created] = function(arg1) -- Line 73
		--[[ Upvalues[2]:
			[1]: Mount_upvr (readonly)
			[2]: var17_result1_upvr (readonly)
		]]
		local Folder = Instance.new("Folder")
		Mount_upvr(arg1, Folder)
		Mount_upvr(Folder, var17_result1_upvr)
	end;

	Class("UIListLayout")({
		Padding = UDim.new(0, 3);
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		VerticalAlignment = Enum.VerticalAlignment.Bottom;
		FillDirection = Enum.FillDirection.Horizontal;
	})
})
local var38_upvr = var26_upvw
local tbl_6 = {
	Size = UDim2.fromScale(0.2, 0.07);
	AnchorPoint = Vector2.new(1, 1);
	BackgroundColor3 = Color3.new();
	BackgroundTransparency = 0.4;
	Visible = false;
	ZIndex = 200;
}
local tbl_3 = {
	AnchorPoint = Vector2.new(0.5, 0);
	Position = UDim2.fromScale(0.5, 0.45);
	Size = UDim2.fromScale(0.97, 0.55);
	TextScaled = true;
	RichText = true;
	Text = "";
	TextXAlignment = Enum.TextXAlignment.Left;
	TextYAlignment = Enum.TextYAlignment.Top;
	BackgroundTransparency = 1;
	TextColor3 = Color3.new(1, 1, 1);
	FontFace = module_upvr_3.FontBold;
}
local var47_upvw
tbl_3[Event_upvr.Created] = function(arg1) -- Line 133
	--[[ Upvalues[1]:
		[1]: var47_upvw (read and write)
	]]
	var47_upvw = arg1
end
tbl_3[1] = Class("UITextSizeConstraint")({
	MaxTextSize = 14;
	MinTextSize = 1;
})
tbl_6[1] = var12_result1_upvr_2({
	Size = 0.1;
})
tbl_6[2] = var12_result1({})
tbl_6[3] = var12_result1_upvr_3({
	Color = Color3.new(1, 1, 1);
	Transparency = 0.5;
	Thickness = 1.5;
})
tbl_6[4] = var12_result1_upvr_4({
	Size = UDim2.fromScale(1, 0.35);
	TextScaled = true;
	RichText = true;
	Text = "";
	BackgroundTransparency = 1;
	TextColor3 = Color3.new(1, 1, 1);
	FontFace = module_upvr_3.FontBold;
	[Event_upvr.Created] = function(arg1) -- Line 111
		--[[ Upvalues[1]:
			[1]: var27_upvw (read and write)
		]]
		var27_upvw = arg1
	end;
})
tbl_6[5] = Class_result1_upvr({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.375);
	Size = UDim2.new(0.95, 0, 0, 1);
})
tbl_6[6] = var12_result1_upvr_4(tbl_3)
tbl_6[7] = Class("UIAspectRatioConstraint")({
	AspectRatio = 3.427;
})
local var15_result1_upvr = Class_result1_upvr(tbl_6)
function any_Extend_result1.Init(arg1, arg2) -- Line 148
	arg2:Default("BuffName", "")
	arg2:Default("BuffStack", 0)
	arg2:Default("BuffEnd", 0)
	arg2:Default("Metadata", 0)
end
function any_Extend_result1.UpdateValues(arg1, arg2) -- Line 154
	--[[ Upvalues[3]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
		[2]: BuffEnabled_upvw (read and write)
		[3]: module_upvr (readonly)
	]]
	local var51 = arg1.__prop.BuffEnd - arg2
	local var52 = any_WaitForReplica_result1_upvr.Data.Buffs[arg1.__prop.BuffName]
	local var53_upvw
	if not var52 or var52[1] then
	end
	if math.huge <= var51 or (function() -- Line 170, Named "INLINED"
		--[[ Upvalues[2]:
			[1]: var53_upvw (read and write)
			[2]: arg1 (readonly)
		]]
			var53_upvw = arg1.__buffData
			return var53_upvw.SaveBuffData
		end)() or not BuffEnabled_upvw then
		var53_upvw = false
		arg1.__timeText.Visible = var53_upvw
	else
		var53_upvw = true
		arg1.__timeText.Visible = var53_upvw
	end
	if arg1.__buffData.StackVisible == false then
		var53_upvw = false
	else
		var53_upvw = true
	end
	arg1.__stackText.Visible = var53_upvw
	var53_upvw = not BuffEnabled_upvw
	arg1._Disabled.Visible = var53_upvw
	var53_upvw = arg1.__timeText
	var53_upvw = module_upvr.ToTimeString1(math.floor(var51), 3)
	arg1.__timeText.Text = var53_upvw
end
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("Buffs"))
local Icons_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Icons")
local Class_result1_upvr_3 = Class("ImageLabel")
local Class_result1_upvr_2 = Class("UIGradient")
local var12_result1_upvr = Class("ImageButton")
function any_Extend_result1.Render(arg1, arg2) -- Line 203
	--[[ Upvalues[18]:
		[1]: Class_result1_upvr (readonly)
		[2]: Event_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: Icons_upvr (readonly)
		[5]: var12_result1_upvr_4 (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: Class_result1_upvr_3 (readonly)
		[8]: Mount_upvr (readonly)
		[9]: Class_result1_upvr_2 (readonly)
		[10]: var12_result1_upvr_3 (readonly)
		[11]: var38_upvr (readonly)
		[12]: tbl_upvr (readonly)
		[13]: module_upvr (readonly)
		[14]: var23_upvw (read and write)
		[15]: var27_upvw (read and write)
		[16]: var15_result1_upvr (readonly)
		[17]: var12_result1_upvr (readonly)
		[18]: var12_result1_upvr_2 (readonly)
	]]
	return Class_result1_upvr({
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		BorderSizePixel = 1;
		BackgroundTransparency = 0.4;
		BackgroundColor3 = Color3.new();
		[Event_upvr.CreatedAsync] = function(arg1_2) -- Line 230
			--[[ Upvalues[12]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: arg2 (readonly)
				[3]: Icons_upvr (copied, readonly)
				[4]: var12_result1_upvr_4 (copied, readonly)
				[5]: module_upvr_3 (copied, readonly)
				[6]: Class_result1_upvr_3 (copied, readonly)
				[7]: Mount_upvr (copied, readonly)
				[8]: Class_result1_upvr_2 (copied, readonly)
				[9]: var12_result1_upvr_3 (copied, readonly)
				[10]: arg1 (readonly)
				[11]: var38_upvr (copied, readonly)
				[12]: tbl_upvr (copied, readonly)
			]]
			local any_GetValue_result1_upvr = module_upvr_2:GetValue(arg2.BuffName)
			local var62_upvw
			if not any_GetValue_result1_upvr.IconAsset or not (function() -- Line 248, Named "INLINED_2"
				--[[ Upvalues[3]:
					[1]: var62_upvw (read and write)
					[2]: Icons_upvr (copied, readonly)
					[3]: any_GetValue_result1_upvr (readonly)
				]]
					var62_upvw = Icons_upvr:WaitForChild(any_GetValue_result1_upvr.IconAsset):Clone()
					return var62_upvw
				end)() then
				if any_GetValue_result1_upvr.IconText then
					var62_upvw = var12_result1_upvr_4
					local tbl = {
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.fromScale(0.5, 0.5);
						Size = UDim2.fromScale(any_GetValue_result1_upvr.IconScale or 1, any_GetValue_result1_upvr.IconScale or 1);
						Text = any_GetValue_result1_upvr.IconText;
					}
					local IconColor3 = any_GetValue_result1_upvr.IconColor3
					if not IconColor3 then
						IconColor3 = Color3.new(1, 1, 1)
					end
					tbl.TextColor3 = IconColor3
					tbl.TextScaled = true
					tbl.FontFace = module_upvr_3.FontBold
					tbl.Rotation = any_GetValue_result1_upvr.IconRotation or 0
					tbl.BackgroundTransparency = 1
					tbl.ZIndex = -10
					var62_upvw = var62_upvw(tbl)
				else
					var62_upvw = Class_result1_upvr_3
					local tbl_2 = {
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.fromScale(0.5, 0.5);
						Size = UDim2.fromScale(any_GetValue_result1_upvr.IconScale or 1, any_GetValue_result1_upvr.IconScale or 1);
					}
					if not any_GetValue_result1_upvr.IconId or `rbxassetid://{any_GetValue_result1_upvr.IconId}` then
					end
					tbl_2.Image = "http://www.roblox.com/asset/?id=6022668911"
					if not any_GetValue_result1_upvr.IconColor3 or any_GetValue_result1_upvr.IconColor3 then
					end
					tbl_2.ImageColor3 = Color3.new(1, 1, 1)
					tbl_2.Rotation = any_GetValue_result1_upvr.IconRotation or 0
					tbl_2.BackgroundTransparency = 1
					tbl_2.ZIndex = -10
					var62_upvw = var62_upvw(tbl_2)
				end
			end
			if any_GetValue_result1_upvr.IconGradient then
				local tbl_4 = {}
				local tbl_2 = any_GetValue_result1_upvr.IconGradient.Color
				local var67 = tbl_2
				if not var67 then
					var67 = ColorSequence.new(Color3.new(1, 1, 1))
				end
				tbl_4.Color = var67
				tbl_4.Rotation = any_GetValue_result1_upvr.IconGradient.Rotation
				local Transparency = any_GetValue_result1_upvr.IconGradient.Transparency
				if not Transparency then
					Transparency = NumberSequence.new(0)
				end
				tbl_4.Transparency = Transparency
				tbl_4.Offset = any_GetValue_result1_upvr.IconGradient.Offset
				Mount_upvr(var62_upvw, Class_result1_upvr_2(tbl_4))
			end
			if any_GetValue_result1_upvr.IconStroke then
				local tbl_5 = {}
				local var67 = any_GetValue_result1_upvr.IconStroke.Color
				local var70 = var67
				if not var70 then
					var70 = Color3.new()
				end
				tbl_5.Color = var70
				tbl_5.Thickness = any_GetValue_result1_upvr.IconStroke.Thickness or 1
				Mount_upvr(var62_upvw, var12_result1_upvr_3(tbl_5))
			end
			if any_GetValue_result1_upvr.IconBorderColor3 then
				arg1._Corner.Color3 = any_GetValue_result1_upvr.IconBorderColor3
				arg1._Stroke.Color = any_GetValue_result1_upvr.IconBorderColor3
			end
			if not any_GetValue_result1_upvr.IconBackground or any_GetValue_result1_upvr.IconBackground.Transparency then
			end
			arg1_2.BackgroundTransparency = 0.4
			if not any_GetValue_result1_upvr.IconBackground or any_GetValue_result1_upvr.IconBackground.Color3 then
			end
			arg1_2.BackgroundColor3 = Color3.new()
			arg1.__buffData = any_GetValue_result1_upvr
			Mount_upvr(arg1_2, var62_upvw)
			Mount_upvr(var38_upvr, arg1_2)
			tbl_upvr[arg2.BuffName] = arg1
		end;
		[Event_upvr("MouseEnter")] = function(arg1_3) -- Line 336
			--[[ Upvalues[6]:
				[1]: module_upvr (copied, readonly)
				[2]: var23_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
				[5]: var27_upvw (copied, read and write)
				[6]: var15_result1_upvr (copied, readonly)
			]]
			module_upvr.PlaySFX("MouseHover", "UISounds")
			var23_upvw = arg1
			local var72_upvw
			if not arg1.__buffData or not (function() -- Line 348, Named "INLINED_3"
				--[[ Upvalues[2]:
					[1]: var72_upvw (read and write)
					[2]: arg1 (copied, readonly)
				]]
					var72_upvw = arg1.__buffData.DisplayName
					return var72_upvw
				end)() then
				var72_upvw = arg2.BuffName
			end
			var27_upvw.Text = var72_upvw
			var15_result1_upvr.Visible = true
		end;
		[Event_upvr("MouseLeave")] = function(arg1_4) -- Line 359
			--[[ Upvalues[3]:
				[1]: var23_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: var15_result1_upvr (copied, readonly)
			]]
			task.wait()
			if var23_upvw == arg1 then
				var23_upvw = nil
				var15_result1_upvr.Visible = false
			end
		end;

		var12_result1_upvr({
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.3;
			Size = UDim2.fromScale(1, 1);
			BorderSizePixel = 0;
			Position = UDim2.fromScale(0.5, 0.5);
			Image = "http://www.roblox.com/asset/?id=6034439645";
			ImageTransparency = 0.5;
			ZIndex = 10;

			arg1("_Disabled")
		}), var12_result1_upvr_4({
			AnchorPoint = Vector2.new(0, 0);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0, 0.5);
			Size = UDim2.fromScale(1.4, 0.4);
			TextScaled = true;
			AutoLocalize = false;
			TextColor3 = Color3.new(1, 1, 1);
			Text = arg2("BuffStack"):With(function(arg1_5, arg2_2) -- Line 390
				return `x{arg2_2}`
			end);
			Font = Enum.Font.GothamMedium;
			TextStrokeTransparency = 0.5;
			ZIndex = 2;
			[Event_upvr.CreatedAsync] = function(arg1_6) -- Line 396
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.__stackText = arg1_6
			end;
		}), var12_result1_upvr_4({
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.1);
			Size = UDim2.fromScale(1, 0.3);
			TextScaled = true;
			AutoLocalize = false;
			TextColor3 = Color3.new(1, 1, 1);
			Font = Enum.Font.GothamMedium;
			TextStrokeTransparency = 0.5;
			ZIndex = 2;
			[Event_upvr.CreatedAsync] = function(arg1_7) -- Line 413
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.__timeText = arg1_7
			end;
		}), var12_result1_upvr_2({
			Size = 0.14;

			arg1("_Corner")
		}), var12_result1_upvr_3({
			Color = Color3.new(1, 1, 1);
			Transparency = 0.5;
			Thickness = 1.5;

			arg1("_Stroke")
		})
	})
end
Mount_upvr(MainInterface_upvr, var38_upvr)
Mount_upvr(MainInterface_upvr, var15_result1_upvr)
local var83_upvw
game:GetService("RunService").RenderStepped:Connect(function() -- Line 434
	--[[ Upvalues[7]:
		[1]: BuffEnabled_upvw (read and write)
		[2]: var83_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: var15_result1_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: MainInterface_upvr (readonly)
		[7]: var38_upvr (readonly)
	]]
	if BuffEnabled_upvw or not var83_upvw then
		var83_upvw = workspace:GetServerTimeNow()
	end
	for i_2, v_2 in pairs(tbl_upvr) do
		v_2:UpdateValues(var83_upvw)
	end
	if var15_result1_upvr.Visible then
		local v = UserInputService_upvr:GetMouseLocation().X - 10 -- Setting global
		local i_2 = 0
		local v_2 = MainInterface_upvr.AbsoluteSize.X
		local i = math.clamp(v, i_2, v_2) -- Setting global
		i_2 = UserInputService_upvr:GetMouseLocation().Y
		i_2 = 0
		v_2 = MainInterface_upvr.AbsoluteSize.Y - var38_upvr.AbsoluteSize.Y
		v = math.clamp(i_2 - 10, i_2, v_2) -- Setting global
		i_2 = i
		v_2 = v
		var15_result1_upvr.Position = UDim2.fromOffset(i_2, v_2)
	end
end)
any_GetStore_result1("BuffEnabled"):Observe(function(arg1) -- Line 458
	--[[ Upvalues[1]:
		[1]: BuffEnabled_upvw (read and write)
	]]
	BuffEnabled_upvw = arg1
end)
UserInputService_upvr.WindowFocused:Connect(function() -- Line 464
	--[[ Upvalues[2]:
		[1]: var23_upvw (read and write)
		[2]: var15_result1_upvr (readonly)
	]]
	task.wait()
	var23_upvw = nil
	var15_result1_upvr.Visible = false
end)
return {
	Extend = any_Extend_result1;
}