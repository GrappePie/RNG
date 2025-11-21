-- What the sigma?

local v_u_1 = table.create(256)
for v2 = 0, 255 do
	v_u_1[v2 + 1] = string.char(v2)
end
local v_u_3 = {
	["To"] = nil,
	["From"] = nil
}
local v4 = table.create(64)
local v5 = {}
for v6 = 1, 64 do
	local v7 = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v6, v6)
	v4[v6] = v7
	v5[string.byte(v7) + 1] = v6 - 1
end
v_u_3.To = v4
v_u_3.From = v5
local v_u_8 = {
	["To"] = nil,
	["From"] = nil
}
local v9 = table.create(91)
local v10 = {}
for v11 = 1, 91 do
	local v12 = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~\'", v11, v11)
	v9[v11] = v12
	v10[string.byte(v12) + 1] = v11 - 1
end
v_u_8.To = v9
v_u_8.From = v10
local function v_u_14(p13, ...)
	error("[BitBuffer] " .. string.format(p13, ...), 2)
end
local function v_u_32(p15, p16, p17)
	local v18 = p15._buffer
	local v19 = p15._index
	local v20 = v19 % 32
	local v21 = bit32.rshift(v19, 5) + 1
	if v20 + p16 <= 32 then
		local v22 = v18[v21] or 0
		v18[v21] = bit32.replace(v22, p17, v20, p16)
	else
		local v23 = 32 - v20
		local v24 = v18[v21] or 0
		v18[v21] = bit32.replace(v24, p17, v20, v23)
		local v25 = v21 + 1
		local v26 = v18[v21 + 1] or 0
		local v27 = p16 - v23
		local v28 = bit32.extract(p17, v23, v27)
		local v29 = p16 - v23
		v18[v25] = bit32.replace(v26, v28, 0, v29)
	end
	local v30 = v19 + p16
	local v31 = p15._size
	p15._size = math.max(v31, v30)
	p15._index = v30
end
local function v_u_44(p33, p34)
	local v35 = p33._buffer
	local v36 = p33._index
	p33._index = p33._index + p34
	local v37 = v36 % 32
	local v38 = bit32.rshift(v36, 5) + 1
	local v39 = v35[v38] or 0
	if v37 == 0 then
		return bit32.extract(v39, 0, p34)
	end
	if v37 + p34 <= 32 then
		return bit32.extract(v39, v37, p34)
	end
	local v40 = 32 - v37
	local v41 = v35[v38 + 1] or 0
	local v42 = bit32.extract(v39, v37, v40)
	local v43 = p34 - v40
	return bit32.replace(v42, v41, v40, v43)
end
local function v_u_73(p45, p46)
	-- upvalues: (copy) v_u_32
	local v47 = #p46
	if v47 < 4 then
		v_u_32(p45, v47 * 8, (string.unpack("<I" .. v47, p46)))
		return
	elseif v47 == 4 then
		local v48, v49, v50, v51 = string.byte(p46, 1, 4)
		v_u_32(p45, 32, v48 + v49 * 256 + v50 * 65536 + v51 * 16777216)
		return
	elseif v47 < 8 then
		local v52, v53, v54, v55 = string.byte(p46, 1, 4)
		v_u_32(p45, 32, v52 + v53 * 256 + v54 * 65536 + v55 * 16777216)
		v_u_32(p45, v47 * 8 - 32, (string.unpack("<I" .. v47 - 4, p46, 5)))
	else
		local v56 = p45._buffer
		local v57 = p45._index
		local v58 = v57 % 32
		local v59 = bit32.rshift(v57, 5) + 1
		local v60
		if v58 == 0 then
			v60 = 0
		else
			v60 = 4 - v58 / 8
			v_u_32(p45, 32 - v58, (string.unpack("<I" .. v60, p46)))
			v59 = v59 + 1
		end
		for v61 = v60 + 4, v47, 4 do
			local v62 = v61 - 3
			local v63, v64, v65, v66 = string.byte(p46, v62, v61)
			v56[v59] = v63 + v64 * 256 + v65 * 65536 + v66 * 16777216
			v59 = v59 + 1
		end
		local v67 = (v47 - v60 - 4) % 4
		if 0 < v67 then
			local v68 = string.unpack("<I" .. v67, p46, v47 - v67 + 1)
			local v69 = v56[v59] or 0
			local v70 = v67 * 8
			v56[v59] = bit32.replace(v69, v68, 0, v70)
		end
		local v71 = (v59 - 1) * 32 + v67 * 8
		local v72 = p45._size
		p45._size = math.max(v72, v71)
		p45._index = v71
	end
