local l_Children_0 = script.Quests:GetChildren();
local _ = require(script.Util);
return (setmetatable({}, {
	__index = function(v2, v3)
		if rawget(v2, v3) then
			return (rawget(v2, v3));
		else
			for _, v5 in l_Children_0 do
				if v5.Name == v3 then
					rawset(v2, v3, require(v5));
					return (rawget(v2, v3));
				end;
			end;
			return ;
		end;
	end
}));
