-- What the sigma?

local v1 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Notification")
local v2 = require(script.Parent.Parent:WaitForChild("Notification"):WaitForChild("Core"))
v1.OnClientEvent:Connect(v2.Create)