end
local function v_u_101(p74, p75)
	-- upvalues: (copy) v_u_44
	if p75 < 4 then
		return string.pack("<I" .. p75, (v_u_44(p74, p75 * 8)))
	end
	if p75 == 4 then
		local v76 = v_u_44(p74, 32)
		local v77 = bit32.extract(v76, 0, 8)
		local v78 = bit32.extract(v76, 8, 8)
		local v79 = bit32.extract(v76, 16, 8)
		local v80 = bit32.extract(v76, 24, 8)
		return string.char(v77, v78, v79, v80)
	end
	local v81 = 3 - (p74._index / 8 - 1) % 4
	local v82 = (p75 - v81) % 4
	local v83 = (p75 - v81 - v82) / 4
	local v84 = table.create(v83 + 2)
	local v85
	if 0 < v81 then
		v84[1] = string.pack("<I" .. v81, (v_u_44(p74, v81 * 8)))
		v85 = 1
	else
		v85 = 0
	end
	local v86 = p74._buffer
	local v87 = p74._index
	local v88 = bit32.rshift(v87, 5) + 1
	for v89 = 1, v83 do
		local v90 = v86[v88 + v89 - 1] or 0
		local v91 = v85 + v89
		local v92 = bit32.extract(v90, 0, 8)
		local v93 = bit32.extract(v90, 8, 8)
		local v94 = bit32.extract(v90, 16, 8)
		local v95 = bit32.extract(v90, 24, 8)
		v84[v91] = string.char(v92, v93, v94, v95)
	end
	if 0 < v82 then
		local v96 = v85 + v83 + 1
		local v97 = string.pack
		local v98 = "<I" .. v82
		local v99 = v86[v88 + v83] or 0
		local v100 = v82 * 8
		v84[v96] = v97(v98, (bit32.extract(v99, 0, v100)))
	end
	p74._index = p74._index + v83 * 32 + v82 * 8
	return table.concat(v84)
end
local v_u_102 = {
	["ClassName"] = "BitBuffer"
}
v_u_102.__index = v_u_102
function v_u_102.__tostring(_)
	return "BitBuffer"
end
function v_u_102.is(p103)
	-- upvalues: (copy) v_u_102
	return getmetatable(p103) == v_u_102
end
function v_u_102.new(p104)
	-- upvalues: (copy) v_u_102
	local v105 = p104 or 0
	local v106 = {}
	local v107 = table.create
	local v108 = v105 / 32
	v106._buffer = v107((math.ceil(v108)))
	v106._index = 0
	v106._size = v105
	local v109 = v_u_102
	return setmetatable(v106, v109)
end
function v_u_102.FromString(p110)
	-- upvalues: (copy) v_u_14, (copy) v_u_102
	if type(p110) ~= "string" then
		v_u_14("invalid argument #1 to \'FromString\' (string expected, got %s)", (typeof(p110)))
	end
	local v111 = #p110
	local v112 = table.create
	local v113 = v111 / 4
	local v114 = v112((math.ceil(v113)))
	for v115 = 1, v111 / 4 do
		local v116 = v115 * 4 - 3
		local v117 = v115 * 4
		local v118, v119, v120, v121 = string.byte(p110, v116, v117)
		v114[v115] = v118 + v119 * 256 + v120 * 65536 + v121 * 16777216
	end
	local v122 = v111 % 4
	if v122 ~= 0 then
		local v123 = v111 / 4
		v114[math.ceil(v123)] = string.unpack("<I" .. v122, p110, v111 - v122)
	end
	local v124 = {
		["_buffer"] = v114,
		["_index"] = 0,
		["_size"] = #p110 * 8
	}
	local v125 = v_u_102
	return setmetatable(v124, v125)
