-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-20 13:27:50
-- Luau version 6, Types version 3
-- Time taken: 0.030233 seconds

local StarterGui_upvr = game:GetService("StarterGui")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UI = ReplicatedStorage_upvr:WaitForChild("Modules"):WaitForChild("UI")
local module_2_upvr = require(UI:WaitForChild("Quad"))
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local LoadingSound_upvr = script:WaitForChild("LoadingSound")
local CurrentCamera_upvr = workspace.CurrentCamera
local BlurEffect_upvr = Instance.new("BlurEffect")
local var10_upvw
local module = {}
local tbl_12_upvr = {{
	Type = "Title";
	Text = "[ Eon1-1 Update ]";
}, {
		Type = "Head";
		Text = "New Content";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**NPC**";
	}, {
		Type = "Context";
		Text = "- New traveling merchant, Jack";
	}, {
		Type = "Context";
		Text = "- You can sell Halloween themed aura and item to him to trade \"Pump Tokens\" Additionally, he offers most in-game items in exchange for these \"Pump Tokens\"";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**Aura**";
	}, {
		Type = "Context";
		Text = "> 10 New types of Event Aura";
	}, {
		Type = "Context";
		Text = "- APOSTOLOS:VEIL, HARVESTER, NIGHTMARE SKY, DULLAHAN, SOUL HUNTER, Cryptfire, Moonflower, Vital, Lunar : Nightfall, PUMP";
	}, {
		Type = "Context";
		Text = "- These auras all appear exclusively in their dedicated biomes";
	}, {
		Type = "Context";
		Text = "**Tier changed**";
	}, {
		Type = "Context";
		Text = "- Innovator (EXALTED -> EVENT)";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**BGM**";
	}, {
		Type = "Context";
		Text = "- Overdrive BGM has been changed";
	}, {
		Type = "Context";
		Text = "- The sound scales of all auras have been slightly adjusted";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**Biome**";
	}, {
		Type = "Context";
		Text = "> 2 New biome added";
	}, {
		Type = "Context";
		Text = "- Pumkin Moon, Graveyard";
	}, {
		Type = "Context";
		Text = "- These biomes only appear during Night Time";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**Items**";
	}, {
		Type = "Context";
		Text = "> Gear";
	}, {
		Type = "Context";
		Text = "- Pump Punch (Event)";
	}, {
		Type = "Context";
		Text = "> Potion";
	}, {
		Type = "Context";
		Text = "- Pump King's Blood";
	}, {
		Type = "Context";
		Text = "> Crafting Material";
	}, {
		Type = "Context";
		Text = "- Pump King's Soul";
	}, {
		Type = "Context";
		Text = "";
	}, {
		Type = "Context";
		Text = "**Others**";
	}, {
		Type = "Context";
		Text = "- RIA event has completely ended.";
	}, {
		Type = "Context";
		Text = "- remaining RIA points have been exchanged for either 1 Lucky Potion or 1 Speed Potion each";
	}}
local Class = module_2_upvr.Class
local Mount_upvr = module_2_upvr.Mount
local Event = module_2_upvr.Event
local Tween_upvr = module_2_upvr.Tween
local Class_result1_upvr_2 = Class("Frame")
local Class_result1_upvr = Class("UIGradient")
local var47_result1_2 = Class("ImageLabel")
local var47_result1_upvr = Class("TextLabel")
local Class_result1_2 = Class("TextButton")
local Class_result1 = Class("CanvasGroup")
local Class_result1_4 = Class("UIStroke")
local Class_result1_3 = Class("UIListLayout")
local var47_result1 = Class(UI:WaitForChild("Components"):WaitForChild("Corner"))
local any_GetStore_result1_upvr = module_2_upvr.Store.GetStore("Global")
any_GetStore_result1_upvr.ObjectsToLoad = 1
any_GetStore_result1_upvr.ObjectsLoaded = 0
any_GetStore_result1_upvr.GradientLocation = 0
any_GetStore_result1_upvr.ShowMainMenu = false
any_GetStore_result1_upvr.ShowLogs = false
any_GetStore_result1_upvr.LoadSent = false
any_GetStore_result1_upvr.ForceLoading = false
any_GetStore_result1_upvr.LogoLocation = UDim2.fromScale(0.05, 1)
Class_result1_upvr_2.BackgroundColor3 = Color3.new(1, 1, 1)
Class_result1_upvr_2.BorderSizePixel = 0
Class_result1.BackgroundColor3 = Color3.new(1, 1, 1)
Class_result1.BorderSizePixel = 0
var47_result1_2.BackgroundColor3 = Color3.new()
var47_result1_2.BorderSizePixel = 0
var47_result1_upvr.TextColor3 = Color3.new(1, 1, 1)
var47_result1_upvr.FontFace = module_2_upvr.FontBold
var47_result1_upvr.BorderSizePixel = 0
var47_result1_upvr.BackgroundColor3 = Color3.new()
Class_result1_2.TextColor3 = Color3.new(1, 1, 1)
Class_result1_2.FontFace = module_2_upvr.FontBold
Class_result1_2.BorderSizePixel = 0
Class_result1_2.BackgroundColor3 = Color3.new()
Class_result1_3.SortOrder = Enum.SortOrder.LayoutOrder
BlurEffect_upvr.Size = 20
BlurEffect_upvr.Parent = game:GetService("Lighting")
local function _(arg1, arg2) -- Line 160, Named "TimeoutEvent_upvr"
	local var61_upvw
	local current_thread_upvr = coroutine.running()
	local task_defer_result1 = task.defer(function() -- Line 163
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var61_upvw (read and write)
			[3]: current_thread_upvr (readonly)
		]]
		task.wait(arg2)
		if not var61_upvw then
			task.defer(current_thread_upvr)
		end
	end)
	coroutine.yield()
	arg1:Connect(function(...) -- Line 175
		--[[ Upvalues[2]:
			[1]: var61_upvw (read and write)
			[2]: current_thread_upvr (readonly)
		]]
		var61_upvw = {...}
		task.defer(current_thread_upvr)
	end):Disconnect()
	if task_defer_result1 ~= coroutine.running() then
		task.cancel(task_defer_result1)
	end
	if var61_upvw then
		return true, table.unpack(var61_upvw)
	end
	return false
