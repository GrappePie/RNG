local ConversionMethod = {}
function ConversionMethod.Convert(RBXSerialize,Parsed) 
	local ValueType = Parsed.ValueType
	local Convert =	RBXSerialize.DoConversion(false,ValueType,Parsed.RawData)
	if Convert ~= nil then 
		return Convert
	end
	RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(ValueType))
end
return ConversionMethod