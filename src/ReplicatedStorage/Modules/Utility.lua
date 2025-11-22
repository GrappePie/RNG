local l_Players_0 = game:GetService("Players");
local l_RunService_0 = game:GetService("RunService");
local l_ServerStorage_0 = game:GetService("ServerStorage");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_TierSkins_0 = require(l_DB_0:WaitForChild("TierSkins"));
local l_RarityDB_0 = require(l_DB_0:WaitForChild("RarityDB"));
local l_ItemDB_0 = require(l_DB_0:WaitForChild("ItemDB"));
local l_RateQueue_0 = require(l_Modules_0:WaitForChild("RateQueue"));
local v10 = {};
local v11 = l_RunService_0:IsServer();
local v12 = not v11 and require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
local v13 = v11 and require(l_ServerStorage_0:WaitForChild("ModuleScripts"):WaitForChild("DataStore")) or v12;
local v14 = nil;
local l_Notification_0 = l_ReplicatedStorage_0:WaitForChild("Remotes"):WaitForChild("Notification");
local v16 = v11 and l_RateQueue_0.new("NameRequestRate", 300);
local v17 = v11 and Instance.new("RemoteFunction", script) or script:WaitForChild("RemoteFunction");
local v18 = {
	"K", 
	"M", 
	"B", 
	"T", 
	"Qd", 
	"Qn", 
	"Sx", 
	"Sp", 
	"O", 
	"N"
};
local l_ServerInfo_0 = l_ReplicatedStorage_0:WaitForChild("ServerInfo");
local function __(v20)
	local v21 = true;
	if l_ServerInfo_0:GetAttribute("CurrentTime") ~= v20 then
		v21 = true;
		if l_ServerInfo_0:GetAttribute("CurrentBiome") ~= v20 then
			v21 = l_ServerInfo_0:GetAttribute("CurrentBiome") == "Glitched";
		end;
	end;
	return v21;
end;
local function _(v23) -- dupe function
	return v23:split("_")[1];
end;
v10.TryUntilSuccess = function(v25, ...)
	local v26 = nil;
	local v27 = nil;
	local v28 = 0;
	while true do
		v27 = {
			pcall(v25, ...)
		};
		v26 = table.remove(v27, 1);
		if not v26 then
			v28 = v28 + 1;
			task.wait(2 ^ v28);
		end;
		if v26 then
			break;
		end;
	end;
	return table.unpack(v27);