end
local Sounds_upvr = ReplicatedStorage_upvr:WaitForChild("Assets"):WaitForChild("Sounds")
local SoundService_upvr = game:GetService("SoundService")
local function PlaySFX_upvr_upvr(arg1, arg2, arg3, arg4) -- Line 193, Named "PlaySFX_upvr"
	--[[ Upvalues[2]:
		[1]: Sounds_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	local clone_upvw = Sounds_upvr:WaitForChild(arg1):Clone()
	if not clone_upvw:GetAttribute("Volume") then
		clone_upvw:SetAttribute("Volume", clone_upvw.Volume)
	end
	local var70 = arg3
	if not var70 then
		var70 = clone_upvw.PlaybackSpeed
	end
	clone_upvw.PlaybackSpeed = var70
	clone_upvw.Volume = 0
	clone_upvw:AddTag(arg2 or "UISounds")
	clone_upvw.Name = math.random()
	clone_upvw.Parent = SoundService_upvr
	clone_upvw:Play()
	clone_upvw.Ended:Once(function() -- Line 212
		--[[ Upvalues[1]:
			[1]: clone_upvw (read and write)
		]]
		clone_upvw:Destroy()
		clone_upvw = nil
	end)
end
local module_3_upvr = require(ReplicatedStorage_upvr:WaitForChild("Packets"):WaitForChild("Global"))
local function _(arg1, arg2, arg3) -- Line 238
	return arg1 * math.sin(arg2 / arg3)
end
local function Reverse(arg1, arg2) -- Line 241
	return not arg2
end
local function select_upvr_upvr(arg1, ...) -- Line 244, Named "select_upvr"
	return ({...})[arg1]
end
local function _(arg1) -- Line 247
	--[[ Upvalues[1]:
		[1]: select_upvr_upvr (readonly)
	]]
	if typeof(arg1) == "number" then
		return arg1
	end
	return select_upvr_upvr(1, arg1:gsub("%D", ""))
end
local var74_upvw
local var75_upvw
local var76_upvw
local var77_upvw
local tbl_7 = {
	Enabled = true;
	ResetOnSpawn = false;
	IgnoreGuiInset = true;
	DisplayOrder = 100;
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
}
local tbl_4 = {
	Size = UDim2.fromScale(1, 1);
	ZIndex = 6;
	Visible = any_GetStore_result1_upvr("LoadSent");
	BackgroundColor3 = Color3.new();
}
local var81_upvw
tbl_4[Event.CreatedAsync] = function(arg1) -- Line 278
	--[[ Upvalues[8]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Tween_upvr (readonly)
		[3]: var81_upvw (read and write)
		[4]: var10_upvw (read and write)
		[5]: CurrentCamera_upvr (readonly)
		[6]: LoadingSound_upvr (readonly)
		[7]: PlaySFX_upvr_upvr (readonly)
		[8]: BlurEffect_upvr (readonly)
	]]
	if not LocalPlayer_upvr:GetAttribute("PlayBegin") then
		LocalPlayer_upvr:GetAttributeChangedSignal("PlayBegin"):Wait()
	end
	Tween_upvr.RunTween(arg1, {
		Time = 2;
		Easing = "Linear";
	}, {
		BackgroundTransparency = 1;
	}, function() -- Line 297
		--[[ Upvalues[1]:
			[1]: var81_upvw (copied, read and write)
		]]
		var81_upvw.Enabled = false
	end)
	if var10_upvw then
		var10_upvw:Disconnect()
		var10_upvw = nil
	end
	CurrentCamera_upvr.FieldOfView = 70
	LoadingSound_upvr:Stop()
	PlaySFX_upvr_upvr("Shine", "UISounds")
	Tween_upvr.RunTween(BlurEffect_upvr, {
		Time = 1;
		Easing = "Linear";
	}, {
		Size = 0;
	}, function() -- Line 315
		--[[ Upvalues[1]:
			[1]: BlurEffect_upvr (copied, readonly)
		]]
		BlurEffect_upvr:Destroy()
	end)
end
local tbl_11 = {
	Size = UDim2.fromScale(1, 1);
}
local var90_upvw
tbl_11[Event.Created] = function(arg1) -- Line 324
	--[[ Upvalues[1]:
		[1]: var90_upvw (read and write)
	]]
	var90_upvw = arg1
end
tbl_11[1] = Class_result1_upvr({
	Rotation = 90;
	Color = ColorSequence.new(Color3.fromHex("101112"), Color3.fromHex("2c3035"));
})
tbl_11[2] = Class_result1_upvr_2({
	AnchorPoint = Vector2.new(0, 1);
	BackgroundTransparency = 0.7;
	Position = UDim2.fromScale(0, 1);
	Size = UDim2.fromScale(1, 0.2);
	BackgroundColor3 = Color3.new();

	Class_result1_upvr({
		Rotation = 90;
		Transparency = NumberSequence.new(1, 0);
	})
})
tbl_7[1] = Class_result1_upvr_2(tbl_11)
tbl_7[2] = Class_result1_upvr_2({
	AnchorPoint = Vector2.new(0.5, 0);
	BackgroundColor3 = Color3.fromRGB(57, 57, 57);
	BackgroundTransparency = 0.2;
	Size = UDim2.fromScale(1, 0.07);
	ZIndex = 9999;
	Position = any_GetStore_result1_upvr("ForceLoading"):With(function() -- Line 352
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		if any_GetStore_result1_upvr.ForceLoading then
			return UDim2.fromScale(0.5, 0.02)
		end
		task.wait(1)
		return UDim2.fromScale(0.5, -0.1)
	end):Tween({
		Time = 1;
		Easing = "Quint";
	});

	Class_result1_upvr({
		Rotation = 90;
		Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
	}), var47_result1_upvr({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(3.93, 0.25);
		FontFace = module_2_upvr.FontDefault;
		Text = "It may take around 1~4 minutes";
		TextScaled = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = Color3.new(1, 1, 1);
		Position = any_GetStore_result1_upvr("ForceLoading"):With(function() -- Line 377
			--[[ Upvalues[1]:
				[1]: any_GetStore_result1_upvr (readonly)
			]]
			if any_GetStore_result1_upvr.ForceLoading then
				task.wait(1)
				return UDim2.fromScale(0.2, 0.6)
			end
			return UDim2.fromScale(-0.3, 0.6)
		end):Tween({
			Time = 0.2;
			Easing = "Exp4";
		});
		TextTransparency = any_GetStore_result1_upvr("ForceLoading"):With(function() -- Line 390
			--[[ Upvalues[1]:
				[1]: any_GetStore_result1_upvr (readonly)
			]]
			if any_GetStore_result1_upvr.ForceLoading then
				task.wait(1)
				return 0.3
			end
			return 1
		end):Tween({
			Time = 0.2;
			Easing = "Quint";
		});

		Class_result1_upvr({
			Rotation = 90;
			Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
		})
	}), var47_result1_upvr({
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(3.93, 0.45);
		FontFace = module_2_upvr.FontBold;
		Text = "Closing latest session...";
		TextScaled = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = Color3.new(1, 1, 1);
		Position = any_GetStore_result1_upvr("ForceLoading"):With(function() -- Line 416
			--[[ Upvalues[1]:
				[1]: any_GetStore_result1_upvr (readonly)
			]]
			if any_GetStore_result1_upvr.ForceLoading then
				task.wait(1)
				return UDim2.fromScale(0.2, 0.6)
			end
			return UDim2.fromScale(-0.3, 0.6)
		end):Tween({
			Time = 0.2;
			Easing = "Exp4";
		});
		TextTransparency = any_GetStore_result1_upvr("ForceLoading"):With(function() -- Line 429
			--[[ Upvalues[1]:
				[1]: any_GetStore_result1_upvr (readonly)
			]]
			if any_GetStore_result1_upvr.ForceLoading then
				task.wait(1)
				return 0
			end
			return 1
		end):Tween({
			Time = 0.2;
			Easing = "Quint";
		});

		Class_result1_upvr({
			Rotation = 90;
			Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
		})
	}), Class_result1_upvr_2({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.new();
		BackgroundTransparency = 0.4;
		Size = UDim2.fromScale(0.8, 0.8);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Position = any_GetStore_result1_upvr("ForceLoading"):With(function(arg1, arg2) -- Line 452
			if arg2 then
				task.wait(1)
				return UDim2.fromScale(0.1, 0.5)
			end
			return UDim2.fromScale(0.5, 0.5)
		end):Tween({
			Time = 1;
			Easing = "Exp2";
		});

		var47_result1_2({
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.9, 0.9);
			Image = "rbxassetid://80078149518908";

			Class_result1_upvr({
				Rotation = 90;
				Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
			})
		}), Class_result1_4({
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Color = Color3.new(1, 1, 1);
			Thickness = 1.5;
			Transparency = 0.5;

			Class_result1_upvr({
				Rotation = 90;
				Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
			})
		}), var47_result1({
			Size = 0.1;

			Class_result1_upvr({
				Rotation = 90;
				Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
			})
		})
	}), Class_result1_4({
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		Color = Color3.new(1, 1, 1);
		Thickness = 1.5;
		Transparency = 0.5;

		Class_result1_upvr({
			Rotation = 90;
			Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
		})
	}), var47_result1({
		Size = 0.1;

		Class_result1_upvr({
			Rotation = 90;
			Color = ColorSequence.new(Color3.fromRGB(255, 70, 70), Color3.fromRGB(255, 0, 0));
		})
	}), Class("UIAspectRatioConstraint")({
		AspectRatio = any_GetStore_result1_upvr("ForceLoading"):With(function(arg1, arg2) -- Line 510
			if arg2 then
				task.wait(1)
				return 5
			end
			return 1
		end):Tween({
			Time = 1;
			Easing = "Quart";
		});
	})
})
local tbl_2 = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundTransparency = 1;
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(0.25, 0.25);
	SizeConstraint = Enum.SizeConstraint.RelativeYY;
	GroupTransparency = 1;
}
local var128_upvw
tbl_2[Event.Created] = function(arg1) -- Line 529
	--[[ Upvalues[1]:
		[1]: var128_upvw (read and write)
	]]
	var128_upvw = arg1
