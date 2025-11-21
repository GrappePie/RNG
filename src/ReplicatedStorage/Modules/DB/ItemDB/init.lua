local l_fromRGB_0 = Color3.fromRGB;
local l_fromHex_0 = Color3.fromHex;
local l_RunService_0 = game:GetService("RunService");
local l_ServerStorage_0 = game:GetService("ServerStorage");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_ItemPreviewModels_0 = l_ReplicatedStorage_0:WaitForChild("ItemPreviewModels");
local l_Potions_0 = l_ItemPreviewModels_0:WaitForChild("Potions");
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local v8 = l_RunService_0:IsServer();
local function v9()

end;
local v10 = if v8 then l_ServerStorage_0:WaitForChild("Tools") else setmetatable({}, {
	__index = function()
		return v9;
	end
});
local v11 = if v8 then game:GetService("ServerStorage"):WaitForChild("ModuleScripts") else nil;
local v12 = if v8 then require(v11:WaitForChild("DataStore")) else nil;
local v13 = if v8 then require(v11:WaitForChild("Buff")) else nil;
local function v18(v14, v15)
	for v16, _ in {
		["Rune of Corruption"] = true, 
		["Rune of Wind"] = true, 
		["Rune of Rainstorm"] = true, 
		["Rune of Hell"] = true, 
		["Rune of Frost"] = true, 
		["Rune of Nothing"] = true, 
		["Rune of Galaxy"] = true, 
		["Rune of Everything"] = true, 
		[v14] = nil
		} do
		if v15[v16][1] > 0 then
			return (("%* is already in use, no other type of Rune is available"):format(v16));
		end;
	end;
