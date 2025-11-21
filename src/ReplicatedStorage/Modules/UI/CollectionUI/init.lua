-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 21:20:34
-- Luau version 6, Types version 3
-- Time taken: 0.034694 seconds
local Lighting_upvr = game:GetService("Lighting")
local RunService_upvr = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_5 = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("RarityDB"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
local UI = Modules:WaitForChild("UI")
local Components = UI:WaitForChild("Components")
local module_upvr_3 = require(UI:WaitForChild("Quad"))
local GroundModels = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("GroundModels")
local Wiki_upvr = workspace:WaitForChild("Map"):WaitForChild("Miscs"):WaitForChild("Wiki")
local tbl_5_upvr = {
	Island = GroundModels:WaitForChild("Ground");
	Cave = GroundModels:WaitForChild("Cave");
	Default = Wiki_upvr:WaitForChild("WikiGround");
}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local SOME_upvw = Wiki_upvr.Parent:WaitForChild(LocalPlayer_upvr.Name)
local Class = module_upvr_3.Class
local Mount_upvr = module_upvr_3.Mount
local Event = module_upvr_3.Event
local Class_result1_10 = Class("Frame")
local Class_result1_3 = Class("TextLabel")
local Class_result1_9 = Class("CanvasGroup")
local var17_result1 = Class("ImageLabel")
local Class_result1_4 = Class("TextButton")
local var17_result1_4 = Class("UIStroke")
local var17_result1_2 = Class("ScrollingFrame")
local Class_result1_12 = Class("UIListLayout")
local Class_result1_8 = Class("ImageButton")
local Class_result1_6 = Class("UIGradient")
local Class_result1_11 = Class("ScreenGui")
local Class_result1_2 = Class(Components:WaitForChild("Shadow"))
local Class_result1_5 = Class(Components:WaitForChild("Corner"))
local var17_result1_3 = Class(Components:WaitForChild("AuraLabel"))
local Class_result1 = Class(Components:WaitForChild("TextButton"))
local any_GetStore_result1_upvr = module_upvr_3.Store.GetStore("Wiki")
any_GetStore_result1_upvr.Music0o = false
any_GetStore_result1_upvr.MusicName = "Music Name"
any_GetStore_result1_upvr.MusicCreator = "Music Creator"
any_GetStore_result1_upvr.MusicPlaying = true
any_GetStore_result1_upvr.AudioSource = nil
any_GetStore_result1_upvr.IsLoadingWiki = false
any_GetStore_result1_upvr.PlayCutsceneVisible = false
any_GetStore_result1_upvr.WatchingAura = ""
any_GetStore_result1_upvr.AuraRequirement = ""
any_GetStore_result1_upvr.Description = ""
any_GetStore_result1_upvr.HideUIs = false
any_GetStore_result1_upvr.BackgroundType = "Default"
any_GetStore_result1_upvr.AuraTier = "Basic"
any_GetStore_result1_upvr.HasSkills = false
any_GetStore_result1_upvr.UsingSkill = false
any_GetStore_result1_upvr.Rarity = 0
Class_result1_10.BackgroundColor3 = Color3.new()
Class_result1_10.BorderSizePixel = 0
Class_result1_3.TextColor3 = Color3.new(1, 1, 1)
Class_result1_3.FontFace = module_upvr_3.FontBold
Class_result1_3.BorderSizePixel = 0
Class_result1_3.BackgroundColor3 = Color3.new()
Class_result1_9.BackgroundColor3 = Color3.new()
Class_result1_9.BorderSizePixel = 0
var17_result1.BackgroundColor3 = Color3.new()
var17_result1.BorderSizePixel = 0
Class_result1_4.TextColor3 = Color3.new(1, 1, 1)
Class_result1_4.FontFace = module_upvr_3.FontBold
Class_result1_4.BorderSizePixel = 0
Class_result1_4.BackgroundColor3 = Color3.new()
var17_result1_4.Color = Color3.new(1, 1, 1)
var17_result1_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
var17_result1_4.Thickness = 1.5
var17_result1_4.Transparency = 0.5
Class_result1_12.SortOrder = Enum.SortOrder.LayoutOrder
Class_result1_8.BackgroundColor3 = Color3.new()
Class_result1_8.BorderSizePixel = 0
Class_result1_11.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Class_result1_11.ResetOnSpawn = false
local NumberSequence_new_result1 = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0.1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.8, 0.1), NumberSequenceKeypoint.new(1, 1)})
local var38_upvw
local var39_upvw
local function Reverse(arg1, arg2) -- Line 154
	return not arg2