end
local tbl = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1, 1);
	Image = "rbxassetid://128962941464090";
	ImageColor3 = Color3.fromRGB(20, 20, 20);
	BackgroundTransparency = 1;
}
local tbl_6 = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1, 1);
	Image = "rbxassetid://128962941464090";
	BackgroundTransparency = 1;
}
local tbl_5 = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1, 1);
	Image = "rbxassetid://102233159811015";
	BackgroundTransparency = 1;
	ImageTransparency = 1;
}
local var137_upvw
tbl_5[Event.Created] = function(arg1) -- Line 575
	--[[ Upvalues[1]:
		[1]: var137_upvw (read and write)
	]]
	var137_upvw = arg1
end
tbl_6[1] = Class_result1_upvr({
	Rotation = -90;
	Transparency = any_GetStore_result1_upvr("ObjectsLoaded,ObjectsToLoad"):With(function() -- Line 552
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		local var133 = any_GetStore_result1_upvr.ObjectsLoaded / any_GetStore_result1_upvr.ObjectsToLoad
		if any_GetStore_result1_upvr.ObjectsToLoad == 0 then
			var133 = 1
		end
		if 1 <= var133 then
			return NumberSequence.new(0)
		end
		if var133 <= 0 then
			return NumberSequence.new(1)
		end
		return NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(var133, 0), NumberSequenceKeypoint.new(math.min(var133 + 0.001, 0.999), 1), NumberSequenceKeypoint.new(1, 1)})
	end);
})
tbl_6[2] = var47_result1_2(tbl_5)
tbl[1] = var47_result1_2(tbl_6)
tbl_2[1] = var47_result1_2(tbl)
tbl_7[3] = Class_result1(tbl_2)
local tbl_10 = {
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1.2, 1.4);
	BackgroundTransparency = 1;
	ImageTransparency = 1;
	Image = "rbxassetid://124218619097464";
	ImageColor3 = Color3.new();
}
local var140_upvw
tbl_10[Event.Created] = function(arg1) -- Line 593
	--[[ Upvalues[1]:
		[1]: var140_upvw (read and write)
	]]
	var140_upvw = arg1
