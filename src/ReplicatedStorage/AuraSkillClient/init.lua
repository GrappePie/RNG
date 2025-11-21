local l_Players_0 = game:GetService("Players");
local l_RunService_0 = game:GetService("RunService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local v3 = l_RunService_0:IsServer();
local v4 = {};
local v5 = nil;
local _ = nil;
local v7 = nil;
local l_AuraAbilityRemote_0 = l_ReplicatedStorage_0:WaitForChild("Remotes"):WaitForChild("AuraAbilityRemote");
if not v3 then
	v5 = script:WaitForChild("Skills");
	v7 = l_Players_0.LocalPlayer:GetMouse();
end;
local function v13()
	local v9 = script.Parent:WaitForChild("Skills"):Clone();
	for _, v11 in ipairs(v9:GetChildren()) do
		local l_Server_0 = v11:FindFirstChild("Server");
		if l_Server_0 then
			l_Server_0:Destroy();
		end;
		if #v11:GetChildren() <= 0 then
			v11:Destroy();
		end;
	end;
	v9.Parent = script;
	script.Parent = l_ReplicatedStorage_0;
	script.LoaderClient.Disabled = false;
	return nil;
end;
local function _(v14)
	if v5:FindFirstChild(v14) then
		return v14;
	else
		return v14:split("_")[1];
	end;
end;
v4.LoadSkillEffect = function(v16)
	if v16 then
		local v17 = if v5:FindFirstChild(v16) then v16 else v16:split("_")[1];
		if v4.AuraHasSkill(v17) then
			(require((v5:FindFirstChild(v17):FindFirstChild("Client"))).Client or function()

			end)(v7.Hit.Position);
		end;
	end;
end;
v4.AuraHasSkill = function(v18)
	local l_v5_FirstChild_0 = v5:FindFirstChild(if v5:FindFirstChild(v18) then v18 else v18:split("_")[1]);
	local v20 = l_v5_FirstChild_0 and l_v5_FirstChild_0:FindFirstChild("Client");
	return (l_v5_FirstChild_0 and v20) and v20:IsA("ModuleScript");
end;
local function v21(...)
	v4.LoadSkillEffect(...);
end;
if v3 then
	return (v13());
else
	l_AuraAbilityRemote_0.OnClientEvent:Connect(v21);
	return v4;
end;

