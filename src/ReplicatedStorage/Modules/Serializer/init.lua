--!strict
local HttpService = game:GetService("HttpService")
local RBXSerialize = require(script:WaitForChild("RBXSerialize"))
local Zlib91 = require(script:WaitForChild("Zlib91"))

local CompressionModule = {}

local function serializeTable(inputTable: {[any]: any}): {[any]: any}
	local serializedTable = {}

	for key, value in pairs(inputTable) do
		local valueType = type(value)

		if valueType == "userdata" then
			serializedTable[key] = {
				t = "u",
				v = RBXSerialize.Encode(value)
			}
		elseif valueType == "table" then
			serializedTable[key] = serializeTable(value)
		else
			serializedTable[key] = value
		end
	end

	return serializedTable
end

local function deserializeTable(inputTable: {[any]: any}): {[any]: any}
	local deserializedTable = {}

	for key, value in pairs(inputTable) do
		local valueType = typeof(value)

		if valueType == "table" then
			if value.t == "u" then
				deserializedTable[key] = RBXSerialize.Decode(value.v)
			else
				deserializedTable[key] = deserializeTable(value)
			end
		else
			deserializedTable[key] = value
		end
	end

	return deserializedTable
end

local function encode(input: {[any]: any}): string
	local serializedData = serializeTable(input)
	local jsonData = HttpService:JSONEncode(serializedData)
	return Zlib91.compress(jsonData)
end

local function decode(input: string): {[any]: any}
	local decompressedData = Zlib91.decompress(input)
	local jsonData = HttpService:JSONDecode(decompressedData)
	return deserializeTable(jsonData)
end

CompressionModule.Compress = Zlib91
CompressionModule.Encode = encode
CompressionModule.Decode = decode

return CompressionModule