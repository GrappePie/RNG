-- What the sigma?

local v1 = {}
local v_u_2 = {}
v1.Deflate = {}
v1.Zlib = {}
v1.Library = v_u_2
local function v5(p3, p4)
	-- upvalues: (ref) v_u_2
	return v_u_2:CompressDeflate(p3, p4)
end
v1.Deflate.Compress = v5
local function v7(p6)
	-- upvalues: (ref) v_u_2
	return v_u_2:DecompressDeflate(p6)
end
v1.Deflate.Decompress = v7
local function v10(p8, p9)
	-- upvalues: (ref) v_u_2
	return v_u_2:CompressZlib(p8, p9)
end
v1.Zlib.Compress = v10
local function v12(p11)
	-- upvalues: (ref) v_u_2
	return v_u_2:DecompressZlib(p11)
end
v1.Zlib.Decompress = v12
v_u_2 = {
	["_VERSION"] = "1.0.2-release",
	["_MAJOR"] = "LibDeflate",
	["_MINOR"] = 3,
	["_COPYRIGHT"] = "LibDeflate 1.0.2-release Copyright (C) 2018-2020 Haoqian He. Licensed under the zlib License"
}
local v_u_13 = assert
local v_u_14 = error
local v_u_15 = pairs
local v_u_16 = string.byte
local v_u_17 = string.char
local v_u_18 = string.find
local v_u_19 = string.gsub
local v_u_20 = string.sub
local v_u_21 = table.concat
local v_u_22 = table.sort
local v_u_23 = tostring
local v_u_24 = type
local v_u_25 = {}
local v_u_26 = {}
local v_u_27 = {}
local v_u_28 = {}
local v_u_29 = {}
local v_u_30 = {}
local v_u_31 = {}
local v_u_32 = {}
local v_u_33 = {}
local v_u_34 = {
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	11,
	13,
	15,
	17,
	19,
	23,
	27,
	31,
	35,
	43,
	51,
	59,
	67,
	83,
	99,
	115,
	131,
	163,
	195,
	227,
	258
}
local v_u_35 = {
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	1,
	1,
	1,
	1,
	2,
	2,
	2,
	2,
	3,
	3,
	3,
	3,
	4,
	4,
	4,
	4,
	5,
	5,
	5,
	5,
	0
}
local v_u_36 = {
	1,
	2,
	3,
	4,
	5,
	7,
	9,
	13,
	17,
	25,
	33,
	49,
	65,
	97,
	129,
	193,
	257,
	385,
	513,
	769,
	1025,
	1537,
	2049,
	3073,
	4097,
	6145,
	8193,
	12289,
	16385,
	24577
}
local v_u_37 = {
	0,
	0,
	0,
	0,
	1,
	1,
	2,
	2,
	3,
	3,
	4,
	4,
	5,
	5,
	6,
	6,
	7,
	7,
	8,
	8,
	9,
	9,
	10,
	10,
	11,
	11,
	12,
	12,
	13,
	13
}
local v_u_38 = {
	16,
	17,
	18,
	0,
	8,
	7,
	9,
	6,
	10,
	5,
	11,
	4,
	12,
	3,
	13,
	2,
	14,
	1,
	15
}
local v_u_39 = nil
local v_u_40 = nil
local v_u_41 = nil
local v_u_42 = nil
local v_u_43 = nil
local v_u_44 = nil
local v_u_45 = nil
for v46 = 0, 255 do
	v_u_26[v46] = v_u_17(v46)
end
local v47 = 1
for v48 = 0, 32 do
	v_u_25[v48] = v47
	v47 = v47 * 2
end
for v49 = 1, 9 do
	v_u_27[v49] = {}
	for v50 = 0, v_u_25[v49 + 1] - 1 do
		local v51 = v50
		local v52 = 0
		for _ = 1, v49 do
			local v53 = v52 - v52 % 2 + ((v52 % 2 == 1 or v51 % 2 == 1) and 1 or 0)
			v51 = (v51 - v51 % 2) / 2
			v52 = v53 * 2
		end
		v_u_27[v49][v50] = (v52 - v52 % 2) / 2
	end
end
local v54 = 265
local v55 = 18
local v56 = 16
local v57 = 1
for v58 = 3, 258 do
	if v58 <= 10 then
		v_u_28[v58] = v58 + 254
		v_u_30[v58] = 0
	elseif v58 == 258 then
		v_u_28[v58] = 285
		v_u_30[v58] = 0
	else
		if v55 < v58 then
			v55 = v55 + v56
			v56 = v56 * 2
			v54 = v54 + 4
			v57 = v57 + 1
		end
		local v59 = v58 - v55 - 1 + v56 / 2
		v_u_28[v58] = (v59 - v59 % v56 / 8) / v56 / 8 + v54
		v_u_30[v58] = v57
		v_u_29[v58] = v59 % v56 / 8
	end
end
v_u_31[1] = 0
v_u_31[2] = 1
v_u_33[1] = 0
v_u_33[2] = 0
local v60 = 3
local v61 = 2
local v62 = 0
local v63 = 4
for v64 = 3, 256 do
	if v63 < v64 then
		v60 = v60 * 2
		v63 = v63 * 2
		v61 = v61 + 2
		v62 = v62 + 1
	end
	v_u_31[v64] = v64 <= v60 and v61 and v61 or v61 + 1
	v_u_33[v64] = v62 < 0 and 0 or v62
	if 8 <= v63 then
		v_u_32[v64] = (v64 - v63 / 2 - 1) % v63 / 4
	end
end
function v_u_2.Adler32(_, p65)
	-- upvalues: (copy) v_u_24, (copy) v_u_14, (copy) v_u_16
	if v_u_24(p65) ~= "string" then
		v_u_14(("Usage: LibDeflate:Adler32(str): \'str\' - string expected got \'%s\'."):format((v_u_24(p65))), 2)
	end
	local v66 = #p65
	local v67 = 1
	local v68 = 0
	local v69 = 1
	while v67 <= v66 - 15 do
		local v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85 = v_u_16(p65, v67, v67 + 15)
		v68 = (v68 + 16 * v69 + 16 * v70 + 15 * v71 + 14 * v72 + 13 * v73 + 12 * v74 + 11 * v75 + 10 * v76 + 9 * v77 + 8 * v78 + 7 * v79 + 6 * v80 + 5 * v81 + 4 * v82 + 3 * v83 + 2 * v84 + v85) % 65521
		v69 = (v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85) % 65521
		v67 = v67 + 16
	end
	while v67 <= v66 do
		v69 = (v69 + v_u_16(p65, v67, v67)) % 65521
		v68 = (v68 + v69) % 65521
		v67 = v67 + 1
	end
	return (v68 * 65536 + v69) % 4294967296
end
local function v88(p86, p87)
	return p86 % 4294967296 == p87 % 4294967296
