-- This is were the magic happens!
function splitbyte(input)
	local byte,p,flags = string.byte(input),128,{false,false,false,false,false,false,false,false}
	for i=1,8 do
		if byte>=p then flags[i],byte = true,byte-p end
		p=p/2
	end
	return flags
end
function formbyte(...)
	local byte = 0
	for p=1,8 do
		local bit=select(p,...)
		if bit then byte=byte+2^(8-p) end
	end
	return string.char(byte)
end
local valueType = "f"
function deflate(forceType,...) 
	return string.pack(string.rep(forceType or valueType,#{...}),...)
end 
function flate(forceType,raw,n)
	return string.unpack(string.rep(forceType or valueType,n),raw)
end 

function getNativeSize(forceType) 
	return #string.pack(forceType or valueType ,1) 
end
--- Nice Binary Functions^^^^^^^^^^ Lazy formatting/macros


--  Kept this cacheing for backwards compatability.
local EnumStorage = {
	Enums = {},
	AllEnums = Enum:GetEnums(),
} 
local cache = function(storage,enum) 
	local Table  = {}
	for _,v in ipairs(enum:GetEnumItems()) do
		Table[v.Value] = v 
	end
	storage[enum] = Table
end 

for i,enum in ipairs(EnumStorage.AllEnums) do 
	EnumStorage.Enums[enum] = i
	cache(EnumStorage,enum)
end


return {
	-- Comment for other developers who want to make their own serizliers!
	-- This is stupid complicated, alot of contextual information is used to make this work 
	-- Instance -> Propertyname -> Class -> Class.Name | SubEnum -> EnumValue 
	-- or  Instance|[PropertyName->ClassName(APIInstance[PropertyName].Class)][Value] (as little as 5bytes!)
	-- Irregular Conversion ! < More Context > , certain value are contextual such as SubEnum[PropertyName/Class]
	--ENCODE: Store EnumValue, SubEnum is contextual. 
	--DECODE: Index = Enum[SubEnum] | EnumStorage [ Index ] [ EnumValue ] - > Enum[SubEnum][EnumValue]	
	["ContextEnumItem"] = function(IsClass,EnumValue,SubEnum) --- This saves only saves 2bytes! it has been retired unfortuntely as it didnt allow for value conversino normally.
		if IsClass then 
			return string.pack("I2",EnumValue.Value)
		else 	
			return EnumStorage[Enum[SubEnum]][string.unpack("I2",EnumValue)]	
		end
	end,
	["EnumItem"] = function(IsClass,EnumValue : EnumItem) 
		if IsClass then 
			local ParentEnumID = EnumStorage.Enums[EnumValue.EnumType]
			local EnumValue = EnumValue.Value 
			return string.pack("I2I1",ParentEnumID,EnumValue)
		else 
			local ParentEnumID,EnumValue = string.unpack("I2I1",EnumValue)
			local ParentEnum = EnumStorage.AllEnums[ParentEnumID] 
			local Enum = EnumStorage[ParentEnum][EnumValue]
			return Enum
		end
	end,
	-- Normal Conversion 
 	["ColorSequence"] = function(IsClass,ColorSequenceValue) 
		if IsClass then 
			local encodeStr = ""
			local blockSize =  string.packsize("f I1 I1 I1")
			for i,v in ipairs(ColorSequenceValue.Keypoints) do 
				local ColorKeypoint = v 
				local C3 = ColorKeypoint.Value
				local r, g, b = math.floor(C3.R*255), math.floor(C3.G*255), math.floor(C3.B*255)
				local block =  string.pack("f I1 I1 I1",ColorKeypoint.Time,r,g,b) --  further optimizations are possible to store
				encodeStr=encodeStr..block 
			end
			return encodeStr 
		else 
			local array  = {} 
			local blockSize =  string.packsize("f I1 I1 I1")
			for i=1,#ColorSequenceValue,blockSize do 
				local block = ColorSequenceValue:sub(i,i+blockSize) 
				local Time , r,g,b  = string.unpack("f I1 I1 I1",block) 
				table.insert(array,ColorSequenceKeypoint.new(Time,Color3.new(r/255,g/255,b/255)))
			end
			return ColorSequence.new(array)
		end
	end,
	["ColorSequenceKeypoint"] = function(IsClass,ColorKeypoint) 
		if IsClass then 
			local C3 = ColorKeypoint.Value
			local r, g, b = math.floor(C3.R*255), math.floor(C3.G*255), math.floor(C3.B*255)
			print(r,g,b)
			return string.pack("f I1 I1 I1",ColorKeypoint.Time,r,g,b) --  further optimizations are possible to store
		else
			local Time , r,g,b  = string.unpack("f I1 I1 I1",ColorKeypoint)
			return ColorSequenceKeypoint.new(Time,Color3.new(r/255,g/255,b/255))
		end
	end,
	["NumberSequence"] = function(isClass,NumberSequenceValue) 
		if isClass then 
			-- Basic binary array 
			local encodeStr = ""
			local nativeFloatSize = getNativeSize(nil) 
			local blockSize = nativeFloatSize*3 
			for i,v in ipairs(NumberSequenceValue.Keypoints) do 
				local block = deflate(nil,v.Time,v.Value,v.Envelope)
				encodeStr = encodeStr..block 
			end 

			return encodeStr
		else
			local array = {} 
			local nativeFloatSize = getNativeSize(nil) 
			local blockSize = nativeFloatSize*3 
			for i=1,#NumberSequenceValue,blockSize do 
				local block = NumberSequenceValue:sub(i,i+blockSize) 
				local a,b,c = flate(nil,block,3) 
				table.insert(array,NumberSequenceKeypoint.new(a,b,c))
			end
			warn(array)
			return NumberSequence.new(array)
		end
	end,
	["NumberSequenceKeypoint"] = function(IsClass,NumberKeypoint)
		if IsClass then 
			return deflate(nil,NumberKeypoint.Time,NumberKeypoint.Value,NumberKeypoint.Envelope)
		else 
			local a,b,c = flate(nil,NumberKeypoint,3) 
			return NumberSequenceKeypoint.new(a,b,c)
		end
	end,
	["Rect"] = function(IsClass,RectValue)
		if IsClass then 
			return deflate(nil,RectValue.Min.X,RectValue.Min.Y,RectValue.Max.X,RectValue.Max.Y)
		else 
			local a,b,c,d = flate(nil,RectValue,4)
			return Rect.new(a,b,c,d)
		end
	end,
	["Ray"] = function(IsClass,RayValue) 
		if IsClass then 
			return deflate(nil,RayValue.Orgin.X,RayValue.Orgin.Y,RayValue.Orgin.Z,RayValue.Direction.X,RayValue.Direction.Y,RayValue.Direction.Z)
		else 
			local x,y,z,x1,y1,z1 = flate(nil,RayValue,6)
			return Ray.new(Vector3.new(x,y,z,x1,y1,z1))
		end
	end,
	["PhysicalProperties"] = function(IsClass,PhysicalPropertiesValue) 
		if IsClass then 
			return deflate(nil,PhysicalPropertiesValue.Density,PhysicalPropertiesValue.Friction,PhysicalPropertiesValue.Elasticity,
				PhysicalPropertiesValue.FrictionWeight,PhysicalPropertiesValue.ElasticityWeight)
		else 
			local a,b,c,d,e = flate(nil,PhysicalPropertiesValue,5)
			return PhysicalProperties.new(a,b,c,d,e)
		end
	end,
	["NumberRange"] = function(IsClass,NumberRangeValue) 
		if IsClass then 
			return deflate(nil,NumberRangeValue.Min,NumberRangeValue.Max)
		else 
			local a,b = flate(nil,NumberRangeValue,2)
			return NumberRange.new(a,b)
		end
	end,
	["UDim"] = function(IsClass,value)
		if IsClass then 
			return deflate(nil,value.Scale,value.Offset) 
		else 
			local a,b = flate(nil,value,2)
			return UDim2.new(a,b)
		end
	end,
	["Color3"] = function(IsClass,C3) 
		if IsClass then 
			local r, g, b = math.round(C3.R*255), math.round(C3.G*255), math.round(C3.B*255)
			return deflate("I1",r,g,b)	
		else 
			local r1,g2,b2 = flate("I1",C3,3) 
			local r,g,b = r1/255,g2/255,b2/255
			return Color3.new(r,g,b)
		end
	end,
	["UDim2"] = function(IsClass,value)
		if IsClass then
			return  deflate(nil,value.X.Scale,value.X.Offset,value.Y.Scale,value.Y.Offset)
		else 
			local a,b,c,d = flate(nil,value,4)
			return UDim2.new(a,b,c,d)
		end
	end,
	["Vector3"] = function(IsClass,vector) 
		if IsClass then 
			if vector then 
				return deflate(nil,vector.X,vector.Y,vector.Z)
			end
		else 
			local X,Y,Z = flate(nil,vector,3)
			return Vector3.new(X,Y,Z)
		end
	end,
	["Vector3int16"] = function(IsClass,vector) 
		if IsClass then 
			if vector then 
				return deflate("i2",vector.X,vector.Y,vector.Z)
			end
		else 
			local X,Y,Z = flate("i2",vector,3)
			return Vector3.new(X,Y,Z)
		end
	end,
	["Vector2"] = function(IsClass,vector) 
		if IsClass then 
			if vector then 
				return deflate(nil,vector.X,vector.Y)
			end
		else 
			local X,Y = flate(nil,vector,2)
			return Vector2.new(X,Y)
		end
	end,
	["Vector2int16"] = function(IsClass,vector) 
		if IsClass then 
			if vector then 
				return deflate("i2",vector.X,vector.Y)
			end
		else 
			local X,Y = flate("i2",vector,2)
			return Vector2.new(X,Y)
		end
	end,
	["Content"]= function(IsClass,str) 
		return str
	end,
	["ProtectedString"] = function(IsClass,str) 
		return str
	end,
	["string"] = function(IsClass,str) 
		return str 
	end,
	["bool"] = function(IsClass,bool) 
		if IsClass then 
			return ({[true]="#",[false]="$"})[bool]
		else 
			return ({["#"]=true,["$"]=false})[bool]
		end
	end,
	["boolean"] = function(IsClass,bool) 
		if IsClass then 
			return ({[true]="#",[false]="$"})[bool]
		else 
			return ({["#"]=true,["$"]=false})[bool]
		end
	end,
	["float"] = function(IsClass,float) 
		if IsClass then 
			return deflate("f",float)
		else 
			local a = flate("f",float,1)
			return a 
		end
	end,
	["double"] = function(IsClass,float) 
		if IsClass then 
			return deflate("d",float)
		else 
			local a = flate("d",float,1)
			return a 
		end
	end,
	["number"] = function(IsClass,float) 
		if IsClass then 
			return deflate("d",float)
		else 
			local a = flate("d",float,1)
			return a 
		end
	end,
	["int"] = function(IsClass,float) 
		if IsClass then 
			return deflate("i",math.floor(float))
		else 
			local a = flate("i",float,1)
			return a 
		end
	end,
	["int64"] = function(IsClass,float) 
		if IsClass then 
			return deflate("i8",math.floor(float))
		else 
			local a = flate("i8",float,1)
			return a 
		end
	end,
	["SurfaceType"] = function(IsClass,surfaceType) 
		if IsClass then 
			return deflate(nil,surfaceType.Value)
		else 
			local id = flate(nil,surfaceType,1)
			return EnumStorage[Enum.SurfaceType][id]
		end
	end,
	["BrickColor"] = function(IsClass,brickColor)  
		if IsClass then 
			return deflate(nil,math.floor(brickColor.Number))
		else 
			local id = flate(nil,brickColor,1)
			return BrickColor.new(id)
		end
	end,
	["Material"] = function(IsClass,material)
		if IsClass then
			return deflate(nil,material.Value)
		else  
			local id = flate(nil,material,1)
			return EnumStorage[Enum.Material][id]
		end
	end,
	["Faces"] = function(IsClass,faces) 
		if IsClass then 
			local byte = splitbyte(string.char(0))
			for i,v in ipairs(table.pack(faces.Top,faces.Bottom,faces.Left,faces.Right,faces.Back,faces.Front)) do 
				byte[i] = v 
			end
			-- table.unpack removes the tuple for some reason ?  
			return formbyte(faces)
		else 
			local face = {}
			local newValues = splitbyte(faces)
			for i,v in ipairs(newValues) do 
				if i <= 5 then 
					face[i] = v
				end
			end
			return Faces.new(table.unpack(face))
		end
	end,
	["CFrame"] = function(IsClass,Cframe) 
		if IsClass then 
			return deflate(nil,Cframe:components())
		else 
			-- yeah just thank string.unpack!
			local a,b,c,d,e,f,g,h,i,j,k,l = flate(nil,Cframe,12)
			return CFrame.new(a,b,c,d,e,f,g,h,i,j,k,l)
		end
	end,
	["CoordinateFrame"] = function(IsClass,Cframe) 
		if IsClass then 
			 return deflate(nil,Cframe:components())
		else 
			local a,b,c,d,e,f,g,h,i,j,k,l = flate(nil,Cframe,12)
			return CFrame.new(a,b,c,d,e,f,g,h,i,j,k,l)
		end
	end
}
