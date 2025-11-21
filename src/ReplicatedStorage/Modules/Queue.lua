-- What the sigma?

local v_u_1 = game:GetService("HttpService")
local v_u_2 = {}
local v_u_3 = {}
local v_u_4 = {}
local v_u_5 = {}
local v_u_6 = nil
local v_u_7 = nil
local function v_u_10(p8, ...)
	-- upvalues: (ref) v_u_7
	local v9 = v_u_7
	v_u_7 = nil
	p8(...)
	v_u_7 = v9
end
local function v_u_11()
	-- upvalues: (copy) v_u_10
	while true do
		v_u_10(coroutine.yield())
	end
end
local v_u_12 = {}
v_u_12.__index = v_u_12
function v_u_12.new(p13, p14)
	-- upvalues: (copy) v_u_12
	local v15 = v_u_12
	return setmetatable({
		["_connected"] = true,
		["_signal"] = p13,
		["_fn"] = p14,
		["_next"] = false
	}, v15)
end
function v_u_12.Disconnect(p16)
	p16._connected = false
	if p16._signal._handlerListHead == p16 then
		p16._signal._handlerListHead = p16._next
	else
		local v17 = p16._signal._handlerListHead
		while v17 and v17._next ~= p16 do
			v17 = v17._next
		end
		if v17 then
			v17._next = p16._next
		end
	end
end
setmetatable(v_u_12, {
	["__index"] = function(_, p18)
		error(("Attempt to get Connection::%s (not a valid member)"):format((tostring(p18))), 2)
	end,
	["__newindex"] = function(_, p19, _)
		error(("Attempt to set Connection::%s (not a valid member)"):format((tostring(p19))), 2)
	end
})
local v_u_20 = {}
v_u_20.__index = v_u_20
function v_u_20.new()
	-- upvalues: (ref) v_u_20
	local v21 = v_u_20
	return setmetatable({
		["_handlerListHead"] = false
	}, v21)
end
function v_u_20.Connect(p22, p23)
	-- upvalues: (copy) v_u_12
	local v24 = v_u_12.new(p22, p23)
	if not p22._handlerListHead then
		p22._handlerListHead = v24
		return v24
	end
	v24._next = p22._handlerListHead
	p22._handlerListHead = v24
	return v24
end
function v_u_20.DisconnectAll(p25)
	p25._handlerListHead = false
end
function v_u_20.Fire(p26, ...)
	-- upvalues: (ref) v_u_7, (copy) v_u_11
	local v27 = p26._handlerListHead
	while v27 do
		if v27._connected then
			if not v_u_7 then
				v_u_7 = coroutine.create(v_u_11)
				coroutine.resume(v_u_7)
			end
			task.spawn(v_u_7, v27._fn, ...)
		end
		v27 = v27._next
	end
end
function v_u_20.Wait(p28)
	local v_u_29 = coroutine.running()
	local v_u_30 = nil
	v_u_30 = p28:Connect(function(...)
		-- upvalues: (ref) v_u_30, (copy) v_u_29
		v_u_30:Disconnect()
		task.spawn(v_u_29, ...)
	end)
	return coroutine.yield()
end
function v_u_20.Once(p31, p_u_32)
	local v_u_33 = nil
	v_u_33 = p31:Connect(function(...)
		-- upvalues: (ref) v_u_33, (copy) p_u_32
		if v_u_33._connected then
			v_u_33:Disconnect()
		end
		p_u_32(...)
	end)
	return v_u_33
end
local v34 = v_u_20
setmetatable(v34, {
	["__index"] = function(_, p35)
		error(("Attempt to get Signal::%s (not a valid member)"):format((tostring(p35))), 2)
	end,
	["__newindex"] = function(_, p36, _)
		error(("Attempt to set Signal::%s (not a valid member)"):format((tostring(p36))), 2)
	end
})
function v_u_3.HasError(p37)
	if p37.Status == "Pending" or p37.Status == "Running" then
		p37.__done:Wait()
	end
	return p37.__err
end
function v_u_3.GetResults(p38)
	if p38.Status == "Pending" or p38.Status == "Running" then
		p38.__done:Wait()
	end
	if p38.__err then
		error(p38.__err, 2)
	end
	local v39 = p38.__results
	return table.unpack(v39)
