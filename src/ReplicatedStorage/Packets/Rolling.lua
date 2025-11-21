-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 21:36:37
-- Luau version 6, Types version 3
-- Time taken: 0.000977 seconds

local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("ByteNet"))
return module_upvr.defineNamespace("Rolling", function() -- Line 9
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return {
		ResetDelay = module_upvr.definePacket({
			value = module_upvr.struct({
				NextRollable = module_upvr.float64;
				RollDelay = module_upvr.float64;
			});
		});
		SendResponse = module_upvr.definePacket({
			value = module_upvr.int8;
		});
		SendResult = module_upvr.definePacket({
			value = module_upvr.struct({
				Value = module_upvr.string;
				Rarity = module_upvr.string;
				FromWhat = module_upvr.string;
				Bypassed = module_upvr.bool;
				PlayCutscene = module_upvr.bool;
			});
		});
		RollEffect = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
		ClientLoaded = module_upvr.definePacket({
			value = module_upvr.nothing;
		});
		PlayScene = module_upvr.definePacket({
			value = module_upvr.struct({
				Value = module_upvr.string;
				Rarity = module_upvr.string;
			});
		});
	}
end)
