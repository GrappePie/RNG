-- What the sigma?

local v_u_1 = game:GetService("HttpService")
local v_u_2 = {}
local v_u_3 = setmetatable({}, {
	["__mode"] = "v"
})
v_u_2.rateQueues = v_u_3
local v_u_4 = {}
local v_u_5 = nil
local function v_u_18(p6, p7)
	local v8, v9, v10 = table.unpack(p7)
	if v10 == nil or p6.__lastResult[1] == v10 then
		local v11 = 0
		for _, _ in pairs(v9) do
			v11 = v11 + 1
		end
		local v12
		if 0 < v11 then
			v12 = {}
			local v13 = pcall
			local v14 = table.unpack(v9)
			local v15 = p6.__lastResult[2] or {}
			table.insert(v12, 1, {v13(v8, v14, table.unpack(v15))})
		else
			v12 = {}
			local v16 = pcall
			local v17 = p6.__lastResult[2] or {}
			table.insert(v12, 1, {v16(v8, table.unpack(v17))})
		end
		p6.__lastResult[1] = table.remove(v12, 1)
		p6.__lastResult[2] = v12
	end
end
local function v_u_25(p19)
	-- upvalues: (copy) v_u_18, (copy) v_u_5
	p19.status = "running"
	local v20 = {}
	local v21 = pcall
	local v22 = p19.handler
	local v23 = p19.arguments
	table.insert(v20, 1, {v21(v22, table.unpack(v23))})
	local v24 = table.remove(v20, 1)
	p19.__lastResult[1] = v24
	p19.__lastResult[2] = v20
	while 0 < #p19.__pipelines do
		v_u_18(p19, (table.remove(p19.__pipelines, 1)))
	end
	p19.status = "completed"
	p19.__pipelines = v_u_5
	while 0 < #p19.__awaits do
		task.defer(table.remove(p19.__awaits, 1))
	end
	p19.__awaits = v_u_5
end
function v_u_4.__index(p26, p27)
	-- upvalues: (ref) v_u_4
	if p27 == "success" then
		return p26.__lastResult[1] == true
	end
	if p27 ~= "new" then
		local v28 = v_u_4
		local v29 = rawget(v28, p27)
		if type(v29) == "function" then
			return v29
		end
	end
end
function v_u_4.hasError(p30)
	if p30.status ~= "completed" then
		p30:await()
	end
	if p30.__lastResult[1] then
		return false
	else
		return p30.__lastResult[2][1]
	end
end
function v_u_4.getResults(p31)
	if p31.status ~= "completed" then
		p31:await()
	end
	local v32 = p31:hasError()
	if v32 then
		return error(v32, 2)
	end
	local v33 = p31.__lastResult[2]
	return table.unpack(v33)
end
function v_u_4.getResultTable(p34)
	if p34.status ~= "completed" then
		p34:await()
	end
	local v35 = p34:hasError()
	if v35 then
		return error(v35, 2)
	else
		return p34.__lastResult[2]
	end
end
function v_u_4.andThen(p36, p37, ...)
	-- upvalues: (copy) v_u_18
	if p36.status == "completed" then
		task.defer(v_u_18, {
			p37,
			{ ... },
			true
		})
		return p36
	end
	local v38 = p36.__pipelines
	table.insert(v38, {
		p37,
		{ ... },
		true
	})
	return p36
end
function v_u_4.catch(p39, p40, ...)
	-- upvalues: (copy) v_u_18
	if p39.status == "completed" then
		task.defer(v_u_18, {
			p40,
			{ ... },
			false
		})
		return p39
	end
	local v41 = p39.__pipelines
	table.insert(v41, {
		p40,
		{ ... },
		false
	})
	return p39
end
function v_u_4.finally(p42, p43, ...)
	-- upvalues: (copy) v_u_18
	if p42.status == "completed" then
		task.defer(v_u_18, {
			p43,
			{ ... }
		})
		return p42
	end
	local v44 = p42.__pipelines
	table.insert(v44, {
		p43,
		{ ... }
	})
	return p42
