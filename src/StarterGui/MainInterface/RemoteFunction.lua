-- What the sigma?

local v1 = {}
local v_u_2 = {}
local v_u_3 = {}
v_u_2.__index = v_u_2
if game:GetService("RunService"):IsServer() == true then
	local function v_u_7(p4, p5, p6, ...)
		if p6 ~= nil then
			p4:FireClient(p5, p6, ...)
		end
	end
	local function v_u_12(p8, p9)
		local v10 = p8.Threads[p9]
		local v11 = table.remove(v10)[2]
		if #v10 == 0 then
			p8.Threads[p9] = nil
		end
		task.spawn(v11)
	end
	function v1.new(p13, p14)
		-- upvalues: (copy) v_u_3, (copy) v_u_7, (copy) v_u_2
		local v15 = v_u_3[p13]
		if v15 ~= nil then
			if p14 ~= nil then
				v15.Event = p14
			end
			return v15
		end
		local v_u_16 = {
			["Name"] = p13,
			["Event"] = p14,
			["Threads"] = {},
			["Server"] = Instance.new("RemoteEvent")
		}
		v_u_16.Server.Name = p13 .. "Server"
		v_u_16.Server.Parent = script
		v_u_16.Server.OnServerEvent:Connect(function(p17, ...)
			-- upvalues: (ref) v_u_16
			local v18 = v_u_16.Threads[p17]
			if v18 ~= nil then
				local v19 = table.remove(v18)
				if #v18 == 0 then
					v_u_16.Threads[p17] = nil
				end
				task.cancel(v19[1])
				task.spawn(v19[2], ...)
			end
		end)
		v_u_16.Client = Instance.new("RemoteEvent")
		v_u_16.Client.Name = p13 .. "Client"
		v_u_16.Client.Parent = script
		v_u_16.Client.OnServerEvent:Connect(function(p20, ...)
			-- upvalues: (ref) v_u_16, (ref) v_u_7
			if v_u_16.Event ~= nil then
				v_u_7(v_u_16.Client, p20, v_u_16.Event(p20, ...))
			end
		end)
		v_u_3[p13] = v_u_16
		local v21 = v_u_2
		local v22 = v_u_16
		return setmetatable(v22, v21)
	end
	function v_u_2.Fire(p23, p24, ...)
		-- upvalues: (copy) v_u_12
		local v25 = p23.Threads[p24]
		if v25 == nil then
			v25 = {}
			p23.Threads[p24] = v25
		end
		local v26 = { task.delay(60, v_u_12, p23, p24), coroutine.running() }
		table.insert(v25, 1, v26)
		p23.Server:FireClient(p24, ...)
		return coroutine.yield()
	end
	function v_u_2.Destroy(p27)
		-- upvalues: (copy) v_u_3
		v_u_3[p27.Name] = nil
		p27.Server:Destroy()
		p27.Client:Destroy()
		for v28, v29 in p27.Threads do
			local v30 = table.remove(v29)
			if v30 ~= nil then
				task.cancel(v30[1])
				task.defer(v30[2])
				continue
			end
			p27.Threads[v28] = nil
		end
	end
else
	local function v_u_33(p31, p32, ...)
		if p32 ~= nil then
			p31:FireServer(p32, ...)
		end
	end
	local function v_u_35(p34)
		task.spawn(table.remove(p34.Threads)[2])
	end
	function v1.new(p36, p37)
		-- upvalues: (copy) v_u_3, (copy) v_u_33, (copy) v_u_2
		local v38 = v_u_3[p36]
		if v38 ~= nil then
			if p37 ~= nil then
				v38.Event = p37
			end
			return v38
		end
		local v_u_39 = {
			["Name"] = p36,
			["Event"] = p37,
			["Threads"] = {},
			["Server"] = script:WaitForChild(p36 .. "Server")
		}
		v_u_39.ServerConnection = v_u_39.Server.OnClientEvent:Connect(function(...)
			-- upvalues: (ref) v_u_39, (ref) v_u_33
			if v_u_39.Event ~= nil then
				v_u_33(v_u_39.Server, v_u_39.Event(...))
			end
		end)
		v_u_39.Client = script:WaitForChild(p36 .. "Client")
		v_u_39.ClientConnection = v_u_39.Client.OnClientEvent:Connect(function(...)
			-- upvalues: (ref) v_u_39
			local v40 = table.remove(v_u_39.Threads)
			if v40 ~= nil then
				task.cancel(v40[1])
				task.spawn(v40[2], ...)
			end
		end)
		v_u_3[p36] = v_u_39
		local v41 = v_u_2
		local v42 = v_u_39
		return setmetatable(v42, v41)
	end
	function v_u_2.Fire(p43, ...)
		-- upvalues: (copy) v_u_35
		local v44 = p43.Threads
		local v45 = { task.delay(60, v_u_35, p43), coroutine.running() }
		table.insert(v44, 1, v45)
		p43.Client:FireServer(...)
		return coroutine.yield()
	end
	function v_u_2.Destroy(p46)
		-- upvalues: (copy) v_u_3
		v_u_3[p46.Name] = nil
		p46.ServerConnection:Disconnect()
		p46.ClientConnection:Disconnect()
		while true do
			local v47 = table.remove(p46.Threads)
			if v47 == nil then
				break
			end
			task.cancel(v47[1])
			task.defer(v47[2])
		end
	end
end
return table.freeze(v1)