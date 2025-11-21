local l_Players_0 = game:GetService("Players");
local _ = game:GetService("StarterGui");
local l_TweenService_0 = game:GetService("TweenService");
local l_ContentProvider_0 = game:GetService("ContentProvider");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local v5 = {};
local l_Dialogue_0 = l_Players_0.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface"):WaitForChild("Dialogue");
local l_Content_0 = l_Dialogue_0:WaitForChild("Content"):WaitForChild("Content");
local l_Skip_0 = l_Content_0:WaitForChild("Skip");
local l_TextHolder_0 = l_Content_0:WaitForChild("TextHolder");
local l_TextLabel_0 = l_TextHolder_0:WaitForChild("TextLabel");
local l_TextLabel_1 = l_Dialogue_0:WaitForChild("Content"):WaitForChild("NameFrame"):WaitForChild("TextLabel");
local l_Thumbnail_0 = l_Dialogue_0:WaitForChild("Thumbnail");
local l_Image_0 = l_Thumbnail_0:WaitForChild("Image");
local l_ViewportFrame_0 = l_Thumbnail_0:WaitForChild("ViewportFrame");
local l_Select_0 = l_Dialogue_0:WaitForChild("Select");
local l_UIListLayout_0 = l_Select_0:WaitForChild("UIListLayout");
local l_Template_0 = l_Select_0:WaitForChild("Template");
local l_ContextImage_0 = l_Dialogue_0:WaitForChild("ContextImage");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_DialogChat_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs"):WaitForChild("DialogChat");
local v22 = Instance.new("StringValue", script);
local _ = require(l_Modules_0:WaitForChild("ConsoleIconHandler")).ButtonGuide;
local v24 = {
	l_TweenService_0:Create(l_Dialogue_0, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		Position = UDim2.fromScale(0.5, 0.8)
	})
};
local v25 = {
	l_TweenService_0:Create(l_Dialogue_0, Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Position = UDim2.fromScale(0.5, 1.5)
	})
};
local v26 = {
	l_TweenService_0:Create(l_Dialogue_0, Tween0o.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		Position = UDim2.fromScale(0.5, 0.92)
	})
};
local v27 = nil;
local v28 = false;
local v29 = nil;
local _ = {
	Default = {
		TextSize = 0.15, 
		StokeTransparency = 1, 
		Font = Enum.Font.Arial
	}
};
v5.ChoiceSave = v22;
local function v33()
	for _, v32 in ipairs(l_Select_0:GetChildren()) do
		if v32:IsA("TextButton") and v32 ~= l_Template_0 then
			v32:Destroy();
		end;
	end;
end;
local function v36(v34)
	local l_Head_0 = v34:FindFirstChild("Head");
	return l_Head_0 and CFrame.lookAt((l_Head_0.CFrame * CFrame.new(0, 0, -3)).Position, l_Head_0.Position) or CFrame.new();
end;
local function _(v37)
	local v38 = ("rbxassetid://%*"):format(v37);
	local l_ImageLabel_0 = Instance.new("ImageLabel");
	l_ImageLabel_0.Image = v38;
	l_ImageLabel_0.BackgroundTransparency = 1;
	l_ImageLabel_0.ImageTransparency = 0;
	l_ImageLabel_0.Size = UDim2.fromScale(1, 1);
	l_ImageLabel_0.Parent = l_ContextImage_0;
	return l_ImageLabel_0;
end;
local function v50(v41)
	local v42 = {};
	for v43, v44 in ipairs(v41) do
		if v44.ImageId then
			local v45 = ("rbxassetid://%*"):format(v44.ImageId);
			local l_ImageLabel_1 = Instance.new("ImageLabel");
			l_ImageLabel_1.Image = v45;
			l_ImageLabel_1.BackgroundTransparency = 1;
			l_ImageLabel_1.ImageTransparency = 0;
			l_ImageLabel_1.Size = UDim2.fromScale(1, 1);
			l_ImageLabel_1.Parent = l_ContextImage_0;
			v42[v43] = l_ImageLabel_1;
		end;
	end;
	local v47 = os.clock();
	l_ContentProvider_0:PreloadAsync({
		table.unpack(v42)
	}, function(v48, v49)
		--print("PreloadAsync() resolved asset ID:", v48);
		--print("PreloadAsync() final AssetFetchStatus:", v49);
	end);
	--print(("Preloading complete, took %.2f seconds"):format(os.clock() - v47));
	return v42;
