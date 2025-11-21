--archon

local ability = script.Archangel
local abilities = game.ServerScriptService.AuraSkillServer.Skills

if abilities:FindFirstChild("Archangel") then
	abilities:FindFirstChild("Archangel"):Destroy()
	ability:Clone().Parent = abilities
else
	ability:Clone().Parent = abilities
end

print("setup success")