end
function v_u_3.GetResultTable(p40)
	if p40.Status == "Pending" or p40.Status == "Running" then
		p40.__done:Wait()
	end
	if p40.__err then
		error(p40.__err, 2)
	end
	return p40.__results
end
function v_u_3.GetMetadata(p41)
	return p41.__meta
end
function v_u_3.SetMetadata(p42, p43)
	p42.__meta = p43
end
function v_u_3.Run(p44)
	-- upvalues: (copy) v_u_5
	if p44.Status == "Pending" then
		p44.Status = "Running"
		local v45 = {}
		local v46 = pcall
		local v47 = p44.__taskFn
		local v48 = p44.__args or v_u_5
		table.insert(v45, 1, {v46(v47, table.unpack(v48))})
		local v49 = table.remove(v45, 1)
		if getmetatable(p44) then
			if v49 then
				p44.__results = v45
				p44.Status = "Success"
			else
				p44.__err = v45[1]
				p44.Status = "Error"
			end
			p44.__done:Fire()
		end
	end
end
function v_u_3.Cancel(p50)
	-- upvalues: (copy) v_u_6
	p50.Status = "Canceled"
	p50.__taskFn = v_u_6
	p50.__args = v_u_6
end
function v_u_3.Destroy(p51)
	-- upvalues: (copy) v_u_6
	setmetatable(p51, nil)
	for v52, v53 in pairs(p51) do
		if typeof(v53) == "table" then
			if v53.DisconnectAll then
				v53:DisconnectAll()
			end
			table.clear(v53)
		end
		p51[v52] = v_u_6
	end
end
function v_u_3.__index(p54, p55)
	-- upvalues: (copy) v_u_3
	if p55 == "Completed" then
		return rawget(p54, "__done")
	end
	if p55 ~= "new" and v_u_3[p55] then
		local v56 = v_u_3[p55]
		if typeof(v56) == "function" then
			return v_u_3[p55]
		end
	end
end
function v_u_3.__tostring(p57)
	return ("Task : %*"):format(p57.TaskId)
end
function v_u_3.new(p58, p59, p60)
	-- upvalues: (ref) v_u_20, (copy) v_u_3
	local v61 = {
		["Status"] = "Pending",
		["TaskId"] = p58,
		["AutoDelete"] = true,
		["__taskFn"] = p59,
		["__args"] = p60,
		["__meta"] = {},
		["__done"] = v_u_20.new()
	}
	local v62 = v_u_3
	setmetatable(v61, v62)
	return v61
end
local function v_u_65(p63)
	-- upvalues: (copy) v_u_6
	if p63.__queue and 0 < #p63.__queue then
		local v64 = table.remove(p63.__queue, 1)
		while v64 ~= nil do
			v64:Run()
			if not p63.__taskDone then
				v64:Destroy()
				break
			end
			p63.__taskDone:Fire(v64.TaskId)
			if v64.AutoDelete then
				task.delay(3, v64.Destroy, v64)
			end
			v64 = table.remove(p63.__queue, 1)
		end
		p63.__queueWorker = v_u_6
	end
end
function v_u_2.AddTask(p66, p67, ...)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_65
	if p66 ~= v_u_2 then
		p66.__idStarts = p66.__idStarts + 1
		local v68 = p66.__idStarts
		local v69 = v_u_3.new(v68, p67, { ... })
		local v70 = p66.__queue
		table.insert(v70, v69)
		if #p66.__queue == 1 then
			if p66.__queueWorker and p66.__queueWorker == coroutine.running() then
				task.cancel(p66.__queueWorker)
			end
			if p66.__rateUpdated and workspace:GetServerTimeNow() - p66.__rateUpdated >= p66.__limitTime then
				p66.__ratesLeft = p66.__rate
				p66.__rateUpdated = workspace:GetServerTimeNow()
			elseif not p66.__rateUpdated then
				p66.__rateUpdated = workspace:GetServerTimeNow()
			end
			p66.__queueWorker = task.defer(v_u_65, p66)
		end
		return v69
	end
end
function v_u_2.RemoveTask(p71, p72)
	-- upvalues: (copy) v_u_2
	if p71 == v_u_2 then
		return
	end
	for _, v73 in ipairs(p71.__queue) do
		if v73.TaskId == p72 then
			v73:Cancel()
			return
		end
	end
