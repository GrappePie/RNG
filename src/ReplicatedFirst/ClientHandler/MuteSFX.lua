-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v_u_3 = v1.LocalPlayer
local v_u_4 = v2:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_5 = {
	"Blacksmithing",
	"BonusRollSound",
	"Click",
	"DefaultItemUse",
	"DrinkPotion",
	"Error",
	"Money",
	"MouseHover",
	"RollSound",
	"SpinningSound"
}
local v_u_6 = {}
local function v10()
	-- upvalues: (copy) v_u_3, (copy) v_u_6, (copy) v_u_4, (copy) v_u_5
	if v_u_3:GetAttribute("UiSFXEnabled") then
		for v7, v8 in pairs(v_u_6) do
			v7.Volume = v8
		end
	else
		for _, v9 in ipairs(v_u_4:GetChildren()) do
			if table.find(v_u_5, v9.Name) then
				if not v_u_6[v9] then
					v_u_6[v9] = v9.Volume
				end
				v9.Volume = 0
			end
		end
	end
end
v10()
v_u_3:GetAttributeChangedSignal("UiSFXEnabled"):Connect(v10)
return nil