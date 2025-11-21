--!strict
local tbl_4_upvr = {}
local tbl_5 = {
	__mode = 'v';
}
local setmetatable_result1_upvr = setmetatable({}, tbl_5)
local tbl_7_upvr = {}
local tbl_10_upvr = {}
local tbl_13_upvr = {}
local tbl_6 = {}
local var8_upvr = nil
local function randomString_upvr(arg1) -- Line 98, Named "randomString"
	local randint = math.random(0, 15)
	local var10
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var10 = randint
		return var10
	end
	if arg1 ~= 'x' or not INLINED() then
		var10 = bit32.band(randint, 3) + 8
	end
	return string.format("%x", var10)
end
local function _getId(arg1) -- Line 104, Named "getId"
	--[[ Upvalues[1]:
		[1]: randomString_upvr (readonly)
	]]
	if not arg1 then
		return
	end
	return ("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", randomString_upvr):upper()
end
local function _(arg1) -- Line 112, Named "safeLen"
	local var15 = 0
	for _, _ in pairs(arg1) do
		var15 += 1
	end
	return var15
end
function tbl_6.__call(arg1, ...) -- Line 116
	return arg1.new(...)
end
local tbl_upvr = {}
tbl_7_upvr.prototype = tbl_upvr
local function findProcessById_upvr(arg1, arg2) -- Line 127, Named "resolve"
	local unpacked_value_1: any, unpacked_value_2, unpacked_value_3 = table.unpack(arg2)
	local var27
	if unpacked_value_3 == nil or arg1.__results[1] == unpacked_value_3 then
		local var28: {any}
		var27 = 0
		for i_2, v_2 in pairs(unpacked_value_2) do
			var27 += 1
		end
		if 0 < var27 then
			local tbl_16 = {}
			local v_2 = arg1.__results
			local i_2 = v_2[2]
			if not i_2 then
				i_2 = {}
			end
			tbl_16[1] = pcall(unpacked_value_1, table.unpack(unpacked_value_2), table.unpack(i_2))
			var28 = tbl_16
		else
			local tbl_3 = {}
			local i_2 = arg1.__results
			local _2 = i_2[2]
			if not _2 then
				_2 = {}
			end
			tbl_3[1] = pcall(unpacked_value_1, table.unpack(_2))
			var28 = tbl_3
		end
		arg1.__results[1] = table.remove(var28, 1) :: any
		if 0 < #var28 then
			arg1.__results[2] = var28
		end
	end
end
local function _insert_upvr(arg1: any) -- Line 147, Named "executeProcess"
	--[[ Upvalues[2]:
		[1]: findProcessById_upvr (readonly)
		[2]: var8_upvr (readonly)
	]]
	arg1.status = "running"
	local tbl_8 = {pcall(arg1.handler, table.unpack(arg1.arguments))}
	arg1.__results[1] = table.remove(tbl_8, 1)
	arg1.__results[2] = tbl_8
	if arg1.__fastAwaits then
		while 0 < #arg1.__fastAwaits do
			task.spawn(table.remove(arg1.__fastAwaits, 1) :: any)
		end
	end
	while 0 < #arg1.__pipelines do
		findProcessById_upvr(arg1, table.remove(arg1.__pipelines, 1) :: any)
	end
	arg1.status = "completed"
	arg1.__pipelines = var8_upvr
	if arg1.__awaits then
		while 0 < #arg1.__awaits do
			task.spawn(table.remove(arg1.__awaits, 1) :: any)
		end
	end
	arg1.__awaits = var8_upvr
end
function tbl_7_upvr.__index(arg1, arg2) -- Line 180
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg2 == "success" then
		if arg1.__results[1] ~= true then
		else
		end
		return true
	end
	return rawget(tbl_upvr, arg2)