end;
local function _(v51, v52)
	for v53, v54 in v51 do
		if v53 == v52 then
			v54.Visible = true;
			l_ContextImage_0.Visible = true;
		else
			v54.Visible = false;
		end;
	end;
	if not v52 or not v51[v52] then
		l_ContextImage_0.Visible = false;
	end;
end;
local _ = function(v56)
	for _, v58 in v56 do
		v58:Destroy();
	end;
end;
stringEscapeRichText = function(v60)
	return (string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(v60, "&", "&amp;"), "<", "&lt;"), ">", "&gt;"), "\"", "&quot;"), "'", "&apos;"));
end;
v5.DisplayDialog = function(v61, v62, v63, v64, v65)
	if v28 and not v65 then
		return ;
	else
		v28 = true;
		l_Image_0.Visible = v61.Speaker.ImageId ~= nil;
		l_Image_0.Image = l_Image_0.Visible and ("rbxassetid://%*"):format(v61.Speaker.ImageId) or "rbxasset://textures/ui/GuiImagePlaceholder.png";
		l_TextLabel_1.Text = v61.Speaker.Name;
		l_ViewportFrame_0.Visible = not l_Image_0.Visible;
		if l_ViewportFrame_0.Visible and v61.Speaker.ViewportData then
			l_ViewportFrame_0:ClearAllChildren();
			local l_ViewportData_0 = v61.Speaker.ViewportData;
			print(l_ViewportData_0)
			local v67 = l_ViewportData_0.Model:Clone();
			local v68 = Instance.new("Camera", l_ViewportFrame_0);
			local v69 = Instance.new("WorldModel", l_ViewportFrame_0);
			if l_ViewportData_0.Model and l_ViewportData_0.Model:FindFirstChild("Head") == nil then
				for _, v71 in ipairs(v24) do
					v71:Pause();
				end;
				for _, v73 in ipairs(v26) do
					v73:Pause();
				end;
				l_ContextImage_0.Visible = false;
				if not v63 then
					for _, v75 in ipairs(v25) do
						v75:Play();
					end;
				end;
				v28 = false;
				return "Leave";
			else
				v68.CFrame = l_ViewportData_0.CameraCFrame or v36(l_ViewportData_0.Model);
				v67.Parent = v69;
				l_ViewportFrame_0.CurrentCamera = v68;
			end;
		end;
		for _, v77 in ipairs(v25) do
			v77:Pause();
		end;
		if not v62 then
			for _, v79 in ipairs(v24) do
				v79:Play();
			end;
		end;
		v33();
		l_TextLabel_0.Text = "";
		l_TextLabel_0.TextSize = math.round(l_TextHolder_0.AbsoluteSize.Y * 0.175);
		task.wait(0.5);
		local v80 = nil;
		local l_v64_0 = v64;
		local v82 = false;
		local v83 = v50(v61.Contexts);
		for v84, v85 in ipairs(v61.Contexts) do
			local v86 = nil;
			local v87 = false;
			local l_BindableEvent_0 = Instance.new("BindableEvent");
			l_TextLabel_0.Text = "";
			do
				local l_v86_0, l_v87_0 = v86, v87;
				task.defer(function()
					l_TextLabel_0.MaxVisibleGraphemes = 0;
					l_TextLabel_0.Text = v85.Text;
					l_TextLabel_0.RichText = v85.RichText or false;
					local v91 = 0;
					for v92, v93 in utf8.graphemes(l_TextLabel_0.ContentText) do
						v91 = v91 + 1;
						l_TextLabel_0.MaxVisibleGraphemes = v91;
						if not l_v87_0 then
							if l_TextLabel_0.LocalizedText:sub(v92, v93) ~= " " and l_TextLabel_0.LocalizedText:sub(v92, v93) ~= "\n" then
								l_DialogChat_0:Play();
							end;
							task.wait(0.06);
						end;
					end;
					l_TextLabel_0.MaxVisibleGraphemes = -1;
					l_BindableEvent_0:Fire();
				end);
				v80 = l_Skip_0.MouseButton1Click:Connect(function()
					if l_v86_0 and tick() - l_v86_0 < 0.2 then
						if v80 then
							--print("Disconnected");
							v80:Disconnect();
							l_v87_0 = true;
							return ;
						end;
					else
						l_v86_0 = tick();
					end;
				end);
				for v94, v95 in v83 do
					if v94 == v84 then
						v95.Visible = true;
						l_ContextImage_0.Visible = true;
					else
						v95.Visible = false;
					end;
				end;
				if not v84 or not v83[v84] then
					l_ContextImage_0.Visible = false;
				end;
				if v83[v84] and not v82 then
					v82 = true;
					local v96 = v83[v84];
					v96.ImageTransparency = 1;
					for _, v98 in ipairs(v24) do
						v98:Cancel();
					end;
					local v99 = l_TweenService_0:Create(v96, Tween0o.new(0.5), {
						ImageTransparency = 0
					});
					for _, v101 in ipairs(v26) do
						v101:Play();
					end;
					v99:Play();
				elseif not v83[v84] and v82 then
					v82 = false;
					for _, v103 in ipairs(v26) do
						v103:Cancel();
					end;
					for _, v105 in ipairs(v24) do
						v105:Play();
					end;
				end;
				l_BindableEvent_0.Event:Wait();
				l_BindableEvent_0:Destroy();
				if not l_v87_0 and v85.EndDelay then
					if v84 == #v61.Contexts then
						if v61.Choices == nil then
							task.wait(v85.EndDelay);
						end;
					else
						task.wait(v85.EndDelay);
					end;
				end;
			end;
		end;
		if v80 then
			v80:Disconnect();
			v80 = v27;
		end;
		if v61.Choices then
			local v106 = nil;
			local v107 = #v61.Choices;
			v29 = coroutine.running();
			l_UIListLayout_0.Padding = UDim.new(v107 > 1 and 0.1 / (v107 - 1) or 0, 0);
			do
				local l_v106_0 = v106;
				for v109, v110 in ipairs(v61.Choices) do
					local v111 = l_Template_0:Clone();
					v111.Text = v110.ButtonText;
					v111.BackgroundColor3 = v110.ButtonColor3 or Color3.fromRGB(25, 27, 30);
					v111.Visible = true;
					v111.LayoutOrder = v109;
					v111.Size = UDim2.fromScale(v107 > 1 and 0.9 / v107 or 1, 1);
					v111.Parent = l_Select_0;
					v111.MouseButton1Click:Once(function()
						v33();
						l_v106_0 = v110;
						task.defer(v29);
					end);
					local v112 = l_ClientBasedFunctions_0.LoadButtonEffects(v111, 1);
					v111.Destroying:Once(function()
						for _, v114 in pairs(v112) do
							v114:Disconnect();
						end;
						table.clear(v112);
					end);
				end;
				local v115, v116 = coroutine.yield();
				l_v64_0 = if not v115 then if l_v106_0.NextDialog then v5.DisplayDialog(l_v106_0.NextDialog, true, true, l_v106_0.Result, true) else l_v106_0.Result else v116;
				end;
			end;
			v22.Value = l_v64_0 or "_finished";
			for _, v118 in v83 do
				v118:Destroy();
			end;
			for _, v120 in ipairs(v24) do
				v120:Pause();
			end;
			if not v63 then
				for _, v122 in ipairs(v25) do
					v122:Play();
				end;
			end;
			v28 = false;
			return v22.Value;
		end;
	end;
	v5.CancelDialog = function()
		if v29 then
			task.defer(v29, true, "Leave");
		end;
	end;
return v5;