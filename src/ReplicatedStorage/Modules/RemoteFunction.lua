--!strict
local RemoteManager = {}
local RemoteHandler = {}
local RemoteInstances = {}
RemoteHandler.__index = RemoteHandler

if game:GetService("RunService"):IsServer() then
	local function FireClient(remoteEvent, player, eventData, ...)
		if eventData ~= nil then
			remoteEvent:FireClient(player, eventData, ...)
		end
	end

	local function ProcessThread(remoteObject, player)
		local playerThreads = remoteObject.Threads[player] :: {any}
		local threadCallback = table.remove(playerThreads) :: any
		threadCallback = threadCallback[2]
		if #playerThreads == 0 then
			remoteObject.Threads[player] = nil
		end
		task.spawn(threadCallback)
	end

	function RemoteManager.new(remoteName: string, eventFunction)
		local existingRemote = RemoteInstances[remoteName]
		if existingRemote ~= nil then
			if eventFunction ~= nil then
				existingRemote.Event = eventFunction
			end
			return existingRemote
		end

		local newRemote = {
			Name = remoteName,
			Event = eventFunction,
			Threads = {},
			Server = Instance.new("RemoteEvent")
		}

		newRemote.Server.Name = remoteName .. "Server"
		newRemote.Server.Parent = script
		newRemote.Server.OnServerEvent:Connect(function(player, ...)
			local playerThreads = newRemote.Threads[player]
			if playerThreads ~= nil then
				local currentThread = table.remove(playerThreads) :: {any}
				if #playerThreads == 0 then
					newRemote.Threads[player] = nil
				end
				task.cancel(currentThread[1])
				task.spawn(currentThread[2], ...)
			end
		end)

		newRemote.Client = Instance.new("RemoteEvent")
		newRemote.Client.Name = remoteName .. "Client"
		newRemote.Client.Parent = script
		newRemote.Client.OnServerEvent:Connect(function(player, ...)
			if newRemote.Event ~= nil then
				FireClient(newRemote.Client, player, newRemote.Event(player, ...))
			end
		end)

		RemoteInstances[remoteName] = newRemote
		return setmetatable(newRemote, RemoteHandler)
	end

	function RemoteHandler:Fire(player, ...)
		local playerThreads = self.Threads[player]
		if playerThreads == nil then
			playerThreads = {}
			self.Threads[player] = playerThreads
		end
		local threadData = { task.delay(10, ProcessThread, self, player), coroutine.running() }
		table.insert(playerThreads, 1, threadData)
		self.Server:FireClient(player, ...)
		return coroutine.yield()
	end

	function RemoteHandler:Destroy()
		RemoteInstances[self.Name] = nil
		self.Server:Destroy()
		self.Client:Destroy()

		for player, playerThreads in pairs(self.Threads) do
			local currentThread = table.remove(playerThreads)
			if currentThread ~= nil then
				task.cancel(currentThread[1])
				task.defer(currentThread[2])
			end
			self.Threads[player] = nil
		end
	end
else
	local function FireServer(remoteEvent, eventData, ...)
		if eventData ~= nil then
			remoteEvent:FireServer(eventData, ...)
		end
	end

	local function ProcessThreadClient(remoteObject)
		local remoteObject = remoteObject :: any
		local remove = table.remove(remoteObject.Threads)
		task.spawn(remove :: any)
	end

	function RemoteManager.new(remoteName, eventFunction)
		local existingRemote = RemoteInstances[remoteName]
		if existingRemote ~= nil then
			if eventFunction ~= nil then
				existingRemote.Event = eventFunction
			end
			return existingRemote
		end

		local newRemote = {
			Name = remoteName,
			Event = eventFunction,
			Threads = {},
			Server = script:WaitForChild(remoteName .. "Server")
		}

		newRemote.ServerConnection = newRemote.Server.OnClientEvent:Connect(function(...)
			if newRemote.Event ~= nil then
				FireServer(newRemote.Server, newRemote.Event(...))
			end
		end)

		newRemote.Client = script:WaitForChild(remoteName .. "Client")
		newRemote.ClientConnection = newRemote.Client.OnClientEvent:Connect(function(...)
			local currentThread = table.remove(newRemote.Threads)
			if currentThread ~= nil then
				task.cancel(currentThread[1])
				task.spawn(currentThread[2], ...)
			end
		end)

		RemoteInstances[remoteName] = newRemote :: any
		return setmetatable(newRemote, RemoteHandler)
	end

	function RemoteHandler:Fire(...)
		local threadData = { task.delay(20, ProcessThreadClient, self), coroutine.running() }
		table.insert(self.Threads, 1, threadData)
		self.Client:FireServer(...)
		return coroutine.yield()
	end

	function RemoteHandler:Destroy()
		RemoteInstances[self.Name] = nil
		self.ServerConnection:Disconnect()
		self.ClientConnection:Disconnect()

		while true do
			local currentThread = table.remove(self.Threads)
			if currentThread == nil then
				break
			end
			task.cancel(currentThread[1])
			task.defer(currentThread[2])
		end
	end
end

return table.freeze(RemoteManager)