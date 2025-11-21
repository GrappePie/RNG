local v0 = {};
local l_band_0 = bit32.band;
local l_bor_0 = bit32.bor;
local l_create_0 = buffer.create;
local l_len_0 = buffer.len;
local l_copy_0 = buffer.copy;
local l_readstring_0 = buffer.readstring;
local l_writestring_0 = buffer.writestring;
local l_readu8_0 = buffer.readu8;
local l_readi8_0 = buffer.readi8;
local l_writeu8_0 = buffer.writeu8;
local l_writei8_0 = buffer.writei8;
local l_lshift_0 = bit32.lshift;
local l_extract_0 = bit32.extract;
local _ = math.ldexp;
local _ = math.frexp;
local l_floor_0 = math.floor;
local l_modf_0 = math.modf;
local l_sign_0 = math.sign;
local _ = string.sub;
local _ = string.char;
local l_byte_0 = string.byte;
local _ = table.concat;
local l_create_1 = table.create;
local function v29(v24, v25, v26)
	for v27 = 1, v26 // 2 do
		local v28 = l_readu8_0(v24, (v25 + v27) - 1);
		l_copy_0(v24, (v25 + v27) - 1, v24, (v25 + v26) - v27, 1);
		l_writeu8_0(v24, (v25 + v26) - v27, v28);
	end;
end;
local function _(v30, v31, v32)
	buffer.writeu16(v30, v31, v32);
	v29(v30, v31, 2);
end;
local function _(v34, v35, v36)
	buffer.writei16(v34, v35, v36);
	v29(v34, v35, 2);
end;
local function _(v38, v39, v40)
	buffer.writeu32(v38, v39, v40);
	v29(v38, v39, 4);
end;
local function _(v42, v43, v44)
	buffer.writei32(v42, v43, v44);
	v29(v42, v43, 4);
end;
local function _(v46, v47, v48)
	buffer.writef32(v46, v47, v48);
	v29(v46, v47, 4);
end;
local function _(v50, v51, v52)
	buffer.writef64(v50, v51, v52);
	v29(v50, v51, 8);
end;
local function _(v54, v55)
	v29(v54, v55, 2);
	return (buffer.readu16(v54, v55));
end;
local function _(v57, v58)
	v29(v57, v58, 2);
	return (buffer.readi16(v57, v58));
end;
local function _(v60, v61)
	v29(v60, v61, 4);
	return (buffer.readu32(v60, v61));
end;
local function _(v63, v64)
	v29(v63, v64, 4);
	return (buffer.readi32(v63, v64));
end;
local function _(v66, v67)
	v29(v66, v67, 4);
	return (buffer.readf32(v66, v67));
end;
local function _(v69, v70)
	v29(v69, v70, 8);
	return (buffer.readf64(v69, v70));
