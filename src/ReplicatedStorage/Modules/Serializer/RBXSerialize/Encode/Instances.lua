local ConversionMethod = {
	InstanceConvertor = require(script.Parent.Instance)
}
function ConversionMethod.Convert(RBXSerialize,CInstance)
	RBXSerialize.ResetRegistry() 
	local Registry = RBXSerialize.GetRegistry()  
	
	-- Contains the StoreType and the InstanceName.
	local InstanceData = RBXSerialize.Binary.Describe("StoreType","Root")..RBXSerialize.Binary.Describe("InstanceName",CInstance.ClassName)	
	local RootString = RBXSerialize.Binary.Describe("StoreType","Root")
	local RegisterInstance = function(NInstance)
		local SubRoot = {
			NeedsDescribing = false, 
			Properties = {} 
		} 
		SubRoot.DescribeInstanceRegistry = function(RInstance,PropertyName) 
			SubRoot.NeedsDescribing = true 
			
			table.insert(SubRoot.Properties,{
				RInstance = RInstance,
				PropertyName = PropertyName
			})
		end
		
		local Parsed = ConversionMethod.InstanceConvertor.Convert(RBXSerialize,NInstance,SubRoot)
		if Parsed then
			local RegistryAddress = RBXSerialize.Register(NInstance)
			
			if SubRoot.NeedsDescribing then 
				for _,PropertyRoot in SubRoot.Properties do 
					RBXSerialize.RegisterQueue(function() 
						local ReferRegistryAddress = RBXSerialize.RetriveRegistry(PropertyRoot.RInstance) 
						
						if ReferRegistryAddress then 
							Parsed ..= RBXSerialize.Binary.Describe("ValueType",PropertyRoot.PropertyName)..RBXSerialize.Binary.Describe("Value",tostring(ReferRegistryAddress)) 
						end
					end)
				end
			end
			RBXSerialize.RegisterQueue(function()
				local InstanceRegistryAddress = RBXSerialize.RetriveRegistry(NInstance)
				local ParentRegistryAddress = RBXSerialize.RetriveRegistry(NInstance.Parent) 
				
				if ParentRegistryAddress  then
					Parsed ..= RBXSerialize.Binary.Describe("ValueType","Parent")..RBXSerialize.Binary.Describe("Value",ParentRegistryAddress)
				end
				
				local RawData = RBXSerialize.Binary.Describe("Value",RegistryAddress) ..  RBXSerialize.Binary.Describe("Value",Parsed) 
				RootString = RootString .. RawData		
			end)
		end
	end 
	
	
	
	RegisterInstance(CInstance)

	for i,Descedant in ipairs(CInstance:GetDescendants()) do 
		RegisterInstance(Descedant)
	end
	
	RBXSerialize.ExhaustQueue() 

	return RootString
end
return ConversionMethod