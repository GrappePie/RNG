--!strict
local Player = game:GetService("Players").LocalPlayer

if not Player:GetAttribute("Loaded") then
	Player:GetAttributeChangedSignal("Loaded"):Wait()
end

for _, instance in script.Parent:GetChildren() do
	if (instance:IsA("LocalScript") and script ~= instance) and not instance.Name:find("^-+") then
		instance.Disabled = false
	end
end

script:Destroy()