end
local function new(arg1, ...) -- Line 188
	--[[ Upvalues[2]:
		[1]: randomString_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	local module = {}
	local var37
	if not var37 then
		var37 = ("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", randomString_upvr):upper()
	end
	module.id = var37
	module.handler = arg1
	module.arguments = {...}
	module.status = "pending"
	module.success = false
	module.__pipelines = {}
	module.__results = {}
	return setmetatable(module, tbl_7_upvr)
end
tbl_7_upvr.new = new
local function await(arg1, arg2) -- Line 200
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local status = arg1.status
	if status ~= "completed" then
		if arg2 then
			status = "__fastAwaits"
		else
			status = "__awaits"
		end
		if not arg1[status] then
		end
		arg1[status] = {}
		table.insert(arg1[status], coroutine.running())
		coroutine.yield()
	end
	return arg1
end
tbl_upvr.await = await
function tbl_upvr.hasError(arg1) -- Line 211
	if arg1.status ~= "completed" then
		arg1:await()
	end
	if not arg1.__results[1] then
		return arg1.__results[2][1]
	end
	return false
end
function tbl_upvr.getResults(arg1) -- Line 223
	if arg1.status ~= "completed" then
		arg1:await()
	end
	local any_hasError_result1_2 = arg1:hasError()
	if any_hasError_result1_2 then
		return error(any_hasError_result1_2, 2)
	end
	return table.unpack(arg1.__results[2])
end
function tbl_upvr.getResultTable(arg1) -- Line 237
	if arg1.status ~= "completed" then
		arg1:await()
	end
	local any_hasError_result1 = arg1:hasError()
	if any_hasError_result1 then
		return error(any_hasError_result1, 2)
	end
	return arg1.__results[2]
end
function tbl_upvr.andThen(arg1, arg2, ...) -- Line 251
	--[[ Upvalues[1]:
		[1]: findProcessById_upvr (readonly)
	]]
	if arg1.status ~= "completed" then
		local tbl_12 = {}
		tbl_12[1] = arg2
		tbl_12[2] = {...}
		tbl_12[3] = true :: any
		table.insert(arg1.__pipelines, tbl_12)
		return arg1
	end
	local tbl_15 = {}
	tbl_15[1] = arg2
	tbl_15[2] = {...}
	tbl_15[3] = true :: any
	task.spawn(findProcessById_upvr, arg1, tbl_15)
	return arg1
end
function tbl_upvr.catch(arg1, arg2, ...) -- Line 261
	--[[ Upvalues[1]:
		[1]: findProcessById_upvr (readonly)
	]]
	if arg1.status ~= "completed" then
		local tbl_2 = {}
		tbl_2[1] = arg2
		tbl_2[2] = {...}
		tbl_2[3] = false :: any
		table.insert(arg1.__pipelines, tbl_2)
		return arg1
	end
	local tbl = {}
	tbl[1] = arg2
	tbl[2] = {...}
	tbl[3] = false :: any
	task.spawn(findProcessById_upvr, arg1, tbl)
	return arg1
end
function tbl_upvr.finally(arg1, arg2, ...) -- Line 271
	--[[ Upvalues[1]:
		[1]: findProcessById_upvr (readonly)
	]]
	if arg1.status ~= "completed" then
		local tbl_11 = {}
		tbl_11[1] = arg2
		tbl_11[2] = {...}
		table.insert(arg1.__pipelines, tbl_11)
		return arg1
	end
	local tbl_14 = {}
	tbl_14[1] = arg2
	tbl_14[2] = {...}
	task.spawn(findProcessById_upvr, arg1, tbl_14)
	return arg1
end
function tbl_upvr.execute(arg1) -- Line 281
	--[[ Upvalues[1]:
		[1]: _insert_upvr (readonly)
	]]
	if arg1.status == "pending" then
		arg1.__execution = task.spawn(_insert_upvr, arg1)
	end
	return arg1
end
setmetatable(tbl_7_upvr, tbl_6)
tbl_upvr = {} :: any
local var54 = tbl_upvr
tbl_4_upvr.__index = var54
tbl_4_upvr.prototype = var54
tbl_4_upvr.new = function(arg1) -- Line 299, Named "new"
	--[[ Upvalues[3]:
		[1]: randomString_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
	]]
	local var55 = arg1
	if not var55 then
		var55 = ("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", randomString_upvr):upper()
	end
	local var56 = var55
	if not setmetatable_result1_upvr[var56] then
		setmetatable_result1_upvr[var56] = setmetatable({
			id = var56;
			queues = {};
		}, tbl_4_upvr)
	end
	return setmetatable_result1_upvr[var56]
end
var54._activate = function(arg1, arg2) -- Line 311, Named "_activate"
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	if not arg2 and arg1._active then
	else
		arg1._active = true
		local popped_2 = table.remove(arg1.queues, 1)
		if popped_2 then
			popped_2:execute():await(true)
			task.spawn(arg1._activate, arg1, true)
			return
		end
		arg1._active = var8_upvr
	end
end
var54._insert = function(arg1, arg2, arg3, ...) -- Line 325, Named "_insert"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	local any_new_result1 = tbl_7_upvr.new(arg3, ...)
	if arg2 then
		table.insert(arg1.queues, 1, any_new_result1)
	else
		table.insert(arg1.queues, any_new_result1)
	end
	arg1:_activate()
	return any_new_result1
end
var54.removeById = function(arg1, arg2) -- Line 339, Named "removeById"
	for i_3, v_3 in ipairs(arg1.queues) do
		if v_3.id == arg2 then
			table.remove(arg1.queues, i_3)
			return true
		end
	end
	return false
end
var54.remove = function(arg1, arg2) -- Line 350, Named "remove"
	return arg1:removeById(arg2.id)
end
var54.insert = function(arg1, ...) -- Line 354, Named "insert"
	return arg1:_insert(false, ...)
end
var54.insertFront = function(arg1, ...) -- Line 358, Named "insertFront"
	return arg1:_insert(true, ...)
end
var54.findProcessById = function(arg1, arg2): () -- Line 362, Named "findProcessById"
	for _, v_4 in ipairs(arg1.queues) do
		if v_4.id == arg2 then
			return v_4
		end
	end
end
var54 = {} :: any
local var70 = var54
findProcessById_upvr = setmetatable({} :: any, tbl_5)
local var71_upvr = findProcessById_upvr :: any
tbl_10_upvr.__index = var70
tbl_10_upvr.prototype = var70
tbl_10_upvr.waitters = var71_upvr
tbl_10_upvr.new = function(arg1) -- Line 380, Named "new"
	--[[ Upvalues[3]:
		[1]: randomString_upvr (readonly)
		[2]: var71_upvr (readonly)
		[3]: tbl_10_upvr (readonly)
	]]
	local var72 = arg1
	if not var72 then
		var72 = ("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", randomString_upvr):upper()
	end
	local var73 = var72
	if not var71_upvr[var73] then
		var71_upvr[var73] = setmetatable({
			id = var73;
			container = {};
			__threads = {};
		}, tbl_10_upvr)
	end
	return var71_upvr[var73]
end
var70.await = function(arg1) -- Line 393, Named "await"
	if 0 < #arg1.container then
		table.insert(arg1.__threads, coroutine.running())
		coroutine.yield()
	end
	return arg1
end
var70.executeAll = function(arg1) -- Line 402, Named "executeAll"
	for _, v_5 in ipairs(arg1.container) do
		v_5:execute()
	end
	return arg1
end
var70.removeById = function(arg1: any, arg2) -- Line 410, Named "removeById"
	for i_6, v_6 in ipairs(arg1.container) do
		if v_6.id == arg2 then
			table.remove(arg1.container, i_6)
			return v_6
		end
	end
end :: any
var70.remove = function(arg1, arg2) -- Line 419, Named "remove"
	return arg1:removeById(arg2.id)
end
var70.destroy = function(arg1: any) -- Line 423, Named "destroy"
	--[[ Upvalues[1]:
		[1]: var71_upvr (readonly)
	]]
	var71_upvr[arg1.id] = nil
	while 0 < #arg1.__threads do
		task.spawn(table.remove(arg1.__threads, 1) :: any)
	end
	setmetatable(arg1, nil)
	table.clear(arg1.container)
	table.clear(arg1.__threads)
	table.clear(arg1)
end
var70.insert = function(arg1, arg2) -- Line 436, Named "insert"
	if arg2.status ~= "completed" then
		table.insert(arg1.container, arg2)
		arg2:finally(function(...) -- Line 440
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			local table_find_result1 = table.find(arg1.container, arg2)
			if table_find_result1 then
				table.remove(arg1.container, table_find_result1)
			end
			if #arg1.container <= 0 then
				while 0 < #arg1.__threads do
					task.spawn(table.remove(arg1.__threads, 1) :: any)
				end
			end
			return ...
		end)
	end
	return arg2
end :: any
_insert_upvr = var70.destroy
var70.Destroy = _insert_upvr
setmetatable(tbl_10_upvr, tbl_6)
var71_upvr = {}
_insert_upvr = tbl_4_upvr :: any
var70 = setmetatable(var71_upvr, _insert_upvr)
local var87 = var70
var71_upvr = setmetatable({}, tbl_5)
local var88_upvr = var71_upvr
tbl_13_upvr.__index = var87
tbl_13_upvr.prototype = var87
tbl_13_upvr.rateQueues = var88_upvr
tbl_13_upvr.new = function(arg1, arg2) -- Line 473, Named "new"
	--[[ Upvalues[3]:
		[1]: randomString_upvr (readonly)
		[2]: var88_upvr (readonly)
		[3]: tbl_13_upvr (readonly)
	]]
	local var89 = arg2
	if not var89 then
		var89 = ("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", randomString_upvr):upper()
	end
	local var90 = var89
	if not var88_upvr[var90] then
		local tbl_9 = {
			id = var90;
			queues = {};
		}
		tbl_9.ratePerMinute = arg1
		tbl_9.__lastActivated = tick()
		var88_upvr[var90] = setmetatable(tbl_9, tbl_13_upvr)
	end
	return var88_upvr[var90]
end
tbl_13_upvr.findById = function(arg1) -- Line 487, Named "findById"
	--[[ Upvalues[1]:
		[1]: var88_upvr (readonly)
	]]
	return var88_upvr[arg1]
end
var87._activate = function(arg1: any, arg2) -- Line 491, Named "_activate"
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	if arg2 then
		local var95 = tick() - arg1.__lastActivated
		local var96 = arg1.ratePerMinute / 60
		if var95 < 1 / var96 then
			arg1.__process = task.delay(1 / var96 - var95, arg1._activate, arg1, true)
			return
		end
	end
	local popped_3 = table.remove(arg1.queues, 1)
	if popped_3 then
		popped_3:execute()
		arg1.__lastActivated = tick()
		arg1.__process = task.delay(60 / arg1.ratePerMinute, arg1._activate, arg1, true)
	else
		arg1.__process = var8_upvr
	end
end
var87._insert = function(arg1, arg2, arg3, ...) -- Line 514, Named "_insert"
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	if arg2 then
		table.insert(arg1.queues, 1, tbl_7_upvr.new(arg3, ...))
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		table.insert(arg1.queues, tbl_7_upvr.new(arg3, ...))
	end
	if not arg1.__process then
		arg1:_activate(true)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return tbl_7_upvr.new(arg3, ...)
end
setmetatable(tbl_13_upvr, tbl_6)
tbl_4_upvr.Process = tbl_7_upvr
tbl_4_upvr.Waitter = tbl_10_upvr
tbl_4_upvr.RateQueue = tbl_13_upvr
tbl_4_upvr.queues = setmetatable_result1_upvr
var88_upvr = tbl_4_upvr
var87 = table.freeze(var88_upvr)
return var87