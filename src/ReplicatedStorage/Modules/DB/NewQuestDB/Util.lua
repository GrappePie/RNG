local v0 = game:GetService("RunService"):IsServer() and require(game:GetService("ServerStorage"):WaitForChild("ModuleScripts"):WaitForChild("DataStore"));
local function v3(v1)
	local l_Head_0 = v1:WaitForChild("Head");
	return CFrame.lookAt((l_Head_0.CFrame * CFrame.new(0, 0, -3)).Position, l_Head_0.Position);
end;
local function v8(v4)
	if type(v4) == "table" then
		local v5 = {};
		for _, v7 in v4 do
			table.insert(v5, {
				Text = v7, 
				EndDelay = 1.5
			});
		end;
		v5[#v4].EndDelay = 0.2;
		return v5;
	elseif type(v4) == "string" then
		return {
			{
				Text = v4, 
				EndDelay = 0.2
			}
		};
	else
		return ;
	end;
end;
local function v9(v10)
	local v11 = {};
	for v12, v13 in v10 do
		v11[v12] = typeof(v13) == "table" and v9(v13) or v13;
	end;
	return v11;
end;
return {
	getThumbnailCFrame = v3, 
	contexts = v8, 
	DefaultChoices = {
		{
			ButtonText = "[Accept]", 
			ButtonColor3 = Color3.fromRGB(0, 149, 0), 
			Result = "Accept"
		}, 
		{
			ButtonText = "[Decline]", 
			ButtonColor3 = Color3.fromRGB(165, 0, 0), 
			Result = "Quit"
		}
	}, 
	DataStore = v0, 
	cloneTable = v9
};
