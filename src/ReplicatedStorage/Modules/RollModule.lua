-- What the sigma?

local v1 = {}
local v_u_2 = {}
local function v_u_8(p3)
	-- upvalues: (copy) v_u_8
	local v4 = {}
	for v5, v7 in pairs(p3) do
		if typeof(v7) == "table" then
			local v7 = v7 == p3 and v4 and v4 or v_u_8(v7) or v7
		end
		v4[v5] = v7
	end
	return v4
end
local function v_u_19(p9, _)
	-- upvalues: (copy) v_u_8
	local v10 = 0
	local v11 = v_u_8(p9)
	local v12 = {}
	local v13 = 0
	for _, v14 in ipairs(v11) do
		local v15 = v14.Rarity / (v12[v14.Value] or 1)
		v13 = math.max(v13, v15)
	end
	for _, v16 in ipairs(v11) do
		v16.Rarity = 1 / v16.Rarity * v13
		v10 = v10 + v16.Rarity
	end
	table.sort(v11, function(p17, p18)
		return p17.Rarity > p18.Rarity
	end)
	return v11, v10
end
function v1.GetItem(p20, p21, p22)
	-- upvalues: (copy) v_u_8, (copy) v_u_2
	local v23 = v_u_8(p20)
	table.sort(v23, function(p24, p25)
		return p24.Rarity > p25.Rarity
	end)
	local v26 = p21 or 1
	local v27 = p22 or v_u_2
	for v28, v29 in ipairs(v23) do
		if not (v29.Craftable or v29.Unobtainable) then
			local v30 = v26 + (v27[v29.Value] or 0)
			local v31 = v29.Rarity / v30
			local v32 = math.round(v31)
			local v33 = math.max(1, v32)
			if Random.new():NextInteger(1, v33) == 1 or v28 == #v23 then
				return v29
			end
		end
	end
end
function v1.GetItemByWeight(p34, p35)
	-- upvalues: (copy) v_u_19, (copy) v_u_8
	local v36, v37 = v_u_19(p34, p35)
	local v38 = Random.new():NextNumber(0, v37)
	local v39 = nil
	local v40 = 0
	for _, v41 in ipairs(v36) do
		v40 = v40 + v41.Rarity
		if v38 <= v40 then
			v39 = v_u_8(v41)
			break
		end
		table.clear(v41)
	end
	table.clear(v36)
	return v39
end
return v1