end
tbl_7[4] = var47_result1_2(tbl_10)
tbl_7[5] = Class_result1({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	BackgroundTransparency = 1;
	Size = UDim2.fromScale(0.98, 0.95);
	Visible = false;
	[Event.Created] = function(arg1) -- Line 606
		--[[ Upvalues[1]:
			[1]: var75_upvw (read and write)
		]]
		var75_upvw = arg1
	end;

	Class_result1_upvr_2({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(0.05, 1);

		Class_result1_upvr_2({
			Size = UDim2.fromScale(1, 0.003);

			Class_result1_upvr({
				Transparency = NumberSequence.new(0, 1);
			})
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			Size = UDim2.fromScale(1, 0.003);

			Class_result1_upvr({
				Transparency = NumberSequence.new(0, 1);
			})
		}), Class_result1_upvr_2({
			Size = UDim2.fromScale(0.03, 1);
		})
	}), Class_result1_upvr_2({
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(0.05, 1);

		Class_result1_upvr_2({
			Size = UDim2.fromScale(1, 0.003);

			Class_result1_upvr({
				Transparency = NumberSequence.new(1, 0);
			})
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			Size = UDim2.fromScale(1, 0.003);

			Class_result1_upvr({
				Transparency = NumberSequence.new(1, 0);
			})
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.fromScale(0.03, 1);
		})
	})
})
tbl_7[6] = var47_result1_upvr({
	AnchorPoint = Vector2.new(0.5, 0);
	BackgroundTransparency = 1;
	Position = UDim2.fromScale(0.5, 0.63);
	Size = UDim2.fromScale(0.8, 0.03);
	ZIndex = 2;
	FontFace = module_2_upvr.FontDefault;
	Text = "Preparing...";
	TextScaled = true;
	MaxVisibleGraphemes = 0;
	[Event.Created] = function(arg1) -- Line 670
		--[[ Upvalues[1]:
			[1]: var74_upvw (read and write)
		]]
		var74_upvw = arg1
	end;
})
tbl_7[7] = Class_result1_upvr_2({
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundTransparency = 1;
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(0.98, 0.96);
	ZIndex = 2;

	Class_result1_upvr_2({
		Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.03);
		Position = any_GetStore_result1_upvr("GradientLocation"):With(function(arg1, arg2) -- Line 689
			return UDim2.fromScale(0, 1 + (0.15 - arg2) / 0.15 * 0.3)
		end);

		Class_result1_upvr_2({
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ZIndex = 2;

			Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(0.002, 1);
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(0, 1);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(0, 1);
				Size = UDim2.fromScale(1, 0.15);
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromScale(0.002, 1);
			})
		}), Class_result1_upvr_2({
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);

			Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(0.002, 1);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(0, 1);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(0, 1);
				Size = UDim2.fromScale(1, 0.15);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromScale(0.002, 1);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			})
		})
	}), Class_result1_upvr_2({
		Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.03);
		Position = any_GetStore_result1_upvr("GradientLocation"):With(function(arg1, arg2) -- Line 741
			return UDim2.fromScale(0, -((0.15 - arg2) / 0.15) * 0.3)
		end);

		Class_result1_upvr_2({
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ZIndex = 2;

			Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(0.002, 1);
			}), Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(1, 0.15);
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromScale(0.002, 1);
			})
		}), Class_result1_upvr_2({
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);

			Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(0.002, 1);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			}), Class_result1_upvr_2({
				BackgroundColor3 = Color3.new(1, 1, 1);
				Size = UDim2.fromScale(1, 0.15);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			}), Class_result1_upvr_2({
				AnchorPoint = Vector2.new(1, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				Position = UDim2.fromScale(1, 0);
				Size = UDim2.fromScale(0.002, 1);
				BorderColor3 = Color3.fromRGB(47, 50, 63);
				BorderSizePixel = 4;
			})
		})
	})
})
tbl_7[8] = Class_result1_upvr_2({
	BackgroundTransparency = 1;
	Position = any_GetStore_result1_upvr("LogoLocation");
	Size = UDim2.fromScale(0.4, 0.2);
	Visible = any_GetStore_result1_upvr("ShowMainMenu,LoadSent"):With(function() -- Line 791
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		local ShowMainMenu = any_GetStore_result1_upvr.ShowMainMenu
		if ShowMainMenu then
			ShowMainMenu = not any_GetStore_result1_upvr.LoadSent
		end
		return ShowMainMenu
	end);
	ZIndex = 3;
	[Event.Created] = function(arg1) -- Line 802
		--[[ Upvalues[1]:
			[1]: var76_upvw (read and write)
		]]
		var76_upvw = arg1
	end;

	var47_result1_2({
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.1, 0.5);
		Rotation = -15;
		Size = UDim2.fromScale(2, 2);
		Image = "rbxassetid://71303562623605";
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		[Event.Created] = function(arg1) -- Line 816
			--[[ Upvalues[1]:
				[1]: var77_upvw (read and write)
			]]
			var77_upvw = arg1
		end;
	}), var47_result1_upvr({
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.1, 0.1);
		Size = UDim2.fromScale(0.8, 0.8);
		ZIndex = 2;
		RichText = true;
		Text = "<stroke color=\"#2f323f\" joins=\"miter\" thickness=\"5\" transparency=\"0\">Sol's RNG</stroke>";
		TextScaled = true;
		TextXAlignment = Enum.TextXAlignment.Left;

		var47_result1_upvr({
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.03, 0.7);
			Size = UDim2.fromScale(0.5, 0.3);
			ZIndex = 2;
			RichText = true;
			Text = "<stroke color=\"#2f323f\" joins=\"miter\" thickness=\"5\" transparency=\"0\">EON 1</stroke>";
			TextScaled = true;
			TextXAlignment = Enum.TextXAlignment.Left;
		})
	})
})
tbl_7[9] = Class_result1_upvr_2(tbl_4)
tbl_7[10] = Class_result1_2({
	AnchorPoint = Vector2.new(0.5, 0);
	BackgroundTransparency = 1;
	Position = any_GetStore_result1_upvr("ShowMainMenu"):With(function(arg1, arg2) -- Line 848
		if arg2 then
			task.wait(0.5)
		end
		if arg2 then
		end
		return UDim2.fromScale(0.5, 1)
	end):Tween({
		Time = 1;
		Easing = "Quint";
		Direction = "Out";
	});
	Size = UDim2.fromScale(0.15, 0.08);
	Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);
	Text = "";
	[Event("MouseButton1Down")] = function() -- Line 221, Named "Play_upvr"
		--[[ Upvalues[5]:
			[1]: any_GetStore_result1_upvr (readonly)
			[2]: CurrentCamera_upvr (readonly)
			[3]: module_3_upvr (readonly)
			[4]: module_2_upvr (readonly)
			[5]: StarterGui_upvr (readonly)
		]]
		if not any_GetStore_result1_upvr.LoadSent then
			any_GetStore_result1_upvr.LoadSent = true
			CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
			module_3_upvr.PlayBegin.send()
			module_2_upvr.MainInterface.Enabled = true
			StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
			StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
		end
	end;
	[Event("MouseEnter")] = function(arg1) -- Line 865
		--[[ Upvalues[2]:
			[1]: PlaySFX_upvr_upvr (readonly)
			[2]: Tween_upvr (readonly)
		]]
		PlaySFX_upvr_upvr("MouseHover", "UISounds")
		Tween_upvr.RunTween(arg1:WaitForChild("Frame"), {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, {
			BackgroundTransparency = 0.5;
		})
	end;
	[Event("MouseLeave")] = function(arg1) -- Line 879
		--[[ Upvalues[1]:
			[1]: Tween_upvr (readonly)
		]]
		Tween_upvr.RunTween(arg1:WaitForChild("Frame"), {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, {
			BackgroundTransparency = 0.8;
		})
	end;

	Class_result1_upvr_2({
		Size = UDim2.fromScale(1.3, 1);
		BackgroundTransparency = 0.8;
		Position = UDim2.fromScale(-0.1, 0);

		Class_result1_upvr({
			Transparency = NumberSequence.new(0, 1);
		})
	}), var47_result1_upvr({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextScaled = true;
		Text = ": Start";

		Class_result1_4({
			Color = Color3.fromRGB(47, 50, 63);
			LineJoinMode = Enum.LineJoinMode.Miter;
			Thickness = 4;
		})
	})
})
tbl_7[11] = Class_result1_2({
	AnchorPoint = Vector2.new(0.5, 0);
	BackgroundTransparency = 1;
	Position = any_GetStore_result1_upvr("ShowMainMenu"):With(function(arg1, arg2) -- Line 917
		if arg2 then
			task.wait(0.75)
		end
		if arg2 then
		end
		return UDim2.fromScale(0.5, 1)
	end):Tween({
		Time = 1;
		Easing = "Quint";
		Direction = "Out";
	});
	Size = UDim2.fromScale(0.15, 0.05);
	Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);
	Text = "";
	[Event("MouseEnter")] = function(arg1) -- Line 933
		--[[ Upvalues[2]:
			[1]: PlaySFX_upvr_upvr (readonly)
			[2]: Tween_upvr (readonly)
		]]
		PlaySFX_upvr_upvr("MouseHover", "UISounds")
		local Frame_3 = arg1:WaitForChild("Frame")
		Frame_3:SetAttribute("Hover", true)
		Tween_upvr.RunTween(Frame_3, {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, {
			BackgroundTransparency = 0.5;
		})
	end;
	[Event("MouseLeave")] = function(arg1) -- Line 949
		--[[ Upvalues[1]:
			[1]: Tween_upvr (readonly)
		]]
		local Frame_2 = arg1:WaitForChild("Frame")
		Frame_2:SetAttribute("Hover", false)
		Tween_upvr.RunTween(Frame_2, {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, {
			BackgroundTransparency = 0.8;
		})
	end;
	[Event("MouseButton1Down")] = function(arg1) -- Line 963
		--[[ Upvalues[2]:
			[1]: any_GetStore_result1_upvr (readonly)
			[2]: Tween_upvr (readonly)
		]]
		any_GetStore_result1_upvr.ShowLogs = not any_GetStore_result1_upvr.ShowLogs
		Tween_upvr.RunTween(arg1:WaitForChild("Frame"), {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, {
			BackgroundTransparency = 0.1;
		})
	end;
	[Event("MouseButton1Up")] = function(arg1) -- Line 977
		--[[ Upvalues[1]:
			[1]: Tween_upvr (readonly)
		]]
		local Frame = arg1:WaitForChild("Frame")
		local tbl_8 = {}
		local var216
		if Frame:GetAttribute("Hover") then
			var216 = 0.5
		else
			var216 = 0.8
		end
		tbl_8.BackgroundTransparency = var216
		Tween_upvr.RunTween(Frame, {
			Easing = "Quint";
			Direction = "Out";
			Time = 0.2;
		}, tbl_8)
	end;

	Class_result1_upvr_2({
		Size = UDim2.fromScale(1.3, 1);
		BackgroundTransparency = 0.8;
		Position = UDim2.fromScale(-0.1, 0);

		Class_result1_upvr({
			Transparency = NumberSequence.new(0, 1);
		})
	}), var47_result1_upvr({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextScaled = true;
		Text = ":  UPDATE LOGS";

		Class_result1_4({
			Color = Color3.fromRGB(47, 50, 63);
			LineJoinMode = Enum.LineJoinMode.Miter;
			Thickness = 4;
		})
	})
})
tbl_7[12] = Class_result1_upvr_2({
	BackgroundTransparency = 0;
	BackgroundColor3 = Color3.new(1, 1, 1);
	Size = UDim2.fromScale(1, 1);
	Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);

	Class_result1_upvr({
		Rotation = 90;
		Transparency = any_GetStore_result1_upvr("GradientLocation"):With(function(arg1, arg2) -- Line 1027
			if arg2 <= 0 then
				return NumberSequence.new(1)
			end
			return NumberSequence.new({NumberSequenceKeypoint.new(0, 0.7), NumberSequenceKeypoint.new(arg2, 1), NumberSequenceKeypoint.new(1 - arg2, 1), NumberSequenceKeypoint.new(1, 0.7)})
		end);
	})
})
tbl_7[13] = Class_result1_upvr_2({
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundTransparency = 0;
	Position = any_GetStore_result1_upvr("ShowLogs"):With(function(arg1, arg2) -- Line 1038
		local var228
		if arg2 then
			var228 = 0.85
		else
			var228 = 1.125
		end
		return UDim2.fromScale(var228, 0.5)
	end):Tween({
		Time = 0.2;
		Easing = "Quint";
	});
	Size = UDim2.fromScale(0.25, 0.9);
	Visible = any_GetStore_result1_upvr("LoadSent"):With(Reverse);

	Class_result1_upvr_2({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.03);
		ZIndex = 2;

		Class_result1_upvr_2({
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			Size = UDim2.fromScale(0.02, 1);
		}), Class_result1_upvr_2({
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			Size = UDim2.fromScale(1, 0.5);
		}), Class_result1_upvr_2({
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.fromScale(0.02, 1);
		})
	}), Class_result1_upvr_2({
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.03);
		ZIndex = 2;

		Class_result1_upvr_2({
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			Size = UDim2.fromScale(0.02, 1);
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			Size = UDim2.fromScale(1, 0.5);
		}), Class_result1_upvr_2({
			BackgroundColor3 = Color3.fromRGB(47, 50, 63);
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.fromScale(0.02, 1);
		})
	}), Class("ScrollingFrame")({
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.94, 0.95);
		BackgroundTransparency = 1;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		ScrollBarThickness = 0;
		CanvasSize = UDim2.new();
		[Event.CreatedAsync] = function(arg1) -- Line 1099
			--[[ Upvalues[3]:
				[1]: tbl_12_upvr (readonly)
				[2]: Mount_upvr (readonly)
				[3]: var47_result1_upvr (readonly)
			]]
			local tbl_9 = {
				Title = 0.08;
				Head = 0.05;
				Context = 0.03;
			}
			for _, v in ipairs(tbl_12_upvr) do
				Mount_upvr(arg1, var47_result1_upvr({
					BackgroundTransparency = 1;
					TextColor3 = Color3.fromRGB(47, 50, 63);
					TextScaled = true;
					Size = UDim2.fromScale(1, tbl_9[v.Type]);
					Text = v.Text;
					TextXAlignment = Enum.TextXAlignment.Left;
				}))
			end
		end;

		Class_result1_3({})
	})
})
tbl_7[14] = Class_result1_upvr_2({
	Visible = false;
	Position = any_GetStore_result1_upvr("ShowMainMenu"):With(function() -- Line 1126
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		local var251
		if any_GetStore_result1_upvr.ShowMainMenu then
			var251 = 0.1
		else
			var251 = 1
		end
		return UDim2.fromScale(0.05, var251)
	end):Tween({
		Time = 1;
		Easing = "Quint";
		Direction = "Out";
	});
	[Event("Changed")] = function(arg1, arg2) -- Line 1142
		--[[ Upvalues[1]:
			[1]: any_GetStore_result1_upvr (readonly)
		]]
		if arg2 == "Position" then
			any_GetStore_result1_upvr.LogoLocation = arg1[arg2]
		end
	end;
})
var81_upvw = Class("ScreenGui")(tbl_7)
local var254_upvr = var81_upvw
local function LoadText_upvr_upvr(arg1) -- Line 1153, Named "LoadText_upvr"
	--[[ Upvalues[1]:
		[1]: var74_upvw (read and write)
	]]
	var74_upvw.MaxVisibleGraphemes = 0
	var74_upvw.Text = arg1
	task.wait()
	local var259 = 0
	for _, _ in utf8.graphemes(var74_upvw.LocalizedText) do
		var259 += 1
		var74_upvw.MaxVisibleGraphemes = var259
		task.wait(0.02)
	end
	var74_upvw.MaxVisibleGraphemes = -1