end
function v_u_4.execute(p45)
	-- upvalues: (copy) v_u_25
	if p45.status == "pending" then
		p45.__execution = task.defer(v_u_25, p45)
	end
	return p45
end
function v_u_4.await(p46)
	if p46.status ~= "completed" then
		local v47 = p46.__awaits
		local v48 = coroutine.running
		table.insert(v47, v48())
		coroutine.yield()
	end
	return p46
end
function v_u_4.new(p49, ...)
	-- upvalues: (copy) v_u_1, (ref) v_u_4
	local v50 = {
		["id"] = v_u_1:GenerateGUID(false),
		["handler"] = p49,
		["arguments"] = { ... },
		["status"] = "pending",
		["__awaits"] = {},
		["__pipelines"] = {},
		["__lastResult"] = {}
	}
	local v51 = v_u_4
	return setmetatable(v50, v51)
end
local v52 = {
	["__call"] = function(_, ...)
		-- upvalues: (ref) v_u_4
		return v_u_4.new(...)
	end
}
local v53 = v_u_4
v_u_4 = setmetatable(v53, v52)
local v_u_54 = table.freeze(v_u_4)
function v_u_2.__insert(p55, p56, p57, ...)
	-- upvalues: (ref) v_u_54
	local v58 = v_u_54.new(p57, ...)
	if p56 then
		local v59 = p55.queues
		table.insert(v59, 1, v58)
	else
		local v60 = p55.queues
		table.insert(v60, v58)
	end
	if not p55.__process then
		p55:__activate(true)
	end
	return v58
end
function v_u_2.__activate(p61, p62)
	if p62 then
		local v63 = tick() - p61.__lastActivated
		if v63 < 1 / p61.__rate then
			p61.__process = task.delay(1 / p61.__rate - v63, p61.__activate, p61, true)
			return
		end
	end
	local v64 = table.remove(p61.queues, 1)
	if v64 then
		v64:execute()
		p61.__lastActivated = tick()
		p61.__process = task.delay(1 / p61.__rate, p61.__activate, p61, true)
	end
end
function v_u_2.__index(p65, p66)
	-- upvalues: (copy) v_u_2
	if p66 == "ratePerMinute" then
		return p65.__rate * 60
	end
	if p66 == "ratePerSecond" then
		return p65.__rate
	end
	if p66 ~= "new" and p66 ~= "findById" and p66 ~= "__index" and p66 ~= "__newindex" then
		local v67 = v_u_2
		local v68 = rawget(v67, p66)
		if type(v68) == "function" then
			return v68
		end
	end
end
function v_u_2.__newindex(p69, p70, p71)
	if p70 == "ratePerSecond" then
		rawset(p69, "__rate", p71)
		return
	elseif p70 == "ratePerMinute" then
		local v72 = p71 / 60
		rawset(p69, "__rate", v72)
	else
		rawset(p69, p70, p71)
	end
end
function v_u_2.insert(p73, ...)
	return p73:__insert(false, ...)
end
function v_u_2.insertFront(p74, ...)
	return p74:__insert(true, ...)
end
function v_u_2.remove(p75, p76)
	return p75:removeById(p76.id)
end
function v_u_2.removeById(p77, p78)
	for v79, v80 in ipairs(p77.queues) do
		if v80.id == p78 then
			table.remove(v80, v79)
			return true
		end
	end
	return false
end
function v_u_2.findProcessById(p81, p82)
	for _, v83 in ipairs(p81.queues) do
		if v83.id == p82 then
			return v83
		end
	end
end
function v_u_2.new(p84, p85, p86)
	-- upvalues: (copy) v_u_1, (copy) v_u_3, (copy) v_u_2
	local v87 = {
		["id"] = p84 or v_u_1:GenerateGUID(false),
		["queues"] = {},
		["__rate"] = p86 or p85 / 60,
		["__lastActivated"] = 0
	}
	local v88 = v_u_2
	v_u_3[v87.id] = setmetatable(v87, v88)
	return v87
end
function v_u_2.findById(p89)
	-- upvalues: (copy) v_u_3
	return v_u_3[p89]
end
v_u_2.Process = v_u_54
return table.freeze(v_u_2)