end;
local v20 = {
	Play = function(_)
		l_SFXs_0.DrinkPotion:Play();
		l_SFXs_0.DefaultItemUse:Play();
	end
};
return {
	["Word's hat"] = {
		TextColor = l_fromHex_0("00AAFF"), 
		Description = "word is not toto", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Word's hat")
	}, 
	["Stella's star"] = {
		TextColor = l_fromRGB_0(224, 255, 166), 
		Description = "The star Stella lost.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("StellaStar")
	}, 
	["test item"] = {
		TextColor = l_fromHex_0("00AAFF"), 
		Description = "I love sun, moon, and star.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("test item"), 
		Tool = v10:WaitForChild("test item"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["XC' Signature"] = {
		TextColor = l_fromHex_0("FFFFFF"), 
		Description = "...", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Signature"), 
		Tool = v10:WaitForChild("Signature"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["Adele Doll"] = {
		TextColor = l_fromHex_0("FFFFFF"), 
		Description = "...", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Adele"), 
		Tool = v10:WaitForChild("Adele"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["MandooMon Doll"] = {
		TextColor = l_fromHex_0("FFFFFF"), 
		Description = "...", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("MandooDoll"), 
		Tool = v10:WaitForChild("MandooDoll"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["test item(left)"] = {
		TextColor = l_fromHex_0("00AAFF"), 
		Description = "I love sun, moon, and star.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("test item"), 
		Tool = v10:WaitForChild("test item(right)"), 
		Equipable = true, 
		GearType = "Left"
	}, 
	["shoney pillow"] = {
		TextColor = Color3.fromRGB(61, 139, 255), 
		Description = "The end of a Samsung engineer. This might give you some luck....", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("ShoneyPillow"), 
		Tool = v10:WaitForChild("shoney pillow"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["dwjk pillow"] = {
		TextColor = Color3.fromRGB(178, 228, 255), 
		Description = ".", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("DwjkPillow"), 
		Tool = v10:WaitForChild("dwjk pillow"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["Subspace Tripmine"] = {
		TextColor = Color3.fromRGB(255, 0, 212), 
		Description = "Powerful.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("SubspaceTripmine"), 
		Tool = v10:WaitForChild("SubspaceTripmine"), 
		Equipable = true, 
		GearType = "Right", 
		PlayAnimation = true
	}, 
	["Gear Basing"] = {
		TextColor = l_fromRGB_0(91, 93, 105), 
		Description = "Very important material for base crafting.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Gear Basing")
	}, 
	["Luck Glove"] = {
		TextColor = l_fromRGB_0(91, 93, 105), 
		Description = "A glove with a really simple structure.<br /><font color=\"rgb(84,252,124)\"><b>+25% Base Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Luck Glove"), 
		Tool = v10:WaitForChild("Luck Glove"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Lunar Device"] = {
		TextColor = l_fromRGB_0(125, 121, 255), 
		Description = "<font color=\"rgb(148,106,255)\"><b>Stillness</b></font> clears your mind.<br /><font color=\"rgb(84,252,205)\"><b>+15% Roll Speed</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Lunar Device"), 
		Tool = v10:WaitForChild("Lunar Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Solar Device"] = {
		TextColor = l_fromRGB_0(255, 170, 110), 
		Description = "<font color=\"rgb(255,169,18)\"><b>The Heat</b></font> straightens your spirit.<br /><font color=\"rgb(84,252,124)\"><b>+50% Base Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Solar Device"), 
		Tool = v10:WaitForChild("Solar Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Eclipse Device"] = {
		TextColor = l_fromRGB_0(213, 115, 61), 
		Description = "The faint <font color=\"rgb(0,0,0)\"><b><stroke color=\"#FF8812\" joins=\"miter\" thickness=\"1\" transparency=\"0.25\">Light of the Eclipse</stroke></b></font> surrounds you.<br /><font color=\"rgb(84,252,124)\"><b>+50% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+15% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Eclipse Device"), 
		Tool = v10:WaitForChild("Eclipse Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Jackpot Gauntlet"] = {
		TextColor = l_fromRGB_0(239, 184, 56), 
		Description = "Always <font color=\"rgb(255,207,92)\"><b>bet</b></font> on yourself<br /><font color=\"rgb(84,252,124)\"><b>+77% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+7% Roll Speed</b></font><br /><font color=\"rgb(255,207,92)\"><b>[Jackpot]</b></font>: <font color=\"rgb(255,207,92)\"><u><b>+77 Cash</b></u></font> when you hit the <font color=\"rgb(255,207,92)\"><b>Jackpot</b></font>.<br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Jackpot Gauntlet"), 
		Tool = v10:WaitForChild("Jackpot Gauntlet"), 
		Equipable = true, 
		GearType = "Left"
	}, 
	["Exo Gauntlet"] = {
		TextColor = l_fromRGB_0(114, 201, 255), 
		Description = "<b><font color=\"rgb(255,92,112)\">Exotic Power</font></b>  enhances you.<br /><font color=\"rgb(84,252,124)\"><b>+100% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+20% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Exo Gauntlet"), 
		Tool = v10:WaitForChild("Exo Gauntlet"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Galactic Device"] = {
		TextColor = l_fromRGB_0(140, 91, 159), 
		Description = "The device is composed with the <font color=\"rgb(12,9,25)\"><b><stroke color=\"rgb(121,92,255)\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">Power of Galaxy</stroke></b></font>.<br /><font color=\"rgb(84,252,124)\"><b>+250% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+30% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Galactic Device"), 
		Tool = v10:WaitForChild("Galactic Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Subzero Device"] = {
		TextColor = l_fromRGB_0(110, 153, 202), 
		Description = "The device even <b><font color=\"rgb(153,227,255)\">Freezes</font></b> your <font color=\"rgb(230,184,255)\"><b>Spirit</b></font>.<br /><font color=\"rgb(84,252,124)\"><b>+150% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+30% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Subzero Device"), 
		Tool = v10:WaitForChild("Subzero Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Gravitational Device"] = {
		TextColor = l_fromRGB_0(98, 37, 209), 
		Description = "The device provides you with <font color=\"rgb(0,0,0)\"><b><stroke color=\"rgb(186,87,255)\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">Unstable Gravity</stroke></b></font>.<br />2 -> 6 <font color=\"rgb(75,123,255)\"><b>Bonus Roll Multiply</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b>Basic Buff</b></font> ) x <font color=\"rgb(75,123,255)\"><b><u>Bonus Roll</u></b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Gravitational Device"), 
		Tool = v10:WaitForChild("Gravitational Device"), 
		Equipable = true, 
		GearType = "Left"
	}, 
	["Windstorm Device"] = {
		TextColor = l_fromRGB_0(93, 164, 165), 
		Description = "The <b><font color=\"rgb(125,255,193)\">Storm Winds</font></b> around you.<br /><font color=\"rgb(84,252,124)\"><b>+115% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+25% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Windstorm Device"), 
		Tool = v10:WaitForChild("Windstorm Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Volcanic Device"] = {
		TextColor = l_fromRGB_0(255, 67, 1), 
		Description = "A device that simulates <font color=\"rgb(255,12,12)\"><b>100%</b></font> of <font color=\"rgb(0,0,0)\"><b><stroke color=\"rgb(255,50,50)\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">Hell\226\128\153s Heats</stroke></b></font>.<br /><font color=\"rgb(84,252,124)\"><b>+290% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+35% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Volcanic Device"), 
		Tool = v10:WaitForChild("Volcanic Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Exoflex Device"] = {
		TextColor = l_fromRGB_0(255, 255, 255), 
		Description = "A device that will make your <font color=\"rgb(0,0,0)\"><b><stroke color=\"#FF443B\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">Exotic Destiny</stroke></b></font> even more <font color=\"rgb(255,213,118)\"><b>Brilliant</b></font>..<br /><font color=\"rgb(84,252,124)\"><b>+340% Base Luck</b></font> | <font color=\"rgb(84,252,205)\"><b>+35% Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Exoflex Device"), 
		Tool = v10:WaitForChild("Exoflex Device"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Flesh Device"] = {
		TextColor = l_fromRGB_0(93, 89, 217), 
		Description = "A device that <font color=\"rgb(174,0,0)\"><b>Came to Life</b></font> due to a <font color=\"rgb(0,0,0)\"><b><stroke color=\"#12018D\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">Curse</stroke></b></font>.<br/><br />This device makes the <b><font color=\"rgb(75,123,255)\">Bonus Roll</font></b> apply to <b><font color=\"#AD65FF\">Every Rolls</font></b>.<br/>However, this also <font color=\"rgb(167,51,51)\"><b>Reduces</b></font> the <b><font color=\"rgb(75,123,255)\">Bonus Roll Multiplier</font></b> to <font color=\"#FFAB81\"><b>1.3</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b>Basic Buff</b></font> ) x <font color=\"rgb(75,123,255)\"><b><u>Bonus Roll</u></b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Flesh Device"), 
		Tool = v10:WaitForChild("Flesh Device"), 
		Equipable = true, 
		GearType = "Left", 
		Angle = CFrame.Angles(3.141592653589793, 3.141592653589793, 3.141592653589793)
	}, 
	["Pump Punch Gauntlet"] = {
		TextColor = l_fromRGB_0(255, 136, 0), 
		Description = "<font color=\"rgb(91,57,13)\"><stroke color=\"rgb(248,154,35)\" thickness=\"1.2\" transparency=\"0\"><b>PUMP PUNCH!!</b></stroke></font> gonna break you. ", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Pump Punch Gauntlet"), 
		Tool = v10:WaitForChild("Pump Punch Gauntlet"), 
		Equipable = true, 
		GearType = "Right", 
		Angle = CFrame.Angles(3.141592653589793, 3.141592653589793, 3.141592653589793)
	}, 
	["Archangel Glove"] = {
		TextColor = l_fromRGB_0(255, 235, 119), 
		Description = "PLACEHOLDER.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("AngelGlove"), 
		Tool = v10:WaitForChild("ArchangelGlove"), 
		Equipable = true, 
		GearType = "Right"
	}, 
	["Lucky Potion"] = {
		TextColor = l_fromRGB_0(114, 191, 94), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>1 minute</b></font> of <font color=\"rgb(120,255,127)\"><b>[Lucky]</b></font> <br /><b><font color=\"rgb(120,255,127)\">[Lucky]</font></b>: +100% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Lucky Potion"), 
		Use = function(v21, v22)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v21, "Lucky Potion", v22);
			v13.AddBuff(v21, "Lucky", 60 * v22, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Lucky Potion L"] = {
		TextColor = l_fromRGB_0(114, 191, 94), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>5 minutes</b></font> of <font color=\"rgb(120,255,127)\"><b>[Lucky]</b></font> <br /><b><font color=\"rgb(120,255,127)\">[Lucky]</font></b>: +100% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("LargeLuckPotion"), 
		Use = function(v23, v24)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v23, "Lucky Potion L", v24);
			v13.AddBuff(v23, "Lucky", 300 * v24, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Lucky Potion XL"] = {
		TextColor = l_fromRGB_0(114, 191, 94), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(120,255,127)\"><b>[Lucky]</b></font> <br /><b><font color=\"rgb(120,255,127)\">[Lucky]</font></b>: +100% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("XL Luck"), 
		Use = function(v25, v26)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v25, "Lucky Potion XL", v26);
			v13.AddBuff(v25, "Lucky", 600 * v26, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Speed Potion"] = {
		TextColor = l_fromRGB_0(110, 153, 202), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>30 seconds</b></font> of <b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b> <br /><b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b>: +25% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Speed Potion"), 
		Use = function(v27, v28)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v27, "Speed Potion", v28);
			v13.AddBuff(v27, "QuickRoll", 30 * v28, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Speed Potion L"] = {
		TextColor = l_fromRGB_0(110, 153, 202), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>5 minutes</b></font> of <b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b> <br /><b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b>: +25% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("LargeSpeedPotion"), 
		Use = function(v29, v30)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v29, "Speed Potion L", v30);
			v13.AddBuff(v29, "QuickRoll", 300 * v30, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Speed Potion XL"] = {
		TextColor = l_fromRGB_0(110, 153, 202), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b> <br /><b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b>: +25% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("XL Speed"), 
		Use = function(v31, v32)
			l_ServerStorage_0:WaitForChild("Events"):WaitForChild("ItemUsed"):Fire(v31, "Speed Potion XL", v32);
			v13.AddBuff(v31, "QuickRoll", 600 * v32, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Fortune Spoid I"] = {
		TextColor = l_fromRGB_0(124, 227, 98), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>1 minute</b></font> of <font color=\"#63BF71\"><b>[Fortune I]</b></font> <br /><b><font color=\"#63BF71\">[Fortune I]</font></b>: +150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("FortuneSpoid"), 
		Use = function(v33, v34)
			local l_Buffs_0 = v12.GetStore(v33, true).Buffs;
			if l_Buffs_0["Fortune II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_0["Fortune III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v33, "Fortune I", 60 * v34, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Fortune Spoid II"] = {
		TextColor = l_fromRGB_0(124, 227, 98), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>1 minute</b></font> of <font color=\"#4A9055\"><b>[Fortune II]</b></font> <br /><b><font color=\"#4A9055\">[Fortune II]</font></b>: +200% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("FortuneSpoid2"), 
		Use = function(v36, v37)
			local l_Buffs_1 = v12.GetStore(v36, true).Buffs;
			if l_Buffs_1["Fortune I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_1["Fortune III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v36, "Fortune II", 60 * v37, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Fortune Spoid III"] = {
		TextColor = l_fromRGB_0(124, 227, 98), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>1 minute</b></font> of <font color=\"#386C40\"><b>[Fortune III]</b></font> <br /><b><font color=\"#386C40\">[Fortune III]</font></b>: +250% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("FortuneSpoid3"), 
		Use = function(v39, v40)
			local l_Buffs_2 = v12.GetStore(v39, true).Buffs;
			if l_Buffs_2["Fortune I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_2["Fortune II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v39, "Fortune III", 60 * v40, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Strange Potion I"] = {
		TextColor = l_fromRGB_0(106, 92, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"#000000\"><b><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">[???]</stroke></b></font> <br /><b><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\"><font color=\"#000000\">[???]</font></stroke></b>: Gives you a <stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b><sc><font color=\"#000000\">Random Blessing / Curse</font></sc></b></stroke> from <b><font color=\"#291B38\"><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">{The List}</stroke></font></b><br /><b><font color=\"#291B38\"><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">{The List}</stroke></font></b><br /><b><font color=\"#38111F\"><stroke color=\"#FF0059\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">[The Chosen]</stroke></font></b>: +150% <b><font color=\"rgb(84,252,124)\">Luck</font></b> | +30% <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><b><font color=\"rgb(138,47,255)\">[The Power]</font></b>: +150% <b><font color=\"rgb(84,252,124)\">Luck</font></b><br /><b><font color=\"rgb(78,47,255)\">[The Knowledge]</font></b>: +30% <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><b><font color=\"rgb(107,56,127)\">[The Wrath]</font></b>: <font color=\"rgb(255,28,51)\">-50%</font> <b><font color=\"rgb(84,252,124)\">Luck</font></b><br /><b><font color=\"rgb(52,42,82)\">[The Sloth]</font></b>: <font color=\"rgb(255,28,51)\">-15%</font> <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("Strange1"), 
		Use = function(v42, v43)
			return require(script.StrangePotion)(v42, v43, 1);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Strange Potion II"] = {
		TextColor = l_fromRGB_0(106, 92, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"#000000\"><b><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">[!!!]</stroke></b></font> <br /><b><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\"><font color=\"#000000\">[!!!]</font></stroke></b>: Gives you a <stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b><sc><font color=\"#000000\">Random Blessing / Curse</font></sc></b></stroke> from <b><font color=\"#291B38\"><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">{The List II}</stroke></font></b><br /><b><font color=\"#291B38\"><stroke color=\"#932CFF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">{The List II}</stroke></font></b><br /><b><font color=\"#38111F\"><stroke color=\"#FF0059\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">[GODLIKE]</stroke></font></b>: +250% <b><font color=\"rgb(84,252,124)\">Luck</font></b> | +40% <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><b><font color=\"rgb(138,47,255)\">[The Power II]</font></b>: +250% <b><font color=\"rgb(84,252,124)\">Luck</font></b><br /><b><font color=\"rgb(78,47,255)\">[The Knowledge II]</font></b>: +40% <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><b><font color=\"rgb(107,56,127)\">[The Wrath II]</font></b>: <font color=\"rgb(255,28,51)\">-100%</font> <b><font color=\"rgb(84,252,124)\">Luck</font></b><br /><b><font color=\"rgb(52,42,82)\">[The Sloth II]</font></b>: <font color=\"rgb(255,28,51)\">-25%</font> <b><font color=\"rgb(84,252,205)\">Roll Speed</font></b><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("Strange2"), 
		Use = function(v44, v45)
			return require(script.StrangePotion)(v44, v45, 2);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Oblivion Potion"] = {
		TextColor = l_fromRGB_0(119, 64, 214), 
		Description = "Gives you <b><font color=\"rgb(9,9,9)\"><stroke color=\"#FF008B\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">[Oblivion]</stroke></font></b> status<br /> <b><font color=\"rgb(9,9,9)\"><stroke color=\"#FF008B\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">[Oblivion]</stroke></font></b>: +350,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next 1 Roll</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>[????????]</b></stroke></font> with chance of 1 in 2,000<br />And <b><font color=\"rgb(171,73,255)\">[Memory]</font></b> with chance of 1 in 100<br /> <font color=\"rgb(165,0,13)\"><b><u>^ Chances are not affected by Lucks</u></b></font><br/><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b>Basic Buff</b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b><u>Special Buff</u></b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("OblivionPotion"), 
		Use = function(v46, v47)
			local l_Buffs_3 = v12.GetStore(v46, true).Buffs;
			if l_Buffs_3["Heavenly I"][1] ~= 0 then
				return "Heavenly Potion and Oblivion Potion cannot be used together.";
			elseif l_Buffs_3["Heavenly II"][1] ~= 0 then
				return "Heavenly Potion and Oblivion Potion cannot be used together.";
			else
				v13.AddBuff(v46, "Oblivion", math.huge, v47, true, false);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Mixed Potion"] = {
		TextColor = l_fromRGB_0(18, 255, 168), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>3 minutes</b></font> of <font color=\"rgb(120,255,127)\"><b>[Lucky]</b></font> and <b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b><br /><b><font color=\"rgb(120,255,127)\">[Lucky]</font></b>: +100% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><b><font color=\"rgb(120,209,255)\">[Quick Roll]</font></b>: +25% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("MixedPotion"), 
		Use = function(v49, v50)
			v13.AddBuff(v49, "Lucky", 180 * v50, 1, false, true);
			v13.AddBuff(v49, "QuickRoll", 180 * v50, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Warp Potion"] = {
		TextColor = l_fromRGB_0(117, 253, 255), 
		Description = "Sets the <font color=\"rgb(120,209,255)\"><b>Roll Cooltime</b></font> to <font color=\"rgb(106,255,190)\"><b>0s</b></font> for next <font color=\"#FFAB81\"><b>1,000</b></font> rolls", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("WarpPotion"), 
		Use = function(v51, v52)
			v13.AddBuff(v51, "Skip", math.huge, 1000 * v52, true, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Transcendent Potion"] = {
		TextColor = l_fromRGB_0(255, 234, 117), 
		Description = "Sets the <font color=\"rgb(120,209,255)\"><b>Roll Cooltime</b></font> to <font color=\"rgb(106,255,190)\"><b>0s</b></font> for next <font color=\"#FFAB81\"><b>10,000</b></font> rolls", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Potions"):WaitForChild("Transcendent Potion"), 
		Use = function(v53, v54)
			v13.AddBuff(v53, "Skip", math.huge, 10000 * v54, true, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Huge Fortune Potion I"] = {
		TextColor = l_fromRGB_0(105, 255, 122), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>1 hour</b></font> of <font color=\"#63BF71\"><b>[Fortune I]</b></font> <br /><b><font color=\"#63BF71\">[Fortune I]</font></b>: +150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Fortune Potion I"), 
		Use = function(v55, v56)
			local l_Buffs_4 = v12.GetStore(v55, true).Buffs;
			if l_Buffs_4["Fortune II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_4["Fortune III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v55, "Fortune I", 3600 * v56, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Rune of Corruption"] = {
		TextColor = l_fromRGB_0(167, 102, 227), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(167, 102, 227)\"><b>[Rune of Corruption]</b></font> <br /><b><font color=\"rgb(167, 102, 227)\">[Rune of Corruption]</font></b>: Allows you to roll <font color=\"rgb(167, 102, 227)\"><b>Corruption Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("CorruptRune"), 
		Use = function(v58, v59)
			local v60 = v18("Rune of Corruption", v12.GetStore(v58, true).Buffs);
			if not v60 then
				v13.AddBuff(v58, "Rune of Corruption", 600 * v59, 1, false, true);
				return ;
			else
				return v60;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Wind"] = {
		TextColor = l_fromRGB_0(115, 250, 178), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(115, 250, 178)\"><b>[Rune of Wind]</b></font> <br /><b><font color=\"rgb(115, 250, 178)\">[Rune of Wind]</font></b>: Allows you to roll <font color=\"rgb(115, 250, 178)\"><b>Windy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("WindRune"), 
		Use = function(v61, v62)
			local v63 = v18("Rune of Wind", v12.GetStore(v61, true).Buffs);
			if not v63 then
				v13.AddBuff(v61, "Rune of Wind", 600 * v62, 1, false, true);
				return ;
			else
				return v63;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Rainstorm"] = {
		TextColor = l_fromRGB_0(54, 101, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(54, 101, 255)\"><b>[Rune of Rainstorm]</b></font> <br /><b><font color=\"rgb(54, 101, 255)\">[Rune of Rainstorm]</font></b>: Allows you to roll <font color=\"rgb(54, 101, 255)\"><b>Rainy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("RainstormRune"), 
		Use = function(v64, v65)
			local v66 = v18("Rune of Rainstorm", v12.GetStore(v64, true).Buffs);
			if not v66 then
				v13.AddBuff(v64, "Rune of Rainstorm", 600 * v65, 1, false, true);
				return ;
			else
				return v66;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Hell"] = {
		TextColor = l_fromRGB_0(255, 74, 54), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(255, 74, 54)\"><b>[Rune of Hell]</b></font> <br /><b><font color=\"rgb(255, 74, 54)\">[Rune of Hell]</font></b>: Allows you to roll <font color=\"rgb(255, 74, 54)\"><b>Hell Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("HellRune"), 
		Use = function(v67, v68)
			local v69 = v18("Rune of Hell", v12.GetStore(v67, true).Buffs);
			if not v69 then
				v13.AddBuff(v67, "Rune of Hell", 600 * v68, 1, false, true);
				return ;
			else
				return v69;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Frost"] = {
		TextColor = l_fromRGB_0(170, 255, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"rgb(170, 255, 255)\"><b>[Rune of Frost]</b></font> <br /><b><font color=\"rgb(170, 255, 255)\">[Rune of Frost]</font></b>: Allows you to roll <font color=\"rgb(170, 255, 255)\"><b>Snowy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("BlizzardRune"), 
		Use = function(v70, v71)
			local v72 = v18("Rune of Frost", v12.GetStore(v70, true).Buffs);
			if not v72 then
				v13.AddBuff(v70, "Rune of Frost", 600 * v71, 1, false, true);
				return ;
			else
				return v72;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Nothing"] = {
		TextColor = l_fromRGB_0(64, 64, 64), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"#252525\"><b><stroke color=\"#FFFFFF\" joins=\"miter\" thickness=\"1\" transparency=\"0.1\">[Rune of Nothing]</stroke></b></font> <br /><b><font color=\"#252525\"><stroke color=\"#FFFFFF\" joins=\"miter\" thickness=\"1\" transparency=\"0.1\">[Rune of Nothing]</stroke></font></b>: Allows you to roll <font color=\"#252525\"><b><stroke color=\"#FFFFFF\" joins=\"miter\" thickness=\"1\" transparency=\"0.1\">Null Auras</stroke></b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("NullRune"), 
		Use = function(v73, v74)
			local v75 = v18("Rune of Nothing", v12.GetStore(v73, true).Buffs);
			if not v75 then
				v13.AddBuff(v73, "Rune of Nothing", 600 * v74, 1, false, true);
				return ;
			else
				return v75;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Galaxy"] = {
		TextColor = l_fromRGB_0(130, 92, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"#6038FF\"><b>[Rune of Galaxy]</b></font> <br /><b><font color=\"#6038FF\">[Rune of Galaxy]</font></b>: Allows you to roll <font color=\"#6038FF\"><b>Starfall Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("GalaxyRune"), 
		Use = function(v76, v77)
			local v78 = v18("Rune of Galaxy", v12.GetStore(v76, true).Buffs);
			if not v78 then
				v13.AddBuff(v76, "Rune of Galaxy", 600 * v77, 1, false, true);
				return ;
			else
				return v78;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Rune of Everything"] = {
		TextColor = l_fromRGB_0(255, 255, 255), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minutes</b></font> of <font color=\"#FFFFFF\"><b><stroke color=\"#000000\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.1\">[Rune of Everything]</stroke></b></font> <br /><b><font color=\"#FFFFFF\"><stroke color=\"#000000\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.1\">[Rune of Everything]</stroke></font></b>: Allows you to roll <font color=\"#FFFFFF\"><b><stroke color=\"#000000\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.1\">Every Biome Exclusive Auras</stroke></b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("RuneOfEverything"), 
		Use = function(v79, v80)
			local v81 = v18("Rune of Everything", v12.GetStore(v79, true).Buffs);
			if not v81 then
				v13.AddBuff(v79, "Rune of Everything", 300 * v80, 1, false, true);
				return ;
			else
				return v81;
			end;
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Rune
	}, 
	["Gilded Coin"] = {
		TextColor = l_fromRGB_0(239, 184, 56), 
		Description = "That's shiny one!", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Gilded Coin"), 
		Use = function(v82, v83)
			local v84 = v12.GetStore(v82, true);
			v84.Coins = v84.Coins or math.huge;
			v84:SetValue("Coins", v84.Coins + v83 * 100);
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Money
	}, 
	Coin = {
		TextColor = l_fromRGB_0(245, 205, 48), 
		Description = "Coin.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Coin"), 
		Use = function(v85, v86)
			local v87 = v12.GetStore(v85, true);
			v87.Coins = v87.Coins or math.huge;
			v87:SetValue("Coins", v87.Coins + v86 * 50);
		end, 
		Expendable = true, 
		Sound = l_SFXs_0.Money
	}, 
	["Lucky Penny"] = {
		TextColor = l_fromRGB_0(83, 180, 71), 
		Description = "+77% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>.\n<font color=\"rgb(83, 180, 71)\"><b>Lucky Penny</b></font> is removed every <b>10</b> minutes with a <b>5%</b> chance.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Lucky Penny")
	}, 
	["Strange Controller"] = {
		TextColor = l_fromRGB_0(70, 70, 70), 
		Description = "A <font color=\"rgb(255,35,18)\"><b>Dimension-Manipulating</b></font> device, that seems somewhat flimsy.<br /><br />Changes the <font color=\"rgb(255,177,118)\"><b>Current Biome</b></font> according to <b><font color=\"rgb(139,139,139)\">Natural Spawnrate</font></b>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("StrangeController"), 
		PreviewModelRotatable = false, 
		Use = function(v88, v89)
			if v89 > 1 then
				return "You can only use one Strange Controller at a time";
			else
				return require(script.StrangeController)(v88);
			end;
		end, 
		MaximumConcurrentUses = 1, 
		Consumables = false, 
		Expendable = true, 
		Sound = l_SFXs_0.SpinningSound
	}, 
	["Biome Randomizer"] = {
		TextColor = l_fromRGB_0(70, 70, 70), 
		Description = "A <font color=\"rgb(92,255,232)\"><b>Fully Functional</b></font> <font color=\"rgb(255,35,18)\"><b>Dimension-Manipulating</b></font> device.<br/><br/>Changes the <b><font color=\"rgb(255,177,118)\">Current Biome</font></b> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(139,139,139)\">Natural Spawnrate</font></b>.<br/><font color=\"rgb(106,7,0)\"><b><u>*(Except for glitched.)</u></b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("BiomeRandomizer"), 
		PreviewModelRotatable = false, 
		Use = function(v90, v91)
			if v91 > 1 then
				return "You can only use one Biome Randomizer at a time";
			else
				return require(script.BiomeRandomizer)(v90);
			end;
		end, 
		MaximumConcurrentUses = 1, 
		Consumables = false, 
		Expendable = true, 
		Sound = l_SFXs_0.SpinningSound
	}, 
	["Merchant Tracker"] = {
		TextColor = l_fromRGB_0(255, 255, 255), 
		Description = "XC IS HERE", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("TemporaryPreview"), 
		PreviewModelRotatable = false, 
		ClientUse = function()
			local v92 = nil;
			local v93 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("ShopLocation"):Clone();
			for _, v95 in ipairs(game:GetService("CollectionService"):GetTagged("Blackmarket")) do
				if v95:IsDescendantOf(workspace) then
					v92 = v95;
					break;
				end;
			end;
			if v92 and v92:IsA("Model") then
				v93.Parent = v92.PrimaryPart;
				task.wait(2);
				game:GetService("TweenService"):Create(v93:WaitForChild("Frame"), Tween0o.new(2), {
					ImageTransparency = 1, 
					BackgroundTransparency = 1
				}):Play();
				task.wait(2);
				v93:Destroy();
			end;
		end, 
		MaximumConcurrentUses = 1, 
		Consumables = false, 
		Expendable = true, 
		Sound = l_SFXs_0.SpinningSound
	}, 
	["Merchant Teleport"] = {
		TextColor = l_fromRGB_0(255, 255, 255), 
		Description = "XC IS HERE", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("TemporaryPreview"), 
		PreviewModelRotatable = false, 
		Use = function(v96, v97)
			if v97 > 1 then
				return "You can only use one Merchant Teleport at a time";
			else
				return require(script.MerchantTeleport)(v96);
			end;
		end, 
		MaximumConcurrentUses = 1, 
		Consumables = false, 
		Expendable = true, 
		Sound = l_SFXs_0.SpinningSound
	}, 
	["Random Potion Sack"] = {
		TextColor = Color3.fromRGB(255, 255, 255), 
		Description = "Random Potion Sack.", 
		PreviewModel = l_Potions_0:WaitForChild("Random Potion Sack"), 
		Use = function(v98, v99)
			if v99 > 1 then
				return "You can only use one Random Potion Sack at a time";
			else
				return require(script.RandomPotionSack)(v98, v99);
			end;
		end, 
		MaximumConcurrentUses = 1, 
		Expendable = true, 
		Sound = l_SFXs_0.DefaultItemUse
	}, 
	["Stella's Candle"] = {
		TextColor = Color3.fromRGB(183, 94, 255), 
		Description = "Using the item will install <font color=\"rgb(183, 94, 255)\"><b>[Stella's Candle]</b></font> at your current location.<br/>Up to <font color=\"rgb(255,166,113)\"><b>Three</b></font> <font color=\"rgb(183, 94, 255)\"><b>[Stella's Candle]</b></font>s can be installed on one server.<br/>Standing close to<font color=\"rgb(183, 94, 255)\"><b>[Stella's Candle]</b></font> grants you a <font color=\"rgb(190,103,255)\"><b>[Warmth?]</b></font>.<br/><font color=\"rgb(190,103,255)\"><b>[Warmth?]</b></font>: +20% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("StellaCandle"), 
		Use = function(...)
			local l_Children_0 = workspace:WaitForChild("AreaBuffGivers"):GetChildren();
			local v101 = 0;
			for _, v103 in l_Children_0 do
				if v103.Name == "StellaCandle" then
					v101 = v101 + 1;
				end;
			end;
			if v101 >= 3 then
				return "Stella's Candle cannot be used more than 3 times in the server";
			else
				return require(script:WaitForChild("StellaCandle"))(...);
			end;
		end, 
		Expendable = true, 
		MaximumConcurrentUses = 1, 
		Sound = l_SFXs_0.DefaultItemUse
	}, 
	["NULL?"] = {
		TextColor = l_fromRGB_0(9, 9, 9), 
		Description = "<font color=\"rgb(54,54,54)\"><b>[DESCRIPTION EMPTY]</b></font>", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("NULL?")
	}, 
	["Eternal Flame"] = {
		TextColor = l_fromHex_0("ff3300"), 
		Description = "<font color=\"rgb(255,49,0)\"><b>Endless Burning Energy</b></font> deep in <font color=\"rgb(0,0,0)\"><b><stroke color=\"rgb(255,50,50)\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">Hell</stroke></b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Eternal Flame")
	}, 
	["Piece of Star"] = {
		TextColor = l_fromRGB_0(255, 216, 126), 
		Description = "A rare <b><stroke color=\"#0031FF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\"><font color=\"rgb(0,0,0)\">Shooting Star</font></stroke></b> that came down to <font color=\"#3DFF70\"><b>Earth</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Piece of Star")
	}, 
	Curruptaine = {
		TextColor = l_fromRGB_0(85, 70, 255), 
		Description = "A very deeply <font color=\"rgb(0,0,0)\"><b><stroke color=\"#613DFF\" joins=\"miter\" thickness=\"2\" transparency=\"0.25\">Contaminated</stroke></b></font> mineral. It is <font color=\"#595959\"><b>Unknown</b></font> how it is made.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Curruptaine")
	}, 
	["Rainy Bottle"] = {
		TextColor = l_fromRGB_0(59, 59, 59), 
		Description = "A <font color=\"rgb(96,96,96)\"><b>Mysterious</b></font> bottle filled with <b><font color=\"rgb(37,64,255)\">Rain</font></b>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Rainy Bottle")
	}, 
	Icicle = {
		TextColor = l_fromRGB_0(179, 255, 250), 
		Description = "<font color=\"rgb(89,242,255)\"><b>Icicles</b></font> that appear in <font color=\"rgb(144,246,255)\"><b>very cold places</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Icicle")
	}, 
	["Wind essence"] = {
		TextColor = l_fromRGB_0(114, 170, 255), 
		Description = "<font color=\"rgb(51,255,132)\"><b>Energy</b></font> contained in the <font color=\"rgb(89,255,185)\"><b>Wind</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Wind essence")
	}, 
	["Fortune Potion I"] = {
		TextColor = l_fromRGB_0(105, 255, 122), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>5 minutes</b></font> of <font color=\"#63BF71\"><b>[Fortune I]</b></font> <br /><b><font color=\"#63BF71\">[Fortune I]</font></b>: +150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Fortune Potion I"), 
		Use = function(v104, v105)
			local l_Buffs_5 = v12.GetStore(v104, true).Buffs;
			if l_Buffs_5["Fortune II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_5["Fortune III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v104, "Fortune I", 300 * v105, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Fortune Potion II"] = {
		TextColor = l_fromRGB_0(52, 142, 64), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>7 minutes</b></font> of <font color=\"#4A9055\"><b>[Fortune II]</b></font> <br /><b><font color=\"#4A9055\">[Fortune II]</font></b>: +200% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Fortune Potion II"), 
		Use = function(v107, v108)
			local l_Buffs_6 = v12.GetStore(v107, true).Buffs;
			if l_Buffs_6["Fortune I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_6["Fortune III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v107, "Fortune II", 420 * v108, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Fortune Potion III"] = {
		TextColor = l_fromRGB_0(44, 101, 29), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>10 minute</b></font> of <font color=\"#386C40\"><b>[Fortune III]</b></font> <br /><b><font color=\"#386C40\">[Fortune III]</font></b>: +250% <font color=\"rgb(84,252,124)\"><b>Luck</b></font><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b><u>Basic Buff</u></b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b>Special Buff</b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Fortune Potion III"), 
		Use = function(v110, v111)
			local l_Buffs_7 = v12.GetStore(v110, true).Buffs;
			if l_Buffs_7["Fortune I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_7["Fortune II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v110, "Fortune III", 600 * v111, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Haste Potion I"] = {
		TextColor = l_fromRGB_0(128, 187, 219), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>3 minutes</b></font> of <b><font color=\"#73AFFF\">[Haste I]</font></b> <br /><b><font color=\"#73AFFF\">[Haste I]</font></b>: +30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Haste Potion I"), 
		Use = function(v113, v114)
			local l_Buffs_8 = v12.GetStore(v113, true).Buffs;
			if l_Buffs_8["Haste II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_8["Haste III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v113, "Haste I", 180 * v114, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Haste Potion II"] = {
		TextColor = l_fromRGB_0(4, 175, 236), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>5 minutes</b></font> of <b><font color=\"#4293FF\">[Haste II]</font></b> <br /><b><font color=\"#4293FF\">[Haste II]</font></b>: +50% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Haste Potion II"), 
		Use = function(v116, v117)
			local l_Buffs_9 = v12.GetStore(v116, true).Buffs;
			if l_Buffs_9["Haste I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_9["Haste III"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v116, "Haste II", 300 * v117, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Haste Potion III"] = {
		TextColor = l_fromRGB_0(9, 137, 207), 
		Description = "Gives you <font color=\"rgb(255,201,120)\"><b>8 minutes</b></font> of <b><font color=\"#1278FF\">[Haste III]</font></b> <br /><b><font color=\"#1278FF\">[Haste III]</font></b>: +70% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Haste Potion III"), 
		Use = function(v119, v120)
			local l_Buffs_10 = v12.GetStore(v119, true).Buffs;
			if l_Buffs_10["Haste I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_10["Haste II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			else
				v13.AddBuff(v119, "Haste III", 480 * v120, 1, false, true);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Heavenly Potion I"] = {
		TextColor = l_fromRGB_0(224, 178, 208), 
		Description = "Gives you <b><font color=\"#FF8BEF\">[Heavenly I]</font></b> <br /><b><font color=\"#FF8BEF\">[Heavenly I]</font></b>: +20,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next 1 Roll</u></font></b><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b>Basic Buff</b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b><u>Special Buff</u></b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Heavenly Potion I"), 
		Use = function(v122, v123)
			local v124 = v12.GetStore(v122, true);
			local l_Buffs_11 = v124.Buffs;
			if l_Buffs_11["Heavenly II"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_11.Oblivion[1] ~= 0 then
				return "Heavenly Potion and Oblivion Potion cannot be used together.";
			--[[elseif v124.roll < 10000 then
				return "You cannot use this item if your roll count is less than 10K.";]]
			else
				v13.AddBuff(v122, "Heavenly I", math.huge, v123, true, false);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Heavenly Potion II"] = {
		TextColor = l_fromRGB_0(255, 152, 220), 
		Description = "Gives you <b><font color=\"#FA53E3\">[Heavenly II]</font></b> <br /><b><font color=\"#FA53E3\">[Heavenly II]</font></b>: +200,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next 1 Roll</u></font></b><br /><br /><u>Total Luck</u><br />((<b>1</b> + <font color=\"rgb(84,252,124)\"><b>Basic Buff</b></font> ) x <font color=\"rgb(75,123,255)\"><b>Bonus Roll</b></font> + <font color=\"rgb(175,75,255)\"><b><u>Special Buff</u></b></font> ) x <font color=\"rgb(255,229,136)\"><b>VIP</b></font>", 
		PreviewModel = l_Potions_0:WaitForChild("Heavenly Potion II"), 
		Use = function(v126, v127)
			local v128 = v12.GetStore(v126, true);
			local l_Buffs_12 = v128.Buffs;
			if l_Buffs_12["Heavenly I"][1] ~= 0 then
				return "The same type of potion cannot be used in duplicate.";
			elseif l_Buffs_12.Oblivion[1] ~= 0 then
				return "Heavenly Potion and Oblivion Potion cannot be used together.";
			--[[elseif v128.roll < 10000 then
				return "You cannot use this item if your roll count is less than 10K.";]]
			else
				v13.AddBuff(v126, "Heavenly II", math.huge, v127, true, false);
				return ;
			end;
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Universe Potion I"] = {
		TextColor = l_fromRGB_0(51, 88, 130), 
		Description = "It contains the mystery of the universe.", 
		PreviewModel = l_Potions_0:WaitForChild("Universe Potion I"), 
		Use = function(v130, v131)
			v13.AddBuff(v130, "Universe I", 600 * v131, 1, false, true);
		end, 
		Expendable = true, 
		Sound = v20
	}, 
	["Void Coin"] = {
		TextColor = l_fromRGB_0(149, 79, 255), 
		Description = "<font color=\"rgb(67,25,255)\"><b>Magical Currency</b></font> used to trade <stroke color=\"#8E19FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><font color=\"rgb(0,0,0)\"><b>Cursed</b></font></stroke> and <font color=\"rgb(0,0,0)\"><b><stroke color=\"#D90004\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">Dangerous</stroke></b></font> <font color=\"rgb(151,255,163)\"><b>Goods</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Void Coin")
	}, 
	["Gear A"] = {
		TextColor = l_fromRGB_0(38, 38, 38), 
		Description = "A <font color=\"rgb(165,255,220)\"><b>Part</b></font> that has fallen from <font color=\"rgb(89,89,89)\"><b>Unknown Machine</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Gear A")
	}, 
	["Gear B"] = {
		TextColor = l_fromRGB_0(38, 38, 38), 
		Description = "A <font color=\"rgb(165,255,220)\"><b>Part</b></font> that has fallen from <font color=\"rgb(89,89,89)\"><b>Unknown Machine</b></font>.", 
		PreviewModel = l_ItemPreviewModels_0:WaitForChild("Gear B")
	}
};
