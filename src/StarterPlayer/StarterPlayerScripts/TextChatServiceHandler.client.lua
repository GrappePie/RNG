--!strict
local tags = {
	[3902394833] = {TagText = "Creator", TagColor = Color3.fromRGB(195, 230, 255)},
	[2044636238] = {TagText = "Creator", TagColor = Color3.fromRGB(195, 230, 255)},
	[683867566] = {TagText = "Creator", TagColor = Color3.fromRGB(195, 230, 255)},
	[3029749020] = {TagText = "Creator", TagColor = Color3.fromRGB(195, 230, 255)}
}

game:GetService("TextChatService").OnIncomingMessage = function(message: TextChatMessage)
	local properties = Instance.new("TextChatMessageProperties")

	if message.TextSource then
		-- Chat tags
		local player = game:GetService("Players"):GetPlayerByUserId(message.TextSource.UserId)

		if (tags[player.UserId]) then
			properties.PrefixText = string.format("<font color='#%02X%02X%02X'>%s</font> ",
				math.floor(tags[player.UserId].TagColor.R*255),
				math.floor(tags[player.UserId].TagColor.G*255),
				math.floor(tags[player.UserId].TagColor.B*255),
				tostring("[" .. tags[player.UserId].TagText:upper() .. "]")
			) .. message.PrefixText
		end
	end

	return properties or message
end