end;
local function v72(v73, v74)
	local v75 = l_readu8_0(v73, v74);
	if v75 == 192 then
		return nil, v74 + 1;
	elseif v75 == 194 then
		return false, v74 + 1;
	elseif v75 == 195 then
		return true, v74 + 1;
	elseif v75 == 196 then
		local v76 = l_readu8_0(v73, v74 + 1);
		local v77 = l_create_0(v76);
		l_copy_0(v77, 0, v73, v74 + 2, v76);
		return v77, (v74 + 2) + v76;
	elseif v75 == 197 then
		local v78 = v74 + 1;
		v29(v73, v78, 2);
		local v79 = buffer.readu16(v73, v78);
		v78 = l_create_0(v79);
		l_copy_0(v78, 0, v73, v74 + 3, v79);
		return v78, (v74 + 3) + v79;
	elseif v75 == 198 then
		local v80 = v74 + 1;
		v29(v73, v80, 4);
		local v81 = buffer.readu32(v73, v80);
		v80 = l_create_0(v81);
		l_copy_0(v80, 0, v73, v74 + 5, v81);
		return v80, (v74 + 5) + v81;
	elseif v75 == 199 then
		local v82 = l_readu8_0(v73, v74 + 1);
		local v83 = l_create_0(v82);
		l_copy_0(v83, 0, v73, v74 + 3, v82);
		return v0.Extension.new(l_readu8_0(v73, v74 + 2), v83), (v74 + 2) + v82;
	elseif v75 == 200 then
		local v84 = v74 + 1;
		v29(v73, v84, 2);
		local v85 = buffer.readu16(v73, v84);
		v84 = l_create_0(v85);
		l_copy_0(v84, 0, v73, v74 + 4, v85);
		return v0.Extension.new(l_readu8_0(v73, v74 + 3), v84), (v74 + 3) + v85;
	elseif v75 == 201 then
		local v86 = v74 + 1;
		v29(v73, v86, 4);
		local v87 = buffer.readu32(v73, v86);
		v86 = l_create_0(v87);
		l_copy_0(v86, 0, v73, v74 + 6, v87);
		return v0.Extension.new(l_readu8_0(v73, v74 + 5), v86), (v74 + 5) + v87;
	elseif v75 == 202 then
		local v88 = v74 + 1;
		v29(v73, v88, 4);
		return buffer.readf32(v73, v88), v74 + 5;
	elseif v75 == 203 then
		local v89 = v74 + 1;
		v29(v73, v89, 8);
		return buffer.readf64(v73, v89), v74 + 9;
	elseif v75 == 204 then
		return l_readu8_0(v73, v74 + 1), v74 + 2;
	elseif v75 == 205 then
		local v90 = v74 + 1;
		v29(v73, v90, 2);
		return buffer.readu16(v73, v90), v74 + 3;
	elseif v75 == 206 then
		local v91 = v74 + 1;
		v29(v73, v91, 4);
		return buffer.readu32(v73, v91), v74 + 5;
	elseif v75 == 207 then
		local l_new_0 = v0.UInt64.new;
		local v93 = v74 + 1;
		v29(v73, v93, 4);
		local v94 = buffer.readu32(v73, v93);
		local v95 = v74 + 5;
		v29(v73, v95, 4);
		return l_new_0(v94, (buffer.readu32(v73, v95))), v74 + 9;
	elseif v75 == 208 then
		return l_readi8_0(v73, v74 + 1), v74 + 2;
	elseif v75 == 209 then
		local v96 = v74 + 1;
		v29(v73, v96, 2);
		return buffer.readi16(v73, v96), v74 + 3;
	elseif v75 == 210 then
		local v97 = v74 + 1;
		v29(v73, v97, 4);
		return buffer.readi32(v73, v97), v74 + 5;
	elseif v75 == 211 then
		local l_new_1 = v0.Int64.new;
		local v99 = v74 + 1;
		v29(v73, v99, 4);
		local v100 = buffer.readu32(v73, v99);
		local v101 = v74 + 5;
		v29(v73, v101, 4);
		return l_new_1(v100, (buffer.readu32(v73, v101))), v74 + 9;
	elseif v75 == 212 then
		local v102 = l_create_0(1);
		l_copy_0(v102, 0, v73, v74 + 2, 1);
		return v0.Extension.new(l_readu8_0(v73, v74 + 1), v102), v74 + 3;
	elseif v75 == 213 then
		local v103 = l_create_0(2);
		l_copy_0(v103, 0, v73, v74 + 2, 2);
		return v0.Extension.new(l_readu8_0(v73, v74 + 1), v103), v74 + 4;
	elseif v75 == 214 then
		local v104 = l_create_0(4);
		l_copy_0(v104, 0, v73, v74 + 2, 4);
		return v0.Extension.new(l_readu8_0(v73, v74 + 1), v104), v74 + 6;
	elseif v75 == 215 then
		local v105 = l_create_0(8);
		l_copy_0(v105, 0, v73, v74 + 2, 8);
		return v0.Extension.new(l_readu8_0(v73, v74 + 1), v105), v74 + 10;
	elseif v75 == 216 then
		local v106 = l_create_0(16);
		l_copy_0(v106, 0, v73, v74 + 2, 16);
		return v0.Extension.new(l_readu8_0(v73, v74 + 1), v106), v74 + 18;
	elseif v75 == 217 then
		local v107 = l_readu8_0(v73, v74 + 1);
		return l_readstring_0(v73, v74 + 2, v107), (v74 + 2) + v107;
	elseif v75 == 218 then
		local v108 = v74 + 1;
		v29(v73, v108, 2);
		local v109 = buffer.readu16(v73, v108);
		return l_readstring_0(v73, v74 + 3, v109), (v74 + 3) + v109;
	elseif v75 == 219 then
		local v110 = v74 + 1;
		v29(v73, v110, 4);
		local v111 = buffer.readu32(v73, v110);
		return l_readstring_0(v73, v74 + 5, v111), (v74 + 5) + v111;
	elseif v75 == 220 then
		local v112 = v74 + 1;
		v29(v73, v112, 2);
		local v113 = buffer.readu16(v73, v112);
		v112 = l_create_1(v113);
		local v114 = v74 + 3;
		for v115 = 1, v113 do
			local v116, v117 = v72(v73, v114);
			v112[v115] = v116;
			v114 = v117;
		end;
		return v112, v114;
	elseif v75 == 221 then
		local v118 = v74 + 1;
		v29(v73, v118, 4);
		local v119 = buffer.readu32(v73, v118);
		v118 = l_create_1(v119);
		local v120 = v74 + 5;
		for v121 = 1, v119 do
			local v122, v123 = v72(v73, v120);
			v118[v121] = v122;
			v120 = v123;
		end;
		return v118, v120;
	elseif v75 == 222 then
		local v124 = v74 + 1;
		v29(v73, v124, 2);
		local v125 = buffer.readu16(v73, v124);
		v124 = {};
		local v126 = v74 + 3;
		local v127 = nil;
		for _ = 1, v125 do
			local v129, v130 = v72(v73, v126);
			v127 = v129;
			local v131;
			v130, v131 = v72(v73, v130);
			v124[v127] = v130;
			v126 = v131;
		end;
		return v124, v126;
	elseif v75 == 223 then
		local v132 = v74 + 1;
		v29(v73, v132, 4);
		local v133 = buffer.readu32(v73, v132);
		v132 = {};
		local v134 = v74 + 5;
		local v135 = nil;
		for _ = 1, v133 do
			local v137, v138 = v72(v73, v134);
			v135 = v137;
			local v139;
			v138, v139 = v72(v73, v138);
			v132[v135] = v138;
			v134 = v139;
		end;
		return v132, v134;
	elseif v75 >= 224 then
		return v75 - 256, v74 + 1;
	elseif v75 <= 127 then
		return v75, v74 + 1;
	elseif v75 - 128 <= 15 then
		local v140 = l_band_0(v75, 15);
		local v141 = {};
		local v142 = v74 + 1;
		local v143 = nil;
		for _ = 1, v140 do
			local v145, v146 = v72(v73, v142);
			v143 = v145;
			local v147;
			v146, v147 = v72(v73, v146);
			v141[v143] = v146;
			v142 = v147;
		end;
		return v141, v142;
	elseif v75 - 144 <= 15 then
		local v148 = l_band_0(v75, 15);
		local v149 = l_create_1(v148);
		local v150 = v74 + 1;
		for v151 = 1, v148 do
			local v152, v153 = v72(v73, v150);
			v149[v151] = v152;
			v150 = v153;
		end;
		return v149, v150;
	elseif v75 - 160 <= 31 then
		local v154 = v75 - 160;
		return l_readstring_0(v73, v74 + 1, v154), (v74 + 1) + v154;
	else
		error("Not all decoder cases are handled, report as bug to msgpack-luau maintainer");
		return ;
	end;
