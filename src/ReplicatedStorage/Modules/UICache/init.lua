-- What the sigma?

local v_u_1 = require(script:WaitForChild("Table"))
local v_u_2 = {}
v_u_2.__index = v_u_2
v_u_2.__type = "UICache"
local v_u_3 = UDim2.new(0, 1000000000, 0, 0)
function v_u_2.new(p4, p5, p6)
	-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3
	local v7 = p5 or 5
	local v8 = p6 or workspace
	local v9 = 0 < p5
	assert(v9, "PrecreatedUIs can not be negative!")
	if p5 ~= 0 == false then
		warn("PrecreatedUIs is 0! This may have adverse effects when initially using the cache.")
	end
	if p4.Archivable == false then
		warn("The template\'s Archivable property has been set to false, which prevents it from being cloned. It will temporarily be set to true.")
	end
	local v10 = p4.Archivable
	p4.Archivable = true
	local v11 = p4:Clone()
	p4.Archivable = v10
	local v12 = {
		["Open"] = {},
		["InUse"] = {},
		["CurrentCacheParent"] = v8,
		["Template"] = v11,
		["ExpansionSize"] = 10
	}
	local v13 = v_u_2
	setmetatable(v12, v13)
	for _ = 1, v7 do
		local v14 = v_u_1.insert
		local v15 = v12.Open
		local v16 = v12.CurrentCacheParent
		local v17 = v11:Clone()
		v17.Position = v_u_3
		v17.Parent = v16
		v14(v15, v17)
	end
	v12.Template.Parent = nil
	return v12
end
function v_u_2.GetUI(p18)
	-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3
	local v19 = getmetatable(p18) == v_u_2
	assert(v19, ("Cannot statically invoke method \'%s\' - It is an instance method. Call it on an instance of this class created via %s"):format("GetUI", "UICache.new"))
	if #p18.Open == 0 then
		local v20 = warn
		local v21 = p18.ExpansionSize
		local v22 = #p18.Open + #p18.InUse + p18.ExpansionSize
		local v23 = tostring(v22)
		v20("No UIs available in the cache! Creating [" .. v21 .. "] new UI instance(s) - this amount can be edited by changing the ExpansionSize property of the UICache instance... (This cache now contains a grand total of " .. v23 .. " UIs.)")
		for _ = 1, p18.ExpansionSize do
			local v24 = v_u_1.insert
			local v25 = p18.Open
			local v26 = p18.Template
			local v27 = p18.CurrentCacheParent
			local v28 = v26:Clone()
			v28.Position = v_u_3
			v28.Parent = v27
			v24(v25, v28)
		end
	end
	local v29 = p18.Open[#p18.Open]
	p18.Open[#p18.Open] = nil
	v_u_1.insert(p18.InUse, v29)
	return v29
end
function v_u_2.ReturnUI(p30, p31)
	-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3
	local v32 = getmetatable(p30) == v_u_2
	assert(v32, ("Cannot statically invoke method \'%s\' - It is an instance method. Call it on an instance of this class created via %s"):format("ReturnUI", "UICache.new"))
	local v33 = v_u_1.indexOf(p30.InUse, p31)
	if v33 == nil then
		local v34 = error
		local v35 = p31.Name
		local v36 = p31:GetFullName()
		v34("Attempted to return UI \"" .. v35 .. "\" (" .. v36 .. ") to the cache, but it\'s not in-use! Did you call this on the wrong UI?")
	else
		v_u_1.remove(p30.InUse, v33)
		v_u_1.insert(p30.Open, p31)
		p31.Position = v_u_3
	end
end
function v_u_2.SetCacheParent(p37, p38)
	-- upvalues: (copy) v_u_2
	local v39 = getmetatable(p37) == v_u_2
	assert(v39, ("Cannot statically invoke method \'%s\' - It is an instance method. Call it on an instance of this class created via %s"):format("SetCacheParent", "UICache.new"))
	local v40 = p38:IsDescendantOf(workspace) or p38 == workspace
	assert(v40, "Cache parent is not a descendant of Workspace! UIs should be kept where they will remain in the visible world.")
	p37.CurrentCacheParent = p38
	for v41 = 1, #p37.Open do
		p37.Open[v41].Parent = p38
	end
	for v42 = 1, #p37.InUse do
		p37.InUse[v42].Parent = p38
	end
end
function v_u_2.Expand(p43, p44)
	-- upvalues: (copy) v_u_2, (copy) v_u_1, (copy) v_u_3
	local v45 = getmetatable(p43) == v_u_2
	assert(v45, ("Cannot statically invoke method \'%s\' - It is an instance method. Call it on an instance of this class created via %s"):format("Expand", "UICache.new"))
	if p44 == nil then
		p44 = p43.ExpansionSize
	end
	for _ = 1, p44 do
		local v46 = v_u_1.insert
		local v47 = p43.Open
		local v48 = p43.Template
		local v49 = p43.CurrentCacheParent
		local v50 = v48:Clone()
		v50.Position = v_u_3
		v50.Parent = v49
		v46(v47, v50)
	end
end
function v_u_2.Dispose(p51)
	-- upvalues: (copy) v_u_2
	local v52 = getmetatable(p51) == v_u_2
	assert(v52, ("Cannot statically invoke method \'%s\' - It is an instance method. Call it on an instance of this class created via %s"):format("Dispose", "UICache.new"))
	for v53 = 1, #p51.Open do
		p51.Open[v53]:Destroy()
	end
	for v54 = 1, #p51.InUse do
		p51.InUse[v54]:Destroy()
	end
	p51.Template:Destroy()
	p51.Open = {}
	p51.InUse = {}
	p51.CurrentCacheParent = nil
	p51.GetUI = nil
	p51.ReturnUI = nil
	p51.SetCacheParent = nil
	p51.Expand = nil
	p51.Dispose = nil
end
return v_u_2