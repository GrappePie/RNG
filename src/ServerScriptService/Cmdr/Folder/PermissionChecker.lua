-- What the sigma?

local v_u_1 = game:GetService("RunService"):IsServer()
local v_u_2 = game.PlaceId == 15662116912
local v_u_3 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("RemoteFunction")).new("Permission")
local v_u_4
if v_u_1 then
	v_u_4 = require(game:GetService("ServerStorage"):WaitForChild("ModuleScripts"):WaitForChild("DB"):WaitForChild("Admins"))
	function v_u_3.Event(p5)
		-- upvalues: (ref) v_u_4
		return table.find(v_u_4, p5.UserId) ~= nil
	end
else
	v_u_4 = nil
end
local v_u_6 = {
	["Dev"] = 253,
	["Mod"] = 243,
	["Admin"] = 245,
	["Debug"] = v_u_2 and 240,
	["Help"] = v_u_2 and 240
}
local v_u_7 = {
	["giveItem"] = v_u_2 and 240 or v_u_6.Admin,
	["equipAura"] = v_u_2 and 240 or v_u_6.Mod
}
return function(p8)
	-- upvalues: (copy) v_u_1, (ref) v_u_4, (copy) v_u_3, (copy) v_u_7, (copy) v_u_6, (copy) v_u_2
	p8:RegisterHook("BeforeRun", function(p9)
		-- upvalues: (ref) v_u_1, (ref) v_u_4, (ref) v_u_3, (ref) v_u_7, (ref) v_u_6, (ref) v_u_2
		local v10 = ((not v_u_1 or table.find(v_u_4, p9.Executor.UserId) == nil) and true or false) and not v_u_1
		if v10 then
			v10 = v_u_3:Fire()
		end
		if not v10 then
			local v11 = p9.Executor:GetAttribute("GroupRank")
			local v12 = (v_u_7[p9.Name] or v_u_6[p9.Group] or v_u_6.Dev) <= v11
			if v_u_2 and v11 < 240 or not v12 then
				return "You don\'t have permission to run this command"
			end
		end
	end)
end