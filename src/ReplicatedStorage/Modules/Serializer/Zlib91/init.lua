--!strict
local CompressionModule = {}
local Compression = require(script.Compression)
local Base91 = require(script.Base91)

local function replaceDoubleQuotes(input: string): string
	return string.gsub(input, '"', "'")
end

local function compress(input: string, replaceQuotes: boolean?, compressionLevel: number?, compressionStrategy: string?): string
	local zlibCompressed = Compression.Zlib.Compress(input, {
		level = compressionLevel or 6,
		strategy = compressionStrategy or "dynamic"
	})

	local encoded = Base91.encode(zlibCompressed)

	if not replaceQuotes then
		return encoded
	end

	return string.gsub(encoded, '"', "'")
end

local function decompress(input: string, replaceQuotes: boolean?): string
	local decoded: string

	if not replaceQuotes then
		decoded = Base91.decode(input)
	else
		local processedInput = string.gsub(input, '"', "'")
		decoded = Base91.decode(processedInput)
	end

	return Compression.Zlib.Decompress(decoded)
end

CompressionModule.compress = compress
CompressionModule.decompress = decompress

return CompressionModule