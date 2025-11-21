local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local _ = l_Players_0.LocalPlayer;
local l_Remotes_0 = l_ReplicatedStorage_0:WaitForChild("Remotes");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_Dialog_0 = require(l_Modules_0:WaitForChild("Dialog"));
local _ = require(l_Modules_0:WaitForChild("RemoteFunction"));
local l_DialogResult_0 = l_Remotes_0:WaitForChild("DialogResult");
l_DialogResult_0.OnClientEvent:Connect(function(v8)
	l_DialogResult_0:FireServer((l_Dialog_0.DisplayDialog(v8)));
end);
