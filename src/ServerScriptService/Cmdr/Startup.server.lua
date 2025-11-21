local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Cmdr = require(ReplicatedStorage.Cmdr)

local commands = script.Parent.Commands
local types = script.Parent.Types

Cmdr:RegisterDefaultCommands()
Cmdr:RegisterCommandsIn(commands)
Cmdr:RegisterTypesIn(types)
Cmdr:RegisterHooksIn(script.Parent.Hooks)