local ConversionMethod = {}
function ConversionMethod.Convert(RBXSerialize,Value)
	local TypeOf = typeof(Value)
	local Convert =	RBXSerialize.DoConversion(true,TypeOf,Value)
	if Convert ~= nil then 
		local Header = RBXSerialize.Binary.Describe("StoreType","Value")
		return Header.. RBXSerialize.Binary.Describe("DataType",TypeOf)..RBXSerialize.Binary.Describe("Value",Convert)
	end	
	RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(TypeOf))
end         
return ConversionMethod