end
function v_u_102.FromBase64(p126)
	-- upvalues: (copy) v_u_14, (copy) v_u_3, (copy) v_u_102
	if type(p126) ~= "string" then
		v_u_14("invalid argument #1 to \'FromBase64\' (string expected, got %s)", (typeof(p126)))
	end
	local v127 = #p126
	local v128 = v_u_3.From
	local v129 = v127 / 4
	local v130 = math.floor(v129)
	local v131 = table.create
	local v132 = (v130 * 24 + v127 % 4 * 6) / 32
	local v133 = v131((math.ceil(v132)))
	local v134 = 1
	local v135 = 0
	local v136 = 0
	for v137 = 1, v130 do
		local v138 = v137 * 4 - 3
		local v139 = v137 * 4
		local v140, v141, v142, v143 = string.byte(p126, v138, v139)
		local v144 = v128[v140 + 1]
		local v145 = v128[v141 + 1]
		local v146 = v128[v142 + 1]
		local v147 = v128[v143 + 1]
		if v144 == nil then
			v_u_14("invalid argument #1 to \'FromBase64\' (invalid Base64 character at position %d)", v137)
		elseif v145 == nil then
			v_u_14("invalid argument #1 to \'FromBase64\' (invalid Base64 character at position %d)", v137 + 1)
		elseif v146 == nil then
			v_u_14("invalid argument #1 to \'FromBase64\' (invalid Base64 character at position %d)", v137 + 2)
		elseif v147 == nil then
			v_u_14("invalid argument #1 to \'FromBase64\' (invalid Base64 character at position %d)", v137 + 3)
		end
		local v148 = v144 + v145 * 64 + v146 * 4096 + v147 * 262144
		if v136 + 24 <= 32 then
			v135 = bit32.replace(v135, v148, v136, 24)
			v136 = v136 + 24
		else
			if v136 < 32 then
				local v149 = 32 - v136
				v135 = bit32.replace(v135, v148, v136, v149)
			end
			v133[v134] = v135
			local v150 = 32 - v136
			v135 = bit32.rshift(v148, v150)
			v136 = v136 - 8
			v134 = v134 + 1
		end
	end
	for v151 = v130 * 4 + 1, v127 do
		local v152 = v128[string.byte(p126, v151, v151) + 1]
		if v136 + 6 <= 32 then
			v135 = bit32.replace(v135, v152, v136, 6)
			v136 = v136 + 6
		else
			local v153 = 32 - v136
			v133[v134] = bit32.replace(v135, v152, v136, v153)
			local v154 = 32 - v136
			v135 = bit32.rshift(v152, v154)
			v136 = v136 - 26
			v134 = v134 + 1
		end
	end
	if v136 ~= 0 then
		v133[v134] = v135
	end
	local v155 = {
		["_buffer"] = v133,
		["_index"] = 0,
		["_size"] = #p126 * 6
	}
	local v156 = v_u_102
	return setmetatable(v155, v156)
