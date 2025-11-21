-- What the sigma?

local v1 = {
	["Basic Luck"] = {
		["EffectPerBuff"] = 25,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Lunar Shift"] = {
		["0ormation"] = "+15% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Solar Ignite"] = {
		["0ormation"] = "+50% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Exo Enhancement"] = {
		["0ormation"] = "+100% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +20% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Jackpot"] = {
		["0ormation"] = "+77% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +7% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = false
	},
	["Cosmic Enhancement"] = {
		["0ormation"] = "+250% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Subzero"] = {
		["0ormation"] = "+150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Unstable Gravity"] = {
		["0ormation"] = "2 -> 6 <font color=\"rgb(75,123,255)\"><b>Bonus Roll Multiply</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = false
	},
	["Galestorm"] = {
		["0ormation"] = "+115% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Volcanic"] = {
		["0ormation"] = "+290% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +35% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Exoflex Blessing"] = {
		["0ormation"] = "+340% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +35% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = true
	},
	["Fierce Spirit"] = {
		["0ormation"] = "<b><font color=\"rgb(75,123,255)\">Bonus Roll</font></b> on <b><font color=\"#AD65FF\">Every Rolls</font></b>,<br/><b><font color=\"rgb(75,123,255)\">Bonus Roll Multiplier</font></b> <font color=\"rgb(167,51,51)\"><b>Reduced</b></font> to <font color=\"#FFAB81\"><b>1.3</b></font>",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = false
	},
	["Pumpking's Curse"] = {
		["EffectPerBuff"] = -50,
		["0ormation"] = "",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = false
	},
	["Pumpking's Blessing"] = {
		["EffectPerBuff"] = 800,
		["0ormation"] = "",
		["IsGearBuff"] = true,
		["IsRightGearBuff"] = false
	},
	["Lucky"] = {
		["EffectPerBuff"] = 100,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["QuickRoll"] = {
		["EffectPerBuff"] = 25,
		["0ormation"] = "%s%% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["Fortune I"] = {
		["EffectPerBuff"] = 150,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Fortune II"] = {
		["EffectPerBuff"] = 200,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Fortune III"] = {
		["EffectPerBuff"] = 250,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Haste I"] = {
		["EffectPerBuff"] = 30,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["Haste II"] = {
		["EffectPerBuff"] = 50,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["Haste III"] = {
		["EffectPerBuff"] = 70,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["Heavenly I"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = "<font color=\"rgb(175,75,255)\">+20,000</font> <font color=\"rgb(84,252,124)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b>",
		["SaveBuffData"] = true
	},
	["Heavenly II"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = "<font color=\"rgb(175,75,255)\">+200,000</font> <font color=\"rgb(84,252,124)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b>",
		["SaveBuffData"] = true
	},
	["Developer\'s Return"] = {
		["EffectPerBuff"] = 5,
		["0ormation"] = "<font color=\"rgb(146,255,80)\">+%s</font> <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Lucky Penny"] = {
		["0ormation"] = "+77% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["VIP Luck"] = {
		["0ormation"] = "\195\151 1.2 <font color=\"rgb(255,229,136)\"><b>Final Luck</b></font>"
	},
	["Universe I"] = {
		["0ormation"] = "Aura in Starfall Unaffected by Breakthrough"
	},
	["Oblivion"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = " +350,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>Special Auras</b></stroke></font>",
		["SaveBuffData"] = true
	},
	["1M LUCK"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = " +1,000,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>Special Auras</b></stroke></font>",
		["SaveBuffData"] = true
	},
	["10M LUCK"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = " +10,000,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>Special Auras</b></stroke></font>",
		["SaveBuffData"] = true
	},
	["100M LUCK"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = " +100,000,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>Special Auras</b></stroke></font>",
		["SaveBuffData"] = true
	},
	["1B LUCK"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = " +1,000,000,000 <font color=\"rgb(175,75,255)\"><b>Luck</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b><br />Also allows you to obtain <font color=\"rgb(9,9,9)\"><stroke color=\"#BD00FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\"><b>Special Auras</b></stroke></font>",
		["SaveBuffData"] = true
	},
	["Skip"] = {
		["EffectPerBuff"] = 1,
		["0ormation"] = "<b><font color=\"rgb(186,255,233)\">0</font></b> <font color=\"rgb(56,255,191)\"><b>Roll Cooltime</b></font> for <b><font color=\"rgb(255,53,44)\"><u>Next %s Roll(s)</u></font></b>",
		["SaveBuffData"] = true
	},
	["The Chosen"] = {
		["0ormation"] = "+150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["The Power I"] = {
		["0ormation"] = "+150% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["The Knowledge I"] = {
		["0ormation"] = "+30% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["The Wrath I"] = {
		["0ormation"] = "<font color=\"rgb(255,28,51)\">-50%</font> <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["The Sloth I"] = {
		["0ormation"] = "<font color=\"rgb(255,28,51)\">-15%</font> <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["GODLIKE"] = {
		["0ormation"] = "+250% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>, +40% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["The Power II"] = {
		["0ormation"] = "+250% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["The Knowledge II"] = {
		["0ormation"] = "+40% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["The Wrath II"] = {
		["0ormation"] = "<font color=\"rgb(255,28,51)\">-100%</font> <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["The Sloth II"] = {
		["0ormation"] = "<font color=\"rgb(255,28,51)\">-25%</font> <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	},
	["Rune of Corruption"] = {
		["0ormation"] = "Allows you to roll <font color=\"rgb(167, 102, 227)\"><b>Corruption Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Wind"] = {
		["0ormation"] = "Allows you to roll <font color=\"rgb(115, 250, 178)\"><b>Windy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Rainstorm"] = {
		["0ormation"] = "Allows you to roll <font color=\"rgb(54, 101, 255)\"><b>Rainy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Hell"] = {
		["0ormation"] = "Allows you to roll <font color=\"rgb(255, 74, 54)\"><b>Hell Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Frost"] = {
		["0ormation"] = "Allows you to roll <font color=\"rgb(170, 255, 255)\"><b>Snowy Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Nothing"] = {
		["0ormation"] = "Allows you to roll <font color=\"#252525\"><b><stroke color=\"#FFFFFF\" joins=\"miter\" thickness=\"1\" transparency=\"0.1\">Null Auras</stroke></b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Galaxy"] = {
		["0ormation"] = "Allows you to roll <font color=\"#6038FF\"><b>Starfall Auras</b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Rune of Everything"] = {
		["0ormation"] = "Allows you to roll <font color=\"#FFFFFF\"><b><stroke color=\"#000000\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.1\">Every Biome Exclusive Auras</stroke></b></font> with <font color=\"rgb(255,145,115)\"><b>Native Rarity</b></font> <font color=\"rgb(63,255,123)\"><b><u>Regardless</u></b></font> of <b><font color=\"rgb(255,177,118)\">Current Biome</font></b>"
	},
	["Christmas Blessing"] = {
		["EffectPerBuff"] = 100,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["We\'re sorry!"] = {
		["EffectPerBuff"] = 50,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Basic Blessing"] = {
		["EffectPerBuff"] = 30,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Developer\'s Blessing?"] = {
		["EffectPerBuff"] = -99.99,
		["0ormation"] = "%s <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Tip\'s Blessing"] = {
		["EffectPerBuff"] = 120,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Easter Blessing"] = {
		["EffectPerBuff"] = 50,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Warmth?"] = {
		["EffectPerBuff"] = 20,
		["0ormation"] = "+%s%% <font color=\"rgb(84,252,124)\"><b>Luck</b></font>"
	},
	["Bank\'s Blessing"] = {
		["0ormation"] = "+7% <font color=\"rgb(84,252,205)\"><b>Roll Speed</b></font>"
	}
}
return v1