end
function v_u_2.WaitForTask(p_u_74, p_u_75)
	-- upvalues: (copy) v_u_2
	if p_u_74 == v_u_2 then
		return
	end
	local v_u_76 = nil
	for _, v77 in ipairs(p_u_74.__queue) do
		if v77.TaskId == p_u_75 then
			v_u_76 = v77
			break
		end
	end
	if v_u_76 then
		local v_u_78 = coroutine.running()
		local v_u_79 = nil
		local v80 = p_u_74.__yieldingThreads
		table.insert(v80, v_u_78)
		v_u_79 = p_u_74.__taskDone:Connect(function(p81)
			-- upvalues: (copy) p_u_75, (ref) v_u_79, (copy) p_u_74, (copy) v_u_78, (ref) v_u_76
			if p_u_75 == p81 then
				v_u_79:Disconnect()
				local v82 = table.find(p_u_74.__yieldingThreads, v_u_78)
				if v82 then
					table.remove(p_u_74.__yieldingThreads, v82)
				end
				task.spawn(v_u_78, v_u_76)
			end
		end)
		return coroutine.yield()
	end
end
function v_u_2.ClearTasks(p83)
	-- upvalues: (copy) v_u_2
	if p83 ~= v_u_2 then
		for _, v84 in ipairs(p83.__queue) do
			v84:Cancel()
		end
		for _, v85 in ipairs(p83.__yieldingThreads) do
			coroutine.resume(v85)
		end
		table.clear(p83.__yieldingThreads)
		table.clear(p83.__queue)
	end
end
function v_u_2.GetTasks(p86)
	-- upvalues: (copy) v_u_2
	if p86 ~= v_u_2 then
		return p86.__queue
	end
end
function v_u_2.FindTask(p87, p88)
	-- upvalues: (copy) v_u_2
	if p87 == v_u_2 then
		return
	end
	for v89, v90 in ipairs(p87.__queue) do
		if v90.TaskId == p88 then
			return v89
		end
	end
end
function v_u_2.Destroy(p91)
	-- upvalues: (copy) v_u_2, (copy) v_u_4, (copy) v_u_6
	if p91 ~= v_u_2 then
		setmetatable(p91, nil)
		v_u_4[p91.__id] = v_u_6
		v_u_2.ClearTasks(p91)
		if p91.__rateTask then
			task.cancel(p91.__rateTask)
		end
		if p91.__queueWorker then
			task.cancel(p91.__queueWorker)
		end
		for v92, v93 in pairs(p91) do
			if typeof(v93) == "table" then
				if v93.DisconnectAll then
					v93:DisconnectAll()
				end
				table.clear(v93)
			end
			p91[v92] = v_u_6
		end
	end
end
function v_u_2.__index(p94, p95)
	-- upvalues: (copy) v_u_2
	if p94 ~= v_u_2 then
		if p95 == "Rate" then
			return rawget(p94, "__rate")
		end
		if p95 == "LimitTime" then
			return rawget(p94, "__limitTime")
		end
		if p95 == "Id" then
			return rawget(p94, "__id")
		end
		if p95 == "TaskEnded" then
			return rawget(p94, "__taskDone")
		end
		if p95 ~= "new" then
			local v96 = v_u_2
			local v97 = rawget(v96, p95)
			if v97 and typeof(v97) == "function" then
				return v97
			end
		end
	end
end
function v_u_2.__newindex(p98, p99, p100)
	-- upvalues: (copy) v_u_2, (copy) v_u_4
	if p98 ~= v_u_2 then
		local v101 = typeof(p100)
		if p99 == "Id" and (v101 == "number" or v101 == "string") then
			local v102 = v_u_4
			local v103 = rawget(p98, "__id")
			rawset(v102, v103, nil)
			rawset(p98, "__id", p100)
			local v104 = v_u_4
			rawset(v104, p100, p98)
		end
	end
end
function v_u_2.new(p105)
	-- upvalues: (copy) v_u_1, (ref) v_u_20, (copy) v_u_2, (copy) v_u_4
	local v106 = {
		["__id"] = p105 or v_u_1:GenerateGUID(false),
		["__queue"] = {},
		["__yieldingThreads"] = {},
		["__idStarts"] = 0,
		["__taskDone"] = v_u_20.new()
	}
	local v107 = v_u_2
	setmetatable(v106, v107)
	v_u_4[p105] = v106
	return v106
end
function v_u_2.findById(p108)
	-- upvalues: (copy) v_u_4
	return v_u_4[p108]
end
return table.freeze(v_u_2)