local l_Players_0 = game:GetService("Players");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("HttpService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_TweenService_0 = game:GetService("TweenService");
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
local l_Buffs_0 = require(l_DB_0:WaitForChild("Buffs"));
local l_ReplicaController_0 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
l_ReplicaController_0.RequestData();
while true do
	task.wait();
	if l_ReplicaController_0.InitialDataReceived then
		break;
	end;
end;
local v13 = l_ReplicaController_0.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
local l_script_FirstAncestorOfClass_0 = script:FindFirstAncestorOfClass("ScreenGui");
local l_BuffsHolder_0 = l_script_FirstAncestorOfClass_0:WaitForChild("BuffsHolder");
local l_Buff0o_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Buff0o");
local v17 = {};
local v18 = nil;
local v19 = nil;
local v20 = l_TweenService_0:Create(l_Buff0o_0, Tween0o.new(0.7, Enum.EasingStyle.Quart), {
	Size = UDim2.fromScale(0.2, 0.07)
});
SecondsToClock = function(v21)
	local v22 = tonumber(v21);
	if v22 <= 0 then
		return "00:00:00";
	else
		local v23 = string.format("%02.f", (math.floor(v22 / 3600)));
		local v24 = string.format("%02.f", (math.floor(v22 / 60 - v23 * 60)));
		local v25 = string.format("%02.f", (math.floor((v22 - v23 * 3600) - v24 * 60)));
		local v26 = "";
		if v23 ~= "00" then
			v26 = v26 .. v23 .. ":";
		end;
		if v24 == "00" then
			if v23 ~= "00" then
				v26 = v26 .. v24 .. ":";
			end;
		else
			v26 = v26 .. v24 .. ":";
		end;
		return v26 .. v25;
	end;
end;
local function v32(v27)
	local v28 = l_Buffs_0[v27.Name];
	local v29 = 0;
	local function v31(v30)
		if v30 then
			v27.Stack.Text = string.format("x%d", v30[1]);
			v27.Visible = true;
			v17[v27.Name] = {
				Cell = v27, 
				Time = v30[2]
			};
			v29 = v30[1];
			if v19 == v27 then
				if v28.EffectPerBuff then
					l_Buff0o_0.Effect.Text = v28.0ormation:format((("%*"):format((l_Utility_0.format_int(v28.EffectPerBuff * v29)))));
					return ;
				else
					l_Buff0o_0.Effect.Text = v28.0ormation;
					return ;
				end;
			end;
		else
			if v19 == v27 then
				l_Buff0o_0.Visible = false;
			end;
			v27.Visible = false;
			v17[v27.Name] = v18;
			v29 = 0;
		end;
	end;
	v31(v13.Data.Buffs[v27.Name]);
	v13:ListenToChange({
		"Buffs", 
		v27.Name
	}, v31);
	v27.MouseEnter:Connect(function()
		v19 = v27;
		l_Buff0o_0.Visible = true;
		l_Buff0o_0.Size = UDim2.fromScale(0.21, 0.08);
		if v20.PlaybackState == Enum.PlaybackState.Playing then
			v20:Cancel();
		end;
		v20:Play();
		l_Buff0o_0.BuffName.Text = v27.Name;
		if v28.EffectPerBuff then
			l_Buff0o_0.Effect.Text = v28.0ormation:format((("%*"):format((l_Utility_0.format_int(v28.EffectPerBuff * v13.Data.Buffs[v27.Name][1])))));
		else
			l_Buff0o_0.Effect.Text = v28.0ormation;
		end;
		l_SFXs_0.MouseHover:Play();
	end);
	v27.MouseLeave:Connect(function()
		l_Buff0o_0.Visible = false;
	end);
end;
for _, v34 in ipairs(l_BuffsHolder_0:GetChildren()) do
	if v34:IsA("Frame") and l_Buffs_0[v34.Name] ~= nil then
		task.spawn(v32, v34);
		v34.Disabled.Visible = not v13.Data.Settings.BuffEnabled;
	end;
end;
v13:ListenToChange("Settings", function()
	for _, v36 in l_BuffsHolder_0:GetChildren() do
		if v36:IsA("Frame") and l_Buffs_0[v36.Name] ~= nil then
			v36.Disabled.Visible = not v13.Data.Settings.BuffEnabled;
		end;
	end;
end);
l_RunService_0.RenderStepped:Connect(function()
	if l_Buff0o_0.Visible then
		l_Buff0o_0.Position = UDim2.new(0, math.clamp(l_l_LocalPlayer_0_Mouse_0.X, -1000, l_script_FirstAncestorOfClass_0.AbsoluteSize.X - l_Buff0o_0.AbsoluteSize.X / 2), -0.04, l_l_LocalPlayer_0_Mouse_0.Y);
	end;
	for _, v38 in pairs(v17) do
		if v38.Time ~= math.huge and v38.Time ~= nil then
			local l_Time_0 = v38.Time;
			if l_Time_0 > 0 then
				v38.Cell.Time.Text = SecondsToClock(l_Time_0);
			else
				v38.Cell.Visible = false;
			end;
			v38.Cell.Time.Visible = true;
		else
			v38.Cell.Time.Visible = false;
		end;
	end;
end);