end;
local function v29(v30, v31)
	local function v37(v32)
		local v33 = false;
		local v34 = false;
		for v35, _ in pairs(v32) do
			if type(v35) == "number" then
				v33 = true;
			else
				v34 = true;
			end;
		end;
		if v33 and not v34 then
			return "array";
		elseif not v33 and v34 then
			return "dict";
		elseif v33 and v34 then
			return "mixed";
		else
			return ;
		end;
	end;
	local function ___(v38)
		return v37(v38) == "array";
	end;
	local function __(v40)
		return v37(v40) == "dict";
	end;
	local function _(v42)
		return v37(v42) == "mixed";
	end;
	local _ = function(v44)
		for _, v46 in pairs(v44) do
			if type(v46) == "table" then
				return true;
			end;
		end;
		return false;
	end;
	v31 = v31 or 0;
	if type(v30) ~= "table" and v31 == 0 then
		return (tostring(v30));
	else
		local v48 = "";
		if type(v30) == "table" then
			if not (v37(v30) == "dict") and #v30 == 0 then
				return "{};";
			else
				local v49 = v37(v30) == "array";
				if v49 then
					local v50;
					for _, v52 in pairs(v30) do
						if type(v52) == "table" then
							v50 = true;
							--goto label0 --[[  true, false  ]];
						end;
					end;
					v50 = false;
					--::label0::;
					v49 = not v50 and #v30 <= 10;
				end;
				local v53 = string.rep("    ", v31 + 1);
				local v54 = string.rep("    ", v31);
				v48 = v48 .. "{" .. (v49 and " " or "\n");
				for v55, v56 in pairs(v30) do
					if v49 then
						v48 = v48 .. (type(v56) == "string" and "\"" .. v56 .. "\"" or tostring(v56)) .. (#v30 <= v55 and " " or ", ");
					else
						v48 = v48 .. v53 .. "[" .. (type(v55) == "string" and "\"" .. v55 .. "\"" or tostring(v55)) .. "]" .. " = " .. ((type(v56) == "table" and v29(v56, v31 + 1) or type(v56) == "string" and "\"" .. v56 .. "\";") or tostring(v56) .. ";") .. "\n";
					end;
				end;
				v48 = v48 .. (v49 and "" or v54) .. "};";
			end;
		end;
		return v48;
	end;
end;
v10.ConvertToDHMS = function(v57)
	local v58 = (v57 - v57 % 60) / 60;
	v57 = v57 - v58 * 60;
	local v59 = (v58 - v58 % 60) / 60;
	v58 = v58 - v59 * 60;
	local v60 = (v59 - v59 % 24) / 24;
	v59 = v59 - v60 * 24;
	local v61 = {};
	if v60 > 0 then
		table.insert(v61, v60);
		table.insert(v61, "d ");
	end;
	if v59 > 0 then
		table.insert(v61, v59);
		table.insert(v61, "h ");
	end;
	if v58 > 0 then
		table.insert(v61, v58);
		table.insert(v61, "m ");
	end;
	if v57 > 0 then
		table.insert(v61, v57);
		table.insert(v61, "s");
	end;
	return table.concat(v61);
end;
v10.GetRollTable = function(v62)
	local v63 = {};
	local v64 = v62 or {};
	for _, v66 in ipairs(l_RarityDB_0) do
		local v67 = {
			Rarity = v66.Rarity, 
			Value = v66.Value, 
			Craftable = v66.Craftable, 
			UnlockBy = v66.UnlockBy, 
			Unobtainable = v66.Unobtainable, 
			SkinChance = v66.SkinChance
		};
		if v66.UnlockBy then
			local l_l_ServerInfo_0_Attribute_0 = l_ServerInfo_0:GetAttribute("Multiply_" .. v66.UnlockBy);
			if not l_l_ServerInfo_0_Attribute_0 or l_l_ServerInfo_0_Attribute_0 == math.huge then
				local l_UnlockBy_0 = v66.UnlockBy;
				local v70 = true;
				if l_ServerInfo_0:GetAttribute("CurrentTime") ~= l_UnlockBy_0 then
					v70 = true;
					if l_ServerInfo_0:GetAttribute("CurrentBiome") ~= l_UnlockBy_0 then
						v70 = l_ServerInfo_0:GetAttribute("CurrentBiome") == "Glitched";
					end;
				end;
				if not v70 then
					continue;
				end;
			end;
			if not v64[v66.UnlockBy] then
				local l_UnlockBy_1 = v66.UnlockBy;
				local v72 = true;
				if l_ServerInfo_0:GetAttribute("CurrentTime") ~= l_UnlockBy_1 then
					v72 = true;
					if l_ServerInfo_0:GetAttribute("CurrentBiome") ~= l_UnlockBy_1 then
						v72 = l_ServerInfo_0:GetAttribute("CurrentBiome") == "Glitched";
					end;
				end;
				if not v72 then
					v67.Rarity = v67.Rarity * l_l_ServerInfo_0_Attribute_0;
					v67.Breakthrough = true;
				end;
			end;
		end;
		if v66.LimitedTimestamp and v66.LimitedTimestamp < DateTime.now().UnixTimestamp then
			v66.Unobtainable = true;
		elseif v66.CheckIsPossibleToGet and not v66.CheckIsPossibleToGet() then
			v66.Unobtainable = true;
		else
			table.insert(v63, v67);
		end;
	end;
	return v63;
end;
v10.IsBreakThrough = function(v73, v74)
	v73 = v73:split("_")[1];
	local v75 = v74 or {};
	for _, v77 in ipairs(l_RarityDB_0) do
		if v77.Value == v73 then
			if (l_ServerInfo_0:GetAttribute("CurrentBiome") ~= "Glitched" and v77.UnlockBy) and not v75[v77.UnlockBy] then
				local l_UnlockBy_2 = v77.UnlockBy;
				local v79 = true;
				if l_ServerInfo_0:GetAttribute("CurrentTime") ~= l_UnlockBy_2 then
					v79 = true;
					if l_ServerInfo_0:GetAttribute("CurrentBiome") ~= l_UnlockBy_2 then
						v79 = l_ServerInfo_0:GetAttribute("CurrentBiome") == "Glitched";
					end;
				end;
				if not v79 then
					return true;
				end;
			end;
			return false;
		end;
	end;
	return false;
end;
v10.FindRarityByName = function(v80, v81, v82)
	local v83 = v80:split("_");
	local v84 = v83[1];
	local v85 = v83[2];
	local l_ipairs_0 = ipairs;
	local v87 = v81 and l_RarityDB_0 or v10.GetRollTable(v82);
	for _, v89 in l_ipairs_0(v87) do
		if v89.Value == v84 then
			local l_Rarity_0 = v89.Rarity;
			if v85 then
				local v91 = 0;
				local v92 = (l_TierSkins_0[v84] and l_TierSkins_0[v84][v85]) and l_TierSkins_0[v84][v85].Rarity;
				local v93 = v89.SkinChance or 1;
				for _, v95 in pairs(l_TierSkins_0[v84]) do
					if (not v95.Unobtainable and v95.Rarity >= 1) and not v95.DontAddToChance then
						v91 = v91 + 1 / v95.Rarity;
					end;
				end;
				l_Rarity_0 = (l_Rarity_0 * (100 / v93)) * (v91 * v92);
			end;
			if math.huge <= l_Rarity_0 then
				l_Rarity_0 = 0;
			end;
			return (math.round(l_Rarity_0));
		end;
	end;
	for _, v97 in ipairs(l_RarityDB_0) do
		if v97.Value == v84 then
			local l_Rarity_1 = v97.Rarity;
			if v85 then
				local v99 = 0;
				local v100 = (l_TierSkins_0[v84] and l_TierSkins_0[v84][v85]) and l_TierSkins_0[v84][v85].Rarity;
				local v101 = v97.SkinChance or 1;
				for _, v103 in pairs(l_TierSkins_0[v84]) do
					if not v103.Unobtainable and v103.Rarity >= 1 then
						v99 = v99 + 1 / v103.Rarity;
					end;
				end;
				l_Rarity_1 = (l_Rarity_1 * (100 / v101)) * (v99 * v100);
			end;
			if math.huge <= l_Rarity_1 then
				l_Rarity_1 = 0;
			end;
			return (math.round(l_Rarity_1));
		end;
	end;
	return 0;
end;
local l_BiomeSettingsClient_0 = require(l_DB_0:WaitForChild("BiomeSettingsClient"));
v10.GetGeneralRollTable = function()
	local v105 = {};
	for _, v107 in ipairs(l_RarityDB_0) do
		local v108 = {
			Rarity = v107.Rarity, 
			Value = v107.Value, 
			Craftable = v107.Craftable, 
			UnlockBy = v107.UnlockBy, 
			Unobtainable = v107.Unobtainable, 
			SkinChance = v107.SkinChance
		};
		if v108.UnlockBy then
			local v109 = l_BiomeSettingsClient_0[v108.UnlockBy];
			if v109 and v109 < math.huge then
				v108.Rarity = v108.Rarity * v109;
			end;
		end;
		if v107.LimitedTimestamp and v107.LimitedTimestamp < DateTime.now().UnixTimestamp then
			v107.Unobtainable = true;
		elseif v107.CheckIsPossibleToGet and not v107.CheckIsPossibleToGet() then
			v107.Unobtainable = true;
		else
			table.insert(v105, v108);
		end;
	end;
	return v105;
end;
local v110 = v10.GetGeneralRollTable();
v10.GetGeneralRarityByName = function(v111, v112)
	local v113 = v111:split("_");
	local v114 = v113[1];
	local v115 = v113[2];
	for v116, v117 in ipairs(v110) do
		if v117.Value == v114 then
			local l_Rarity_2 = v117.Rarity;
			if v115 then
				local v119 = 0;
				local v120 = (l_TierSkins_0[v114] and l_TierSkins_0[v114][v115]) and l_TierSkins_0[v114][v115].Rarity;
				local v121 = v117.SkinChance or 1;
				for _, v123 in pairs(l_TierSkins_0[v114]) do
					if not v123.Unobtainable and not v123.DontAddToChance then
						v119 = v119 + 1 / v123.Rarity;
					end;
				end;
				l_Rarity_2 = l_TierSkins_0[v114][v115].Unobtainable and 0 or (l_Rarity_2 * (100 / v121)) * (v119 * v120);
			end;
			if not (math.huge > l_Rarity_2) or v117.Unobtainable then
				l_Rarity_2 = 0;
			end;
			if v112 then
				return math.round(l_Rarity_2), v116;
			else
				return (math.round(l_Rarity_2));
			end;
		end;
	end;
	--warn(v114 .. "\236\157\180\235\158\128 \236\157\180\235\166\132\236\157\152 \236\149\132\236\154\176\235\157\188\235\138\148 \236\151\134\236\138\181\235\139\136\235\139\164");
	return 0;
end;
v10.GetBuffStack = function(v124)
	if not v124 or #v124 ~= 2 then
		return 0;
	else
		return v124[1];
	end;
end;
v10.format_int = function(v125)
	local _, _, v128, v129, v130 = tostring(v125):find("([-]?)(%d+)([.]?%d*)");
	return v128 .. v129:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. v130;
end;
v10.FindAuraIndex = function(v131)
	v131 = v131:split("_")[1];
	for v132, v133 in ipairs(l_RarityDB_0) do
		if v133.Value == v131 then
			return v132;
		end;
	end;
	return 0;
end;
v10.GetAuraConfig = function(v134)
	local v135, v136 = table.unpack(v134:split("_"));
	local v137 = l_RarityDB_0[v10.FindAuraIndex(v135)];
	if v136 then
		v137 = setmetatable(table.clone(l_TierSkins_0[v135][v136]), {
			__index = v137
		});
	end;
	return v137;
end;
v10.GetUpgradeCoins = function(v138)
	if v138 == math.huge then
		return "0"
	end
	return (math.floor(400 * v138 ^ 1.1));
end;
v10.GetSmartName = function(v139)
	return v139.DisplayName == v139.Name and ("@%*"):format(v139.Name) or ("%*(@%*)"):format(v139.DisplayName, v139.Name);
end;
v10.FindAuraData = function(v140)
	local v141, v142 = table.unpack(v140:split("_"));
	if not v142 then
		for _, v144 in ipairs(l_RarityDB_0) do
			if v144.Value == v141 then
				return v144;
			end;
		end;
		return ;
	else
		return (setmetatable(l_TierSkins_0[v141][v142], {
			__index = v10.FindAuraData(v141)
		}));
	end;
end;
v10.PlaySFX = function(v145, v146, v147, v148)
	if not v145 or not v146 then
		return ;
	else
		local v149 = v145:Clone();
		v149.Parent = v146;
		v149.Volume = v147 or 1;
		v149.PlaybackSpeed = v148 or 1;
		v149:Play();
		game:GetService("Debris"):AddItem(v149, 1000);
		v149.Ended:Once(function()
			v149:Destroy();
		end);
		return ;
	end;
end;
v10.IsValidNumberText = function(v150, v151, v152)
	local v153 = tonumber(v150);
	if v153 ~= v153 then
		return false;
	elseif not v153 or typeof(v153) ~= "number" then
		return false;
	elseif not v151 and v153 < 0 then
		return false;
	elseif not v152 and v153 % 1 ~= 0 then
		return false;
	else
		return true;
	end;
end;
v10.FillTable = function(v154, v155, v156)
	local v157 = table.clone(v154);
	for v158 = 1, v155 do
		if not v157[v158] then
			v157[v158] = v156;
		end;
	end;
	return v157;
end;
v10.shorten = function(v159)
	local v160 = v159 < 0;
	v159 = math.abs(v159);
	local v161 = false;
	for v162, _ in pairs(v18) do
		if 10 ^ (3 * v162) > v159 then
			v159 = v159 / 10 ^ (3 * (v162 - 1));
			v159 = string.sub(tostring(v159), 1, (string.find(tostring(v159), ".") and string.sub(tostring(v159), 4, 4) ~= ".") and 4 or 3) .. (v18[v162 - 1] or "");
			v161 = true;
			break;
		end;
	end;
	if not v161 then
		v159 = tostring((math.floor(v159)));
	end;
	if v160 then
		return "-" .. v159;
	else
		return v159;
	end;
end;
v10.SubAll = function(v164, ...)
	for _, v166 in {
		...
		} do
		v164 = v164 * (1 + v166);
	end;
	return v164;
end;
v10.ChangeCornerColor = function(v167, v168)
	for _, v170 in v167:FindFirstChild("SelectionCorners"):GetChildren() do
		v170.Corner1.BackgroundColor3 = v168;
		v170.Corner2.BackgroundColor3 = v168;
	end;
end;
v10.RarestRNG = function(v171)
	local v172 = v11 and v13.GetStore(v171, true) or v10.GetReplica().Data;
	local v173 = {};
	local v174 = 0;
	local v175 = 0;
	for _, v177 in ipairs(v172.DiscoveredAura) do
		table.insert(v173, v10.GetGeneralRarityByName(v177));
	end;
	for v178, v179 in pairs(v172.SkinsOwned) do
		for _, v181 in ipairs(v179) do
			table.insert(v173, v10.GetGeneralRarityByName(v178 .. "_" .. v181));
		end;
	end;
	if #v173 ~= 0 then
		v174 = math.max(table.unpack(v173));
		for _, v183 in ipairs(v173) do
			v175 = v175 + v183;
		end;
	end;
	return v174, v175;
end;

v10.GetLuck = function(v184, v185)
	local v186 = 1
	local v187 = {}
	local v188 = v184 or l_Players_0.LocalPlayer
	if not v188 then
		return v186
	else
		local l_v188_Attribute_0 = v188:GetAttribute("HasVIP")
		local v190 = v11 and v13.GetStore(v188, true) or v13.GetReplicaById(v188:GetAttribute("UID")).Data
		local v191 = v10.GetBuffStack(v190.Buffs.Lucky)
		local v192 = v10.GetBuffStack(v190.Buffs["Basic Luck"])
		local v193 = v10.GetBuffStack(v190.Buffs["We're sorry!"])

		local v194 = v10.GetBuffStack(v190.Buffs["Solar Ignite"])
		local v195 = v10.GetBuffStack(v190.Buffs["Basic Blessing"])
		local v196 = v10.GetBuffStack(v190.Buffs["Exo Enhancement"])
		local v197 = v10.GetBuffStack(v190.Buffs.Jackpot)
		local v198 = v10.GetBuffStack(v190.Buffs["Cosmic Enhancement"])
		local v199 = v10.GetBuffStack(v190.Buffs.Subzero)
		local v200 = v10.GetBuffStack(v190.Buffs["Unstable Gravity"])
		local v201 = v10.GetBuffStack(v190.Buffs.Galestorm)
		local v202 = v10.GetBuffStack(v190.Buffs.Volcanic)
		local v203 = v10.GetBuffStack(v190.Buffs["Exoflex Blessing"])
		local v204 = v10.GetBuffStack(v190.Buffs["Christmas Blessing"])
		local v205 = v10.GetBuffStack(v190.Buffs["Easter Blessing"])
		local v206 = v10.GetBuffStack(v190.Buffs["Tip's Blessing"])
		local v207 = v10.GetBuffStack(v190.Buffs["Developer's Blessing?"])
		local v208 = v10.GetBuffStack(v190.Buffs["Fortune I"])
		local v209 = v10.GetBuffStack(v190.Buffs["Fortune II"])
		local v210 = v10.GetBuffStack(v190.Buffs["Fortune III"])
		local v211 = math.min(v10.GetBuffStack(v190.Buffs["Heavenly I"]), 1)
		local v212 = math.min(v10.GetBuffStack(v190.Buffs["Heavenly II"]), 1)
		local _ = v10.GetBuffStack(v190.Buffs["Universe I"])
		local v214 = v10.GetBuffStack(v190.Buffs["Developer's Return"])
		local v215 = v10.GetBuffStack(v190.Buffs["Lucky Penny"], 1)
		local v216 = v10.GetBuffStack(v190.Buffs["The Chosen"])
		local v217 = v10.GetBuffStack(v190.Buffs["The Power I"])
		local v218 = v10.GetBuffStack(v190.Buffs["The Wrath I"])
		local v219 = v10.GetBuffStack(v190.Buffs.GODLIKE)
		local v220 = v10.GetBuffStack(v190.Buffs["The Power II"])
		local v221 = v10.GetBuffStack(v190.Buffs["The Wrath II"])
		local v222 = v10.GetBuffStack(v190.Buffs["Warmth?"])
		local Pumpkings_Blessing = v10.GetBuffStack(v190.Buffs["Pumpking's Blessing"])
		local v223 = math.min(v10.GetBuffStack(v190.Buffs.Oblivion), 1)

		local v224 = math.min(v10.GetBuffStack(v190.Buffs["1M LUCK"]), 1)
		local v225 = math.min(v10.GetBuffStack(v190.Buffs["10M LUCK"]), 1)
		local v226 = math.min(v10.GetBuffStack(v190.Buffs["100M LUCK"]), 1)
		local v227 = math.min(v10.GetBuffStack(v190.Buffs["1B LUCK"]), 1)

		v186 = (((((((((((((((v186 + v191) + v193 * 0.5) + v214 * 0.05) + v195 * 0.3) + v204) + v207 * -99.99) + v206 * 1.2) + v205 * 0.5) + v215 * 0.77) + v222 * 0.2) + math.max(v192 / 4, v194 / 2, v196, v198 * 2.5, v199 * 1.5, v201 * 1.15, v202 * 2.9, v203 * 3.4, Pumpkings_Blessing * 8)) + math.max(v197 * 0.77)) + math.max(v208 * 1.5, v209 * 2, v210 * 2.5)) + math.max(v216 * 1.5, v217 * 1.5, v219 * 2.5, v220 * 2.5)) - math.max(v218 * 0.5, v221))

		--v186 = v186 + v224 + v225 * 1.5 + v226 * 2 + v227 * 3

		if v190.LeftGear == "Flesh Device" then
			v186 = v186 * 1.3
		elseif v185 == 10 then
			v186 = v186 * (v200 == 0 and 2 or 6)
		end

		--print(v211, v212, v223)

		v186 = v186 + math.max(v211 * 20000, v212 * 200000, v223 * 350000, v224 * (1_000_000), v225 * (10_000_000 / 10), v226 * (100_000_000 / 10), v227 * (1_000_000_000 / 10))
		if l_v188_Attribute_0 then
			v186 = v186 * 1.2
		end
		if not v190.Settings.BuffEnabled then
			v186 = 1
		end
		if v188:GetAttribute("ForceLuck") then
			v186 = v188:GetAttribute("ForceLuck")
		end
		return math.max(v186, 1.0E-6), v187
	end
end

v10.Dump = function(v224, v225)
	if not v225 then
		return (v29(v224));
	else
		local v226 = {};
		local v227 = {
			lua = {
				"and", 
				"break", 
				"or", 
				"else", 
				"elseif", 
				"if", 
				"then", 
				"until", 
				"repeat", 
				"while", 
				"do", 
				"for", 
				"in", 
				"end", 
				"local", 
				"return", 
				"function", 
				"export"
			}, 
			rbx = {
				"game", 
				"workspace", 
				"script", 
				"math", 
				"string", 
				"table", 
				"task", 
				"wait", 
				"select", 
				"next", 
				"Enum", 
				"error", 
				"warn", 
				"tick", 
				"assert", 
				"shared", 
				"loadstring", 
				"tonumber", 
				"tostring", 
				"type", 
				"typeof", 
				"unpack", 
				"print", 
				"Instance", 
				"CFrame", 
				"Vector3", 
				"Vector2", 
				"Color3", 
				"UDim", 
				"UDim2", 
				"Ray", 
				"BrickColor", 
				"OverlapParams", 
				"RaycastParams", 
				"Axes", 
				"Random", 
				"Region3", 
				"Rect", 
				"TweenInfo", 
				"collectgarbage", 
				"not", 
				"utf8", 
				"pcall", 
				"xpcall", 
				"_G", 
				"setmetatable", 
				"getmetatable", 
				"os", 
				"pairs", 
				"ipairs"
			}, 
			operators = {
				"#", 
				"+", 
				"-", 
				"*", 
				"%", 
				"/", 
				"^", 
				"=", 
				"~", 
				"=", 
				"<", 
				">", 
				",", 
				".", 
				"(", 
				")", 
				"{", 
				"}", 
				"[", 
				"]", 
				";", 
				":"
			}
		};
		local v228 = {
			numbers = Color3.fromRGB(255, 198, 0), 
			boolean = Color3.fromRGB(255, 198, 0), 
			operator = Color3.fromRGB(204, 204, 204), 
			lua = Color3.fromRGB(160, 87, 248), 
			rbx = Color3.fromRGB(146, 180, 253), 
			str = Color3.fromRGB(173, 241, 149), 
			comment = Color3.fromRGB(102, 102, 102), 
			null = Color3.fromRGB(255, 198, 0), 
			call = Color3.fromRGB(130, 170, 255), 
			self_call = Color3.fromRGB(227, 201, 141), 
			local_color = Color3.fromRGB(199, 146, 234), 
			function_color = Color3.fromRGB(241, 122, 124), 
			self_color = Color3.fromRGB(146, 134, 234), 
			local_property = Color3.fromRGB(129, 222, 255)
		};
		local _ = function(v229)
			local v230 = {};
			for _, v232 in ipairs(v229) do
				v230[v232] = true;
			end;
			return v230;
		end;
		local l_lua_0 = v227.lua;
		local v235 = {};
		for _, v237 in ipairs(l_lua_0) do
			v235[v237] = true;
		end;
		local l_v235_0 = v235;
		v235 = v227.rbx;
		local v239 = {};
		for _, v241 in ipairs(v235) do
			v239[v241] = true;
		end;
		l_lua_0 = v239;
		v239 = v227.operators;
		local v242 = {};
		for _, v244 in ipairs(v239) do
			v242[v244] = true;
		end;
		v235 = v242;
		v239 = function(v245, v246)
			local v247 = v245[v246];
			if v228[v247 .. "_color"] then
				return v228[v247 .. "_color"];
			elseif tonumber(v247) then
				return v228.numbers;
			elseif v247 == "nil" then
				return v228.null;
			elseif v247:sub(1, 2) == "--" then
				return v228.comment;
			elseif v235[v247] then
				return v228.operator;
			elseif l_v235_0[v247] then
				return v228.rbx;
			elseif l_lua_0[v247] then
				return v228.lua;
			elseif not (v247:sub(1, 1) ~= "\"") or v247:sub(1, 1) == "'" then
				return v228.str;
			elseif not (v247 ~= "true") or v247 == "false" then
				return v228.boolean;
			elseif v245[v246 + 1] == "(" then
				if v245[v246 - 1] == ":" then
					return v228.self_call;
				else
					return v228.call;
				end;
			elseif v245[v246 - 1] == "." then
				if v245[v246 - 2] == "Enum" then
					return v228.rbx;
				else
					return v228.local_property;
				end;
			else
				return ;
			end;
		end;
		v226.run = function(v248)
			local v249 = {};
			local v250 = "";
			local v251 = false;
			local v252 = false;
			local v253 = false;
			for v254 = 1, #v248 do
				local v255 = v248:sub(v254, v254);
				if v252 then
					if v255 == "\n" and not v253 then
						table.insert(v249, v250);
						table.insert(v249, v255);
						v250 = "";
						v252 = false;
					elseif v248:sub(v254 - 1, v254) == "]]" and v253 then
						table.insert(v249, v250 .. "]");
						v250 = "";
						v252 = false;
						v253 = false;
					else
						v250 = v250 .. v255;
					end;
				elseif v251 then
					if not (not (v255 == v251) or v248:sub(v254 - 1, v254 - 1) == "\\") or v255 == "\n" then
						v250 = v250 .. v255;
						v251 = false;
					else
						v250 = v250 .. v255;
					end;
				elseif v248:sub(v254, v254 + 1) == "--" then
					table.insert(v249, v250);
					v250 = "-";
					v252 = true;
					if v248:sub(v254 + 2, v254 + 3) ~= "[[" then
						v253 = false;
					else
						v253 = true;
					end;
				elseif not (v255 ~= "\"") or v255 == "'" then
					table.insert(v249, v250);
					v250 = v255;
					v251 = v255;
				elseif v235[v255] then
					table.insert(v249, v250);
					table.insert(v249, v255);
					v250 = "";
				elseif v255:match("[%w_]") then
					v250 = v250 .. v255;
				else
					table.insert(v249, v250);
					table.insert(v249, v255);
					v250 = "";
				end;
			end;
			table.insert(v249, v250);
			local v256 = {};
			for v257, v258 in ipairs(v249) do
				local v259 = v239(v249, v257);
				if v259 then
					table.insert(v256, (string.format("<font color = \"#%s\">%s</font>", v259:ToHex(), v258:gsub("<", "&lt;"):gsub(">", "&gt;"))));
				else
					table.insert(v256, v258);
				end;
			end;
			return table.concat(v256);
		end;
		return v226.run((v29(v224)));
	end;
end;
v10.GetKeys = function(v260)
	local v261 = {};
	for v262, _ in pairs(v260) do
		table.insert(v261, v262);
	end;
	return v261;
end;
v10.ChangeItemTextColor = function(v264)
	local v265 = l_ItemDB_0[v264.Text];
	if v265 then
		v264.TextStrokeTransparency = 0.5;
		v264.TextStrokeColor3 = Color3.new();
		v264.TextColor3 = v265.TextColor;
	end;
end;
v10.GetReplica = function()
	if v12 then
		if not v12.InitialDataReceived then
			while true do
				task.wait();
				if v12.InitialDataReceived then
					break;
				end;
			end;
		end;
		return v12.GetReplicaById(l_Players_0.LocalPlayer:GetAttribute("UID"));
	else
		return ;
	end;
end;
v10.GetUsernameById = function(v266, v267)
	if not v266 then
		return ;
	elseif v17:FindFirstChild(v266) then
		return v17:FindFirstChild(v266).Value;
	elseif v11 then
		return v16:insert(function()
			return l_Players_0:GetNameFromUserIdAsync(v266);
		end):andThen(function(v268)
			local l_StringValue_0 = Instance.new("StringValue");
			l_StringValue_0.Name = v266;
			l_StringValue_0.Value = v268;
			l_StringValue_0.Parent = v17;
			return v268;
		end):catch(function()
			return "Failed to load user name.";
		end):await():getResults();
	elseif v267 then
		return l_RateQueue_0.Process(function()
			return l_Players_0:GetNameFromUserIdAsync(v266);
		end):andThen(function(v270)
			local l_StringValue_1 = Instance.new("StringValue");
			l_StringValue_1.Name = v266;
			l_StringValue_1.Value = v270;
			l_StringValue_1.Parent = v17;
			return v270;
		end):catch(function()
			return "Failed to load user name.";
		end):execute():await():getResults();
	else
		return v17:InvokeServer(v266);
	end;
end;
v10.switch = function(...)
	return require(script.Parent.Switch)(...);
end;
v10.Notify = function(v272, ...)
	if v11 then
		if typeof(v272) == "Instance" then
			l_Notification_0:FireClient(v272, ...);
			return ;
		else
			l_Notification_0:FireAllClients(v272, ...);
			return ;
		end;
	else
		if not v14 then
			v14 = require(l_Players_0.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface"):WaitForChild("Notification"):WaitForChild("Core"));
		end;
		v14.Create(v272, ...);
		return ;
	end;
end;
script:WaitForChild("Get").OnInvoke = function()
	return v10;
end;
if v11 then
	v17.OnServerInvoke = function(v273, v274, ...)
		if typeof(v274) == "number" and #{
			...
			} == 0 then
			return (v10.GetUsernameById(v274));
		else
			return nil -- v273:Kick();
		end;
	end;
else
	v17.ChildAdded:Connect(function(v275)
		if v17:FindFirstChild(v275.Name) ~= v275 then
			v17:FindFirstChild(v275.Name):Destroy();
		end;
	end);
end;
return v10;
