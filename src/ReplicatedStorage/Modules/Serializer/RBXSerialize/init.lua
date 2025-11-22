local RBXSerialize = {
	_IDENTITY = "RBXSerialize",
	_AUTHOR = "Whim#2127",
	_VERSION = "v0.1.5",
	_DESCRIPTION = "A All-In-One Roblox instance and datatype serializer.",
	_LICENSE = [[
    MIT LICENSE
    Copyright (c) 2022 Theron Akubuiro
    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    ]],
	API = {
		Classes = {},
		Enums = {
			EnumTypes = {}
		} 
	},
	Checks = {
		Defaults = {},
		Valid = {}
	},
	Registry = {
		__Queue ={},
		__Address ={},
	},
	DeepValues = { -- Deep Values are Values that are set before and after parenting 
		["Attachment"] = {
			["CFrame"] = true 	
		} 
	}, 
	PostValues = { -- Post Values are set after parenting.
		["Attachment"] = {
			["WorldCFrame"] = CFrame.new(Vector3.new(0,0,0))
		}
	},
	AlwaysSave = {
		["Attachment"] = {
			["CFrame"] = true, -- Negates parenting Transformation
		}
	},
	NeverSave = {
		["PVInstance"] = {
			["CFrame"] = true,   -- No point of saving the entire CFrame matrix. 
		},
		["Attachment"] = {
			["WorldCFrame"] = true, -- Causes werid transformations
			["WorldPosition"] = true, -- Causes werid transformations
		} 
	} ,
	Persistance = {
		Registry = {}, 
	} 
} 
-- Inherhit Methods
RBXSerialize.Convertors = require(script.Conversion)
RBXSerialize.Compress = require(script.Compress)
RBXSerialize.Binary = require(script.Binary)
RBXSerialize.Base92 = require(script.Base92) 


RBXSerialize.Warn = function(Str,...) 
	warn(("[RBXSerialize]: %s"):format(Str),...)
end
RBXSerialize.Error = function(Str,...) 
	error(("[RBXSerialize]: %s"):format(Str),...)
end


function RBXSerialize.IsCreatable(ClassName) 
	local __Cache = RBXSerialize.Checks.Valid[ClassName] 
	if not __Cache then 
		RBXSerialize.Checks.Valid[ClassName] = pcall(function() 
			Instance.new(ClassName)
		end)
		__Cache = RBXSerialize.Checks.Valid[ClassName]
	end
	return __Cache
end

function RBXSerialize.GetDefaults(ClassName,Property) 
	local instanceDefault = RBXSerialize.Checks.Defaults[ClassName]
	if not instanceDefault then 
		RBXSerialize.Checks.Defaults[ClassName] = Instance.new(ClassName) 
		instanceDefault = RBXSerialize.Checks.Defaults[ClassName]
	end
	local Success , Result = pcall(function() 
		return instanceDefault[Property]
	end)
	if Success then 
		return Result 	 
	end
end

function RBXSerialize.GetSaveValues(ClassName) 
	local SaveValues = RBXSerialize.AlwaysSave[ClassName] or {} 
	local Class = RBXSerialize.API.Classes[ClassName] 
	if Class then 
		Class.GetMasterClass(function(SuperClass) 
			local SaveTable = RBXSerialize.AlwaysSave[SuperClass.Name]
			if SaveTable then 
				for Index,Value in SaveTable do 
					SaveValues[Index] = Value 
				end
			end
		end)
	end
	
	return SaveValues
end

function RBXSerialize.GetNeverSaveValues(ClassName) 
	local NeverSaveValues = RBXSerialize.NeverSave[ClassName] or {} 
	local Class = RBXSerialize.API.Classes[ClassName] 
	if Class then 
		Class.GetMasterClass(function(SuperClass) 
			local SaveTable = RBXSerialize.NeverSave[SuperClass.Name]
			if SaveTable then 
				for Index,Value in SaveTable do 
					NeverSaveValues[Index] = Value 
				end
			end
		end)
	end

	return NeverSaveValues
end

-- Registry Functions -- 
function RBXSerialize.ExhaustQueue() 
	for _,QueueFunction in ipairs(RBXSerialize.Registry.__Queue) do
		QueueFunction() 
	end
end

function RBXSerialize.RegisterQueue(QueueFunction,Deep) 
	table.insert(RBXSerialize.Registry.__Queue,function() 
		local Registery =  RBXSerialize.GetRegistry() 
		QueueFunction(Registery)
	end)
end

function RBXSerialize.RegisterReferences(RegistryTable) 
	local TypeOf = typeof(RegistryTable)
	if not (TypeOf == "table") then 
		RBXSerialize.Error(("Expected type 'table' got '%s'."):format(TypeOf))
	end
	
	local Padding = #RBXSerialize.Persistance.Registry
	for RawAddress,IInstance in RegistryTable do 
		if typeof(IInstance) == "Instance" then 
			RBXSerialize.Persistance.Registry[RawAddress+Padding] = IInstance
		end
	end
end

