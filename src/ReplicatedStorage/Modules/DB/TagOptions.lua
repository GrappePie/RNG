-- What the sigma?

local v1 = {
	{
		["Name"] = "I just started Sol\'s RNG",
		["ImageId"] = 16776465635,
		["GradientName"] = "None"
	},
	{
		["Name"] = "A little bit of rolls",
		["ImageId"] = 16776456110,
		["GradientName"] = "Roll100"
	},
	{
		["Name"] = "I\'m addicted to Sol\'s RNG",
		["ImageId"] = 16776486242,
		["GradientName"] = "Roll1000"
	},
	{
		["Name"] = "Would You Leave? / Nah I\'d Roll",
		["ImageId"] = 16776530949,
		["GradientName"] = "Roll10000"
	},
	{
		["Name"] = "I give my life...",
		["ImageId"] = 17896404462,
		["GradientName"] = "100kRolls"
	},
	{
		["Name"] = "Roll, Eat, Sleep, Repeat",
		["ImageId"] = 16776545768,
		["GradientName"] = "Digital"
	},
	{
		["Name"] = "There\'s no way to stop it!",
		["ImageId"] = 17896372249,
		["GradientName"] = "5MRolls"
	},
	{
		["Name"] = "[10,000,000]",
		["ImageId"] = 17896374626,
		["GradientName"] = "10MRolls"
	},
	{
		["Name"] = "Take a break",
		["ImageId"] = 16776634409,
		["GradientName"] = "None"
	},
	{
		["Name"] = "I can\'t stop playing this",
		["ImageId"] = 16776654801,
		["GradientName"] = "Circles"
	},
	{
		["Name"] = "Waste of time",
		["ImageId"] = 16776706541,
		["GradientName"] = "Diamonds"
	},
	{
		["Name"] = "Touch the grass",
		["ImageId"] = 16776721677,
		["GradientName"] = "Digital"
	},
	{
		["Name"] = "Eternal time...",
		["ImageId"] = 17896371033,
		["GradientName"] = "2kPlaytime"
	},
	{
		["Name"] = "Breakthrough",
		["ImageId"] = 16776743577,
		["GradientName"] = "None"
	},
	{
		["Name"] = "Break the limit",
		["ImageId"] = 16776759140,
		["GradientName"] = "Digital"
	},
	{
		["Name"] = "Break the Space",
		["ImageId"] = 17896403260,
		["GradientName"] = "BT100"
	},
	{
		["Name"] = "Break the Galaxy",
		["ImageId"] = 17896370174,
		["GradientName"] = "BT1000"
	},
	{
		["Name"] = "Break the Reality",
		["ImageId"] = 17896409162,
		["GradientName"] = "BT10000"
	},
	{
		["Name"] = "My first 10M+ finding",
		["ImageId"] = 17896376135,
		["GradientName"] = "10MRarity"
	},
	{
		["Name"] = "My first 100M+ finding",
		["ImageId"] = 17896407260,
		["GradientName"] = "100MRarity"
	},
	{
		["Name"] = "My first 1B+ finding",
		["ImageId"] = 17896369300,
		["GradientName"] = "1BRarity"
	},
	{
		["Name"] = "Finished work for today",
		["ImageId"] = 16951986723,
		["GradientName"] = "None"
	},
	{
		["Name"] = "Good job this week too",
		["ImageId"] = 16952031113,
		["GradientName"] = "Roll100"
	},
	{
		["Name"] = "A sincere person",
		["ImageId"] = 16952038885,
		["GradientName"] = "Roll10000"
	},
	{
		["Name"] = "When is payday???",
		["ImageId"] = 16952041276,
		["GradientName"] = "DailyQuestMaster"
	},
	{
		["Name"] = "Perfect attendance award",
		["ImageId"] = 17896401169,
		["GradientName"] = "30dStreak"
	},
	{
		["Name"] = "Achievement collector I",
		["ImageId"] = 17896373286,
		["GradientName"] = "None"
	},
	{
		["Name"] = "Achievement Master",
		["ImageId"] = 17896377738,
		["GradientName"] = "20Achievement"
	},
	{
		["Name"] = "Achievement Slayer",
		["ImageId"] = 17896379874,
		["GradientName"] = "30Achievement"
	},
	{
		["Name"] = "Spotted the Sol",
		["ImageId"] = 16776775881,
		["GradientName"] = "Sol"
	},
	{
		["Name"] = "RedFullMoon",
		["ImageId"] = 18231538892,
		["DisplayName"] = "???",
		["GradientName"] = "Blood"
	},
	{
		["Name"] = "-Flaws in the World-",
		["ImageId"] = 17896411422,
		["GradientName"] = "GlitchObtained"
	},
	{
		["Name"] = "-One who stands before God-",
		["ImageId"] = 17896414387,
		["GradientName"] = "Oppression"
	},
	{
		["Name"] = "-The Unknown-",
		["ImageId"] = 17896412902,
		["GradientName"] = "Oblivion"
	},
	{
		["Name"] = "Something went wrong",
		["ImageId"] = 16776783582,
		["GradientName"] = "GlitchGradient"
	},
	{
		["Name"] = "In-dev",
		["ImageId"] = 16776803348,
		["GradientName"] = "Digital"
	},
	{
		["Name"] = "The Developer",
		["ImageId"] = 18207030150,
		["GradientName"] = "IdkItsDev"
	},
	{
		["Name"] = "Content Creator",
		["ImageId"] = 18269951604,
		["GradientName"] = "ContentCreator"
	},
	{
		["Name"] = "None"
	}
}
local v_u_2 = {}
for v3, v4 in ipairs(v1) do
	v4.Index = v3
	v_u_2[v4.Name] = v4
end
setmetatable(v1, {
	["__index"] = function(_, p5)
		-- upvalues: (copy) v_u_2
		if p5 == "Container" then
			return v_u_2
		end
		local v6 = v_u_2
		return rawget(v6, p5)
	end
})
return v1