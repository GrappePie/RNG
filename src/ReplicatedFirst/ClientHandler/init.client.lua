-- What the sigma?

local v1 = game:GetService("Players").LocalPlayer
if not v1:GetAttribute("PlayBegin") then
	v1:GetAttributeChangedSignal("PlayBegin"):Wait()
end
for _, v2 in ipairs(script:GetChildren()) do
	if v2:IsA("ModuleScript") then
		task.spawn(require, v2)
	end
end