end
local tbl_11 = {
	Enabled = false;
	DisplayOrder = 4;
}
local tbl_3 = {
	AnchorPoint = Vector2.new(0, 0.5);
	BackgroundTransparency = 0.4;
	Position = UDim2.fromScale(0.02, 0.5);
	Size = UDim2.fromScale(0.2, 0.9);
	Visible = any_GetStore_result1_upvr("HideUIs"):With(Reverse);
}
local tbl_4 = {
	Size = UDim2.fromScale(1, 0.04);
	BackgroundTransparency = 0.65;
	Text = "Aura Collections";
	TextScaled = true;
}
local tbl_6 = {
	AnchorPoint = Vector2.new(1, 0);
	BackgroundTransparency = 1;
	Position = UDim2.fromScale(1, 0);
	Size = UDim2.fromScale(0.2, 1);
	Text = "Exit";
	TextScaled = true;
}
local any_GetStore_result1_upvr_2 = module_upvr_3.Store.GetStore("MasterVolumes")
local CurrentCamera_upvr = workspace.CurrentCamera
tbl_6[Event("MouseButton1Down")] = function() -- Line 182
	--[[ Upvalues[7]:
		[1]: module_upvr_4 (readonly)
		[2]: var38_upvw (read and write)
		[3]: Lighting_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: any_GetStore_result1_upvr_2 (readonly)
		[6]: CurrentCamera_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
	]]
	module_upvr_4.PlaySFX("Click", "UISounds")
	var38_upvw.Enabled = false
	if not Lighting_upvr:GetAttribute("AtmosphereEnabled") then
		Lighting_upvr:SetAttribute("AtmosphereEnabled", true)
	end
	module_upvr_3.Tween.RunTween(any_GetStore_result1_upvr_2, {
		Easing = "Linear";
		Time = 3;
	}, {
		BackgroundMusic = 100;
	})
	local Character = LocalPlayer_upvr.Character
	if not Character then
		Character = LocalPlayer_upvr.CharacterAdded:Wait()
	end
	CurrentCamera_upvr.CameraSubject = Character:WaitForChild("Humanoid")
	module_upvr_3.MainInterface.Enabled = true
end
tbl_4[1] = Class_result1_4(tbl_6)
tbl_4[2] = var17_result1_4({})
tbl_4[3] = Class_result1_5({})
tbl_3[1] = Class_result1_3(tbl_4)
tbl_3[2] = var17_result1_2({
	AnchorPoint = Vector2.new(0.5, 0);
	BackgroundTransparency = 1;
	Position = UDim2.fromScale(0.5, 0.05);
	Size = UDim2.fromScale(1, 0.94);
	AutomaticCanvasSize = Enum.AutomaticSize.Y;
	ScrollBarThickness = 0;
	[Event.Created] = function(arg1) -- Line 212
		--[[ Upvalues[1]:
			[1]: var39_upvw (read and write)
		]]
		var39_upvw = arg1
	end;
	Class_result1_12({})
})
tbl_3[3] = Class_result1_2({})
tbl_3[4] = var17_result1_4({})
local tbl_8 = {
	AnchorPoint = Vector2.new(0, 1);
	BackgroundTransparency = 0.4;
	Position = any_GetStore_result1_upvr("Music0o"):With(function(arg1, arg2) -- Line 330
		local var78
		if arg2 then
			var78 = 0.84
		else
			var78 = 0.95
		end
		return UDim2.fromScale(0.225, var78)
	end):Tween({
		Time = 0.3;
		Easing = "Quint";
	});
	Size = UDim2.fromScale(0.15, 0.04);
	Text = "Replay Cutscene";
	Visible = any_GetStore_result1_upvr("PlayCutsceneVisible,HideUIs"):With(function() -- Line 333
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		if any_GetStore_result1_upvr.HideUIs then
			return false
		end
		return any_GetStore_result1_upvr.PlayCutsceneVisible
	end);
	HoverScale = 1;
}
local module_upvr_2 = require(UI:WaitForChild("SceneUI"))
local function Callback() -- Line 335
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: any_GetStore_result1_upvr (readonly)
	]]
	module_upvr_2.PlayRollEffect(any_GetStore_result1_upvr.WatchingAura, any_GetStore_result1_upvr.Rarity, true)
end
tbl_8.Callback = Callback
local var83_upvw
tbl_8[Event.Created] = function(arg1) -- Line 337
	--[[ Upvalues[1]:
		[1]: var83_upvw (read and write)
	]]
	var83_upvw = arg1
