-- What the sigma?

local v_u_1 = Vector2.new
local v_u_2 = next
local v_u_3 = newproxy
local v_u_4 = getmetatable
local v_u_5 = {}
local v_u_6 = {}
local v_u_7 = {}
local v_u_8 = false
local v_u_9 = 0
local v_u_10 = os.clock()
game:GetService("RunService").Heartbeat:Connect(function()
	-- upvalues: (ref) v_u_10, (ref) v_u_9, (copy) v_u_7
	if os.clock() - v_u_10 >= 0.016666666666666666 then
		v_u_10 = os.clock()
		v_u_9 = v_u_9 + 1
		if v_u_7[1] then
			for v11 = 1, #v_u_7 do
				local v12 = v_u_7[v11]
				if v12.State then
					if v_u_9 % v12.FrameTime == 0 then
						v12:Advance(1)
					end
				end
			end
		end
	end
end)
function v_u_6.Play(p13)
	if p13.State then
		return false
	elseif p13.Adornee then
		p13.State = true
		return true
	else
		error("SpriteClip: No Instance assigned to this SpriteClip.")
		return false
	end
end
function v_u_6.Pause(p14)
	if p14.State then
		p14.State = false
	end
	return false
end
function v_u_6.Stop(p15)
	p15:Pause()
	p15.CurrentFrame = 0
	return true
end
function v_u_6.Advance(p16, p17)
	-- upvalues: (copy) v_u_1
	local v18 = p16.CurrentFrame + (p17 or 1)
	if p16.SpriteCount - 1 < v18 then
		if not p16.Looped then
			p16:Stop()
			return
		end
		v18 = 0
	end
	p16.CurrentFrame = v18
	local v19 = p16.SpriteSizePixel
	local v20 = v19.X
	local v21 = v19.Y
	local v22 = p16.SpriteOffsetPixel
	local v23 = v22.X
	local v24 = v22.Y
	local v25 = p16.EdgeOffsetPixel
	local v26 = p16.SpriteCountX
	local _ = p16.SpriteCount
	local v27 = v18 % v26
	local v28 = (v18 - v27) / v26
	local v29 = v25.X + v27 * (v20 + v23)
	local v30 = v25.Y + v28 * (v21 + v24)
	p16.Adornee.ImageRectOffset = v_u_1(v29, v30)
end
function v_u_5.new()
	-- upvalues: (copy) v_u_1, (copy) v_u_2, (copy) v_u_6, (copy) v_u_3, (copy) v_u_4, (ref) v_u_8, (copy) v_u_7, (copy) v_u_5
	local v_u_31 = {
		["Adornee"] = nil,
		["SpriteSheet"] = nil,
		["InheritSpriteSheet"] = true,
		["CurrentFrame"] = 0,
		["SpriteSizePixel"] = v_u_1(100, 100),
		["EdgeOffsetPixel"] = v_u_1(0, 0),
		["SpriteOffsetPixel"] = v_u_1(0, 0),
		["SpriteCount"] = 25,
		["SpriteCountX"] = 5,
		["FrameRate"] = 60,
		["FrameTime"] = 6,
		["Looped"] = true,
		["State"] = false,
		["Sorted"] = true
	}
	for v32, v33 in v_u_2, v_u_6 do
		v_u_31[v32] = v33
	end
	local v34 = v_u_3(true)
	local v_u_35 = v_u_4(v34)
	v_u_35.__index = v_u_31
	function v_u_35.__newindex(_, p36, p37)
		-- upvalues: (copy) v_u_31
		v_u_31[p36] = p37
		if p36 == "Adornee" or p36 == "SpriteSizePixel" then
			local v38 = v_u_31.Adornee
			local v39 = v_u_31.SpriteSizePixel
			if v38 then
				v38.ImageRectSize = v39
			end
			if p36 == "Adornee" then
				if v_u_31.InheritSpriteSheet then
					v_u_31.SpriteSheet = v38.Image
				else
					v38.Image = v_u_31.SpriteSheet
				end
			end
		elseif p36 == "SpriteSheet" then
			if v_u_31.Adornee then
				v_u_31.Adornee.Image = p37
				return
			end
		elseif p36 == "FrameRate" then
			v_u_31.FrameTime = 60 / p37
		end
	end
	v_u_35.__metatable = "The metatable is locked"
	function v_u_31.Destroy(p40)
		-- upvalues: (ref) v_u_8, (ref) v_u_7, (copy) v_u_31, (ref) v_u_2, (copy) v_u_35
		p40:Pause()
		while v_u_8 do
			task.wait()
		end
		v_u_8 = true
		for v41 = 1, #v_u_7 do
			if v_u_7[v41] == v_u_31 then
				local v42 = v_u_7
				local v43 = v_u_7
				local v44 = #v_u_7
				v42[v41] = v_u_7[#v_u_7]
				v43[v44] = nil
			end
		end
		v_u_8 = false
		for v45 in v_u_2, v_u_35 do
			v_u_35[v45] = nil
		end
	end
	function v_u_31.Clone(_)
		-- upvalues: (ref) v_u_5, (ref) v_u_2, (copy) v_u_31
		local v46 = v_u_5.new()
		for v47, v48 in v_u_2, v_u_31 do
			if v48 ~= "Adornee" then
				v46[v47] = v48
			end
		end
		return v46
	end
	v_u_7[#v_u_7 + 1] = v_u_31
	return v34
end
return v_u_5