end
function v_u_102.FromBase91(p157)
	-- upvalues: (copy) v_u_14, (copy) v_u_8, (copy) v_u_102
	if type(p157) == "string" then
		if #p157 % 2 ~= 0 then
			v_u_14("invalid argument #1 to \'FromBase91\' (invalid Base91 string: string length must be an even number)")
		end
	else
		v_u_14("invalid argument #1 to \'FromBase91\' (string expected, got %s)", (typeof(p157)))
	end
	local v158 = table.create(#p157 / 2 * 13 / 32 + 1)
	local v159 = v_u_8.From
	local v160 = 0
	local v161 = 0
	local v162 = 0
	local v163 = 1
	for v164 = 1, #p157, 2 do
		local v165 = v164 + 1
		local v166, v167 = string.byte(p157, v164, v165)
		local v168 = v159[v166 + 1]
		local v169 = v159[v167 + 1]
		if v168 == nil then
			v_u_14("invalid argument #1 to \'FromBase91\' (invalid Base91 character at position %d)", v164)
		elseif v169 == nil then
			v_u_14("invalid argument #1 to \'FromBase91\' (invalid Base91 character at position %d)", v164 + 1)
		end
		local v170 = v169 * 91 + v168
		local v171 = 88 < v170 % 8192 and 13 or 14
		v160 = v160 + v171
		if v161 + v171 <= 32 then
			v162 = bit32.replace(v162, v170, v161, v171)
			v161 = v161 + v171
		else
			local v172 = 32 - v161
			if 0 < v172 then
				v162 = bit32.replace(v162, v170, v161, v172)
			end
			v158[v163] = v162
			v163 = v163 + 1
			local v173 = v171 - v172
			v162 = bit32.extract(v170, v172, v173)
			v161 = (v161 + v171) % 32
		end
	end
	if v161 ~= 0 then
		v158[v163] = v162
	end
	local v174 = v_u_102
	return setmetatable({
		["_buffer"] = v158,
		["_index"] = 0,
		["_size"] = v160
	}, v174)
end
function v_u_102.FromBase128(p175)
	-- upvalues: (copy) v_u_14, (copy) v_u_102
	if type(p175) ~= "string" then
		v_u_14("invalid argument #1 to \'FromBase128\' (string expected, got %s)", (typeof(p175)))
	end
	local v176 = #p175
	local v177 = table.create
	local v178 = v176 / 7
	local v179 = v177(math.ceil(v178) * 7)
	local v180 = 0
	local v181 = 0
	local v182 = 1
	for v183 = 1, v176 do
		local v184 = string.byte(p175, v183)
		if 127 < v184 then
			v_u_14("invalid argument #1 to \'FromBase128\' (invalid Base128 character at position %d: got %d, expected lower than 128)", v183, v184)
		end
		if v180 + 7 <= 32 then
			v181 = v181 + bit32.lshift(v184, v180)
			v180 = v180 + 7
		else
			local v185 = 32 - v180
			if 0 < v185 then
				v179[v182] = (v181 + bit32.lshift(v184, v180)) % 4294967296
				local v186 = 7 - v185
				v181 = bit32.extract(v184, v185, v186)
				v180 = v180 - 25
			else
				v179[v182] = v181
				v181 = v184
				v180 = 7
			end
			v182 = v182 + 1
		end
	end
	if v180 ~= 0 then
		v179[v182] = v181
	end
	local v187 = {
		["_buffer"] = v179,
		["_index"] = 0,
		["_size"] = #p175 * 7
	}
	local v188 = v_u_102
	return setmetatable(v187, v188)
end
function v_u_102.ResetCursor(p189)
	p189._index = 0
end
function v_u_102.SetCursor(p190, p191)
	-- upvalues: (copy) v_u_14
	if type(p191) ~= "number" then
		v_u_14("invalid argument #1 to \'SetCursor\' (number expected, got %s)", (typeof(p191)))
	end
	local v192 = math.floor(p191)
	p190._index = math.max(v192, 0)
end
function v_u_102.GetCursor(p193)
	return p193._index
end
function v_u_102.ResetBuffer(p194)
	table.clear(p194._buffer)
	p194._size = 0
	p194._index = 0
end
function v_u_102.GetSize(p195)
	return p195._size
end
function v_u_102.ToString(p196)
	-- upvalues: (copy) v_u_101
	local v197 = #p196._buffer
	if v197 == 0 then
		return ""
	end
	local v198 = p196._index
	p196._index = 0
	local v199 = v_u_101(p196, v197 * 4)
	p196._index = v198
	return v199
end
function v_u_102.ToBase64(p200)
	-- upvalues: (copy) v_u_3
	local v201 = p200._buffer
	local v202 = v201[1]
	local v203 = #v201 * 32 / 24
	local v204 = math.ceil(v203)
	local v205 = table.create(v204)
	local v206 = v_u_3.To
	local v207 = 0
	local v208 = 2
	for v209 = 1, v204 do
		local v210
		if v207 + 24 <= 32 then
			v210 = bit32.extract(v202, v207, 24)
			v207 = v207 + 24
		else
			local v211 = 32 - v207
			local v212 = 0 >= v211 and 0 or bit32.extract(v202, v207, v211)
			v202 = v201[v208] or 0
			v208 = v208 + 1
			v207 = 24 - v211
			v210 = bit32.replace(v212, v202, v211, v207)
		end
		local v213 = v206[bit32.extract(v210, 0, 6) + 1]
		local v214 = v206[bit32.extract(v210, 6, 6) + 1]
		local v215 = v206[bit32.extract(v210, 12, 6) + 1]
		local v216 = v206[bit32.extract(v210, 18, 6) + 1]
		v205[v209] = v213 .. v214 .. v215 .. v216
	end
	return table.concat(v205)
end
function v_u_102.ToBase91(p217)
	-- upvalues: (copy) v_u_8
	local v218 = p217._buffer
	local v219 = v218[1]
	local v220 = table.create(32 * #v218 / 13 + 1)
	local v221 = v_u_8.To
	local v222 = 2
	local v223 = 0
	local v224 = 1
	while v222 <= #v218 + 1 do
		local v225
		if v223 + 13 <= 32 then
			v225 = bit32.extract(v219, v223, 13)
			v223 = v223 + 13
		else
			local v226 = 32 - v223
			local v227 = v223 - 19
			local v228 = 0 >= v226 and 0 or bit32.extract(v219, v223, v226)
			v219 = v218[v222] or 0
			v222 = v222 + 1
			v225 = bit32.replace(v228, v219, v226, v227)
			v223 = v227
		end
		if v225 <= 88 then
			if v223 == 32 then
				v219 = v218[v222] or 0
				v222 = v222 + 1
				v225 = v225 + v219 % 2 * 8192
				v223 = 1
			else
				v225 = v225 + bit32.extract(v219, v223, 1) * 8192
				v223 = v223 + 1
			end
		end
		local v229 = v225 % 91
		local v230 = (v225 - v229) / 91
		v220[v224] = v221[v229 + 1] .. v221[v230 + 1]
		v224 = v224 + 1
	end
	return table.concat(v220)
end
function v_u_102.ToBase128(p231)
	-- upvalues: (copy) v_u_1
	local v232 = p231._buffer
	local v233 = table.create(#v232)
	local v234 = 0
	for v235, v236 in ipairs(v232) do
		local v237 = ""
		while v234 + 7 <= 32 do
			v237 = v237 .. v_u_1[bit32.extract(v236, v234, 7) + 1]
			v234 = v234 + 7
		end
		if v234 < 32 then
			local v238 = 32 - v234
			local v239 = v_u_1
			local v240 = bit32.extract(v236, v234, v238)
			local v241 = v232[v235 + 1] or 0
			local v242 = 7 - v238
			v237 = v237 .. v239[bit32.replace(v240, v241, v238, v242) + 1]
			v234 = v234 - 25
		else
			v234 = 0
		end
		v233[v235] = v237
	end
	return table.concat(v233)
end
function v_u_102.WriteUInt(p243, p244, p245)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p244) == "number" then
		if p244 < 1 or 32 < p244 then
			v_u_14("invalid argument #1 to \'WriteUInt\' (number must be in range [1,32])")
		elseif type(p245) ~= "number" then
			v_u_14("invalid argument #2 to \'WriteUInt\' (number expected, got %s)", (typeof(p245)))
		end
	else
		v_u_14("invalid argument #1 to \'WriteUInt\' (number expected, got %s)", (typeof(p244)))
	end
	v_u_32(p243, p244, p245)
end
function v_u_102.ReadUInt(p246, p247)
	-- upvalues: (copy) v_u_14, (copy) v_u_44
	if type(p247) == "number" then
		if p247 < 1 or 32 < p247 then
			v_u_14("invalid argument #1 to \'ReadUInt\' (number must be in range [1,32])")
		end
	else
		v_u_14("invalid argument #1 to \'ReadUInt\' (number expected, got %s)", (typeof(p247)))
	end
	return v_u_44(p246, p247)
end
function v_u_102.WriteInt(p248, p249, p250)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p249) == "number" then
		if p249 < 1 or 32 < p249 then
			v_u_14("invalid argument #1 to \'WriteInt\' (number must be in range [1,32])")
		elseif type(p250) ~= "number" then
			v_u_14("invalid argument #2 to \'WriteInt\' (number expected, got %s)", (typeof(p250)))
		end
	else
		v_u_14("invalid argument #1 to \'WriteInt\' (number expected, got %s)", (typeof(p249)))
	end
	local v251 = v_u_32
	local v252 = p249 - 1
	v251(p248, p249, p250 % bit32.lshift(1, v252) * 2)
end
function v_u_102.ReadInt(p253, p254)
	-- upvalues: (copy) v_u_14, (copy) v_u_44
	if type(p254) == "number" then
		if p254 < 1 or 32 < p254 then
			v_u_14("invalid argument #1 to \'ReadInt\' (number must be in range [1,32])")
		end
	else
		v_u_14("invalid argument #1 to \'ReadInt\' (number expected, got %s)", (typeof(p254)))
	end
	local v255 = v_u_44(p253, p254)
	local v256 = p254 == 32 and 4294967296 or bit32.lshift(1, p254)
	if v256 / 2 <= v255 then
		return v255 - v256
	else
		return v255
	end
end
function v_u_102.WriteBool(p257, p258)
	-- upvalues: (copy) v_u_32
	if p258 then
		v_u_32(p257, 1, 1)
	else
		v_u_32(p257, 1, 0)
	end
end
function v_u_102.ReadBool(p259)
	-- upvalues: (copy) v_u_44
	return v_u_44(p259, 1) == 1
end
function v_u_102.WriteChar(p260, p261)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p261) == "string" then
		if p261 == "" then
			v_u_14("invalid argument #1 to \'WriteChar\' (string cannot be empty)")
		end
	else
		v_u_14("invalid argument #1 to \'WriteChar\' (string expected, got %s)", (typeof(p261)))
	end
	v_u_32(p260, 8, string.byte(p261, 1, 1))