end
function v_u_2.CreateDictionary(p89, p90, p91, p92)
	-- upvalues: (copy) v_u_24, (copy) v_u_14, (copy) v_u_16
	if v_u_24(p90) ~= "string" then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'str\' - string expected got \'%s\'."):format((v_u_24(p90))), 2)
	end
	if v_u_24(p91) ~= "number" then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'strlen\' - number expected got \'%s\'."):format((v_u_24(p91))), 2)
	end
	if v_u_24(p92) ~= "number" then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'adler32\' - number expected got \'%s\'."):format((v_u_24(p92))), 2)
	end
	if p91 ~= #p90 then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'strlen\' does not match the actual length of \'str\'. \'strlen\': %u, \'#str\': %u . Please check if \'str\' is modified unintentionally."):format(p91, #p90))
	end
	if p91 == 0 then
		v_u_14("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'str\' - Empty string is not allowed.", 2)
	end
	if 32768 < p91 then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'str\' - string longer than 32768 bytes is not allowed. Got %d bytes."):format(p91), 2)
	end
	local v93 = p89:Adler32(p90)
	if p92 % 4294967296 ~= v93 % 4294967296 then
		v_u_14(("Usage: LibDeflate:CreateDictionary(str, strlen, adler32): \'adler32\' does not match the actual adler32 of \'str\'. \'adler32\': %u, \'Adler32(str)\': %u . Please check if \'str\' is modified unintentionally."):format(p92, v93))
	end
	local v94 = {
		["adler32"] = p92,
		["hash_tables"] = {},
		["string_table"] = {},
		["strlen"] = p91
	}
	local v95 = v94.string_table
	local v96 = v94.hash_tables
	v95[1] = v_u_16(p90, 1, 1)
	v95[2] = v_u_16(p90, 2, 2)
	if 3 <= p91 then
		local v97 = v95[1] * 256 + v95[2]
		local v98 = 1
		while v98 <= p91 - 2 - 3 do
			local v99, v100, v101, v102 = v_u_16(p90, v98 + 2, v98 + 5)
			v95[v98 + 2] = v99
			v95[v98 + 3] = v100
			v95[v98 + 4] = v101
			v95[v98 + 5] = v102
			local v103 = (v97 * 256 + v99) % 16777216
			local v104 = v96[v103]
			if not v104 then
				v104 = {}
				v96[v103] = v104
			end
			v104[#v104 + 1] = v98 - p91
			local v105 = v98 + 1
			local v106 = (v103 * 256 + v100) % 16777216
			local v107 = v96[v106]
			if not v107 then
				v107 = {}
				v96[v106] = v107
			end
			v107[#v107 + 1] = v105 - p91
			local v108 = v105 + 1
			local v109 = (v106 * 256 + v101) % 16777216
			local v110 = v96[v109]
			if not v110 then
				v110 = {}
				v96[v109] = v110
			end
			v110[#v110 + 1] = v108 - p91
			local v111 = v108 + 1
			v97 = (v109 * 256 + v102) % 16777216
			local v112 = v96[v97]
			if not v112 then
				v112 = {}
				v96[v97] = v112
			end
			v112[#v112 + 1] = v111 - p91
			v98 = v111 + 1
		end
		while v98 <= p91 - 2 do
			local v113 = v_u_16(p90, v98 + 2)
			v95[v98 + 2] = v113
			v97 = (v97 * 256 + v113) % 16777216
			local v114 = v96[v97]
			if not v114 then
				v114 = {}
				v96[v97] = v114
			end
			v114[#v114 + 1] = v98 - p91
			v98 = v98 + 1
		end
	end
	return v94
end
local function v_u_116(p115)
	-- upvalues: (copy) v_u_24
	if v_u_24(p115) == "table" then
		if v_u_24(p115.adler32) == "number" and v_u_24(p115.string_table) == "table" and v_u_24(p115.strlen) == "number" and p115.strlen > 0 and 32768 >= p115.strlen and p115.strlen == #p115.string_table and v_u_24(p115.hash_tables) == "table" then
			return true, ""
		else
			return false, ("\'dictionary\' - corrupted dictionary."):format((v_u_24(p115)))
		end
	else
		return false, ("\'dictionary\' - table expected got \'%s\'."):format((v_u_24(p115)))
	end
end
local v_u_117 = {
	[0] = {
		false,
		nil,
		0,
		0,
		0
	},
	[1] = {
		false,
		nil,
		4,
		8,
		4
	},
	[2] = {
		false,
		nil,
		5,
		18,
		8
	},
	[3] = {
		false,
		nil,
		6,
		32,
		32
	},
	[4] = {
		true,
		4,
		4,
		16,
		16
	},
	[5] = {
		true,
		8,
		16,
		32,
		32
	},
	[6] = {
		true,
		8,
		16,
		128,
		128
	},
	[7] = {
		true,
		8,
		32,
		128,
		256
	},
	[8] = {
		true,
		32,
		128,
		258,
		1024
	},
	[9] = {
		true,
		32,
		258,
		258,
		4096
	}
}
local function v_u_128(p118, p119, p120, p121, p122)
	-- upvalues: (copy) v_u_24, (copy) v_u_116, (copy) v_u_15, (copy) v_u_117, (copy) v_u_23
	if v_u_24(p118) ~= "string" then
		return false, ("\'str\' - string expected got \'%s\'."):format((v_u_24(p118)))
	end
	if p119 then
		local v123, v124 = v_u_116(p120)
		if not v123 then
			return false, v124
		end
	end
	if p121 then
		local v125 = v_u_24(p122)
		if v125 ~= "nil" and v125 ~= "table" then
			return false, ("\'configs\' - nil or table expected got \'%s\'."):format((v_u_24(p122)))
		end
		if v125 == "table" then
			for v126, v127 in v_u_15(p122) do
				if v126 ~= "level" and v126 ~= "strategy" then
					return false, ("\'configs\' - unsupported table key in the configs: \'%s\'."):format(v126)
				end
				if v126 == "level" and not v_u_117[v127] then
					return false, ("\'configs\' - unsupported \'level\': %s."):format((v_u_23(v127)))
				end
				if v126 == "strategy" then
					if v127 ~= "fixed" then
						if v127 ~= "huffman_only" then
							if v127 ~= "dynamic" then
								return false, ("\'configs\' - unsupported \'strategy\': \'%s\'."):format((v_u_23(v127)))
							end
						end
					end
				end
			end
		end
	end
	return true, ""
end
local function v_u_148()
	-- upvalues: (copy) v_u_25, (copy) v_u_26, (copy) v_u_17, (copy) v_u_21
	local v_u_129 = 0
	local v_u_130 = 0
	local v_u_131 = 0
	local v_u_132 = 0
	local v_u_133 = {}
	local v_u_134 = {}
	return function(p135, p136)
		-- upvalues: (ref) v_u_130, (ref) v_u_25, (ref) v_u_131, (ref) v_u_132, (ref) v_u_129, (ref) v_u_133, (ref) v_u_26
		v_u_130 = v_u_130 + p135 * v_u_25[v_u_131]
		v_u_131 = v_u_131 + p136
		v_u_132 = v_u_132 + p136
		if 32 <= v_u_131 then
			v_u_129 = v_u_129 + 1
			local v137 = v_u_133
			local v138 = v_u_129
			local v139 = v_u_26[v_u_130 % 256]
			local v140 = v_u_26[(v_u_130 - v_u_130 % 256) / 256 % 256]
			local v141 = v_u_26[(v_u_130 - v_u_130 % 65536) / 65536 % 256]
			local v142 = v_u_26[(v_u_130 - v_u_130 % 16777216) / 16777216 % 256]
			v137[v138] = v139 .. v140 .. v141 .. v142
			local v143 = v_u_25[32 - v_u_131 + p136]
			v_u_130 = (p135 - p135 % v143) / v143
			v_u_131 = v_u_131 - 32
		end
	end, function(p144)
		-- upvalues: (ref) v_u_131, (ref) v_u_129, (ref) v_u_133, (ref) v_u_130, (ref) v_u_17, (ref) v_u_132
		for _ = 1, v_u_131, 8 do
			v_u_129 = v_u_129 + 1
			v_u_133[v_u_129] = v_u_17(v_u_130 % 256)
			v_u_130 = (v_u_130 - v_u_130 % 256) / 256
		end
		v_u_131 = 0
		v_u_129 = v_u_129 + 1
		v_u_133[v_u_129] = p144
		v_u_132 = v_u_132 + #p144 * 8
	end, function(p145)
		-- upvalues: (ref) v_u_132, (ref) v_u_131, (ref) v_u_130, (ref) v_u_25, (ref) v_u_129, (ref) v_u_133, (ref) v_u_26, (ref) v_u_21, (copy) v_u_134
		if p145 == 3 then
			return v_u_132
		else
			if p145 == 1 or p145 == 2 then
				local v146 = (8 - v_u_131 % 8) % 8
				if 0 < v_u_131 then
					v_u_130 = v_u_130 - v_u_25[v_u_131] + v_u_25[v_u_131 + v146]
					for _ = 1, v_u_131, 8 do
						v_u_129 = v_u_129 + 1
						v_u_133[v_u_129] = v_u_26[v_u_130 % 256]
						v_u_130 = (v_u_130 - v_u_130 % 256) / 256
					end
					v_u_130 = 0
					v_u_131 = 0
				end
				if p145 == 2 then
					v_u_132 = v_u_132 + v146
					return v_u_132
				end
			end
			local v147 = v_u_21(v_u_133)
			v_u_133 = {}
			v_u_129 = 0
			v_u_134[#v_u_134 + 1] = v147
			if p145 == 0 then
				return v_u_132
			else
				return v_u_132, v_u_21(v_u_134)
			end
		end
	end
end
local function v_u_157(p149, p150, p151)
	local v152 = p151 + 1
	p149[v152] = p150
	local v153 = p150[1]
	local v154 = (v152 - v152 % 2) / 2
	while 1 <= v154 and v153 < p149[v154][1] do
		local v155 = p149[v154]
		p149[v154] = p150
		p149[v152] = v155
		local v156 = (v154 - v154 % 2) / 2
		v152 = v154
		v154 = v156
	end
end
local function v_u_171(p158, p159)
	local v160 = p158[1]
	local v161 = p158[p159]
	local v162 = v161[1]
	p158[1] = v161
	p158[p159] = v160
	local v163 = p159 - 1
	local v164 = 1
	local v165 = v164 * 2
	local v166 = v165 + 1
	while v165 <= v163 do
		local v167 = p158[v165]
		local v168
		if v166 <= v163 and p158[v166][1] < v167[1] then
			local v169 = p158[v166]
			if v169[1] >= v162 then
				break
			end
			p158[v166] = v161
			p158[v164] = v169
			v168 = v166 * 2
			local v170 = v168 + 1
			v165 = v166
			v166 = v170
		else
			if v167[1] >= v162 then
				break
			end
			p158[v165] = v161
			p158[v164] = v167
			v168 = v165 * 2
			v166 = v168 + 1
		end
		v164 = v165
		v165 = v168
	end
	return v160
end
local function v_u_185(p172, p173, p174, p175)
	-- upvalues: (copy) v_u_27
	local v176 = {}
	local v177 = {}
	local v178 = 0
	for v179 = 1, p175 do
		v178 = (v178 + (p172[v179 - 1] or 0)) * 2
		v176[v179] = v178
	end
	for v180 = 0, p174 do
		local v181 = p173[v180]
		if v181 then
			local v182 = v176[v181]
			v176[v181] = v182 + 1
			if v181 <= 9 then
				v177[v180] = v_u_27[v181][v182]
			else
				local v183 = 0
				for _ = 1, v181 do
					local v184 = v183 - v183 % 2 + ((v183 % 2 == 1 or v182 % 2 == 1) and 1 or 0)
					v182 = (v182 - v182 % 2) / 2
					v183 = v184 * 2
				end
				v177[v180] = (v183 - v183 % 2) / 2
			end
		end
	end
	return v177
end
local function v_u_189(p186, p187)
	local v188
	if p186[1] < p187[1] then
		v188 = true
	elseif p186[1] == p187[1] then
		v188 = p186[2] < p187[2]
	else
		v188 = false
	end
	return v188
end
local function v_u_221(p190, p191, p192)
	-- upvalues: (copy) v_u_15, (copy) v_u_22, (copy) v_u_189, (copy) v_u_171, (copy) v_u_157, (copy) v_u_185
	local v193 = -1
	local v194 = {}
	local v195 = {}
	local v196 = {}
	local v197 = {}
	local v198 = {}
	local v199 = 0
	for v200, v201 in v_u_15(p190) do
		v199 = v199 + 1
		v194[v199] = { v201, v200 }
	end
	if v199 == 0 then
		return {}, {}, -1
	end
	if v199 == 1 then
		local v202 = v194[1][2]
		v196[v202] = 1
		v197[v202] = 0
		return v196, v197, v202
	end
	v_u_22(v194, v_u_189)
	for v203 = 1, v199 do
		v195[v203] = v194[v203]
	end
	while 1 < v199 do
		local v204 = v_u_171(v195, v199)
		local v205 = v199 - 1
		local v206 = v_u_171(v195, v205)
		local v207 = v205 - 1
		v_u_157(v195, {
			v204[1] + v206[1],
			-1,
			v204,
			v206
		}, v207)
		v199 = v207 + 1
	end
	local v208 = {
		v195[1],
		0,
		0,
		0
	}
	v195[1][1] = 0
	local v209 = 0
	local v210 = 1
	local v211 = 1
	while v210 <= v211 do
		local v212 = v208[v210]
		local v213 = v212[1]
		local v214 = v212[2]
		local v215 = v212[3]
		local v216 = v212[4]
		if v215 then
			v211 = v211 + 1
			v208[v211] = v215
			v215[1] = v213 + 1
		end
		if v216 then
			v211 = v211 + 1
			v208[v211] = v216
			v216[1] = v213 + 1
		end
		v210 = v210 + 1
		if p191 < v213 then
			v209 = v209 + 1
			v213 = p191
		end
		if 0 <= v214 then
			v196[v214] = v213
			if v193 < v214 then
				v193 = v214 or v193
			end
			v198[v213] = (v198[v213] or 0) + 1
		end
	end
	if 0 < v209 then
		repeat
			local v217 = p191 - 1
			while (v198[v217] or 0) == 0 do
				v217 = v217 - 1
			end
			v198[v217] = v198[v217] - 1
			v198[v217 + 1] = (v198[v217 + 1] or 0) + 2
			v198[p191] = v198[p191] - 1
			v209 = v209 - 2
		until v209 <= 0
		local v218 = 1
		for v219 = p191, 1, -1 do
			local v220 = v198[v219] or 0
			while 0 < v220 do
				v196[v194[v218][2]] = v219
				v220 = v220 - 1
				v218 = v218 + 1
			end
		end
	end
	return v196, v_u_185(v198, v196, p192, p191), v193
end
local function v_u_238(p222, p223, p224, p225)
	local v226 = {}
	local v227 = {}
	local v228 = {}
	local v229 = p223 + (p225 < 0 and 0 or p225) + 1
	local v230 = 0
	local v231 = 0
	local v232 = nil
	local v233 = 0
	for v234 = 0, v229 + 1 do
		local v235
		if v234 <= p223 then
			v235 = p222[v234] or 0
		else
			v235 = v234 <= v229 and (p224[v234 - p223 - 1] or 0) or nil
		end
		if v235 == v232 then
			v233 = v233 + 1
			if v235 == 0 or v233 ~= 6 then
				if v235 == 0 then
					if v233 == 138 then
						v231 = v231 + 1
						v226[v231] = 18
						v230 = v230 + 1
						v228[v230] = 127
						v227[18] = (v227[18] or 0) + 1
						v233 = 0
					end
				end
			else
				v231 = v231 + 1
				v226[v231] = 16
				v230 = v230 + 1
				v228[v230] = 3
				v227[16] = (v227[16] or 0) + 1
				v233 = 0
			end
		else
			if v233 == 1 then
				v231 = v231 + 1
				v226[v231] = v232
				v227[v232] = (v227[v232] or 0) + 1
			elseif v233 == 2 then
				local v236 = v231 + 1
				v226[v236] = v232
				v231 = v236 + 1
				v226[v231] = v232
				v227[v232] = (v227[v232] or 0) + 2
			elseif 3 <= v233 then
				v231 = v231 + 1
				local v237 = v232 == 0 and (v233 <= 10 and 17 or 18) or 16
				v226[v231] = v237
				v227[v237] = (v227[v237] or 0) + 1
				v230 = v230 + 1
				v228[v230] = v233 <= 10 and v233 - 3 or v233 - 11
			end
			if v235 and v235 ~= 0 then
				v231 = v231 + 1
				v226[v231] = v235
				v227[v235] = (v227[v235] or 0) + 1
				v232 = v235
				v233 = 0
			else
				v232 = v235
				v233 = 1
			end
		end
	end
	return v226, v228, v227
end
local function v_u_276(p239, p240, p241, p242, p243)
	-- upvalues: (copy) v_u_16
	local v244 = p241 - p243
	while v244 <= p242 - 15 - p243 do
		local v245 = v244 + 1
		local v246 = v244 + 2
		local v247 = v244 + 3
		local v248 = v244 + 4
		local v249 = v244 + 5
		local v250 = v244 + 6
		local v251 = v244 + 7
		local v252 = v244 + 8
		local v253 = v244 + 9
		local v254 = v244 + 10
		local v255 = v244 + 11
		local v256 = v244 + 12
		local v257 = v244 + 13
		local v258 = v244 + 14
		local v259 = v244 + 15
		local v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275 = v_u_16(p239, v244 + p243, v244 + 15 + p243)
		p240[v244] = v260
		p240[v245] = v261
		p240[v246] = v262
		p240[v247] = v263
		p240[v248] = v264
		p240[v249] = v265
		p240[v250] = v266
		p240[v251] = v267
		p240[v252] = v268
		p240[v253] = v269
		p240[v254] = v270
		p240[v255] = v271
		p240[v256] = v272
		p240[v257] = v273
		p240[v258] = v274
		p240[v259] = v275
		v244 = v244 + 16
	end
	while v244 <= p242 - p243 do
		p240[v244] = v_u_16(p239, v244 + p243, v244 + p243)
		v244 = v244 + 1
	end
	return p240
end
local function v_u_344(p277, p278, p279, p280, p281, p282, p283)
	-- upvalues: (copy) v_u_117, (copy) v_u_13, (copy) v_u_28, (copy) v_u_30, (copy) v_u_31, (copy) v_u_32, (copy) v_u_33, (copy) v_u_29
	local v284 = v_u_117[p277]
	local v285 = v284[1]
	local v286 = v284[2]
	local v287 = v284[3]
	local v288 = v284[4]
	local v289 = v284[5]
	local v290 = (v285 or not v287) and 2147483646 or v287
	local v291 = v289 - v289 % 4 / 4
	local v292, v293, v294
	if p283 then
		v292 = p283.hash_tables
		v293 = p283.string_table
		v294 = p283.strlen
		v_u_13(p280 == 1)
		if p280 <= p281 and 2 <= v294 then
			local v295 = v293[v294 - 1] * 65536 + v293[v294] * 256 + p278[1]
			local v296 = p279[v295]
			if not v296 then
				v296 = {}
				p279[v295] = v296
			end
			v296[#v296 + 1] = -1
		end
		if p280 + 1 <= p281 then
			if 1 <= v294 then
				local v297 = v293[v294] * 65536 + p278[1] * 256 + p278[2]
				local v298 = p279[v297]
				if not v298 then
					v298 = {}
					p279[v297] = v298
				end
				v298[#v298 + 1] = 0
			end
		end
	else
		v294 = 0
		v293 = nil
		v292 = nil
	end
	local v299 = v294 + 3
	local v300 = (p278[p280 - p282] or 0) * 256 + (p278[p280 + 1 - p282] or 0)
	local v301 = {}
	local v302 = {}
	local v303 = {}
	local v304 = {}
	local v305 = {}
	local v306 = {}
	local v307 = p281 + (v285 and 1 or 0)
	local v308 = 0
	local v309 = 0
	local v310 = 0
	local v311 = 0
	local v312 = 0
	local v313 = false
	local v314 = 0
	while true do
		local v315
		if true then
			if true then
				break
			end
		else
			if p280 > v307 then
				v301[v312 + 1] = 256
				v302[256] = (v302[256] or 0) + 1
				return v301, v305, v302, v303, v306, v304
			end
			v315 = p280 - p282
			local v316 = p282 - 3
			local v317 = 0
			v300 = (v300 * 256 + (p278[v315 + 2] or 0)) % 16777216
			local v318 = nil
			local v319 = p279[v300]
			local v320, v321, v322
			if v319 then
				v320 = #v319
				v321 = v320
				v322 = v319
			else
				v320 = 0
				v322 = {}
				p279[v300] = v322
				if v292 then
					v319 = v292[v300]
					v321 = v319 and #v319 or 0
				else
					v319 = v318
					v321 = 0
				end
			end
			if p280 <= p281 then
				v322[v320 + 1] = p280
			end
			local v323, v324
			if 0 < v321 then
				if p280 + 2 <= p281 then
					if not v285 or v309 < v287 then
						local v325
						if v285 then
							if v286 <= v309 then
								v325 = v291 or v289
							else
								v325 = v289
							end
						else
							v325 = v289
						end
						local v326 = p281 - p280
						local v327 = (257 <= v326 and 257 or v326) + v315
						local v328 = v315 + 3
						v323 = v308
						while true do
							if 1 > v321 then
								v324 = v317
							end
							if 0 >= v325 then
								v324 = v317
							end
							local v329 = v319[v321]
							if 32768 < p280 - v329 then
								v324 = v317
							end
							if v329 < p280 then
								local v330
								if -257 <= v329 then
									local v331 = v329 - v316
									v330 = v328
									while v330 <= v327 do
										if p278[v331] ~= p278[v330] then
											break
										end
										v330 = v330 + 1
										v331 = v331 + 1
									end
								else
									local v332 = v299 + v329
									v330 = v328
									while v330 <= v327 do
										if v293[v332] ~= p278[v330] then
											break
										end
										v330 = v330 + 1
										v332 = v332 + 1
									end
								end
								v324 = v330 - v315
								if v317 < v324 then
									v323 = p280 - v329
								else
									v324 = v317
								end
								if v288 <= v324 then
									break
								end
							else
								v324 = v317
							end
							v321 = v321 - 1
							v325 = v325 - 1
							if v321 == 0 then
								if 0 < v329 then
									if v292 then
										v319 = v292[v300]
										v321 = v319 and #v319 or 0
									end
								end
							end
							v317 = v324
						end
						goto l34
					end
					v324 = v317
					v323 = v308
				else
					v324 = v317
					v323 = v308
				end
			else
				v324 = v317
				v323 = v308
			end
		end
		::l34::
		if not v285 then
			v308 = v323
			v309 = v324
		end
		if v285 and not v313 or 3 >= v309 and (v309 ~= 3 or v308 >= 4096) or v324 > v309 then
			if v285 and not v313 then
				p280 = p280 + 1
				v313 = true
			else
				if v285 then
					v315 = v315 - 1 or v315
				end
				local v333 = p278[v315]
				v312 = v312 + 1
				v301[v312] = v333
				v302[v333] = (v302[v333] or 0) + 1
				p280 = p280 + 1
			end
			goto l103
		end
		local v334 = v_u_28[v309]
		local v335 = v_u_30[v309]
		local v336, v337, v338
		if v308 <= 256 then
			v336 = v_u_31[v308]
			v337 = v_u_32[v308]
			v338 = v_u_33[v308]
		else
			local v339 = 512
			v338 = 7
			local v340 = 384
			v336 = 16
			while true do
				if v308 <= v340 then
					v337 = (v308 - v339 / 2 - 1) % v339 / 4
				end
				if v308 <= v339 then
					v337 = (v308 - v339 / 2 - 1) % v339 / 4
					v336 = v336 + 1
				end
				v336 = v336 + 2
				v338 = v338 + 1
				v340 = v340 * 2
				v339 = v339 * 2
			end
		end
		v312 = v312 + 1
		v301[v312] = v334
		v302[v334] = (v302[v334] or 0) + 1
		v310 = v310 + 1
		v303[v310] = v336
		v304[v336] = (v304[v336] or 0) + 1
		if 0 < v335 then
			local v341 = v_u_29[v309]
			v311 = v311 + 1
			v305[v311] = v341
		end
		if 0 < v338 then
			v314 = v314 + 1
			v306[v314] = v337
		end
		for v342 = p280 + 1, p280 + v309 - (v285 and 2 or 1) do
			v300 = (v300 * 256 + (p278[v342 - p282 + 2] or 0)) % 16777216
			if v309 <= v290 then
				local v343 = p279[v300]
				if not v343 then
					v343 = {}
					p279[v300] = v343
				end
				v343[#v343 + 1] = v342
			end
		end
		p280 = p280 + v309 - (v285 and 1 or 0)
		v313 = false
		::l103::
		v309 = v324
		v308 = v323
	end
end
local function v_u_363(p345, p346)
	-- upvalues: (copy) v_u_221, (copy) v_u_238, (copy) v_u_38
	local v347, v348, v349 = v_u_221(p345, 15, 285)
	local v350, v351, v352 = v_u_221(p346, 15, 29)
	local v353, v354, v355 = v_u_238(v347, v349, v350, v352)
	local v356, v357 = v_u_221(v355, 7, 18)
	local v358 = 0
	for v359 = 1, 19 do
		if (v356[v_u_38[v359]] or 0) ~= 0 then
			v358 = v359
		end
	end
	local v360 = v358 - 4
	local v361 = v349 + 1 - 257
	local v362 = v352 + 1 - 1
	return v361, v362 < 0 and 0 or v362, v360, v356, v357, v353, v354, v347, v348, v350, v351
end
local function v_u_378(p364, p365, p366, p367, p368, p369, p370)
	-- upvalues: (copy) v_u_35
	local v371 = 17 + (p366 + 4) * 3
	for v372 = 1, #p368 do
		local v373 = p368[v372]
		v371 = v371 + p367[v373]
		if 16 <= v373 then
			v371 = v371 + (v373 == 16 and 2 or v373 == 17 and 3 or 7)
		end
	end
	local v374 = 0
	for v375 = 1, #p364 do
		local v376 = p364[v375]
		v371 = v371 + p369[v376]
		if 256 < v376 then
			v374 = v374 + 1
			if 264 < v376 then
				if v376 < 285 then
					v371 = v371 + v_u_35[v376 - 256]
				end
			end
			local v377 = p365[v374]
			v371 = v371 + p370[v377]
			if 3 < v377 then
				v371 = v371 + (v377 - v377 % 2) / 2 - 1
			end
		end
	end
	return v371
end
local function v_u_406(p379, p380, p381, p382, p383, p384, p385, p386, p387, p388, p389, p390, p391, p392, p393, p394, p395)
	-- upvalues: (copy) v_u_38, (copy) v_u_35
	p379(p380 and 1 or 0, 1)
	p379(2, 2)
	p379(p385, 5)
	p379(p386, 5)
	p379(p387, 4)
	for v396 = 1, p387 + 4 do
		p379(p388[v_u_38[v396]] or 0, 3)
	end
	local v397 = 1
	for v398 = 1, #p390 do
		local v399 = p390[v398]
		p379(p389[v399], p388[v399])
		if 16 <= v399 then
			p379(p391[v397], v399 == 16 and 2 or v399 == 17 and 3 or 7)
			v397 = v397 + 1
		end
	end
	local v400 = 0
	local v401 = 0
	local v402 = 0
	for v403 = 1, #p381 do
		local v404 = p381[v403]
		p379(p393[v404], p392[v404])
		if 256 < v404 then
			v401 = v401 + 1
			if 264 < v404 then
				if v404 < 285 then
					v400 = v400 + 1
					p379(p382[v400], v_u_35[v404 - 256])
				end
			end
			local v405 = p383[v401]
			p379(p395[v405], p394[v405])
			if 3 < v405 then
				v402 = v402 + 1
				p379(p384[v402], (v405 - v405 % 2) / 2 - 1)
			end
		end
	end
end
local function v_u_414(p407, p408)
	-- upvalues: (ref) v_u_41, (copy) v_u_35
	local v409 = 3
	local v410 = 0
	for v411 = 1, #p407 do
		local v412 = p407[v411]
		v409 = v409 + v_u_41[v412]
		if 256 < v412 then
			v410 = v410 + 1
			if 264 < v412 then
				if v412 < 285 then
					v409 = v409 + v_u_35[v412 - 256]
				end
			end
			local v413 = p408[v410]
			v409 = v409 + 5
			if 3 < v413 then
				v409 = v409 + (v413 - v413 % 2) / 2 - 1
			end
		end
	end
	return v409
end
local function v_u_427(p415, p416, p417, p418, p419, p420)
	-- upvalues: (ref) v_u_39, (ref) v_u_41, (copy) v_u_35, (ref) v_u_43
	p415(p416 and 1 or 0, 1)
	p415(1, 2)
	local v421 = 0
	local v422 = 0
	local v423 = 0
	for v424 = 1, #p417 do
		local v425 = p417[v424]
		p415(v_u_39[v425], v_u_41[v425])
		if 256 < v425 then
			v422 = v422 + 1
			if 264 < v425 then
				if v425 < 285 then
					v421 = v421 + 1
					p415(p418[v421], v_u_35[v425 - 256])
				end
			end
			local v426 = p419[v422]
			p415(v_u_43[v426], 5)
			if 3 < v426 then
				v423 = v423 + 1
				p415(p420[v423], (v426 - v426 % 2) / 2 - 1)
			end
		end
	end
end
local function v_u_437(p428, p429, p430, p431, p432, p433, p434)
	-- upvalues: (copy) v_u_13, (copy) v_u_25
	v_u_13(p433 - p432 + 1 <= 65535)
	p428(p430 and 1 or 0, 1)
	p428(0, 2)
	local v435 = (8 - (p434 + 3) % 8) % 8
	if 0 < v435 then
		p428(v_u_25[v435] - 1, v435)
	end
	local v436 = p433 - p432 + 1
	p428(v436, 16)
	p428(255 - v436 % 256 + (255 - (v436 - v436 % 256) / 256) * 256, 16)
	p429(p431:sub(p432, p433))
end
local function v_u_491(p438, p439, p440, p441, p442, p443)
	-- upvalues: (copy) v_u_276, (copy) v_u_344, (copy) v_u_363, (copy) v_u_378, (copy) v_u_414, (copy) v_u_13, (copy) v_u_437, (copy) v_u_427, (copy) v_u_406, (copy) v_u_15
	local v444 = {}
	local v445 = {}
	local v446 = nil
	local v447 = nil
	local v448 = nil
	local v449 = p441(3)
	local v450 = #p442
	local v451 = nil
	local v452 = nil
	if p438 then
		if p438.level then
			v451 = p438.level
		end
		if p438.strategy then
			v452 = p438.strategy
		end
	end
	if not v451 then
		if v450 < 2048 then
			v451 = 7
		elseif 65536 < v450 then
			v451 = 3
		else
			v451 = 5
		end
	end
	while not v446 do
		local v453
		if v447 then
			v447 = v448 + 1
			v448 = v448 + 32768
			v453 = v447 - 32768 - 1
		else
			v447 = 1
			v448 = 65535
			v453 = 0
		end
		if v450 <= v448 then
			v448 = v450
			v446 = true
		else
			v446 = false
		end
		local v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470
		if v451 == 0 then
			v454 = nil
			v455 = nil
			v456 = nil
			v457 = nil
			v458 = nil
			v459 = nil
			v460 = nil
			v461 = nil
			v462 = nil
			v463 = nil
			v464 = nil
			v465 = nil
			v466 = nil
			v467 = nil
			v468 = nil
			v469 = nil
			v470 = nil
		else
			v_u_276(p442, v444, v447, v448 + 3, v453)
			if v447 == 1 and p443 then
				local v471 = p443.string_table
				local v472 = p443.strlen
				for v473 = 0, -v472 + 1 < -257 and -257 or -v472 + 1, -1 do
					v444[v473] = v471[v472 + v473]
				end
			end
			local v474, v475
			if v452 == "huffman_only" then
				v463 = {}
				v_u_276(p442, v463, v447, v448, v447 - 1)
				v455 = {}
				v474 = {}
				v463[v448 - v447 + 2] = 256
				for v476 = 1, v448 - v447 + 2 do
					local v477 = v463[v476]
					v474[v477] = (v474[v477] or 0) + 1
				end
				v466 = {}
				v467 = {}
				v475 = {}
			else
				v463, v455, v474, v466, v467, v475 = v_u_344(v451, v444, v445, v447, v448, v453, p443)
			end
			v454, v459, v468, v457, v460, v464, v470, v462, v456, v465, v461 = v_u_363(v474, v475)
			v469 = v_u_378(v463, v466, v468, v457, v464, v462, v465)
			v458 = v_u_414(v463, v466)
		end
		v_u_13(v448 - v447 + 1 <= 65535)
		local v478 = 3 + (8 - (v449 + 3) % 8) % 8 + 32 + (v448 - v447 + 1) * 8
		local v479
		if v458 then
			if v458 < v478 then
				v479 = v458 or v478
			else
				v479 = v478
			end
		else
			v479 = v478
		end
		if v469 then
			if v469 < v479 then
				v479 = v469 or v479
			end
		end
		if v451 == 0 or v452 ~= "fixed" and v452 ~= "dynamic" and v478 == v479 then
			v_u_437(p439, p440, v446, p442, v447, v448, v449)
			v449 = v449 + v478
		elseif v452 == "dynamic" or v452 ~= "fixed" and v458 ~= v479 then
			if v452 == "dynamic" or v469 == v479 then
				v_u_406(p439, v446, v463, v455, v466, v467, v454, v459, v468, v457, v460, v464, v470, v462, v456, v465, v461)
				v449 = v449 + v469
			end
		else
			v_u_427(p439, v446, v463, v455, v466, v467)
			v449 = v449 + v458
		end
		local v480
		if v446 then
			v480 = p441(3)
		else
			v480 = p441(0)
		end
		v_u_13(v480 == v449)
		if not v446 then
			if p443 and v447 == 1 then
				local v481 = 0
				while v444[v481] do
					v444[v481] = nil
					v481 = v481 - 1
				end
			end
			p443 = nil
			local v482 = 1
			for v483 = v448 - 32767, v448 do
				v444[v482] = v444[v483 - v453]
				v482 = v482 + 1
			end
			for v484, v485 in v_u_15(v445) do
				local v486 = #v485
				if 0 < v486 and 32768 < v448 + 1 - v485[1] then
					if v486 == 1 then
						v445[v484] = nil
					else
						local v487 = {}
						local v488 = 0
						for v489 = 2, v486 do
							local v490 = v485[v489]
							if v448 + 1 - v490 <= 32768 then
								v488 = v488 + 1
								v487[v488] = v490
							end
						end
						v445[v484] = v487
					end
				end
			end
		end
	end
end
local function v_u_500(p492, p493, p494)
	-- upvalues: (copy) v_u_148, (copy) v_u_491
	local v495, v496, v497 = v_u_148()
	v_u_491(p494, v495, v496, v497, p492, p493)
	local v498, v499 = v497(1)
	return v499, (8 - v498 % 8) % 8
end
local function v_u_523(p501, p502, p503)
	-- upvalues: (copy) v_u_148, (copy) v_u_491, (ref) v_u_2
	local v504, v505, v506 = v_u_148()
	v504(120, 8)
	local v507 = p502 and 1 or 0
	local v508 = 128 + v507 * 32
	v504(v508 + 31 - (30720 + v508) % 31, 8)
	if v507 == 1 then
		local v509 = p502.adler32
		local v510 = v509 % 256
		local v511 = (v509 - v510) / 256
		local v512 = v511 % 256
		local v513 = (v511 - v512) / 256
		local v514 = v513 % 256
		v504((v513 - v514) / 256 % 256, 8)
		v504(v514, 8)
		v504(v512, 8)
		v504(v510, 8)
	end
	v_u_491(p503, v504, v505, v506, p501, p502)
	v506(2)
	local v515 = v_u_2:Adler32(p501)
	local v516 = v515 % 256
	local v517 = (v515 - v516) / 256
	local v518 = v517 % 256
	local v519 = (v517 - v518) / 256
	local v520 = v519 % 256
	v504((v519 - v520) / 256 % 256, 8)
	v504(v520, 8)
	v504(v518, 8)
	v504(v516, 8)
	local v521, v522 = v506(1)
	return v522, (8 - v521 % 8) % 8
end
function v_u_2.CompressDeflate(_, p524, p525)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_500
	local v526, v527 = v_u_128(p524, false, nil, true, p525)
	if not v526 then
		v_u_14("Usage: LibDeflate:CompressDeflate(str, configs): " .. v527, 2)
	end
	return v_u_500(p524, nil, p525)
end
function v_u_2.CompressDeflateWithDict(_, p528, p529, p530)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_500
	local v531, v532 = v_u_128(p528, true, p529, true, p530)
	if not v531 then
		v_u_14("Usage: LibDeflate:CompressDeflateWithDict(str, dictionary, configs): " .. v532, 2)
	end
	return v_u_500(p528, p529, p530)
end
function v_u_2.CompressZlib(_, p533, p534)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_523
	local v535, v536 = v_u_128(p533, false, nil, true, p534)
	if not v535 then
		v_u_14("Usage: LibDeflate:CompressZlib(str, configs): " .. v536, 2)
	end
	return v_u_523(p533, nil, p534)
end
function v_u_2.CompressZlibWithDict(_, p537, p538, p539)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_523
	local v540, v541 = v_u_128(p537, true, p538, true, p539)
	if not v540 then
		v_u_14("Usage: LibDeflate:CompressZlibWithDict(str, dictionary, configs): " .. v541, 2)
	end
	return v_u_523(p537, p538, p539)
end
local function v_u_583(p_u_542)
	-- upvalues: (copy) v_u_25, (copy) v_u_16, (copy) v_u_13, (copy) v_u_17, (copy) v_u_20, (copy) v_u_27
	local v_u_543 = #p_u_542
	local v_u_544 = 1
	local v_u_545 = 0
	local v_u_546 = 0
	return function(p547)
		-- upvalues: (ref) v_u_25, (ref) v_u_545, (ref) v_u_546, (copy) p_u_542, (ref) v_u_544, (ref) v_u_16
		local v548 = v_u_25[p547]
		if p547 <= v_u_545 then
			local v549 = v_u_546 % v548
			v_u_546 = (v_u_546 - v549) / v548
			v_u_545 = v_u_545 - p547
			return v549
		end
		local v550 = v_u_25[v_u_545]
		local v551, v552, v553, v554 = v_u_16(p_u_542, v_u_544, v_u_544 + 3)
		v_u_546 = v_u_546 + ((v551 or 0) + (v552 or 0) * 256 + (v553 or 0) * 65536 + (v554 or 0) * 16777216) * v550
		v_u_544 = v_u_544 + 4
		v_u_545 = v_u_545 + 32 - p547
		local v555 = v_u_546 % v548
		v_u_546 = (v_u_546 - v555) / v548
		return v555
	end, function(p556, p557, p558)
		-- upvalues: (ref) v_u_545, (ref) v_u_13, (ref) v_u_546, (ref) v_u_17, (copy) v_u_543, (ref) v_u_544, (copy) p_u_542, (ref) v_u_20
		v_u_13(v_u_545 % 8 == 0)
		local v559
		if v_u_545 / 8 < p556 then
			v559 = v_u_545 / 8 or p556
		else
			v559 = p556
		end
		for _ = 1, v559 do
			local v560 = v_u_546 % 256
			p558 = p558 + 1
			p557[p558] = v_u_17(v560)
			v_u_546 = (v_u_546 - v560) / 256
		end
		v_u_545 = v_u_545 - v559 * 8
		local v561 = p556 - v559
		if (v_u_543 - v_u_544 - v561 + 1) * 8 + v_u_545 < 0 then
			return -1
		end
		for v562 = v_u_544, v_u_544 + v561 - 1 do
			p558 = p558 + 1
			p557[p558] = v_u_20(p_u_542, v562, v562)
		end
		v_u_544 = v_u_544 + v561
		return p558
	end, function(p563, p564, p565)
		-- upvalues: (ref) v_u_545, (copy) p_u_542, (ref) v_u_25, (ref) v_u_544, (ref) v_u_16, (ref) v_u_546, (ref) v_u_27
		local v566, v567, v568
		if 0 < p565 then
			if v_u_545 < 15 and p_u_542 then
				local v569 = v_u_25[v_u_545]
				local v570, v571, v572, v573 = v_u_16(p_u_542, v_u_544, v_u_544 + 3)
				v_u_546 = v_u_546 + ((v570 or 0) + (v571 or 0) * 256 + (v572 or 0) * 65536 + (v573 or 0) * 16777216) * v569
				v_u_544 = v_u_544 + 4
				v_u_545 = v_u_545 + 32
			end
			local v574 = v_u_25[p565]
			v_u_545 = v_u_545 - p565
			local v575 = v_u_546 % v574
			v_u_546 = (v_u_546 - v575) / v574
			local v576 = v_u_27[p565][v575]
			v566 = p563[p565]
			if v576 < v566 then
				return p564[v576]
			end
			v567 = v566 * 2
			v568 = v576 * 2
		else
			v568 = 0
			v566 = 0
			v567 = 0
		end
		for v577 = p565 + 1, 15 do
			local v578 = v_u_546 % 2
			v_u_546 = (v_u_546 - v578) / 2
			v_u_545 = v_u_545 - 1
			if v578 == 1 then
				v568 = v568 + 1 - v568 % 2 or v568
			end
			local v579 = p563[v577] or 0
			local v580 = v568 - v567
			if v580 < v579 then
				return p564[v566 + v580]
			end
			v566 = v566 + v579
			v567 = (v567 + v579) * 2
			v568 = v568 * 2
		end
		return -10
	end, function()
		-- upvalues: (copy) v_u_543, (ref) v_u_544, (ref) v_u_545
		return (v_u_543 - v_u_544 + 1) * 8 + v_u_545
	end, function()
		-- upvalues: (ref) v_u_545, (ref) v_u_25, (ref) v_u_546
		local v581 = v_u_545 % 8
		local v582 = v_u_25[v581]
		v_u_545 = v_u_545 - v581
		v_u_546 = (v_u_546 - v_u_546 % v582) / v582
	end
end
local function v_u_591(p584, p585)
	-- upvalues: (copy) v_u_583
	local v586, v587, v588, v589, v590 = v_u_583(p584)
	return {
		["ReadBits"] = v586,
		["ReadBytes"] = v587,
		["Decode"] = v588,
		["ReaderBitlenLeft"] = v589,
		["SkipToByteBoundary"] = v590,
		["buffer_size"] = 0,
		["buffer"] = {},
		["result_buffer"] = {},
		["dictionary"] = p585
	}
end
local function v_u_606(p592, p593, p594)
	local v595 = {}
	local v596 = p594
	for v597 = 0, p593 do
		local v598 = p592[v597] or 0
		if 0 < v598 then
			if v598 < v596 then
				v596 = v598 or v596
			end
		end
		v595[v598] = (v595[v598] or 0) + 1
	end
	if v595[0] == p593 + 1 then
		return 0, v595, {}, 0
	end
	local v599 = 1
	for v600 = 1, p594 do
		v599 = v599 * 2 - (v595[v600] or 0)
		if v599 < 0 then
			return v599
		end
	end
	local v601 = { 0 }
	for v602 = 1, p594 - 1 do
		v601[v602 + 1] = v601[v602] + (v595[v602] or 0)
	end
	local v603 = {}
	for v604 = 0, p593 do
		local v605 = p592[v604] or 0
		if v605 ~= 0 then
			v603[v601[v605]] = v604
			v601[v605] = v601[v605] + 1
		end
	end
	return v599, v595, v603, v596
end
local function v_u_632(p607, p608, p609, p610, p611, p612, p613)
	-- upvalues: (copy) v_u_26, (copy) v_u_34, (copy) v_u_35, (copy) v_u_36, (copy) v_u_37, (copy) v_u_21
	local v614 = p607.buffer
	local v615 = p607.buffer_size
	local v616 = p607.ReadBits
	local v617 = p607.Decode
	local v618 = p607.ReaderBitlenLeft
	local v619 = p607.result_buffer
	local v620 = p607.dictionary
	local v621 = nil
	local v622 = nil
	local v623 = 1
	if v620 then
		if not v614[0] then
			v621 = v620.string_table
			v622 = v620.strlen
			v623 = -v622 + 1
			for v624 = 0, -v622 + 1 < -257 and -257 or -v622 + 1, -1 do
				v614[v624] = v_u_26[v621[v622 + v624]]
			end
		end
	end
	while true do
		local v625 = v617(p608, p609, p610)
		if v625 < 0 or 285 < v625 then
			return -10
		end
		if v625 < 256 then
			v615 = v615 + 1
			v614[v615] = v_u_26[v625]
		elseif 256 < v625 then
			local v626 = v625 - 256
			local v627 = v_u_34[v626]
			if 8 <= v626 then
				v627 = v627 + v616(v_u_35[v626]) or v627
			end
			v625 = v617(p611, p612, p613)
			if v625 < 0 or 29 < v625 then
				return -10
			end
			local v628 = v_u_36[v625]
			if 4 < v628 then
				v628 = v628 + v616(v_u_37[v625]) or v628
			end
			local v629 = v615 - v628 + 1
			if v629 < v623 then
				return -11
			end
			if -257 <= v629 then
				for _ = 1, v627 do
					v615 = v615 + 1
					v614[v615] = v614[v629]
					v629 = v629 + 1
				end
			else
				local v630 = v622 + v629
				for _ = 1, v627 do
					v615 = v615 + 1
					v614[v615] = v_u_26[v621[v630]]
					v630 = v630 + 1
				end
			end
		end
		if v618() < 0 then
			return 2
		end
		if 65536 <= v615 then
			v619[#v619 + 1] = v_u_21(v614, "", 1, 32768)
			for v631 = 32769, v615 do
				v614[v631 - 32768] = v614[v631]
			end
			v615 = v615 - 32768
			v614[v615 + 1] = nil
		end
		if v625 == 256 then
			p607.buffer_size = v615
			return 0
		end
	end
end
local function v_u_645(p633)
	-- upvalues: (copy) v_u_21
	local v634 = p633.buffer
	local v635 = p633.buffer_size
	local v636 = p633.ReadBits
	local v637 = p633.ReadBytes
	local v638 = p633.ReaderBitlenLeft
	local v639 = p633.SkipToByteBoundary
	local v640 = p633.result_buffer
	v639()
	local v641 = v636(16)
	if v638() < 0 then
		return 2
	end
	local v642 = v636(16)
	if v638() < 0 then
		return 2
	end
	if v641 % 256 + v642 % 256 ~= 255 then
		return -2
	end
	if (v641 - v641 % 256) / 256 + (v642 - v642 % 256) / 256 ~= 255 then
		return -2
	end
	local v643 = v637(v641, v634, v635)
	if v643 < 0 then
		return 2
	end
	if 65536 <= v643 then
		v640[#v640 + 1] = v_u_21(v634, "", 1, 32768)
		for v644 = 32769, v643 do
			v634[v644 - 32768] = v634[v644]
		end
		v643 = v643 - 32768
		v634[v643 + 1] = nil
	end
	p633.buffer_size = v643
	return 0
end
local function v_u_672(p646)
	-- upvalues: (copy) v_u_38, (copy) v_u_606, (copy) v_u_632
	local v647 = p646.ReadBits
	local v648 = p646.Decode
	local v649 = v647(5) + 257
	local v650 = v647(5) + 1
	local v651 = v647(4) + 4
	if 286 < v649 or 30 < v650 then
		return -3
	end
	local v652 = {}
	for v653 = 1, v651 do
		v652[v_u_38[v653]] = v647(3)
	end
	local v654, v655, v656, v657 = v_u_606(v652, 18, 7)
	if v654 ~= 0 then
		return -4
	end
	local v658 = {}
	local v659 = {}
	local v660 = 0
	while true do
		if v660 >= v649 + v650 then
			if (v658[256] or 0) == 0 then
				return -9
			end
			local v661, v662, v663, v664 = v_u_606(v658, v649 - 1, 15)
			if v661 ~= 0 and (v661 < 0 or v649 ~= (v662[0] or 0) + (v662[1] or 0)) then
				return -7
			end
			local v665, v666, v667, v668 = v_u_606(v659, v650 - 1, 15)
			return v665 ~= 0 and (v665 < 0 or v650 ~= (v666[0] or 0) + (v666[1] or 0)) and -8 or v_u_632(p646, v662, v663, v664, v666, v667, v668)
		end
		local v669 = v648(v655, v656, v657)
		if v669 < 0 then
			return v669
		end
		if v669 < 16 then
			if v660 < v649 then
				v658[v660] = v669
			else
				v659[v660 - v649] = v669
			end
			v660 = v660 + 1
		else
			local v670 = 0
			local v671
			if v669 == 16 then
				if v660 == 0 then
					return -5
				end
				if v660 - 1 < v649 then
					v670 = v658[v660 - 1]
				else
					v670 = v659[v660 - v649 - 1]
				end
				v671 = 3 + v647(2)
			elseif v669 == 17 then
				v671 = 3 + v647(3)
			else
				v671 = 11 + v647(7)
			end
			if v660 + v671 > v649 + v650 then
				return -6
			end
			while 0 < v671 do
				v671 = v671 - 1
				if v660 < v649 then
					v658[v660] = v670
				else
					v659[v660 - v649] = v670
				end
				v660 = v660 + 1
			end
		end
	end
end
local function v_u_678(p673)
	-- upvalues: (copy) v_u_645, (copy) v_u_632, (ref) v_u_42, (ref) v_u_40, (ref) v_u_45, (ref) v_u_44, (copy) v_u_672, (copy) v_u_21
	local v674 = p673.ReadBits
	local v675 = nil
	while true do
		if v675 then
			p673.result_buffer[#p673.result_buffer + 1] = v_u_21(p673.buffer, "", 1, p673.buffer_size)
			return v_u_21(p673.result_buffer)
		end
		v675 = v674(1) == 1
		local v676 = v674(2)
		local v677
		if v676 == 0 then
			v677 = v_u_645(p673)
		elseif v676 == 1 then
			v677 = v_u_632(p673, v_u_42, v_u_40, 7, v_u_45, v_u_44, 5)
		else
			if v676 ~= 2 then
				return nil, -1
			end
			v677 = v_u_672(p673)
		end
		if v677 ~= 0 then
			return nil, v677
		end
	end
end
local function v_u_685(p679, p680)
	-- upvalues: (copy) v_u_591, (copy) v_u_678
	local v681 = v_u_591(p679, p680)
	local v682, v683 = v_u_678(v681)
	if not v682 then
		return nil, v683
	end
	local v684 = v681.ReaderBitlenLeft()
	return v682, (v684 - v684 % 8) / 8
end
local function v_u_710(p686, p687)
	-- upvalues: (copy) v_u_591, (copy) v_u_678, (ref) v_u_2
	local v688 = v_u_591(p686, p687)
	local v689 = v688.ReadBits
	local v690 = v689(8)
	if v688.ReaderBitlenLeft() < 0 then
		return nil, 2
	end
	local v691 = v690 % 16
	local v692 = (v690 - v691) / 16
	if v691 ~= 8 then
		return nil, -12
	end
	if 7 < v692 then
		return nil, -13
	end
	local v693 = v689(8)
	if v688.ReaderBitlenLeft() < 0 then
		return nil, 2
	end
	if (v690 * 256 + v693) % 31 ~= 0 then
		return nil, -14
	end
	local v694 = (v693 - v693 % 32) / 32 % 2
	local _ = (v693 - v693 % 64) / 64 % 4
	if v694 == 1 then
		if not p687 then
			return nil, -16
		end
		local v695 = v689(8)
		local v696 = v689(8)
		local v697 = v689(8)
		local v698 = v689(8)
		local v699 = v695 * 16777216 + v696 * 65536 + v697 * 256 + v698
		if v688.ReaderBitlenLeft() < 0 then
			return nil, 2
		end
		local v700 = p687.adler32
		if v699 % 4294967296 ~= v700 % 4294967296 then
			return nil, -17
		end
	end
	local v701, v702 = v_u_678(v688)
	if not v701 then
		return nil, v702
	end
	v688.SkipToByteBoundary()
	local v703 = v689(8)
	local v704 = v689(8)
	local v705 = v689(8)
	local v706 = v689(8)
	if v688.ReaderBitlenLeft() < 0 then
		return nil, 2
	end
	local v707 = v703 * 16777216 + v704 * 65536 + v705 * 256 + v706
	local v708 = v_u_2:Adler32(v701)
	if v707 % 4294967296 ~= v708 % 4294967296 then
		return nil, -15
	end
	local v709 = v688.ReaderBitlenLeft()
	return v701, (v709 - v709 % 8) / 8
end
function v_u_2.DecompressDeflate(_, p711)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_685
	local v712, v713 = v_u_128(p711)
	if not v712 then
		v_u_14("Usage: LibDeflate:DecompressDeflate(str): " .. v713, 2)
	end
	return v_u_685(p711)
end
function v_u_2.DecompressDeflateWithDict(_, p714, p715)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_685
	local v716, v717 = v_u_128(p714, true, p715)
	if not v716 then
		v_u_14("Usage: LibDeflate:DecompressDeflateWithDict(str, dictionary): " .. v717, 2)
	end
	return v_u_685(p714, p715)
end
function v_u_2.DecompressZlib(_, p718)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_710
	local v719, v720 = v_u_128(p718)
	if not v719 then
		v_u_14("Usage: LibDeflate:DecompressZlib(str): " .. v720, 2)
	end
	return v_u_710(p718)
end
function v_u_2.DecompressZlibWithDict(_, p721, p722)
	-- upvalues: (copy) v_u_128, (copy) v_u_14, (copy) v_u_710
	local v723, v724 = v_u_128(p721, true, p722)
	if not v723 then
		v_u_14("Usage: LibDeflate:DecompressZlibWithDict(str, dictionary): " .. v724, 2)
	end
	return v_u_710(p721, p722)
end
v_u_41 = {}
for v725 = 0, 143 do
	v_u_41[v725] = 8
end
for v726 = 144, 255 do
	v_u_41[v726] = 9
end
v_u_41[256] = 7
v_u_41[257] = 7
v_u_41[258] = 7
v_u_41[259] = 7
v_u_41[260] = 7
v_u_41[261] = 7
v_u_41[262] = 7
v_u_41[263] = 7
v_u_41[264] = 7
v_u_41[265] = 7
v_u_41[266] = 7
v_u_41[267] = 7
v_u_41[268] = 7
v_u_41[269] = 7
v_u_41[270] = 7
v_u_41[271] = 7
v_u_41[272] = 7
v_u_41[273] = 7
v_u_41[274] = 7
v_u_41[275] = 7
v_u_41[276] = 7
v_u_41[277] = 7
v_u_41[278] = 7
v_u_41[279] = 7
v_u_41[280] = 8
v_u_41[281] = 8
v_u_41[282] = 8
v_u_41[283] = 8
v_u_41[284] = 8
v_u_41[285] = 8
v_u_41[286] = 8
v_u_41[287] = 8
local v727 = {}
for v728 = 0, 31 do
	v727[v728] = 5
end
local v729, v730, v731 = v_u_606(v_u_41, 287, 9)
v_u_42 = v730
v_u_40 = v731
v_u_13(v729 == 0)
local v732, v733, v734 = v_u_606(v727, 31, 5)
v_u_45 = v733
v_u_44 = v734
v_u_13(v732 == 0)
v_u_39 = v_u_185(v_u_42, v_u_41, 287, 9)
v_u_43 = v_u_185(v_u_45, v727, 31, 5)
local v_u_735 = {
	["\0"] = "%z",
	["("] = "%(",
	[")"] = "%)",
	["."] = "%.",
	["%"] = "%%",
	["+"] = "%+",
	["-"] = "%-",
	["*"] = "%*",
	["?"] = "%?",
	["["] = "%[",
	["]"] = "%]",
	["^"] = "%^",
	["$"] = "%$"
}
function v_u_2.CreateCodec(_, p736, p737, p738)
	-- upvalues: (copy) v_u_24, (copy) v_u_14, (copy) v_u_16, (copy) v_u_20, (copy) v_u_21, (copy) v_u_735, (copy) v_u_26, (copy) v_u_19, (copy) v_u_18
	if v_u_24(p736) ~= "string" or v_u_24(p737) ~= "string" or v_u_24(p738) ~= "string" then
		v_u_14("Usage: LibDeflate:CreateCodec(reserved_chars, escape_chars, map_chars): All arguments must be string.", 2)
	end
	if p737 == "" then
		return nil, "No escape characters supplied."
	end
	if #p736 < #p738 then
		return nil, "The number of reserved characters must be at least as many as the number of mapped chars."
	end
	if p736 == "" then
		return nil, "No characters to encode."
	end
	local v739 = p736 .. p737 .. p738
	local v740 = {}
	for v741 = 1, #v739 do
		local v742 = v_u_16(v739, v741, v741)
		if v740[v742] then
			return nil, "There must be no duplicate characters in the concatenation of reserved_chars, escape_chars and map_chars."
		end
		v740[v742] = true
	end
	local v_u_743 = {}
	local v_u_744 = {}
	local v745 = {}
	local v_u_746 = {}
	if 0 < #p738 then
		local v747 = {}
		local v748 = {}
		for v749 = 1, #p738 do
			local v750 = v_u_20(p736, v749, v749)
			local v751 = v_u_20(p738, v749, v749)
			v_u_746[v750] = v751
			v745[#v745 + 1] = v750
			v748[v751] = v750
			v747[#v747 + 1] = v751
		end
		v_u_743[#v_u_743 + 1] = "([" .. v_u_21(v747):gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735) .. "])"
		v_u_744[#v_u_744 + 1] = v748
	end
	local v752 = 1
	local v753 = v_u_20(p737, v752, v752)
	local v754 = 0
	local v755 = {}
	local v756 = {}
	for v757 = 1, #v739 do
		local v758 = v_u_20(v739, v757, v757)
		if not v_u_746[v758] then
			while 256 <= v754 or v740[v754] do
				v754 = v754 + 1
				if 255 < v754 then
					local v759 = #v_u_743 + 1
					local v760 = v753:gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735)
					local v761 = v_u_21(v755):gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735)
					v_u_743[v759] = v760 .. "([" .. v761 .. "])"
					v_u_744[#v_u_744 + 1] = v756
					v752 = v752 + 1
					v753 = v_u_20(p737, v752, v752)
					if not v753 or v753 == "" then
						return nil, "Out of escape characters."
					end
					v754 = 0
					v755 = {}
					v756 = {}
				end
			end
			local v762 = v_u_26[v754]
			v_u_746[v758] = v753 .. v762
			v745[#v745 + 1] = v758
			v756[v762] = v758
			v755[#v755 + 1] = v762
			v754 = v754 + 1
		end
		if v757 == #v739 then
			local v763 = #v_u_743 + 1
			local v764 = v753:gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735)
			local v765 = v_u_21(v755):gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735)
			v_u_743[v763] = v764 .. "([" .. v765 .. "])"
			v_u_744[#v_u_744 + 1] = v756
		end
	end
	local v766 = {}
	local v_u_767 = "([" .. v_u_21(v745):gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735) .. "])"
	function v766.Encode(_, p768)
		-- upvalues: (ref) v_u_24, (ref) v_u_14, (ref) v_u_19, (copy) v_u_767, (copy) v_u_746
		if v_u_24(p768) ~= "string" then
			v_u_14(("Usage: codec:Encode(str): \'str\' - string expected got \'%s\'."):format((v_u_24(p768))), 2)
		end
		return v_u_19(p768, v_u_767, v_u_746)
	end
	local v_u_769 = #v_u_743
	local v_u_770 = "([" .. p736:gsub("([%z%(%)%.%%%+%-%*%?%[%]%^%$])", v_u_735) .. "])"
	function v766.Decode(_, p771)
		-- upvalues: (ref) v_u_24, (ref) v_u_14, (ref) v_u_18, (copy) v_u_770, (copy) v_u_769, (ref) v_u_19, (copy) v_u_743, (copy) v_u_744
		if v_u_24(p771) ~= "string" then
			v_u_14(("Usage: codec:Decode(str): \'str\' - string expected got \'%s\'."):format((v_u_24(p771))), 2)
		end
		if v_u_18(p771, v_u_770) then
			return nil
		end
		for v772 = 1, v_u_769 do
			p771 = v_u_19(p771, v_u_743[v772], v_u_744[v772])
		end
		return p771
	end
	return v766
end
local v_u_773 = nil
local v_u_774 = {
	"a",
	"b",
	"c",
	"d",
	"e",
	"f",
	"g",
	"h",
	"i",
	"j",
	"k",
	"l",
	"m",
	"n",
	"o",
	"p",
	"q",
	"r",
	"s",
	"t",
	"u",
	"v",
	"w",
	"x",
	"y",
	"z",
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"(",
	")"
}
local v_u_775 = {
	[97] = 0,
	[98] = 1,
	[99] = 2,
	[100] = 3,
	[101] = 4,
	[102] = 5,
	[103] = 6,
	[104] = 7,
	[105] = 8,
	[106] = 9,
	[107] = 10,
	[108] = 11,
	[109] = 12,
	[110] = 13,
	[111] = 14,
	[112] = 15,
	[113] = 16,
	[114] = 17,
	[115] = 18,
	[116] = 19,
	[117] = 20,
	[118] = 21,
	[119] = 22,
	[120] = 23,
	[121] = 24,
	[122] = 25,
	[65] = 26,
	[66] = 27,
	[67] = 28,
	[68] = 29,
	[69] = 30,
	[70] = 31,
	[71] = 32,
	[72] = 33,
	[73] = 34,
	[74] = 35,
	[75] = 36,
	[76] = 37,
	[77] = 38,
	[78] = 39,
	[79] = 40,
	[80] = 41,
	[81] = 42,
	[82] = 43,
	[83] = 44,
	[84] = 45,
	[85] = 46,
	[86] = 47,
	[87] = 48,
	[88] = 49,
	[89] = 50,
	[90] = 51,
	[48] = 52,
	[49] = 53,
	[50] = 54,
	[51] = 55,
	[52] = 56,
	[53] = 57,
	[54] = 58,
	[55] = 59,
	[56] = 60,
	[57] = 61,
	[40] = 62,
	[41] = 63
}
function v_u_2.EncodeForPrint(_, p776)
	-- upvalues: (copy) v_u_24, (copy) v_u_14, (copy) v_u_16, (copy) v_u_774, (copy) v_u_25, (copy) v_u_21
	if v_u_24(p776) ~= "string" then
		v_u_14(("Usage: LibDeflate:EncodeForPrint(str): \'str\' - string expected got \'%s\'."):format((v_u_24(p776))), 2)
	end
	local v777 = #p776
	local v778 = v777 - 2
	local v779 = {}
	local v780 = 1
	local v781 = 0
	while v780 <= v778 do
		local v782, v783, v784 = v_u_16(p776, v780, v780 + 2)
		v780 = v780 + 3
		local v785 = v782 + v783 * 256 + v784 * 65536
		local v786 = v785 % 64
		local v787 = (v785 - v786) / 64
		local v788 = v787 % 64
		local v789 = (v787 - v788) / 64
		local v790 = v789 % 64
		local v791 = (v789 - v790) / 64
		v781 = v781 + 1
		local v792 = v_u_774[v786]
		local v793 = v_u_774[v788]
		local v794 = v_u_774[v790]
		local v795 = v_u_774[v791]
		v779[v781] = v792 .. v793 .. v794 .. v795
	end
	local v796 = 0
	local v797 = 0
	while v780 <= v777 do
		v797 = v797 + v_u_16(p776, v780, v780) * v_u_25[v796]
		v796 = v796 + 8
		v780 = v780 + 1
	end
	while 0 < v796 do
		local v798 = v797 % 64
		v781 = v781 + 1
		v779[v781] = v_u_774[v798]
		v797 = (v797 - v798) / 64
		v796 = v796 - 6
	end
	return v_u_21(v779)
end
function v_u_2.DecodeForPrint(_, p799)
	-- upvalues: (copy) v_u_24, (copy) v_u_14, (copy) v_u_16, (copy) v_u_775, (copy) v_u_26, (copy) v_u_25, (copy) v_u_21
	if v_u_24(p799) ~= "string" then
		v_u_14(("Usage: LibDeflate:DecodeForPrint(str): \'str\' - string expected got \'%s\'."):format((v_u_24(p799))), 2)
	end
	local v800 = p799:gsub("^[%c ]+", ""):gsub("[%c ]+$", "")
	local v801 = #v800
	if v801 == 1 then
		return nil
	end
	local v802 = v801 - 3
	local v803 = {}
	local v804 = 1
	local v805 = 0
	while true do
		if v804 > v802 then
			local v806 = 0
			local v807 = 0
			while true do
				if v804 > v801 then
					while 8 <= v806 do
						local v808 = v807 % 256
						v805 = v805 + 1
						v803[v805] = v_u_26[v808]
						v807 = (v807 - v808) / 256
						v806 = v806 - 8
					end
					return v_u_21(v803)
				end
				local v809 = v_u_775[v_u_16(v800, v804, v804)]
				if not v809 then
					return nil
				end
				v807 = v807 + v809 * v_u_25[v806]
				v806 = v806 + 6
				v804 = v804 + 1
			end
		end
		local v810, v811, v812, v813 = v_u_16(v800, v804, v804 + 3)
		local v814 = v_u_775[v810]
		local v815 = v_u_775[v811]
		local v816 = v_u_775[v812]
		local v817 = v_u_775[v813]
		if not (v814 and v815 and v816 and v817) then
			return nil
		end
		v804 = v804 + 4
		local v818 = v814 + v815 * 64 + v816 * 4096 + v817 * 262144
		local v819 = v818 % 256
		local v820 = (v818 - v819) / 256
		local v821 = v820 % 256
		local v822 = (v820 - v821) / 256
		v805 = v805 + 1
		local v823 = v_u_26[v819]
		local v824 = v_u_26[v821]
		local v825 = v_u_26[v822]
		v803[v805] = v823 .. v824 .. v825
	end
end
v_u_2.internals = {
	["LoadStringToTable"] = v_u_276,
	["IsValidDictionary"] = v_u_116,
	["IsEqualAdler32"] = v88,
	["_byte_to_6bit_char"] = v_u_774,
	["_6bit_to_byte"] = v_u_775,
	["InternalClearCache"] = function()
		-- upvalues: (ref) v_u_773
		v_u_773 = nil
	end
}
return v1