end
local tbl_9 = {
	BackgroundTransparency = 0.8;
	BackgroundColor3 = Color3.new();
	Size = UDim2.fromScale(1, 1);
	AnchorPoint = Vector2.new(0, 1);
	Position = UDim2.fromScale(0, 1);
	ZIndex = 10;
	Visible = any_GetStore_result1_upvr("IsLoadingWiki");
	AutoButtonColor = false;

	var17_result1({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(0.15, 0.15);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Position = UDim2.fromScale(0.5, 0.5);
		Image = "rbxassetid://4463059046";
		ImageTransparency = 0.4;
		[Event.CreatedAsync] = function(arg1) -- Line 701
			--[[ Upvalues[1]:
				[1]: RunService_upvr (readonly)
			]]
			local var166_upvw = 0
			RunService_upvr.RenderStepped:Connect(function(arg1_5) -- Line 704
				--[[ Upvalues[2]:
					[1]: var166_upvw (read and write)
					[2]: arg1 (readonly)
				]]
				var166_upvw += arg1_5 * 150
				arg1.Rotation = var166_upvw
			end)
		end;
	}), Class_result1_3({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.6);
		Size = UDim2.fromScale(0.3, 0.06);
		Text = "Loading Assets...";
		TextTransparency = 0.4;
		TextScaled = true;
	})
}
local GuiService_upvr = game:GetService("GuiService")
tbl_9[Event.CreatedAsync] = function(arg1) -- Line 722
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local MainInterface_upvr = module_upvr_3.MainInterface
	arg1.Size = UDim2.fromOffset(MainInterface_upvr.AbsoluteSize.X, MainInterface_upvr.AbsoluteSize.Y + GuiService_upvr.TopbarInset.Height)
	module_upvr_3.ScreenUpdated:Connect(function() -- Line 725, Named "UpdateSize"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: MainInterface_upvr (readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		arg1.Size = UDim2.fromOffset(MainInterface_upvr.AbsoluteSize.X, MainInterface_upvr.AbsoluteSize.Y + GuiService_upvr.TopbarInset.Height)
	end)
end
local tbl_7 = {
	AnchorPoint = Vector2.new(0, 1);
	BackgroundColor3 = Color3.new();
	BackgroundTransparency = 0.4;
	Position = UDim2.fromScale(0.93, 0.99);
	Size = UDim2.fromScale(0.06, 0.03);
	Text = any_GetStore_result1_upvr("HideUIs"):With(function(arg1, arg2) -- Line 773
		local var179
		if arg2 then
			var179 = "Show"
		else
			var179 = "Hide"
		end
		return `{var179} UI`
	end);
	CornerSize = 0.25;
	HoverScale = 1;
}
local function Callback() -- Line 777
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	any_GetStore_result1_upvr.HideUIs = not any_GetStore_result1_upvr.HideUIs
end
tbl_7.Callback = Callback
local tbl_12 = {
	AnchorPoint = Vector2.new(0, 1);
	BackgroundColor3 = Color3.new();
	BackgroundTransparency = 0.4;
	Position = UDim2.fromScale(0.843, 0.99);
	Size = UDim2.fromScale(0.078, 0.03);
	Text = any_GetStore_result1_upvr("BackgroundType");
	CornerSize = 0.25;
	HoverScale = 1;
	Visible = any_GetStore_result1_upvr("HideUIs"):With(Reverse);
	GlobalColor3 = any_GetStore_result1_upvr("BackgroundType"):With(function(arg1, arg2) -- Line 793
		if arg2 == "Default" then
			return Color3.new(1, 1, 1)
		end
		if arg2 == "Island" then
			return ColorSequence.new(Color3.fromRGB(170, 255, 165), Color3.fromRGB(75, 151, 75))
		end
		return ColorSequence.new(Color3.fromRGB(158, 158, 158), Color3.fromRGB(75, 75, 75))
	end);
}
local function Callback() -- Line 803
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	if any_GetStore_result1_upvr.BackgroundType == "Default" then
		any_GetStore_result1_upvr.BackgroundType = "Island"
	else
		if any_GetStore_result1_upvr.BackgroundType == "Island" then
			any_GetStore_result1_upvr.BackgroundType = "Cave"
			return
		end
		any_GetStore_result1_upvr.BackgroundType = "Default"
	end
end
tbl_12.Callback = Callback
tbl_11[1] = Class_result1_10(tbl_3)
tbl_11[2] = Class_result1_9({
	Visible = any_GetStore_result1_upvr("HideUIs"):With(Reverse);
	AnchorPoint = Vector2.new(0, 1);
	BackgroundTransparency = 0.4;
	Position = UDim2.fromScale(0.225, 0.95);
	Size = UDim2.fromScale(0.2, 0.1);
	GroupTransparency = any_GetStore_result1_upvr("Music0o"):With(function(arg1, arg2) -- Line 227
		if arg2 then
			return 0
		end
		return 1
	end):Tween({
		Time = 0.2;
		Easing = "Quint";
	});

	Class_result1_3({
		Position = UDim2.fromScale(0.04, 0.07);
		Size = UDim2.fromScale(0.6, 0.4);
		BackgroundTransparency = 1;
		Text = any_GetStore_result1_upvr("MusicName"):With(function(arg1, arg2) -- Line 233
			return "♫ "..arg2
		end);
		TextScaled = true;
		TextXAlignment = Enum.TextXAlignment.Left;
	}), Class_result1_3({
		Position = UDim2.fromScale(0.04, 0.4);
		Size = UDim2.fromScale(0.95, 0.3);
		BackgroundTransparency = 1;
		Text = any_GetStore_result1_upvr("MusicCreator"):With(function(arg1, arg2) -- Line 242
			return "by "..arg2
		end);
		TextScaled = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextTransparency = 0.5;
	}), Class_result1_8({
		AnchorPoint = Vector2.new(1, 0);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.95, 0.2);
		Size = UDim2.fromScale(0.4, 0.4);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Image = any_GetStore_result1_upvr("MusicPlaying"):With(function(arg1, arg2) -- Line 254
			if arg2 then
				return "http://www.roblox.com/asset/?id=6026663719"
			end
			return "http://www.roblox.com/asset/?id=6026663699"
		end);
		[Event("MouseButton1Down")] = function() -- Line 256
			--[[ Upvalues[2]:
				[1]: module_upvr_4 (readonly)
				[2]: any_GetStore_result1_upvr (readonly)
			]]
			module_upvr_4.PlaySFX("Click", "UISounds")
			any_GetStore_result1_upvr.MusicPlaying = not any_GetStore_result1_upvr.MusicPlaying
		end;
	}), Class_result1_10({
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 0.6;
		Position = UDim2.fromScale(0.5, 0.8);
		Size = UDim2.fromScale(0.95, 0.04);

		Class_result1_10({
			BackgroundColor3 = Color3.new(1, 1, 1);
			Size = UDim2.fromScale(0, 1);
			[Event.CreatedAsync] = function(arg1) -- Line 281
				--[[ Upvalues[3]:
					[1]: any_GetStore_result1_upvr (readonly)
					[2]: RunService_upvr (readonly)
					[3]: var38_upvw (read and write)
				]]
				local AudioSource_upvw = any_GetStore_result1_upvr.AudioSource
				RunService_upvr.RenderStepped:Connect(function() -- Line 284
					--[[ Upvalues[4]:
						[1]: var38_upvw (copied, read and write)
						[2]: any_GetStore_result1_upvr (copied, readonly)
						[3]: AudioSource_upvw (read and write)
						[4]: arg1 (readonly)
					]]
					if var38_upvw and var38_upvw.Enabled and any_GetStore_result1_upvr.Music0o and any_GetStore_result1_upvr.AudioSource then
						any_GetStore_result1_upvr.AudioSource.Playing = any_GetStore_result1_upvr.MusicPlaying
						if any_GetStore_result1_upvr.MusicPlaying then
							AudioSource_upvw = any_GetStore_result1_upvr.AudioSource
							local AudioSource = any_GetStore_result1_upvr.AudioSource
							arg1.Size = UDim2.fromScale(math.clamp(AudioSource.TimePosition / math.max(AudioSource.TimeLength, 0.0001), 0, 1), 1)
							return
						end
						if AudioSource_upvw ~= any_GetStore_result1_upvr.AudioSource then
							AudioSource_upvw = any_GetStore_result1_upvr.AudioSource
							arg1.Size = UDim2.fromScale(0, 1)
						end
					end
				end)
			end;
			var17_result1({
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(1, 0.5);
				Image = "http://www.roblox.com/asset/?id=6031625146";
				Size = UDim2.fromScale(3.5, 3.5);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
			})
		}), Class_result1_10({
			AnchorPoint = Vector2.new(0, 0.5);
			Size = UDim2.fromScale(1, 3);
			Position = UDim2.fromScale(0, 0.5);
			BackgroundTransparency = 1;

			Class_result1_10({
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.new(0, 1, 1, 0);
			}), Class_result1_10({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.new(0, 1, 1, 0);
			})
		})
	}), Class_result1_2({}), Class_result1_5({
		Size = 0.1;
	}), var17_result1_4({
		Transparency = any_GetStore_result1_upvr("Music0o"):With(function(arg1, arg2) -- Line 324
			if arg2 then
				return 0.5
			end
			return 1
		end):Tween({
			Time = 0.2;
			Easing = "Quint";
		});
	})
})
tbl_11[3] = Class_result1(tbl_8)
tbl_11[4] = Class_result1_10({
	AnchorPoint = Vector2.new(1, 0.5);
	BackgroundTransparency = 0.4;
	Position = any_GetStore_result1_upvr("HasSkills"):With(function(arg1, arg2) -- Line 345
		local var86
		if arg2 then
			var86 = 0.45
		else
			var86 = 0.5
		end
		return UDim2.fromScale(0.98, var86)
	end):Tween({
		Time = 0.2;
	});
	Size = UDim2.fromScale(0.2, 0.6);
	Visible = any_GetStore_result1_upvr("HideUIs"):With(Reverse);

	Class_result1_10({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 0.65;
		Position = UDim2.fromScale(0.5, 0.11);
		Size = UDim2.fromScale(0.9, 0.15);

		var17_result1({
			AnchorPoint = Vector2.new(0.5, 1);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0);
			Rotation = 0;
			Size = UDim2.fromScale(0.3, 0.15);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://139156179732082";
		}), Class_result1_6({
			Rotation = 0;
			Transparency = NumberSequence_new_result1;
		}), Class_result1_10({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			ZIndex = 2;

			Class_result1_10({
				BackgroundColor3 = Color3.new(1, 1, 1);
				AnchorPoint = Vector2.new(0, 1);
				BackgroundTransparency = 0;
				Position = UDim2.fromScale(0, 1);
				Size = UDim2.new(1, 0, 0, 1);

				Class_result1_6({
					Rotation = 0;
					Transparency = NumberSequence_new_result1;
				})
			}), Class_result1_10({
				BackgroundColor3 = Color3.new(1, 1, 1);
				BackgroundTransparency = 0;
				Size = UDim2.new(1, 0, 0, 1);

				Class_result1_6({
					Rotation = 0;
					Transparency = NumberSequence_new_result1;
				})
			})
		}), Class_result1_10({
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.4);
			Size = UDim2.fromScale(1, 0.6);

			var17_result1_3({
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.fromScale(1, 1);
				Aura = any_GetStore_result1_upvr("WatchingAura"):With(function(arg1, arg2) -- Line 421
					local var99
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var99 = arg2
						return var99
					end
					if 0 >= #arg2 or not INLINED() then
						var99 = "Common"
					end
					return var99
				end);
			}), var17_result1_3({
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 1.1);
				Size = UDim2.fromScale(1, 0.5);
				Aura = any_GetStore_result1_upvr("WatchingAura"):With(function(arg1, arg2) -- Line 429
					local var102
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var102 = arg2
						return var102
					end
					if 0 >= #arg2 or not INLINED_2() then
						var102 = "Common"
					end
					return var102
				end);
				UseCustomText = true;
				Text = any_GetStore_result1_upvr("WatchingAura"):With(function(arg1, arg2) -- Line 431
					--[[ Upvalues[1]:
						[1]: module_upvr_5 (readonly)
					]]
					if 0 < #arg2 then
						local any_GetValue_result1_2 = module_upvr_5:GetValue(arg2)
						if any_GetValue_result1_2.LimitedTimestamp and any_GetValue_result1_2.LimitedTimestamp < DateTime.now().UnixTimestamp then
							return "Unobtainable"
						end
						return any_GetValue_result1_2.RarityString
					end
					return ""
				end);
			})
		})
	}), Class_result1_10({
		BackgroundTransparency = 0.5;
		Position = UDim2.fromScale(0.5, 0.195);
		Size = UDim2.fromScale(0.9, 0.045);
		AnchorPoint = Vector2.new(0.5, 0);

		Class_result1_6({
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
		}), Class_result1_3({
			Position = UDim2.fromScale(0, -0.1);
			Size = UDim2.fromScale(1, 1.1);
			BackgroundTransparency = 1;
			TextScaled = true;
			Text = any_GetStore_result1_upvr("AuraTier"):With(function(arg1, arg2) -- Line 468
				return arg2:upper()
			end);

			Class_result1_6({
				[Event.CreatedAsync] = function(arg1) -- Line 471
					--[[ Upvalues[1]:
						[1]: any_GetStore_result1_upvr (readonly)
					]]
					arg1:SetAttribute("Follow", any_GetStore_result1_upvr.AuraTier)
					any_GetStore_result1_upvr("AuraTier"):Observe(function() -- Line 474
						--[[ Upvalues[2]:
							[1]: arg1 (readonly)
							[2]: any_GetStore_result1_upvr (copied, readonly)
						]]
						arg1:SetAttribute("Follow", any_GetStore_result1_upvr.AuraTier)
					end)
				end;
				[Event("Changed")] = function(arg1, arg2) -- Line 479
					if arg2 == "Rotation" and arg1.Rotation ~= 0 then
						arg1.Rotation = 0
					end
				end;
			}), var17_result1_4({
				Color = Color3.new();
				ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
			})
		})
	}), Class_result1_10({
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.fromScale(0.5, 0.25);
		Size = UDim2.fromScale(0.9, 0.2);

		Class_result1_10({
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);

			Class_result1_3({
				BackgroundTransparency = 1;
				LayoutOrder = 0;
				Size = UDim2.fromScale(1, 0.238);
				TextScaled = true;
				Text = any_GetStore_result1_upvr("AuraRequirement"):With(function(arg1, arg2) -- Line 507
					if 0 < #arg2 then
						return arg2:split('\n')[1] or ""
					end
					return ""
				end);

				Class_result1_10({
					BackgroundColor3 = Color3.new(1, 1, 1);
					AnchorPoint = Vector2.new(0.5, 0);
					Position = UDim2.fromScale(0.5, 1);
					Size = UDim2.new(0.9, 0, 0, 1);

					Class_result1_6({
						Rotation = 0;
						Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
					})
				})
			}), Class_result1_3({
				BackgroundTransparency = 1;
				LayoutOrder = 1;
				Size = UDim2.fromScale(1, 0.238);
				TextScaled = true;
				RichText = true;
				[Event.CreatedAsync] = function(arg1) -- Line 539
					--[[ Upvalues[1]:
						[1]: any_GetStore_result1_upvr (readonly)
					]]
					local function Update(arg1_2) -- Line 540
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local var132 = ""
						local var133
						if 0 < #arg1_2 then
							var132 = arg1_2:split('\n')[arg1.LayoutOrder + 1] or ""
						end
						for _, v in arg1_2:split('\n') do
							if #v <= 0 then
								var133 += 1
							end
						end
						if 0 >= #var132 then
							if 3 > var133 then
							else
							end
						end
						arg1.Visible = true
						if 0 >= #var132 or not var132 then
						end
						arg1.Text = "None"
					end
					Update(any_GetStore_result1_upvr.AuraRequirement)
					any_GetStore_result1_upvr("AuraRequirement"):Observe(Update)
				end;
			}), Class_result1_3({
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				Size = UDim2.fromScale(1, 0.238);
				TextScaled = true;
				RichText = true;
				[Event.CreatedAsync] = function(arg1) -- Line 570
					--[[ Upvalues[1]:
						[1]: any_GetStore_result1_upvr (readonly)
					]]
					local function Update(arg1_3) -- Line 571
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						local var139 = ""
						local var140
						if var140 < #arg1_3 then
							var140 = arg1_3:split('\n')
							var139 = var140[arg1.LayoutOrder + 1] or ""
						end
						if 0 >= #var139 then
							var140 = false
						else
							var140 = true
						end
						arg1.Visible = var140
						arg1.Text = var139
					end
					local var142 = ""
					local var143
					if 0 < var143 then
						var143 = any_GetStore_result1_upvr.AuraRequirement:split('\n')[arg1.LayoutOrder + 1]
						var142 = var143 or ""
					end
					if 0 >= #var142 then
						var143 = false
					else
						var143 = true
					end
					arg1.Visible = var143
					arg1.Text = var142
					var143 = Update
					any_GetStore_result1_upvr("AuraRequirement"):Observe(var143)
				end;
			}), Class_result1_3({
				BackgroundTransparency = 1;
				LayoutOrder = 3;
				Size = UDim2.fromScale(1, 0.238);
				TextScaled = true;
				RichText = true;
				[Event.CreatedAsync] = function(arg1) -- Line 594
					--[[ Upvalues[1]:
						[1]: any_GetStore_result1_upvr (readonly)
					]]
					local var149 = ""
					local Update
					if 0 < Update then
						Update = any_GetStore_result1_upvr.AuraRequirement:split('\n')[arg1.LayoutOrder + 1]
						var149 = Update or ""
					end
					if 0 >= #var149 then
						Update = false
					else
						Update = true
					end
					arg1.Visible = Update
					arg1.Text = var149
					function Update(arg1_4) -- Line 595
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						local var146 = ""
						local var147
						if var147 < #arg1_4 then
							var147 = arg1_4:split('\n')
							var146 = var147[arg1.LayoutOrder + 1] or ""
						end
						if 0 >= #var146 then
							var147 = false
						else
							var147 = true
						end
						arg1.Visible = var147
						arg1.Text = var146
					end
					any_GetStore_result1_upvr("AuraRequirement"):Observe(Update)
				end;
			}), Class_result1_12({})
		}), Class_result1_6({
			Rotation = 90;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(0.3, 0.6), NumberSequenceKeypoint.new(0.5, 0.8), NumberSequenceKeypoint.new(1, 0.8)});
		}), var17_result1_4({}), Class_result1_5({
			Size = 0.1;
		}), Class_result1_2({})
	}), Class_result1_10({
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 0.8;
		Position = UDim2.fromScale(0.5, 0.48);
		Size = UDim2.fromScale(0.9, 0.5);
		Visible = any_GetStore_result1_upvr("HideUIs"):With(Reverse);

		var17_result1_2({
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.95, 0.94);
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			ScrollBarThickness = 0;
			CanvasSize = UDim2.new();

			Class_result1_3({
				BackgroundTransparency = 1;
				TextWrapped = true;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1);
				RichText = true;
				Text = any_GetStore_result1_upvr("Description");
				TextXAlignment = Enum.TextXAlignment.Left;
				[Event.CreatedAsync] = function(arg1) -- Line 654
					--[[ Upvalues[1]:
						[1]: module_upvr_3 (readonly)
					]]
					arg1.TextSize = math.max(math.floor(module_upvr_3.MainInterface.AbsoluteSize.Y * 0.0225), 1)
					module_upvr_3.ScreenUpdated:Connect(function() -- Line 655, Named "ResizeText"
						--[[ Upvalues[2]:
							[1]: arg1 (readonly)
							[2]: module_upvr_3 (copied, readonly)
						]]
						arg1.TextSize = math.max(math.floor(module_upvr_3.MainInterface.AbsoluteSize.Y * 0.0225), 1)
					end)
				end;
			})
		}), Class_result1_6({
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(0.4, 0.8), NumberSequenceKeypoint.new(1, 0.8)});
		}), var17_result1_4({}), Class_result1_5({
			Size = 0.04;
		})
	}), Class_result1_2({}), Class_result1_5({
		Size = 0.02;
	}), var17_result1_4({})
})
tbl_11[5] = Class_result1_8(tbl_9)
tbl_11[6] = Class_result1_10({
	AnchorPoint = Vector2.new(1, 0.5);
	BackgroundTransparency = 0.4;
	Position = UDim2.fromScale(0.98, 0.831);
	Size = UDim2.fromScale(0.2, 0.137);
	Visible = any_GetStore_result1_upvr("HasSkills");

	Class_result1_3({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.2);
		Text = "Skill Preview";
		TextScaled = true;
	}), var17_result1_2({
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.fromScale(0.5, 0.2);
		Size = UDim2.fromScale(0.95, 0.75);
		CanvasSize = UDim2.new();
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		ScrollBarThickness = 0;
		[Event.Created] = function(arg1) -- Line 759
			--[[ Upvalues[1]:
				[1]: any_GetStore_result1_upvr (readonly)
			]]
			any_GetStore_result1_upvr.SkillList = arg1
		end;
		Class_result1_12({
			Padding = UDim.new(0.02, 0);
		})
	}), var17_result1_4({}), Class_result1_5({
		Size = 0.09;
	}), Class_result1_2({})
})
tbl_11[7] = Class_result1(tbl_7)
tbl_11[8] = Class_result1(tbl_12)
var38_upvw = Class_result1_11(tbl_11)
local var182_upvw = var38_upvw
local function _(arg1) -- Line 816, Named "IsCutscenePlayable"
	if not arg1.ShowOnFilter and not arg1.ShowCutsceneButton and (arg1.Craftable or arg1.Rarity == nil or arg1.Rarity <= 0) then
		return false
	end
	return true
