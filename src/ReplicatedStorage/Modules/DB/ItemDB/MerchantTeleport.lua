local l_RunService_0 = game:GetService("RunService");
local l_ModuleScripts_0 = game:GetService("ServerStorage"):WaitForChild("ModuleScripts");
local l_TeleportHandler_0 = require(l_ModuleScripts_0:WaitForChild("TeleportHandler"));
local l_Blackmarket_0 = require(l_ModuleScripts_0:WaitForChild("Blackmarket"));
return function(v4)
	if not l_RunService_0:IsServer() then
		return ;
	elseif l_Blackmarket_0:GetSpawned() then
		l_TeleportHandler_0.TeleportPlayer(v4, CFrame.new(table.unpack(l_Blackmarket_0:GetSpawned().SpawnLocation)) * CFrame.new(0, 0, -2));
		return ;
	else
		return "There's no merchant spawned.";
	end;
end;