end
function v_u_102.ReadChar(p262)
	-- upvalues: (copy) v_u_1, (copy) v_u_44
	return v_u_1[v_u_44(p262, 8) + 1]
end
function v_u_102.WriteBytes(p263, p264)
	-- upvalues: (copy) v_u_14, (copy) v_u_73, (copy) v_u_32
	if type(p264) ~= "string" then
		v_u_14("invalid argument #1 to \'WriteBytes\' (string expected, got %s)", (typeof(p264)))
	end
	if p264 == "" then
		return
	elseif p263._index % 8 == 0 then
		v_u_73(p263, p264)
	else
		local v265 = #p264
		for v266 = 1, v265 / 4 do
			local v267 = v266 * 4
			local v268 = v267 - 3
			local v269, v270, v271, v272 = string.byte(p264, v268, v267)
			v_u_32(p263, 32, v269 + v270 * 256 + v271 * 65536 + v272 * 16777216)
		end
		local v273 = v265 % 4
		if v273 ~= 0 then
			v_u_32(p263, v273 * 8, string.unpack("<I" .. v273, p264, v265 - v273 + 1))
		end
	end
end
function v_u_102.ReadBytes(p274, p275)
	-- upvalues: (copy) v_u_14, (copy) v_u_101, (copy) v_u_44, (copy) v_u_1
	if type(p275) ~= "number" then
		v_u_14("invalid argument #1 to \'ReadBytes\' (number expected, got %s)", (typeof(p275)))
	end
	if p275 <= 0 then
		return ""
	end
	if p274._index % 8 == 0 then
		return v_u_101(p274, p275)
	end
	local v276 = p275 / 4
	local v277 = math.floor(v276)
	local v278 = table.create(v277 + p275 % 4)
	for v279 = 1, v277 do
		local v280 = v_u_44(p274, 32)
		local v281 = bit32.extract(v280, 0, 8)
		local v282 = bit32.extract(v280, 8, 8)
		local v283 = bit32.extract(v280, 16, 8)
		local v284 = bit32.extract(v280, 24, 8)
		v278[v279] = string.char(v281, v282, v283, v284)
	end
	for v285 = 1, p275 % 4 do
		v278[v277 + v285] = v_u_1[v_u_44(p274, 8) + 1]
	end
	return table.concat(v278)
