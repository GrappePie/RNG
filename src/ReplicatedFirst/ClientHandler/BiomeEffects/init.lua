-- What the sigma?

local v_u_1 = game:GetService("ReplicatedStorage").Server0o
local v_u_2 = script:WaitForChild("Effects")
local v_u_3 = nil
local v_u_4 = nil
local function v6()
	-- upvalues: (copy) v_u_1, (ref) v_u_4, (ref) v_u_3, (copy) v_u_2
	local v5 = v_u_1:GetAttribute("CurrentBiome")
	if v5 ~= v_u_4 then
		if v_u_3 then
			v_u_3()
			v_u_3 = nil
		end
		v_u_4 = v5
		if v_u_2:FindFirstChild(v5) then
			v_u_3 = require(v_u_2:FindFirstChild(v5))()
		end
	end
end
v6()
v_u_1:GetAttributeChangedSignal("CurrentBiome"):Connect(v6)
return nil