end
local function _(arg1) -- Line 824, Named "GetAudioFromAura"
	for _, v_2 in arg1:GetDescendants() do
		if v_2:HasTag("AuraBGM") then
			return v_2
		end
	end
end
local function _(arg1) -- Line 832, Named "GetRarity"
	if arg1.RarityString then
		local any_gsub_result1_3 = arg1.RarityString:gsub("1 in ", ""):gsub(',', "")
		if tonumber(any_gsub_result1_3) then
			return tonumber(any_gsub_result1_3)
		end
	end
	return arg1.Rarity
end
local var190_upvw
local function _(arg1) -- Line 844, Named "LoadSkill"
	--[[ Upvalues[2]:
		[1]: any_GetStore_result1_upvr (readonly)
		[2]: var190_upvw (read and write)
	]]
	if any_GetStore_result1_upvr.UsingSkill then
	else
		any_GetStore_result1_upvr.UsingSkill = true
		var190_upvw = arg1
	end
end
local module_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Aura"))
local function Load0o_upvr(arg1) -- Line 851, Named "Load0o"
	--[[ Upvalues[5]:
		[1]: any_GetStore_result1_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr (readonly)
		[4]: SOME_upvw (read and write)
		[5]: module_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	if any_GetStore_result1_upvr.UsingSkill or any_GetStore_result1_upvr.IsLoadingWiki then return end
	any_GetStore_result1_upvr.IsLoadingWiki = true
	local any_GetValue_result1 = module_upvr_5:GetValue(arg1)
	module_upvr.LoadPreview.send(arg1)
	repeat
		task.wait(0.5)
		if 5 < os.clock() - os.clock() then
			module_upvr.ReloadModel.send()
		end
	until typeof(SOME_upvw:GetAttribute("Loaded")) == "number"
	any_GetStore_result1_upvr.WatchingAura = arg1
	any_GetStore_result1_upvr.AuraRequirement = any_GetValue_result1.Requirement
	local any_gsub_result1 = (any_GetValue_result1.Description or "Empty"):gsub("\\n", '\n')
	any_GetStore_result1_upvr.Description = any_gsub_result1
	if not any_GetValue_result1.ShowOnFilter and not any_GetValue_result1.ShowCutsceneButton and (any_GetValue_result1.Craftable or any_GetValue_result1.Rarity == nil or any_GetValue_result1.Rarity <= 0) then
		any_gsub_result1 = false
	else
		any_gsub_result1 = true
	end
	any_GetStore_result1_upvr.PlayCutsceneVisible = any_gsub_result1
	any_gsub_result1 = any_GetValue_result1.TierOverride
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [109] 79. Error Block 77 start (CF ANALYSIS FAILED)
	if any_GetValue_result1.Unobtainable then
		any_gsub_result1 = "Unobtainable"
	elseif any_GetValue_result1.Requirement:find("Required") ~= nil then
		any_gsub_result1 = "Challenged"
	elseif any_GetValue_result1.LimitedTimestamp then
		any_gsub_result1 = "Event"
	else
		any_gsub_result1 = module_upvr_4.GetTierByRarity(any_GetValue_result1.GeneralRarity)
	end
	-- KONSTANTERROR: [109] 79. Error Block 77 end (CF ANALYSIS FAILED)
end
Mount_upvr(module_upvr_3.MainInterface.Parent, var182_upvw)
local any_new_result1_upvr = require(Modules:WaitForChild("Queue")).new("CollectionUI")
local Class_result1_7_upvr = Class(script:WaitForChild("Item"))
task.defer(function() -- Line 926
	--[[ Upvalues[6]:
		[1]: module_upvr_5 (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: Class_result1_7_upvr (readonly)
		[4]: Mount_upvr (readonly)
		[5]: var39_upvw (read and write)
		[6]: Load0o_upvr (readonly)
	]]
	local tbl_2_upvr = {}
	local any_GetList_result1_upvr = module_upvr_5:GetList()
	local function _(arg1) -- Line 931, Named "CreateUICell"
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: Class_result1_7_upvr (copied, readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: Mount_upvr (copied, readonly)
			[5]: var39_upvw (copied, read and write)
		]]
		any_new_result1_upvr:insert(Class_result1_7_upvr, arg1):andThen(function(arg1_6) -- Line 932
			--[[ Upvalues[1]:
				[1]: tbl_2_upvr (copied, readonly)
			]]
			tbl_2_upvr[arg1_6.Index] = arg1_6
			return arg1_6
		end):andThen(Mount_upvr, var39_upvw)
	end
	for i_3, v_3_upvr in pairs(any_GetList_result1_upvr) do
		local var211 = 0 + 1
		if v_3_upvr.Locked then
			any_new_result1_upvr:insert(Class_result1_7_upvr, {
				Index = i_3;
				Locked = true;
				Order = var211;
				Visible = not v_3_upvr.Hidden;
			}):andThen(function(arg1) -- Line 932
				--[[ Upvalues[1]:
					[1]: tbl_2_upvr (readonly)
				]]
				tbl_2_upvr[arg1.Index] = arg1
				return arg1
			end):andThen(Mount_upvr, var39_upvw)
		else
			local tbl = {
				Index = i_3;
				Locked = false;
				Order = var211;
				AuraName = v_3_upvr.Value;
			}
			local function Callback() -- Line 954
				--[[ Upvalues[2]:
					[1]: Load0o_upvr (copied, readonly)
					[2]: v_3_upvr (readonly)
				]]
				Load0o_upvr(v_3_upvr.Value)
			end
			tbl.Callback = Callback
			any_new_result1_upvr:insert(Class_result1_7_upvr, tbl):andThen(function(arg1) -- Line 932
				--[[ Upvalues[1]:
					[1]: tbl_2_upvr (readonly)
				]]
				tbl_2_upvr[arg1.Index] = arg1
				return arg1
			end):andThen(Mount_upvr, var39_upvw)
		end
		if v_3_upvr.Skins then
			for i_4, v_4_upvr in pairs(v_3_upvr.Skins) do
				local var219
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var219 = v_3_upvr.Value
					return var219
				end
				if v_3_upvr.Locked or not INLINED_3() then
					var219 = nil
				end
				if v_4_upvr.Locked then
					any_new_result1_upvr:insert(Class_result1_7_upvr, {
						Index = i_4;
						Locked = true;
						Order = var211 + 1;
						IsSkin = true;
						RootIndex = i_3;
						RootAura = var219;
						Visible = not v_4_upvr.Hidden;
					}):andThen(function(arg1) -- Line 932
						--[[ Upvalues[1]:
							[1]: tbl_2_upvr (readonly)
						]]
						tbl_2_upvr[arg1.Index] = arg1
						return arg1
					end):andThen(Mount_upvr, var39_upvw)
				else
					local tbl_10 = {
						Index = i_4;
						Locked = false;
						IsSkin = true;
						RootIndex = i_3;
						RootAura = var219;
						AuraName = v_4_upvr.Value;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_10.Order = var211 + 1
					function tbl_10.Callback() -- Line 986
						--[[ Upvalues[2]:
							[1]: Load0o_upvr (copied, readonly)
							[2]: v_4_upvr (readonly)
						]]
						Load0o_upvr(v_4_upvr.Value)
					end
					any_new_result1_upvr:insert(Class_result1_7_upvr, tbl_10):andThen(function(arg1) -- Line 932
						--[[ Upvalues[1]:
							[1]: tbl_2_upvr (readonly)
						]]
						tbl_2_upvr[arg1.Index] = arg1
						return arg1
					end):andThen(Mount_upvr, var39_upvw)
				end
				task.wait()
			end
		end
		task.wait()
	end
	module_upvr_5.ListUpdated:Connect(function(arg1, arg2) -- Line 999
		--[[ Upvalues[4]:
			[1]: tbl_2_upvr (readonly)
			[2]: any_GetList_result1_upvr (readonly)
			[3]: module_upvr_5 (copied, readonly)
			[4]: Load0o_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		local var227_upvr = tbl_2_upvr[arg1]
		if typeof(arg1) == "number" then
			var227_upvr.AuraName = any_GetList_result1_upvr[arg1].Value
			if any_GetList_result1_upvr[arg1].Skins then
				for i_5, v_5 in any_GetList_result1_upvr[arg1].Skins do
					local var228 = tbl_2_upvr[i_5]
					if var228 then
						var228.RootAura = var227_upvr.AuraName
					end
				end
				-- KONSTANTWARNING: GOTO [53] #40
			end
		else
			v_5 = any_GetList_result1_upvr
			i_5 = v_5[module_upvr_5:GetValue(arg2).Index]
			var227_upvr.AuraName = i_5.Skins[arg1].Value
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 40. Error Block 10 start (CF ANALYSIS FAILED)
		var227_upvr.Visible = true
		var227_upvr.Locked = false
		function var227_upvr.Callback() -- Line 1020
			--[[ Upvalues[2]:
				[1]: Load0o_upvr (copied, readonly)
				[2]: var227_upvr (readonly)
			]]
			Load0o_upvr(var227_upvr.AuraName)
		end
		-- KONSTANTERROR: [53] 40. Error Block 10 end (CF ANALYSIS FAILED)
	end)
end)
any_GetStore_result1_upvr("WikiDummy"):Observe(function(arg1) -- Line 1026
	--[[ Upvalues[1]:
		[1]: SOME_upvw (read and write)
	]]
	SOME_upvw:Destroy()
	SOME_upvw = arg1
end)
any_GetStore_result1_upvr("AudioSource"):Observe(function(arg1) -- Line 1031
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	if arg1 then
		arg1.Playing = any_GetStore_result1_upvr.MusicPlaying
	end
end)
any_GetStore_result1_upvr("MusicPlaying"):Observe(function(arg1) -- Line 1037
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	if any_GetStore_result1_upvr.AudioSource then
		any_GetStore_result1_upvr.AudioSource.Playing = arg1
	end
end)
any_GetStore_result1_upvr("BackgroundType"):Observe(function(arg1) -- Line 1043
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: Wiki_upvr (readonly)
	]]
	local var238
	for i_6, v_6 in tbl_5_upvr do
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var238 = Wiki_upvr
			return var238
		end
		if i_6 ~= arg1 or not INLINED_4() then
			var238 = nil
		end
		v_6.Parent = var238
	end
end)
var182_upvw:GetPropertyChangedSignal("Enabled"):Connect(function() -- Line 1049
	--[[ Upvalues[2]:
		[1]: Lighting_upvr (readonly)
		[2]: var182_upvw (read and write)
	]]
	Lighting_upvr:SetAttribute("WeatherEnabled", not var182_upvw.Enabled)
end)
for i_7, v_7 in tbl_5_upvr do
	if i_7 ~= "Default" then
		v_7:PivotTo(tbl_5_upvr.Default.CFrame)
	end
end
Load0o_upvr("Common")
return var182_upvw