end;
local function v155(v156, v157)
	local v158 = type(v156);
	if v156 == nil then
		return 1;
	elseif v158 == "boolean" then
		return 1;
	else
		if v158 == "string" then
			local v159 = #v156;
			if v159 <= 31 then
				return 1 + v159;
			elseif v159 <= 255 then
				return 2 + v159;
			elseif v159 <= 65535 then
				return 3 + v159;
			elseif v159 <= 4294967295 then
				return 5 + v159;
			else
				error("Could not encode - too long string");
			end;
		elseif v158 == "buffer" then
			local v160 = l_len_0(v156);
			if v160 <= 255 then
				return 2 + v160;
			elseif v160 <= 65535 then
				return 3 + v160;
			elseif v160 <= 4294967295 then
				return 5 + v160;
			else
				error("Could not encode - too long binary buffer");
			end;
		elseif v158 == "number" then
			if v156 == 0 then
				return 1;
			elseif v156 ~= v156 then
				return 5;
			elseif v156 == math.huge then
				return 5;
			elseif v156 == -math.huge then
				return 5;
			else
				local v161, v162 = l_modf_0(v156);
				local v163 = l_sign_0(v156);
				if not (v162 == 0 and v161 <= 4294967295) or v161 < -2147483648 then
					return 9;
				else
					if v163 > 0 then
						if v161 <= 127 then
							return 1;
						elseif v161 <= 255 then
							return 2;
						elseif v161 <= 65535 then
							return 3;
						elseif v161 <= 4294967295 then
							return 5;
						end;
					elseif v161 >= -32 then
						return 1;
					elseif v161 >= -128 then
						return 2;
					elseif v161 >= -32768 then
						return 3;
					elseif v161 >= -2147483648 then
						return 5;
					end;
					error(string.format("Could not encode - unhandled number \"%s\"", (typeof(v156))));
				end;
			end;
		elseif v158 == "table" then
			local l__msgpackType_0 = v156._msgpackType;
			if l__msgpackType_0 then
				if not (l__msgpackType_0 ~= v0.Int64) or l__msgpackType_0 == v0.UInt64 then
					return 9;
				elseif l__msgpackType_0 == v0.Extension then
					local v165 = l_len_0(v156.data);
					if v165 == 1 then
						return 3;
					elseif v165 == 2 then
						return 4;
					elseif v165 == 4 then
						return 6;
					elseif v165 == 8 then
						return 10;
					elseif v165 == 16 then
						return 18;
					elseif v165 <= 255 then
						return 3 + v165;
					elseif v165 <= 65535 then
						return 4 + v165;
					elseif v165 <= 4294967295 then
						return 6 + v165;
					else
						error("Could not encode - too long extension data");
					end;
				end;
			end;
			if v157[v156] then
				error("Can not serialize cyclic table");
			else
				v157[v156] = true;
			end;
			local v166 = #v156;
			local v167 = 0;
			for _, _ in pairs(v156) do
				v167 = v167 + 1;
			end;
			local v170 = nil;
			if v167 <= 15 then
				v170 = 1;
			elseif v167 <= 65535 then
				v170 = 3;
			elseif v167 <= 4294967295 then
				v170 = 5;
			elseif v166 == v167 then
				error("Could not encode - too long array");
			else
				error("Could not encode - too long map");
			end;
			if v166 == v167 then
				local v171 = 0;
				for _, v173 in ipairs(v156) do
					v171 = v171 + v155(v173, v157);
				end;
				return v170 + v171;
			else
				local v174 = 0;
				for v175, v176 in pairs(v156) do
					v174 = (v174 + v155(v175, v157)) + v155(v176, v157);
				end;
				return v170 + v174;
			end;
		end;
		error(string.format("Could not encode - unsupported datatype \"%s\"", (typeof(v156))));
		return ;
	end;