end
local function _(arg1, arg2, arg3) -- Line 1168
	return arg1 + (arg2 - arg1) * arg3
end
local TweenService_upvr = game:GetService("TweenService")
local Tween0o_new_result1_upvr = Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
local Debris_upvr = game:GetService("Debris")
local function _() -- Line 1173, Named "SpawnDecoLines_upvr"
	--[[ Upvalues[7]:
		[1]: Class_result1_upvr_2 (readonly)
		[2]: Class_result1_upvr (readonly)
		[3]: Mount_upvr (readonly)
		[4]: var254_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: Tween0o_new_result1_upvr (readonly)
		[7]: Debris_upvr (readonly)
	]]
	local Class_result1_upvr_2_result1 = Class_result1_upvr_2({
		ZIndex = 4;
		BackgroundColor3 = Color3.new(1, 1, 1);
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(0, 0.02);
		Size = UDim2.fromScale(1, 0.003);

		Class_result1_upvr({
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(0.9, 0), NumberSequenceKeypoint.new(1, 1)});
		})
	})
	Mount_upvr(var254_upvr, Class_result1_upvr_2_result1)
	TweenService_upvr:Create(Class_result1_upvr_2_result1, Tween0o_new_result1_upvr, {
		Position = UDim2.fromScale(2, 0.02);
	}):Play()
	Debris_upvr:AddItem(Class_result1_upvr_2_result1, 1)
	local var51_result1 = Class_result1_upvr_2({
		ZIndex = 4;
		BackgroundColor3 = Color3.new(1, 1, 1);
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(1, 0.98);
		Size = UDim2.fromScale(1, 0.003);

		Class_result1_upvr({
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(0.9, 0), NumberSequenceKeypoint.new(1, 1)});
		})
	})
	Mount_upvr(var254_upvr, var51_result1)
	TweenService_upvr:Create(var51_result1, Tween0o_new_result1_upvr, {
		Position = UDim2.fromScale(-1, 0.98);
	}):Play()
	Debris_upvr:AddItem(var51_result1, 1)
