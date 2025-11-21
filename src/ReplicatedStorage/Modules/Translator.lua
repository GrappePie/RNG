local module = {}
local LocalizationService_upvr = game:GetService("LocalizationService")
local var3_upvw
local var4_upvw
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local pcall_result1_2_upvr = pcall(function() -- Line 12
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: LocalizationService_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	var3_upvw = LocalizationService_upvr:GetTranslatorForPlayerAsync(LocalPlayer_upvr)
end)
local pcall_result1_3_upvr = pcall(function() -- Line 15
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: LocalizationService_upvr (readonly)
	]]
	var4_upvw = LocalizationService_upvr:GetTranslatorForLocaleAsync("en")
end)
function module.setLanguage(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: LocalizationService_upvr (readonly)
		[2]: var3_upvw (read and write)
	]]
	if arg1 ~= "en" then
		local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 22
			--[[ Upvalues[2]:
				[1]: LocalizationService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return LocalizationService_upvr:GetTranslatorForLocaleAsync(arg1)
		end)
		if pcall_result1_4 and pcall_result2_2 then
			var3_upvw = pcall_result2_2
			return true
		end
	end
	return false
end
function module.translate(arg1, arg2) -- Line 37
	--[[ Upvalues[4]:
		[1]: pcall_result1_2_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: pcall_result1_3_upvr (readonly)
		[4]: var4_upvw (read and write)
	]]
	if not arg2 then
		local game = game
	end
	if pcall_result1_2_upvr then
		return var3_upvw:Translate(game, arg1)
	end
	if pcall_result1_3_upvr then
		return var4_upvw:Translate(game, arg1)
	end
	return false
end
function module.translateByKey(arg1, arg2) -- Line 52
	--[[ Upvalues[4]:
		[1]: pcall_result1_2_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: pcall_result1_3_upvr (readonly)
		[4]: var4_upvw (read and write)
	]]
	local var17_upvw = ""
	local var18
	if pcall_result1_2_upvr then
		var18 = pcall(function() -- Line 58
			--[[ Upvalues[4]:
				[1]: var17_upvw (read and write)
				[2]: var3_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
			]]
			var17_upvw = var3_upvw:FormatByKey(arg1, arg2)
		end)
	end
	if pcall_result1_3_upvr and not var18 then
		var18 = pcall(function() -- Line 63
			--[[ Upvalues[4]:
				[1]: var17_upvw (read and write)
				[2]: var4_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
			]]
			var17_upvw = var4_upvw:FormatByKey(arg1, arg2)
		end)
	end
	if var18 then
		return var17_upvw
	end
	return false
end
return module