end
function v_u_102.WriteString(p286, p287)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p287) ~= "string" then
		v_u_14("invalid argument #1 to \'WriteString\' (string expected, got %s)", (typeof(p287)))
	end
	local v288 = #p287
	if 16777215 < v288 then
		v_u_14("invalid argument #1 to \'WriteString\' (string length must be lower than 2^24 - 1)")
	end
	v_u_32(p286, 24, v288)
	p286:WriteBytes(p287)
end
function v_u_102.ReadString(p289)
	-- upvalues: (copy) v_u_44
	return p289:ReadBytes((v_u_44(p289, 24)))
end
function v_u_102.WriteFloat32(p290, p291)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p291) ~= "number" then
		v_u_14("invalid argument #1 to \'WriteFloat32\' (number expected, got %s)", (typeof(p291)))
	end
	if p291 == 0 then
		v_u_32(p290, 32, 0)
		return
	elseif p291 == (1 / 0) then
		v_u_32(p290, 32, 2139095040)
		return
	elseif p291 == (-1 / 0) then
		v_u_32(p290, 32, 4286578688)
		return
	elseif p291 == p291 then
		local v292 = math.abs(p291)
		local v293, v294 = math.frexp(v292)
		local v295 = (v293 - 0.5) * 16777216
		local v296 = math.round(v295)
		local v297 = math.clamp(v294, -127, 128) + 127
		v_u_32(p290, 32, (0 <= p291 and 0 or 2147483648) + v297 * 8388608 + v296)
	else
		v_u_32(p290, 32, 2147483647)
	end
