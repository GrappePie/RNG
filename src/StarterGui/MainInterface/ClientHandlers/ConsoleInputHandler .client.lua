-- What the sigma?

local v1 = game:GetService("UserInputService")
local v2 = game:GetService("ReplicatedStorage")
game:GetService("ContextActionService")
local v3 = v2:WaitForChild("Modules")
local v_u_4 = require(v3:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v5 = script:FindFirstAncestorOfClass("ScreenGui")
local _ = v5.SelectedButtonValue
if v1.GamepadEnabled then
	local v_u_6 = require(game.ReplicatedStorage.Modules.ConsoleIconHandler).ConsoleGuide.new(v5)
	v5.SelectionChanged:Connect(function(_, _, p7)
		-- upvalues: (copy) v_u_6
		if p7 and p7:IsA("TextButton") then
			v_u_6:Add({
				["Key"] = "ButtonA",
				["Name"] = "Select"
			})
		else
			v_u_6:Remove("ButtonA")
		end
	end)
	game.UserInputService.InputBegan:Connect(function(p8, p9)
		-- upvalues: (copy) v_u_4
		if not p9 then
			if p8.KeyCode == Enum.KeyCode.ButtonB then
				v_u_4.CloseAllWindows()
			end
		end
	end)
	for _, v_u_10 in ipairs(v5:GetChildren()) do
		if v_u_10:GetAttribute("IsWindow") then
			v_u_10:GetPropertyChangedSignal("Visible"):Connect(function()
				-- upvalues: (copy) v_u_10, (copy) v_u_6
				if v_u_10.Visible then
					v_u_6:Add({
						["Key"] = "ButtonB",
						["Name"] = "Close"
					})
				else
					v_u_6:Remove("ButtonB")
				end
			end)
		end
	end
end