-- What the sigma?

local v_u_1 = game:GetService("RunService")
local v2 = {}
local v_u_3 = {}
v_u_3.__index = v_u_3
function v2.new(p4)
	-- upvalues: (copy) v_u_1, (copy) v_u_3
	local v5, v6, v7
	if v_u_1:IsServer() and not script:FindFirstChild((("%*_ChangedAt"):format(p4))) then
		v5 = Instance.new("NumberValue")
		v6 = Instance.new("NumberValue")
		v7 = Instance.new("NumberValue")
		v5.Name = ("%*_ChangedAt"):format(p4)
		v7.Name = ("%*_Timestamp"):format(p4)
		v7.Value = workspace:GetServerTimeNow()
		v6.Name = ("%*_Speed"):format(p4)
		v6.Value = 1
		v5.Parent = script
		v6.Parent = script
		v7.Parent = script
	else
		v5 = script:WaitForChild((("%*_ChangedAt"):format(p4)))
		v6 = script:WaitForChild((("%*_Speed"):format(p4)))
		v7 = script:WaitForChild((("%*_Timestamp"):format(p4)))
	end
	local v8 = {
		["SpeedChanged"] = v6.Changed,
		["Key"] = p4,
		["__timestamp"] = v7,
		["__changedAt"] = v5,
		["__speed"] = v6
	}
	local v9 = v_u_3
	return setmetatable(v8, v9)
end
function v_u_3.GetTimeNow(p10)
	return p10.__changedAt.Value + (workspace:GetServerTimeNow() - p10.__timestamp.Value) * p10.__speed.Value
end
function v_u_3.SetSpeed(p11, p12)
	local v13 = p11:GetTimeNow()
	p11.__changedAt.Value = v13
	p11.__timestamp.Value = workspace:GetServerTimeNow()
	p11.__speed.Value = p12
end
function v_u_3.GetSpeed(p14, _)
	return p14.__speed.Value
end
function v_u_3.Delay(p_u_15, p_u_16, p_u_17, ...)
	local v_u_18 = { ... }
	local v_u_19 = nil
	local v_u_20 = coroutine.create(function() end)
	local v_u_21 = p_u_15:GetTimeNow()
	while true do
		if p_u_15.__speed.Value == 0 then
			p_u_15.SpeedChanged:Wait()
		end
		if p_u_15.__speed.Value ~= 0 then
			local function v_u_23()
				-- upvalues: (copy) v_u_20, (ref) v_u_19, (copy) p_u_17, (copy) v_u_18
				if coroutine.status(v_u_20) ~= "dead" then
					v_u_19:Disconnect()
					task.spawn(function()
						-- upvalues: (ref) p_u_17, (ref) v_u_18
						local v22 = v_u_18
						p_u_17(table.unpack(v22))
					end)
				end
			end
			local v_u_24 = task.delay(p_u_16 * 1 / p_u_15.__speed.Value, v_u_23)
			v_u_19 = p_u_15.SpeedChanged:Connect(function()
				-- upvalues: (ref) v_u_24, (copy) p_u_16, (copy) p_u_15, (ref) v_u_21, (copy) v_u_23
				task.cancel(v_u_24)
				local v25 = p_u_16 - p_u_15:GetTimeNow() - v_u_21
				v_u_21 = p_u_15:GetTimeNow()
				v_u_24 = task.delay(v25 * 1 / p_u_15.__speed.Value, v_u_23)
			end)
			return v_u_20
		end
	end
end
function v_u_3.Wait(p26, p27)
	local v28 = Instance.new("BindableEvent")
	p26:Delay(p27, v28.Fire, v28)
	v28.Event:Wait()
	v28:Destroy()
end
return v2