local ConversionMethod = {}
function ConversionMethod.Convert(RBXSerialize,CInstance : PVInstance ,SubRoot)
	-- Contains the StoreType and the InstanceName.
	local InstanceData = RBXSerialize.Binary.Describe("StoreType","Instance")..RBXSerialize.Binary.Describe("InstanceName",CInstance.ClassName)
	local ClassName = CInstance.ClassName 
	local Class = RBXSerialize.API.Classes[ClassName] 
	local SaveTable = RBXSerialize.GetSaveValues(ClassName)
	local NeverSaveTable = RBXSerialize.GetNeverSaveValues(ClassName)

	
	if Class then 
		local AttributeData = "" 
		local Attributes = CInstance:GetAttributes()
		for Key,Value in Attributes  do
			local DataType = typeof(Value) 
			local Convert =	RBXSerialize.DoConversion(true,DataType,Value)
			if Convert ~= nil then 
				AttributeData ..= RBXSerialize.Binary.Describe("Value",Key)..RBXSerialize.Binary.Describe("DataType",DataType)..RBXSerialize.Binary.Describe("Value",Convert) 
			else 
				RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(DataType))
			end
		end
		
		if AttributeData ~= "" then 
			InstanceData ..= RBXSerialize.Binary.Describe("ValueType","<<Attributes>>")..RBXSerialize.Binary.Describe("Value",AttributeData)
		end
		
		for PropertyName,Property0o in pairs(Class.GetInhertitedProperties()) do 
			if Property0o.Is("ReadOnly") then 
				continue
			end
			if PropertyName == "Parent" then 
				continue;
			end
			if Property0o.Security then 
				if typeof(Property0o.Security) == "string" then 
					if Property0o.Security ~= "None" then 
						continue;
					end
				else 
					if Property0o.Security.Read ~= "None" or Property0o.Security.Write ~= "None" then 
						continue;
					end
				end
			end
			if NeverSaveTable[PropertyName] and not SaveTable[PropertyName] then 
				continue
			end
			
			local ValueType = Property0o.ValueType.Name
			local PropertySuperClassInstance = ValueType == "Instance" 
			if Property0o.ValueType.Category == "Class"  then
				local PropertyClass = RBXSerialize.API.Classes[ValueType]
				if PropertyClass then 
					PropertySuperClassInstance = true 
				end
			end
			

			local DefaultValue = RBXSerialize.GetDefaults(CInstance.ClassName,PropertyName)
			if DefaultValue ~= nil or PropertySuperClassInstance or SaveTable[PropertyName] then 
				local PropertyValue = CInstance[PropertyName]
	
				if DefaultValue ~= PropertyValue or PropertySuperClassInstance  or SaveTable[PropertyName] then 			
					local ParamaterClass = RBXSerialize.API.Classes[Property0o.ValueType.Name] 
					if PropertySuperClassInstance then 
						if SubRoot then 
							SubRoot.DescribeInstanceRegistry(PropertyValue,PropertyName)
							continue 
						end
					end					
				
					local Convert =	RBXSerialize.DoConversion(true,ValueType,PropertyValue)
					if Convert ~= nil then 
						--print(PropertyName,ValueType,PropertyValue)
						InstanceData ..= RBXSerialize.Binary.Describe("ValueType",PropertyName)..RBXSerialize.Binary.Describe("Value",Convert)
					else 
						RBXSerialize.Warn(("No convertor or conversion failure for the type %s."):format(ValueType))
					end
				end					
			end			
		end
		
		return InstanceData
	end
	RBXSerialize.Warn(("No api 0ormation for the class %s."):format(CInstance.ClassName))
end
return ConversionMethod