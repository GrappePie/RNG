--!strict
local httpservice = game:GetService("HttpService")

local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)	

local skills = script:FindFirstChild("Skills")

local skillLimits = {
	--[[
		Example_Player = {
			["Archangel"] = {
				["AuraCooltime"] = 1734481190.739416,
				["AuraDelaytime"] = 60,
				["Toggled"] = true
			},
			-- & So on..
		}
	]]
}

local skillConfig = {
	["Archangel"] = {
		["AuraCooltime"] = -1,
		["AuraDelaytime"] = 60,
		["Toggled"] = false
	},
	["Overture"] = {
		["AuraCooltime"] = -1,
		["AuraDelaytime"] = 5,
		["Toggled"] = false
	},
	["Watermelon"] = {
		["AuraCooltime"] = -1,
		["AuraDelaytime"] = 10,
		["Toggled"] = false
	},
	["赤い満月"] = {
		["AuraCooltime"] = -1,
		["AuraDelaytime"] = 60,
		["Toggled"] = false
	}
}

local setLimits = function(Player): ()
	skillLimits[Player] = skillConfig
end
local setLimit = function(Player, EquippedAura, AuraCooltime, AuraDelaytime, Toggled): ()
	if ((not Player) or (not Player:IsA("Player"))) or (EquippedAura == nil) then return end

	if skillLimits[Player] == nil then
		skillLimits[Player] = skillConfig
	end

	local currentAuraCooldowns = Player:GetAttribute("AuraCooldowns")
	if currentAuraCooldowns ~= nil then
		skillLimits[Player] = httpservice:JSONDecode(currentAuraCooldowns)
	end

	skillLimits[Player][EquippedAura] = {
		["AuraCooltime"] = (AuraCooltime or workspace:GetServerTimeNow()) or -1,
		["AuraDelaytime"] = (AuraDelaytime or (skillConfig[EquippedAura]["AuraDelaytime"] or 5)) or -1,
		["Toggled"] = ((Toggled == nil or Toggled == true) or (Toggled ~= false)) or false
	}

	Player:SetAttribute(
		"AuraCooldowns",
		httpservice:JSONEncode(skillLimits[Player])
	)
	Player:SetAttribute(
		"AuraCooltime",
		(
			workspace:GetServerTimeNow() + AuraDelaytime
		)
	)
	Player:SetAttribute(
		"AuraDelaytime",
		AuraDelaytime
	)
end

game.ReplicatedStorage.Remotes.AuraAbilityRemote.OnServerEvent:Connect(function(Player, what, what1, what2)
	--local data = datastore.GetStore(plr, true)
	print(Player, what, what1, what2)
	local HandleAbility
	HandleAbility = function(): ()
		task.wait()

		local EquippedAura = Player:GetAttribute("Title")
		if skills:FindFirstChild(EquippedAura) then
			print("yp")
			local skillDelaytime = skillConfig[EquippedAura]["AuraDelaytime"] or 5
			local skillCooltime = (workspace:GetServerTimeNow() + skillDelaytime) or 0

			if skillLimits[Player] ~= nil and (skillLimits[Player][EquippedAura]["Toggled"] == false) then
				print("a")
				local AuraCooltime = Player:GetAttribute("AuraCooltime")
				local AuraDelaytime = Player:GetAttribute("AuraDelaytime")

				setLimit(
					Player,
					EquippedAura,
					skillCooltime,
					skillDelaytime,
					true
				)

				coroutine.wrap(function()
					game.ReplicatedStorage.Remotes.AuraAbilityRemote:FireClient(Player, EquippedAura)	

					local heh = require(skills:FindFirstChild(EquippedAura).Server :: ModuleScript) :: any
					heh.Ability(Player)

					task.wait(skillDelaytime)

					setLimit(
						Player,
						EquippedAura,
						0,
						0,
						false
					)
				end)()

				return true
			elseif skillLimits[Player] ~= nil and (skillLimits[Player][EquippedAura]["Toggled"] == true) then
				print("D:")
				return "Player is on an ability cooldown for this aura."
			elseif skillLimits[Player] == nil then
				setLimits(
					Player
				)

				task.wait()

				HandleAbility()
				--return "Loading Player into Skill Table"
				print("AAAAAAAAAAAAAAAAAAAAA")
			else
				print("HUH?")
				return error("Unknown error occurred. Contact Developers to fix this ASAP.")
			end
			print("YO")
		end
		print("WOA")
	end
	HandleAbility()
end)

-- genesis ability below
local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local function createPortal(cframe: CFrame, rotation, owner)
	local Explosion = ReplicatedStorage.Assets.VFXS.Genesis.Explosion:Clone()
	Explosion.CFrame = cframe * rotation

	Explosion.Parent = Workspace

	Explosion.Cracks1.Playing = true
	Explosion.Shock1D.Playing = true
	Explosion.Smokes1.Playing = true
	Explosion.Smokes2.Playing = true
	Explosion.Attachment.Melody.Playing = true
	Explosion.Melody1.Playing = true
	Explosion.Melody2.Playing = true
	Explosion.StarIn.Playing = true
	Explosion.StarIn2.Playing = true
	Explosion.Whirl.Playing = true
	Explosion.Winds.Playing = true
	Explosion.Cracks2.Playing = true
	Explosion.Shock1.Playing = true
	Explosion.Shock2.Sound.Playing = true

	local function onTouch(other)
		local player = game.Players:GetPlayerFromCharacter(other.Parent) 
		if player and player ~= owner then
			local humanoid = other.Parent:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid.Health = 50
			end
		end
	end

	Explosion.Touched:Connect(onTouch)

	task.delay(0, function()
		--[[for i, v in Explosion:GetChildren() do

		end]]
		task.wait(6)
		Explosion:Destroy()
	end)
end

function module.Ability(plr)
	local character = plr.Character

	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

	if not humanoidRootPart then return end

	humanoidRootPart.Anchored = true

	task.wait(6)

	humanoidRootPart.Anchored = false
end

return module
-- genesis end