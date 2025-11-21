--!strict
--[[for _, child: ModuleScript in script:WaitForChild("Passive"):GetChildren() do
	local module = require(child)
	task.defer(module.Init)
end]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local RemotesFolder = script:FindFirstChild("Remotes")

local Packets = ReplicatedStorage:WaitForChild("Packets")

local Global = require(Packets:WaitForChild("Global"))

Global.ScreenEffect.listen(function(Data)
	local Name = Data.Name
	if RemotesFolder:FindFirstChild(Name) then
		local Args = Data.Args :: {[any]: any}

		if not Args then
			Args = {}
		end

		local Module = require(RemotesFolder:FindFirstChild(Name)) :: any

		Module[Data.Function or "Emit"](table.unpack(Args))
	end
end)