end
local RunService_upvr = game:GetService("RunService")
local var277_upvw = 0
function module.Start(arg1) -- Line 1221
	--[[ Upvalues[13]:
		[1]: any_GetStore_result1_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: LoadingSound_upvr (readonly)
		[5]: CurrentCamera_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: var10_upvw (read and write)
		[8]: RunService_upvr (readonly)
		[9]: var277_upvw (read and write)
		[10]: var76_upvw (read and write)
		[11]: var77_upvw (read and write)
		[12]: var75_upvw (read and write)
		[13]: LoadText_upvr_upvr (readonly)
	]]
	any_GetStore_result1_upvr.ForceLoading = LocalPlayer_upvr:GetAttribute("ForceLoading") or true
	module_2_upvr.MainInterface.Enabled = false
	LoadingSound_upvr:Play()
	repeat
		task.wait()
	until game:IsLoaded()
	CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable
	CurrentCamera_upvr.CFrame = ReplicatedStorage_upvr:WaitForChild("Assets"):WaitForChild("StartCamera").Value
	var10_upvw = RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 1263
		--[[ Upvalues[6]:
			[1]: var277_upvw (copied, read and write)
			[2]: var76_upvw (copied, read and write)
			[3]: any_GetStore_result1_upvr (copied, readonly)
			[4]: var77_upvw (copied, read and write)
			[5]: CurrentCamera_upvr (copied, readonly)
			[6]: LoadingSound_upvr (copied, readonly)
		]]
		var277_upvw += arg1_2 * 60
		var76_upvw.Position = any_GetStore_result1_upvr.LogoLocation + UDim2.new(0.01 * math.sin(var277_upvw / 50), 0.02 * math.sin(var277_upvw / 60))
		var76_upvw.Rotation = 2 * math.sin(var277_upvw / 57)
		var77_upvw.Position = UDim2.fromScale(0.1, 0.5) + UDim2.new(0.02 * math.sin(var277_upvw / 47), 0.07 * math.sin(var277_upvw / 54))
		local var279 = var77_upvw
		var279.Rotation += (10 + 6 * math.sin(var277_upvw / 45)) * arg1_2
		local FieldOfView = CurrentCamera_upvr.FieldOfView
		CurrentCamera_upvr.FieldOfView = FieldOfView + (70 - LoadingSound_upvr.PlaybackLoudness / 80 - FieldOfView) * (arg1_2 * 30)
	end)
	local tbl_3 = {
		Images = {93078324614894, 124218619097464, 80655809326808, 6026663699, 80078149518908};
		Sounds = {};
	}
	task.wait(3)
	task.defer(function() -- Line 1286
		--[[ Upvalues[1]:
			[1]: var75_upvw (copied, read and write)
		]]
		for _ = 1, 3 do
			var75_upvw.Visible = true
			task.wait(0.05)
			var75_upvw.Visible = false
			task.wait(0.05)
		end
		var75_upvw.Visible = true
	end)
	LoadText_upvr_upvr("Preparing...")
	local _, _, _ = ipairs(module_2_upvr.MainInterface.Parent:GetDescendants())
	if not (function() -- Line 1305, Named "INLINED_3"
			return nil
		end)() and (function() -- Line 1309, Named "INLINED_4"
			return true
		end)() then return end
end
any_GetStore_result1_upvr.LoadConnection = LocalPlayer_upvr:GetAttributeChangedSignal("ForceLoading"):Once(function() -- Line 1340
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	if not any_GetStore_result1_upvr.ShowMainMenu then
		any_GetStore_result1_upvr.ForceLoading = true
	end
end)
StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
Mount_upvr(module_2_upvr.MainInterface.Parent, var254_upvr)
return module