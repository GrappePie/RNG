--!strict
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Values = {}
local Awaiting = {}
local Packets = ReplicatedStorage:WaitForChild("Packets")
local Replication = require(Packets:WaitForChild("Replication"))

local function HandleRequest(data)
	if data.Scope ~= script.Name then return end

	local requestId = data.RayId
	if not Awaiting[requestId] then return end

	local target = workspace:WaitForChild(data.Value, 5)
	if target then
		local module = require(target:Clone():GetChildren()[#target:GetChildren()]) :: any
		Values[requestId] = module
		if Awaiting[requestId] then
			task.defer(function()
				table.clear(Awaiting[requestId])
				Awaiting[requestId] = nil
			end)
		end
	else
		warn("Aura Cutscene not found:", requestId)
	end
end

local function Exists(scope: Instance, valueName): boolean
	return script:FindFirstChild(valueName) ~= nil
end

local function GetValue(scope: Instance, valueName: string): any
	if not Exists(scope, valueName) then return nil end
	if Values[valueName] then return Values[valueName] end

	if Awaiting[valueName] then
		table.insert(Awaiting[valueName], coroutine.running())
		return coroutine.yield()
	end

	Awaiting[valueName] = {}
	local requestId = HttpService:GenerateGUID(false)
	Awaiting[requestId] = valueName :: any
	table.insert(Awaiting[valueName], coroutine.running())

	Replication.RequestData.send({
		RayId = requestId,
		Scope = script.Name,
		Value = valueName
	})

	return coroutine.yield()
end

Replication.RequestData.listen(HandleRequest)

return { Exists = Exists, GetValue = GetValue }