end
function v_u_102.ReadFloat32(p298)
	-- upvalues: (copy) v_u_44
	local v299 = v_u_44(p298, 32)
	if v299 == 0 then
		return 0
	end
	if v299 == 2139095040 then
		return (1 / 0)
	end
	if v299 == 4286578688 then
		return (-1 / 0)
	end
	if v299 == 2147483647 then
		return (0 / 0)
	end
	local v300 = bit32.band(v299, 2147483648) == 0 and 1 or -1
	local v301 = bit32.extract(v299, 23, 8) - 127
	return v300 * (v299 % 8388608 / 8388608 * 0.5 + 0.5) * math.pow(2, v301)
end
function v_u_102.WriteFloat64(p302, p303)
	-- upvalues: (copy) v_u_14, (copy) v_u_32
	if type(p303) ~= "number" then
		v_u_14("invalid argument #1 to \'WriteFloat64\' (number expected, got %s)", (typeof(p303)))
	end
	local v304 = string.pack("<d", p303)
	local v305, v306, v307, v308, v309, v310, v311, v312 = string.byte(v304, 1, 8)
	v_u_32(p302, 32, v305 + v306 * 256 + v307 * 65536 + v308 * 16777216)
	v_u_32(p302, 32, v309 + v310 * 256 + v311 * 65536 + v312 * 16777216)
end
function v_u_102.ReadFloat64(p313)
	-- upvalues: (copy) v_u_44
	local v314 = v_u_44(p313, 32)
	local v315 = v_u_44(p313, 32)
	local v316 = string.unpack
	local v317 = bit32.band(v314, 255)
	local v318 = bit32.extract(v314, 8, 8)
	local v319 = bit32.extract(v314, 16, 8)
	local v320 = bit32.extract(v314, 24, 8)
	local v321 = bit32.band(v315, 255)
	local v322 = bit32.extract(v315, 8, 8)
	local v323 = bit32.extract(v315, 16, 8)
	local v324 = bit32.extract(v315, 24, 8)
	return v316("<d", (string.char(v317, v318, v319, v320, v321, v322, v323, v324)))
end
return v_u_102