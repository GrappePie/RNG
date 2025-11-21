require(script.Parent.Parent.AuraSkillClient)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Skills = script.Parent.Skills

local function onTitleChanged()
	local newTitle = player:GetAttribute("Title")
	if Skills:FindFirstChild(newTitle) then
		player:SetAttribute("SkillIncluded", true)
	else
		player:SetAttribute("SkillIncluded", false)
	end
end

player.AttributeChanged:Connect(function(attribute)
	if attribute == "Title" then
		onTitleChanged()
	end
end)

if player:GetAttribute("Title") then
	onTitleChanged()
end
