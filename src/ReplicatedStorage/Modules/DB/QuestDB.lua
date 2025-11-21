-- What the sigma?

local function v4(p1)
	if type(p1) == "table" then
		local v2 = {}
		for _, v3 in p1 do
			table.insert(v2, {
				["Text"] = v3,
				["EndDelay"] = 2
			})
		end
		return v2
	end
	if type(p1) == "string" then
		return {
			{
				["Text"] = p1,
				["EndDelay"] = 0.2
			}
		}
	end
end
local v5 = {
	{
		["ButtonText"] = "[Accept]",
		["ButtonColor3"] = Color3.fromRGB(0, 149, 0),
		["Result"] = "Accept"
	},
	{
		["ButtonText"] = "[Decline]",
		["ButtonColor3"] = Color3.fromRGB(165, 0, 0),
		["Result"] = "Quit"
	}
}
local v6 = {
	["Name"] = "Stella"
}
local v7 = {
	["Model"] = workspace.Map.newMap.etc.Stella
}
local v8 = workspace.Map.newMap.etc.Stella:WaitForChild("Head")
v7.CameraCFrame = CFrame.lookAt((v8.CFrame * CFrame.new(0, 0, -3)).Position, v8.Position)
v6.ViewportData = v7
local v9 = {}
local v10 = {
	["npc"] = workspace.Map.newMap.etc.Stella,
	["alreadyFinished"] = {
		["Speaker"] = v6,
		["Contexts"] = v4("You\'ve already completed all my quests.")
	},
	["notYetFinished"] = {
		["Speaker"] = v6,
		["Contexts"] = v4("You haven\'t completed my quest yet.")
	}
}
local v11 = {}
local v12 = {
	["questName"] = "Stella\'s request",
	["dialogues"] = {
		["Speaker"] = v6,
		["Contexts"] = v4({
			"Hey! Can you help me while you\'re here?",
			"I lost my magical ingredient while using teleportation magic.",
			"It looks like a star shape with a shining moon in the middle.",
			"I\'d appreciate it if you could find it. As a reward, I\'ll create a portal near the entrance of the mine that leads directly to my location."
		}),
		["Choices"] = v5
	},
	["completeDialogues"] = {
		["Speaker"] = v6,
		["Contexts"] = v4({ "Thank you.", "As promised, I\'ve created a portal for you." })
	},
	["questDescription"] = "Let\'s Find her magical ingredient",
	["requirements"] = {
		{
			"item",
			"Stella\'s star",
			1,
			"Collect Stella\'s star."
		}
	},
	["rewards"] = {
		["unlock"] = "CaveShortcut"
	}
}
table.insert(v11, 1, {v12})
v10.quests = v11
v9.Stella = v10
local v13 = {
	["npc"] = workspace.Map.newMap.etc.Stella,
	["dialogues"] = {
		["Speaker"] = v6,
		["Contexts"] = v4({
			"Hey! Can you help me while you\'re here?",
			"I lost my magical ingredient while using teleportation magic.",
			"It looks like a star shape with a shining moon in the middle.",
			"Oh wait you already have my star?",
			"Thank you, I\'ll create the portal for you."
		})
	},
	["rewards"] = {
		["unlock"] = "CaveShortcut"
	}
}
v9.StellaAlreadyCollectedStar = v13
return v9