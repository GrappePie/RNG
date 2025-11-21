-- What the sigma?

return {
	["ROLL_DELAY_START"] = 0.1,
	["ROLL_DELAY_END"] = 0.3,
	["ROLL_DELAY_ICREASE"] = 0.025,
	["ROLL_COOLDOWN"] = 1,
	["BONUS_STACK"] = 10,
	["Contexts"] = {
		[200] = "Roll Succeed.",
		[403] = "There is still cooldown time remaining.",
		[404] = "The player has not made a choice yet.",
		[405] = "Roll sequence is already in progress."
	},
	["Headers"] = {
		[200] = "Success",
		[403] = "Forbidden",
		[404] = "Forbidden",
		[405] = "Forbidden"
	}
}