local CmdrClient = require(game.ReplicatedStorage:WaitForChild("CmdrClient"))

script.Parent.MouseButton1Click:Connect(function()
	CmdrClient:Toggle()
end)