end;
local v177 = {
	[1] = 212, 
	[2] = 213, 
	[4] = 214, 
	[8] = 215, 
	[16] = 216
};
local function v178(v179, v180, v181)
	local v182 = type(v181);
	if v181 == nil then
		l_writestring_0(v179, v180, "\192");
		return v180 + 1;
	elseif v181 == false then
		l_writestring_0(v179, v180, "\194");
		return v180 + 1;
	elseif v181 == true then
		l_writestring_0(v179, v180, "\195");
		return v180 + 1;
	else
		if v182 == "string" then
			local v183 = #v181;
			if v183 <= 31 then
				l_writeu8_0(v179, v180, (l_bor_0(160, v183)));
				l_writestring_0(v179, v180 + 1, v181);
				return (v180 + 1) + v183;
			elseif v183 <= 255 then
				l_writeu8_0(v179, v180, 217);
				l_writeu8_0(v179, v180 + 1, v183);
				l_writestring_0(v179, v180 + 2, v181);
				return (v180 + 2) + v183;
			elseif v183 <= 65535 then
				l_writeu8_0(v179, v180, 218);
				local v184 = v180 + 1;
				buffer.writeu16(v179, v184, v183);
				v29(v179, v184, 2);
				l_writestring_0(v179, v180 + 3, v181);
				return (v180 + 3) + v183;
			elseif v183 <= 4294967295 then
				l_writeu8_0(v179, v180, 219);
				local v185 = v180 + 1;
				buffer.writeu32(v179, v185, v183);
				v29(v179, v185, 4);
				l_writestring_0(v179, v180 + 5, v181);
				return (v180 + 5) + v183;
			else
				error("Could not encode - too long string");
			end;
		elseif v182 == "buffer" then
			local v186 = l_len_0(v181);
			if v186 <= 255 then
				l_writeu8_0(v179, v180, 196);
				l_writeu8_0(v179, v180 + 1, v186);
				l_copy_0(v179, v180 + 2, v181);
				return (v180 + 2) + v186;
			elseif v186 <= 65535 then
				l_writeu8_0(v179, v180, 197);
				local v187 = v180 + 1;
				buffer.writeu16(v179, v187, v186);
				v29(v179, v187, 2);
				l_copy_0(v179, v180 + 3, v181);
				return (v180 + 3) + v186;
			elseif v186 <= 4294967295 then
				l_writeu8_0(v179, v180, 198);
				local v188 = v180 + 1;
				buffer.writeu32(v179, v188, v186);
				v29(v179, v188, 4);
				l_copy_0(v179, v180 + 5, v181);
				return (v180 + 5) + v186;
			else
				error("Could not encode - too long binary buffer");
			end;
		elseif v182 == "number" then
			if v181 == 0 then
				l_writeu8_0(v179, v180, 0);
				return v180 + 1;
			elseif v181 ~= v181 then
				l_writestring_0(v179, v180, "\202\127\128\000\001");
				return v180 + 5;
			elseif v181 == math.huge then
				l_writestring_0(v179, v180, "\202\127\128\000\000");
				return v180 + 5;
			elseif v181 == -math.huge then
				l_writestring_0(v179, v180, "\202\255\128\000\000");
				return v180 + 5;
			else
				local v189, v190 = l_modf_0(v181);
				local v191 = l_sign_0(v181);
				if not (v190 == 0 and v189 <= 4294967295) or v189 < -2147483648 then
					l_writeu8_0(v179, v180, 203);
					local v192 = v180 + 1;
					buffer.writef64(v179, v192, v181);
					v29(v179, v192, 8);
					return v180 + 9;
				else
					if v191 > 0 then
						if v189 <= 127 then
							l_writeu8_0(v179, v180, v189);
							return v180 + 1;
						elseif v189 <= 255 then
							l_writeu8_0(v179, v180, 204);
							l_writeu8_0(v179, v180 + 1, v189);
							return v180 + 2;
						elseif v189 <= 65535 then
							l_writeu8_0(v179, v180, 205);
							local v193 = v180 + 1;
							buffer.writeu16(v179, v193, v189);
							v29(v179, v193, 2);
							return v180 + 3;
						elseif v189 <= 4294967295 then
							l_writeu8_0(v179, v180, 206);
							local v194 = v180 + 1;
							buffer.writeu32(v179, v194, v189);
							v29(v179, v194, 4);
							return v180 + 5;
						end;
					elseif v189 >= -32 then
						l_writeu8_0(v179, v180, (l_bor_0(224, (l_extract_0(v189, 0, 5)))));
						return v180 + 1;
					elseif v189 >= -128 then
						l_writeu8_0(v179, v180, 208);
						l_writei8_0(v179, v180 + 1, v189);
						return v180 + 2;
					elseif v189 >= -32768 then
						l_writeu8_0(v179, v180, 209);
						local v195 = v180 + 1;
						buffer.writei16(v179, v195, v189);
						v29(v179, v195, 2);
						return v180 + 3;
					elseif v189 >= -2147483648 then
						l_writeu8_0(v179, v180, 210);
						local v196 = v180 + 1;
						buffer.writei32(v179, v196, v189);
						v29(v179, v196, 4);
						return v180 + 5;
					end;
					error(string.format("Could not encode - unhandled number \"%s\"", (typeof(v181))));
				end;
			end;
		elseif v182 == "table" then
			local l__msgpackType_1 = v181._msgpackType;
			if l__msgpackType_1 then
				if not (l__msgpackType_1 ~= v0.Int64) or l__msgpackType_1 == v0.UInt64 then
					l_writeu8_0(v179, v180, l__msgpackType_1 == v0.UInt64 and 207 or 211);
					local v198 = v180 + 1;
					buffer.writeu32(v179, v198, v181.mostSignificantPart);
					v29(v179, v198, 4);
					v198 = v180 + 5;
					buffer.writeu32(v179, v198, v181.leastSignificantPart);
					v29(v179, v198, 4);
					return v180 + 9;
				elseif l__msgpackType_1 == v0.Extension then
					local v199 = l_len_0(v181.data);
					local v200 = v177[v199];
					if v200 then
						l_writeu8_0(v179, v180, v200);
						l_writeu8_0(v179, v180 + 1, v181.type);
						l_copy_0(v179, v180 + 2, v181.data);
						return (v180 + 2) + v199;
					elseif v199 <= 255 then
						l_writeu8_0(v179, v180, 199);
						l_writeu8_0(v179, v180 + 1, v199);
						l_writeu8_0(v179, v180 + 2, v181.type);
						l_copy_0(v179, v180 + 3, v181.data);
						return (v180 + 3) + v199;
					elseif v199 <= 65535 then
						l_writeu8_0(v179, v180, 200);
						local v201 = v180 + 1;
						buffer.writeu16(v179, v201, v199);
						v29(v179, v201, 2);
						l_writeu8_0(v179, v180 + 3, v181.type);
						l_copy_0(v179, v180 + 4, v181.data);
						return (v180 + 4) + v199;
					elseif v199 <= 4294967295 then
						l_writeu8_0(v179, v180, 201);
						local v202 = v180 + 1;
						buffer.writeu32(v179, v202, v199);
						v29(v179, v202, 4);
						l_writeu8_0(v179, v180 + 5, v181.type);
						l_copy_0(v179, v180 + 6, v181.data);
						return (v180 + 6) + v199;
					else
						error("Could not encode - too long extension data");
					end;
				end;
			end;
			local v203 = #v181;
			local v204 = 0;
			for _, _ in pairs(v181) do
				v204 = v204 + 1;
			end;
			if v203 == v204 then
				local l_v180_0 = v180;
				if v203 <= 15 then
					l_writeu8_0(v179, v180, (l_bor_0(144, v204)));
					l_v180_0 = l_v180_0 + 1;
				elseif v203 <= 65535 then
					l_writeu8_0(v179, v180, 220);
					local v208 = v180 + 1;
					buffer.writeu16(v179, v208, v203);
					v29(v179, v208, 2);
					l_v180_0 = l_v180_0 + 3;
				elseif v203 <= 4294967295 then
					l_writeu8_0(v179, v180, 221);
					local v209 = v180 + 1;
					buffer.writeu32(v179, v209, v203);
					v29(v179, v209, 4);
					l_v180_0 = l_v180_0 + 5;
				else
					error("Could not encode - too long array");
				end;
				for _, v211 in ipairs(v181) do
					l_v180_0 = v178(v179, l_v180_0, v211);
				end;
				return l_v180_0;
			else
				local l_v180_1 = v180;
				if v204 <= 15 then
					l_writeu8_0(v179, v180, (l_bor_0(128, v204)));
					l_v180_1 = l_v180_1 + 1;
				elseif v204 <= 65535 then
					l_writeu8_0(v179, v180, 222);
					local v213 = v180 + 1;
					buffer.writeu16(v179, v213, v204);
					v29(v179, v213, 2);
					l_v180_1 = l_v180_1 + 3;
				elseif v204 <= 4294967295 then
					l_writeu8_0(v179, v180, 223);
					local v214 = v180 + 1;
					buffer.writeu32(v179, v214, v204);
					v29(v179, v214, 4);
					l_v180_1 = l_v180_1 + 5;
				else
					error("Could not encode - too long map");
				end;
				for v215, v216 in pairs(v181) do
					l_v180_1 = v178(v179, v178(v179, l_v180_1, v215), v216);
				end;
				return l_v180_1;
			end;
		end;
		error(string.format("Could not encode - unsupported datatype \"%s\"", (typeof(v181))));
		return ;
	end;
