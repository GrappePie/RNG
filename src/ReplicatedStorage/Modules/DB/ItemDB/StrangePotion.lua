-- What the sigma?

if game:GetService("RunService"):IsClient() then
	return function()
		return ""
	end
end
game:GetService("ServerScriptService")
local v1 = game:GetService("ServerStorage")
local v2 = game:GetService("ReplicatedStorage")
local v3 = v1:WaitForChild("ModuleScripts")
v3:WaitForChild("DB")
local v_u_4 = require(v3:WaitForChild("DataStore"))
local v_u_5 = require(v3:WaitForChild("Buff"))
v2:WaitForChild("Remotes"):WaitForChild("Notification")
local v_u_6 = v1:WaitForChild("Events"):WaitForChild("StrangePotion1CoolDownStart")
local v_u_7 = v1:WaitForChild("Events"):WaitForChild("StrangePotion2CoolDownStart")
return function(p8, p9, p10)
	-- upvalues: (copy) v_u_4, (copy) v_u_5, (copy) v_u_6, (copy) v_u_7
	if p10 == 1 then
		local v11 = v_u_4.GetStore(p8, true).StrangePotion1CoolDown
		if 1 <= v11 then
			return ("Strange Potion I cool down: %* : %* left"):format(v11 // 60, v11 % 60)
		end
		local v12 = {
			"The Chosen",
			"The Power I",
			"The Knowledge I",
			"The Wrath I",
			"The Sloth I"
		}
		local v13 = v12[math.random(1, #v12)]
		v_u_5.AddBuff(p8, v13, 300 * p9, 1, false, true)
		v_u_6:Fire(p8, 300 * p9)
		return
	elseif p10 == 2 then
		local v14 = v_u_4.GetStore(p8, true).StrangePotion2CoolDown
		if 1 <= v14 then
			return ("Strange Potion II cool down: %* : %* left"):format(v14 // 60, v14 % 60)
		end
		local v15 = {
			"GODLIKE",
			"The Power II",
			"The Knowledge II",
			"The Wrath II",
			"The Sloth II"
		}
		local v16 = v15[math.random(1, #v15)]
		v_u_5.AddBuff(p8, v16, 300 * p9, 1, false, true)
		v_u_7:Fire(p8, 300 * p9)
	else
		p8:Kick("Error Code : 3434")
	end
end