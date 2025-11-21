local ConversionMethod = {
	InstanceConvertor = require(script.Parent.Instance)
}
function ConversionMethod.Convert(RBXSerialize,Parsed) 
	RBXSerialize.ResetRegistry() 
	local Registry = RBXSerialize.GetRegistry()  	
	local RootBase = {} 
		
	RootBase.ConvertInstanceRegistry = function(CInstance,PropertyName,RegistryAddress,ParsedData) 
		local Parenting = PropertyName == "Parent"
		RBXSerialize.RegisterQueue(function()
			local ClassName = CInstance.ClassName 
			local RegisteredInstance = RBXSerialize.RetriveRegistry(RegistryAddress) 
			
			--warn(("<%i>:%s:"):format(RegistryAddress,PropertyName),CInstance,RegisteredInstance)
			
			if RegisteredInstance then 
				local WriteProperties = {} 
				if Parenting then
					local DeepValues = RBXSerialize.DeepValues[ClassName]
					if DeepValues then 
						for Property,_ in DeepValues do
							WriteProperties[Property] = CInstance[Property]
						end
					end
				end
				
				CInstance[PropertyName] = RegisteredInstance
				
				if Parenting then 
					local PostValues = RBXSerialize.PostValues[ClassName] 
					if PostValues then 
						for Property,Value in PostValues do 
							CInstance[Property] = Value 
						end
					end
					
					for Property,Value in WriteProperties do 
						CInstance[Property] = Value 
					end
				end
			end
		end)
	end

	for RegistryAddress,RawData in ipairs(Parsed.Root) do 
		local Parsed = RBXSerialize.Binary.DecodeData(RawData)
		local CInstance = ConversionMethod.InstanceConvertor.Convert(RBXSerialize,Parsed,RootBase)
		RBXSerialize.ManualRegister(RegistryAddress,CInstance) 
	end	
	
	RBXSerialize.ExhaustQueue() 
	
	return RBXSerialize.RetriveRegistry(1) 
end
return ConversionMethod