end;
v0.Int64 = {};
v0.Int64.new = function(v217, v218)
	return {
		_msgpackType = v0.Int64, 
		mostSignificantPart = v217, 
		leastSignificantPart = v218
	};
end;
v0.UInt64 = {};
v0.UInt64.new = function(v219, v220)
	return {
		_msgpackType = v0.UInt64, 
		mostSignificantPart = v219, 
		leastSignificantPart = v220
	};
end;
v0.Extension = {};
v0.Extension.new = function(v221, v222)
	return {
		_msgpackType = v0.Extension, 
		type = v221, 
		data = v222
	};
end;
v0.utf8Encode = function(v223)
	local v224 = math.ceil(#v223 * 1.1428571428571428);
	local v225 = l_create_0(v224);
	local v226 = 0;
	for v227 = 1, v224 do
		local v228 = 1 + l_floor_0(v226 / 8);
		local v229 = v226 % 8;
		local v230 = l_byte_0(v223, v228);
		if v229 == 0 then
			l_writeu8_0(v225, v227 - 1, (l_extract_0(v230, 1, 7)));
		elseif v229 == 1 then
			l_writeu8_0(v225, v227 - 1, (l_extract_0(v230, 0, 7)));
		else
			l_writeu8_0(v225, v227 - 1, (l_bor_0(l_lshift_0(l_extract_0(v230, 0, 8 - v229), v229 - 1), (l_extract_0(l_byte_0(v223, v228 + 1) or 0, 9 - v229, v229 - 1)))));
		end;
		v226 = v226 + 7;
	end;
	return buffer.tostring(v225);
end;
v0.utf8Decode = function(v231)
	local v232 = l_floor_0((#v231 * 7) / 8);
	local v233 = l_create_0(v232);
	local v234 = 0;
	for v235 = 1, v232 do
		local v236 = v234 % 7;
		l_writeu8_0(v233, v235 - 1, (l_bor_0(l_lshift_0(l_extract_0(l_byte_0(v231, 1 + l_floor_0(v234 / 7)), 0, 7 - v236), v236 + 1), (l_extract_0(l_byte_0(v231, 2 + l_floor_0(v234 / 7)), 6 - v236, 1 + v236)))));
		v234 = v234 + 8;
	end;
	return buffer.tostring(v233);
end;
v0.decode = function(v237)
	if v237 == "" then
		error("Could not decode - input string is too short");
	end;
	return (v72(buffer.fromstring(v237), 0));
end;
v0.encode = function(v238)
	local v239 = l_create_0((v155(v238, {})));
	v178(v239, 0, v238);
	return buffer.tostring(v239);
end;
return v0;
