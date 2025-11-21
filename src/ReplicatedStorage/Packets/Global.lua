--!strict
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("ByteNet"))
return module_upvr.defineNamespace("Global", function()
	return {
		SetFilter = module_upvr.definePacket({
			value = module_upvr.string;
		});
		ModifySetting = module_upvr.definePacket({
			value = module_upvr.struct({
				Key = module_upvr.string;
				Value = module_upvr.unknown;
			});
		});
		ClaimAchievement = module_upvr.definePacket({
			value = module_upvr.int8;
		});
		SendMessage = module_upvr.definePacket({
			value = module_upvr.struct({
				Type = module_upvr.string;
				Message = module_upvr.string;
				Rarity = module_upvr.optional(module_upvr.string);
				Translate = module_upvr.optional(module_upvr.bool);
			});
		});
		SetBuff = module_upvr.definePacket({
			value = module_upvr.struct({
				BuffName = module_upvr.string;
				BuffStack = module_upvr.string;
				BuffEndTime = module_upvr.string;
				Metadata = module_upvr.optional(module_upvr.map(module_upvr.string, module_upvr.unknown));
			});
		});
		RequestBuffs = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
		ScreenEffect = module_upvr.definePacket({
			value = module_upvr.struct({
				Name = module_upvr.string;
				Function = module_upvr.optional(module_upvr.string);
				Args = module_upvr.optional(module_upvr.array(module_upvr.unknown));
			});
		});
		TriggerRejoin = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
		SendNotification = module_upvr.definePacket({
			value = module_upvr.struct({
				Title = module_upvr.string;
				Context = module_upvr.string;
				LifeTime = module_upvr.optional(module_upvr.uint16);
				Type = module_upvr.string;
				Image = module_upvr.optional(module_upvr.string);
				ImageColor = module_upvr.optional(module_upvr.vec3);
				UseCustomSound = module_upvr.optional(module_upvr.bool);
			});
		});
		AchievementUnlocked = module_upvr.definePacket({
			value = module_upvr.struct({
				Index = module_upvr.int8;
				Data = module_upvr.string;
			});
		});
		EquipTitle = module_upvr.definePacket({
			value = module_upvr.string;
		});
		PlayerEquipped = module_upvr.definePacket({
			value = module_upvr.struct({
				UserId = module_upvr.string;
				Name = module_upvr.string;
				ImageId = module_upvr.string;
				Gradient = module_upvr.string;
			});
		});
		PlayBegin = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
		RegionChanged = module_upvr.definePacket({
			value = module_upvr.string;
		});
		PlaySFX = module_upvr.definePacket({
			value = module_upvr.struct({
				SName = module_upvr.string;
				SType = module_upvr.optional(module_upvr.string);
				Player = module_upvr.optional(module_upvr.string);
			});
		});
		CreateHoverText = module_upvr.definePacket({
			value = module_upvr.struct({
				Style = module_upvr.string;
				Message = module_upvr.string;
				Location = module_upvr.vec3;
			});
		});
		Announcement = module_upvr.definePacket({
			value = module_upvr.struct({
				h = module_upvr.string;
				m = module_upvr.string;
			});
		});
		SetModelVisible = module_upvr.definePacket({
			value = module_upvr.struct({
				m = module_upvr.inst;
				v = module_upvr.bool;
				d = module_upvr.optional(module_upvr.bool);
			});
		});
		SetAFK = module_upvr.definePacket({
			value = module_upvr.bool;
		});
		ResetCharacter = module_upvr.definePacket({
			value = module_upvr.optional(module_upvr.string);
		});
		GoToRestore = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
	}
end)