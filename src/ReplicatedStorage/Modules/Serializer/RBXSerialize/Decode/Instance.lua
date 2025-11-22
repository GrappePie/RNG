local ConversionMethod = {}
function ConversionMethod.Convert(RBXSerialize,Parsed,RootBase,ForceParent)
	local ClassName = Parsed.ClassName
	local Class = RBXSerialize.API.Classes[ClassName] 
	local Properties = Class.GetInhertitedProperties()
	local Creatable = RBXSerialize.IsCreatable(ClassName)  
	if Creatable then 
		local NewInstance : PVInstance = Instance.new(ClassName,ForceParent ) 
		
		local AttributeRoot = Parsed.Properties["<<Attributes>>"]
		if AttributeRoot then 
			local Attributes = RBXSerialize.Binary.DecodeAttributes(AttributeRoot) 
			
			for AttributeName,AttributeTable in Attributes do 
				local Convert =	RBXSerialize.DoConversion(false,AttributeTable.DataType,AttributeTable.RawData)
				
				if Convert ~= nil then 
					NewInstance:SetAttribute(AttributeName,Convert)
				else
					RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(AttributeTable.DataType))
				end
			end
		end
		
		for PropertyName,RawData in pairs(Parsed.Properties) do 
			local PropertyInfo = Properties[PropertyName]
			if not PropertyInfo then 
				continue
			end
			
			local ValueType = PropertyInfo.ValueType.Name
			local PropertySuperClassInstance = ValueType == "Instance" 
			if PropertyInfo.ValueType.Category == "Class"  then
				local PropertyClass = RBXSerialize.API.Classes[ValueType]
				if PropertyClass then 
					PropertySuperClassInstance = true 
				end
			end
			
			
			local Convert =	RBXSerialize.DoConversion(false,PropertyInfo.ValueType.Name,RawData,Parsed)
			if Convert ~= nil then 
				NewInstance[PropertyName] = Convert
			else
				if PropertySuperClassInstance then
					if RootBase then 
						RootBase.ConvertInstanceRegistry(NewInstance,PropertyName,tonumber(RawData))		
					else 
						RBXSerialize.Warn("Cannot convert type 'Instance' when there are no additional references stored.")
					end
				else 
					RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(PropertyInfo.ValueType.Name))
				end
			end
		end
		return NewInstance
	end	
	RBXSerialize.Warn(("The instance type '%s' is uncreatable."):format(ClassName))
end         
return ConversionMethod