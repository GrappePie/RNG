local Player = script.Parent.Parent.Parent.Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules


require(Modules.Inventory).InitInventory(Player)