function RBXSerialize.InheritPersistance() 
	for Address,RInstance in RBXSerialize.Persistance.Registry do 
		RBXSerialize.ManualRegister(Address+2,RInstance)  
	end
end

function RBXSerialize.Register(RegInstance) 
	local Value =  #RBXSerialize.Registry+1
	table.insert(RBXSerialize.Registry,RegInstance) -- This is simply done two count up by one, without effecting already registered things manually.l
	RBXSerialize.Registry.__Address[RegInstance] = Value 
	RBXSerialize.Registry.__Address[Value] = RegInstance 
	return Value 
end

function RBXSerialize.ManualRegister(Value,RegInstance) 
	RBXSerialize.Registry[Value] = RegInstance 
	RBXSerialize.Registry.__Address[RegInstance] = Value 
	RBXSerialize.Registry.__Address[Value] = RegInstance 
end

function RBXSerialize.RetriveRegistry(RegInstance) 
	return RBXSerialize.Registry.__Address[RegInstance]
end

function RBXSerialize.ResetRegistry() 
	RBXSerialize.Registry = {
		__Queue = {},
		__Address ={}
	}
	RBXSerialize.InheritPersistance() 
end

function RBXSerialize.GetRegistry() 
	return RBXSerialize.Registry
end

function RBXSerialize.IsA(InstanceName,SubInstance) 
	-- This seems inefficent, but its considerably faster than the alterantive. 
	local Success, Result = pcall(function() 
		return Instance.new(InstanceName)
	end)
	if Success then 
		local CheckInstance = Instance.new(InstanceName)
		if CheckInstance ~= nil then
			local Result = CheckInstance:IsA(SubInstance)
			CheckInstance:Destroy() 
			return Result
		end		
	end
	return false 
end

function RBXSerialize.BuildAPI() 
	local APIDump = require(script.Dumps.APIDump)
	
	local SuperClassRefer = {} 
	-- Build Classes
	for Index,Item in ipairs(APIDump.Classes) do
		RBXSerialize.API.Classes[Item.Name] = Item
		Item.Properties = {} 
		if Item.Members then 
			for i,Member in ipairs(Item.Members) do 
				if Member.MemberType == "Property" then 
					Item.Properties[Member.Name] = Member
				end
				Member.Is = function(MatchTag) 
					for _,ItemTag in ipairs(Member.Tags or {})  do
						if ItemTag == MatchTag then 
							return true 
						end
					end
					return false 
				end
			end
			Item.GetMasterClass = function(StepFunction) 
				local NextClass = Item 
				while NextClass do 
					local RealNextClass = NextClass.SuperClass 
					if RealNextClass  then
						if StepFunction then StepFunction(RealNextClass) end 
						NextClass = RealNextClass
					else 
						return RealNextClass
					end
				end
			end
			Item.GetInhertitedProperties = function()
				local Properties = {} 
				local NextClass = Item 
				while NextClass do 
					for Name,Member in pairs(NextClass.Properties) do 
						Properties[Name] = Member
					end
					NextClass = NextClass.SuperClass 
				end
				return Properties
			end
		end
	end
	-- Actually Setup superclasses 
	for Index,Item in ipairs(APIDump.Classes) do
		if Item.Superclass then
			local SuperClassItem = RBXSerialize.API.Classes[Item.Superclass] 
			if SuperClassItem then
				Item.SuperClass = SuperClassItem
			else 
				RBXSerialize.Warn("No superclass could be found for ",Item.Superclass)
			end			
		end
	end
end

function RBXSerialize.DoConversion(IsClass,Type,Value)
	local Convertor = RBXSerialize.Convertors[Type] 
	if Convertor then 
		return Convertor(IsClass,Value)
	end
end

function RBXSerialize.Encode(Class) 
	local Type = "Value"
	local TypeOfClass = typeof(Class)
	if TypeOfClass == "Instance" then 
		local ChildrenCount = #Class:GetChildren()
		Type = if ChildrenCount > 0 then "Instances" else "Instance" 
	end
	local EncodeMethod = script.Encode[Type] 
	if EncodeMethod then 
		local ConversionMethod = require(EncodeMethod) 
		
		local RawValue = ConversionMethod.Convert(RBXSerialize,Class) 
		if RawValue then 
			return RBXSerialize.Base92.encode(RBXSerialize.Compress.compress(RawValue)) 
		end
	end
	RBXSerialize.Error(("There is no EncodeMethod by the name '%s'."):format(Type))
end


function RBXSerialize.Decode(RawRawData) 
	local RawData = RBXSerialize.Compress.decompress(RBXSerialize.Base92.decode(RawRawData))
	local Parsed = RBXSerialize.Binary.DecodeData(RawData)
	local DecodeMethod = script.Decode[Parsed.Type] 
	if DecodeMethod then 
		local ConversionMethod = require(DecodeMethod) 

		return ConversionMethod.Convert(RBXSerialize,Parsed ) 
	end
	RBXSerialize.Error(("There is no DecodeMethod by the name '%s'."):format(Parsed.Type))
end


return RBXSerialize