-- Class 
local Binary = {
	TranslateIndex = {},
	DataIndex = require(script.Parent.Dumps.DataIndex)
} 


-- Conversion Replacement
function Binary.Translate(Index,Value) -- Type+Value -> Name 
	local  Data = Binary.TranslateIndex[Index] 
	return Data[Value] or "Invalid"
end 
function Binary.Describe(Index,Type) -- Type+Name -> Value
	local Data = Binary.DataIndex[Index]
	if Data and Data[Type] then 
		if Index == "ValueType" then 
			return string.pack("I2",Data[Type])
		else 
			return string.char(Data[Type]) or 0
		end
	else
		if Index == "Value" then 
			local Type = tostring(Type)
			local dataSize = #Type 
			if dataSize > 255 then 
				warn("[RBXLSerialize][Binary]: Cannot Encode DataValues more than 255 Bytes.")
				return 
			end 
			return (string.char(dataSize)..Type) or 0
		end 
		warn("[RBXLSerialize][Binary]: Could not describe",Index,Type)
		return 0 
	end 
end 
-- Stream Reading  
function Binary.Stream(Data) 
	local Stream = {
		Data = Data,
		Position = 1, 
	}
	
	Stream.NextRaw = function(Size) 
		local Size = Size or 1 
		local Chunk = Data:sub(Stream.Position,Stream.Position+(Size-1))
		Stream.Position += Size 
		return Chunk 	
	end
	
	Stream.ReadNextByte = function() 
		local Chunk = string.byte(Data:sub(Stream.Position,Stream.Position))
		Stream.Position +=1
		return Chunk
	end 
	
	Stream.ReadTranslation = function(Type) 
		local Translated = Binary.Translate(Type,Stream.ReadNextByte()) 
		if Translated == "Invalid" then 
			warn("[RBXSerialize]: Translation is invalid! Data is corrupt?")
		end
		return Translated
	end
	
	Stream.ReadChunk = function(Size) 
		local Chunk = Data:sub(Stream.Position,Stream.Position+(Size-1)) 
		Stream.Position +=Size 
		return Chunk
	end
	
	Stream.EOF = function() 
		return Stream.Position >= #Data-1
	end
	
	return Stream 
end



function Binary.DecodeAttributes(Data)
	local Attributes = {}
	local DataStream = Binary.Stream(Data)
	while not DataStream.EOF() do
		local KeySize = DataStream.ReadNextByte()
		local KeyString = DataStream.ReadChunk(KeySize) 
		local DataType = DataStream.ReadTranslation("DataType")
		local ValueSize = DataStream.ReadNextByte()
		local ValueData = DataStream.ReadChunk(ValueSize) 
		
		Attributes[KeyString] = {
			RawData = ValueData,
			DataType = DataType 
		}
	end
	return Attributes 
end

function DecodeData(Data)
	local ParsedData = {
		Type = "Invalid"
	} 
	local DataStream = Binary.Stream(Data)
	local StoreType  = DataStream.ReadTranslation("StoreType")
	if StoreType ~= "Invalid" then 
		ParsedData.Type = StoreType
		if StoreType  == "Value" then 
			local DataType = DataStream.ReadTranslation("DataType")
			local ValueSize = DataStream.ReadNextByte()
			local RawData = DataStream.ReadChunk(ValueSize)
			
			ParsedData.ValueType = DataType 
			ParsedData.RawData = RawData
		end
		if StoreType == "Instance" then 
			local InstanceName =  DataStream.ReadTranslation("InstanceName")
			ParsedData.ClassName =  InstanceName 
			ParsedData.Properties = {} 
			while not DataStream.EOF() do 
				local Property = Binary.Translate("ValueType",string.unpack("I2",DataStream.NextRaw(2)))
				local ValueSize = DataStream.ReadNextByte()
				local RawData  =  DataStream.ReadChunk(ValueSize)
				
				if Property ~= "Invalid" then 
					ParsedData.Properties[Property] = RawData
				end 
			end
		end
		if StoreType == "Root" then 
			ParsedData.ClassName = "Root"
			ParsedData.Root = {} 
			while not DataStream.EOF() do
				local RegistrySize = DataStream.ReadNextByte()	
				local RegistryRaw = DataStream.NextRaw(RegistrySize) 
				
				local RootSize = DataStream.ReadNextByte() 
				local RootRaw = DataStream.NextRaw(RootSize) 
				
				local RegisteryAddress = tonumber(RegistryRaw)
				ParsedData.Root[RegisteryAddress] = RootRaw
			end
		end
	else 
		warn("[RBXLSerialize][Binary]:StoreType defined as Invalid? Binary Data may be corrupted?")
	end
	return ParsedData 
end

function Binary.Init() 
	Binary.DecodeData = DecodeData	
	
	--  Create Translation Index
	for name,Indexes in pairs(Binary.DataIndex) do 
		Binary.TranslateIndex[name] = {}
		for i,v in pairs(Indexes) do 
			Binary.TranslateIndex[name][v] = i
		end 
	end 
end

Binary.Init() 
return Binary 