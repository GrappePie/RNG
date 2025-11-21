-- What the sigma?

game:GetService("RunService")
local v_u_1 = game:GetService("HttpService")
local v_u_2 = game:GetService("ReplicatedFirst")
local v_u_3 = {}
local v4 = {}
local v_u_5 = {}
local v_u_6 = Instance.new("BindableEvent")
local v_u_7 = script:WaitForChild("Handler")
v4.TaskAdded = v_u_6.Event
v_u_7.Enabled = true
local function v_u_8(...) end
function v4.AddTask(_, p9, ...)
	-- upvalues: (copy) v_u_3
	local v10 = v_u_3
	table.insert(v10, {
		["Task"] = p9,
		["Args"] = { ... }
	})
end
function v4.AddParent(p_u_11, p_u_12)
	-- upvalues: (copy) v_u_7, (copy) v_u_6, (copy) v_u_5, (copy) v_u_8
	if getfenv(2).script == v_u_7 then
		local v13 = p_u_12.AncestryChanged:Connect(function()
			-- upvalues: (ref) v_u_8, (copy) p_u_12, (copy) p_u_11
			v_u_8(p_u_12:GetFullName())
			p_u_11:CleanUp()
		end)
		local v14 = p_u_12.Destroying:Connect(function()
			-- upvalues: (copy) p_u_11
			p_u_11:CleanUp()
		end)
		p_u_11:AddTask(v13)
		p_u_11:AddTask(v14)
	else
		v_u_6:Fire(p_u_12)
		local v15 = v_u_5
		table.insert(v15, p_u_12)
	end
end
function v4.CleanUp(p16)
	-- upvalues: (copy) v_u_8, (copy) v_u_3, (copy) v_u_5
	if not p16.__cleaning then
		p16.__cleaning = true
		v_u_8("cleaning")
		while 0 < #v_u_3 do
			local v17 = table.remove(v_u_3, 1)
			local v18 = v17.Task
			if type(v18) == "function" then
				local v19 = v17.Task
				local v20 = v17.Args
				v19(table.unpack(v20))
			else
				local v21 = v17.Task
				if typeof(v21) == "RBXScriptConnection" then
					v17.Task:Disconnect()
				else
					local v22 = v17.Task
					if type(v22) == "table" and v17.Task.Destroy then
						local v23 = v17.Task
						local v24 = v17.Args
						v23:Destroy(table.unpack(v24))
					else
						local v25 = v17.Task
						if typeof(v25) == "Instance" then
							v17.Task:Destroy()
						end
					end
				end
			end
			table.clear(v17.Args)
			table.clear(v17)
		end
		table.clear(v_u_5)
		v_u_8("cleaned")
		script:Destroy()
	end
end
function v4.SafeMode(p_u_26)
	-- upvalues: (copy) v_u_1, (copy) v_u_2, (copy) v_u_8, (copy) v_u_5
	script.Name = v_u_1:GenerateGUID(false)
	script.Parent = v_u_2
	p_u_26:AddTask(game.DescendantRemoving:Connect(function(p27)
		-- upvalues: (ref) v_u_8, (copy) p_u_26, (ref) v_u_5
		if game:GetService("Players"):GetPlayerFromCharacter(p27) then
			v_u_8(p27:GetFullName())
		end
		if p27 == script and not script.Parent then
			p_u_26:CleanUp()
		elseif table.find(v_u_5, p27) then
			p_u_26:CleanUp()
		end
	end))
	p_u_26:AddTask(script.AncestryChanged:Connect(function()
		-- upvalues: (copy) p_u_26
		if not script.Parent then
			p_u_26:CleanUp()
		end
	end))
	v_u_8("running on rep")
end
function v4.GetTasks(_)
	-- upvalues: (copy) v_u_5
	return v_u_5
end
v4:AddTask(v_u_6)
return v4