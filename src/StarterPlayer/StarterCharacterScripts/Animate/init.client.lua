local l_Parent_0 = script.Parent;
local l_Torso_0 = l_Parent_0:WaitForChild("Torso");
local v2 = l_Torso_0:WaitForChild("Right Shoulder");
local v3 = l_Torso_0:WaitForChild("Left Shoulder");
local v4 = l_Torso_0:WaitForChild("Right Hip");
local v5 = l_Torso_0:WaitForChild("Left Hip");
local _ = l_Torso_0:WaitForChild("Neck");
local l_Humanoid_0 = l_Parent_0:WaitForChild("Humanoid");
local v8 = "Standing";
l_Humanoid_0.RootPart.CanCollide = true;
local l_status_0, l_result_0 = pcall(function()
	return UserSettings():IsUserFeatureEnabled("UserAnimateScaleRun");
end);
local v11 = l_status_0 and l_result_0;
local function _()
	if v11 then
		return l_Parent_0:GetScale();
	else
		return 1;
	end;
end;
local v13 = "";
local v14 = nil;
local v15 = nil;
local v16 = nil;
local v17 = 1;
local v18 = {};
local v19 = {
	idle = {
		{
			id = "http://www.roblox.com/asset/?id=180435571", 
			weight = 9
		}, 
		{
			id = "http://www.roblox.com/asset/?id=180435792", 
			weight = 1
		}
	}, 
	walk = {
		{
			id = "http://www.roblox.com/asset/?id=180426354", 
			weight = 10
		}
	}, 
	run = {
		{
			id = "run.xml", 
			weight = 10
		}
	}, 
	jump = {
		{
			id = "http://www.roblox.com/asset/?id=125750702", 
			weight = 10
		}
	}, 
	fall = {
		{
			id = "http://www.roblox.com/asset/?id=180436148", 
			weight = 10
		}
	}, 
	climb = {
		{
			id = "http://www.roblox.com/asset/?id=180436334", 
			weight = 10
		}
	}, 
	sit = {
		{
			id = "http://www.roblox.com/asset/?id=178130996", 
			weight = 10
		}
	}, 
	toolnone = {
		{
			id = "http://www.roblox.com/asset/?id=182393478", 
			weight = 10
		}
	}, 
	toolslash = {
		{
			id = "http://www.roblox.com/asset/?id=129967390", 
			weight = 10
		}
	}, 
	toollunge = {
		{
			id = "http://www.roblox.com/asset/?id=129967478", 
			weight = 10
		}
	}, 
	wave = {
		{
			id = "http://www.roblox.com/asset/?id=128777973", 
			weight = 10
		}
	}, 
	point = {
		{
			id = "http://www.roblox.com/asset/?id=128853357", 
			weight = 10
		}
	}, 
	dance1 = {
		{
			id = "http://www.roblox.com/asset/?id=182435998", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491037", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491065", 
			weight = 10
		}
	}, 
	dance2 = {
		{
			id = "http://www.roblox.com/asset/?id=182436842", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491248", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491277", 
			weight = 10
		}
	}, 
	dance3 = {
		{
			id = "http://www.roblox.com/asset/?id=182436935", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491368", 
			weight = 10
		}, 
		{
			id = "http://www.roblox.com/asset/?id=182491423", 
			weight = 10
		}
	}, 
	laugh = {
		{
			id = "http://www.roblox.com/asset/?id=129423131", 
			weight = 10
		}
	}, 
	cheer = {
		{
			id = "http://www.roblox.com/asset/?id=129423030", 
			weight = 10
		}
	}
};
local v20 = {
	"dance1", 
	"dance2", 
	"dance3"
};
local v21 = {};
configureAnimationSet = function(v22, v23)
	if v18[v22] ~= nil then
		for _, v25 in pairs(v18[v22].connections) do
			v25:disconnect();
		end;
	end;
	v18[v22] = {};
	v18[v22].count = 0;
	v18[v22].totalWeight = 0;
	v18[v22].connections = {};
	local l_script_FirstChild_0 = script:FindFirstChild(v22);
	if l_script_FirstChild_0 ~= nil then
		table.insert(v18[v22].connections, l_script_FirstChild_0.ChildAdded:connect(function(_)
			configureAnimationSet(v22, v23);
		end));
		table.insert(v18[v22].connections, l_script_FirstChild_0.ChildRemoved:connect(function(_)
			configureAnimationSet(v22, v23);
		end));
		local v29 = 1;
		for _, v31 in pairs(l_script_FirstChild_0:GetChildren()) do
			if v31:IsA("Animation") then
				table.insert(v18[v22].connections, v31.Changed:connect(function(_)
					configureAnimationSet(v22, v23);
				end));
				v18[v22][v29] = {};
				v18[v22][v29].anim = v31;
				local l_Weight_0 = v31:FindFirstChild("Weight");
				if l_Weight_0 == nil then
					v18[v22][v29].weight = 1;
				else
					v18[v22][v29].weight = l_Weight_0.Value;
				end;
				v18[v22].count = v18[v22].count + 1;
				v18[v22].totalWeight = v18[v22].totalWeight + v18[v22][v29].weight;
				v29 = v29 + 1;
			end;
		end;
	end;
	if v18[v22].count <= 0 then
		for v34, v35 in pairs(v23) do
			v18[v22][v34] = {};
			v18[v22][v34].anim = Instance.new("Animation");
			v18[v22][v34].anim.Name = v22;
			v18[v22][v34].anim.AnimationId = v35.id;
			v18[v22][v34].weight = v35.weight;
			v18[v22].count = v18[v22].count + 1;
			v18[v22].totalWeight = v18[v22].totalWeight + v35.weight;
		end;
	end;
end;
scriptChildModified = function(v36)
	local v37 = v19[v36.Name];
	if v37 ~= nil then
		configureAnimationSet(v36.Name, v37);
	end;
end;
script.ChildAdded:connect(scriptChildModified);
script.ChildRemoved:connect(scriptChildModified);
for _, v39 in ipairs((l_Humanoid_0:GetPlayingAnimationTracks())) do
	v39:Stop();
	v39:Destroy();
end;
for v40, v41 in pairs(v19) do
	configureAnimationSet(v40, v41);
end;
local v42 = "None";
local v43 = 0;
local v44 = 0;
stopAllAnimations = function()
	local l_v13_0 = v13;
	if v21[l_v13_0] ~= nil and v21[l_v13_0] == false then
		l_v13_0 = "idle";
	end;
	v13 = "";
	v14 = nil;
	if v16 ~= nil then
		v16:disconnect();
	end;
	if v15 ~= nil then
		v15:Stop();
		v15:Destroy();
		v15 = nil;
	end;
	return l_v13_0;
end;
setAnimationSpeed = function(v46)
	if v46 ~= v17 then
		v17 = v46;
		v15:AdjustSpeed(v17);
	end;
end;
keyFrameReachedFunc = function(v47)
	if v47 == "End" then
		local l_v13_1 = v13;
		if v21[l_v13_1] ~= nil and v21[l_v13_1] == false then
			l_v13_1 = "idle";
		end;
		local l_v17_0 = v17;
		playAnimation(l_v13_1, 0, l_Humanoid_0);
		setAnimationSpeed(l_v17_0);
	end;
end;
playAnimation = function(v50, v51, v52)
	local v53 = math.random(1, v18[v50].totalWeight);
	local _ = v53;
	local v55 = 1;
	while v18[v50][v55].weight < v53 do
		v53 = v53 - v18[v50][v55].weight;
		v55 = v55 + 1;
	end;
	local l_anim_0 = v18[v50][v55].anim;
	if l_anim_0 ~= v14 and (not v14 or l_anim_0.AnimationId ~= v14.AnimationId) then
		if v15 ~= nil then
			v15:Stop(v51);
			v15:Destroy();
		end;
		v17 = 1;
		v15 = v52:LoadAnimation(l_anim_0);
		v15.Priority = script:GetAttribute("HasAnim") and Enum.AnimationPriority.Idle or Enum.AnimationPriority.Core;
		v15:Play(v51);
		v13 = v50;
		v14 = l_anim_0;
		if v16 ~= nil then
			v16:disconnect();
		end;
		v16 = v15.KeyframeReached:connect(keyFrameReachedFunc);
	end;
end;
local v57 = "";
local v58 = nil;
local v59 = nil;
local v60 = nil;
toolKeyFrameReachedFunc = function(v61)
	if v61 == "End" then
		playToolAnimation(v57, 0, l_Humanoid_0);
	end;
end;
playToolAnimation = function(v62, v63, v64, v65)
	local v66 = math.random(1, v18[v62].totalWeight);
	local _ = v66;
	local v68 = 1;
	while v18[v62][v68].weight < v66 do
		v66 = v66 - v18[v62][v68].weight;
		v68 = v68 + 1;
	end;
	local l_anim_1 = v18[v62][v68].anim;
	if v59 ~= l_anim_1 then
		if v58 ~= nil then
			v58:Stop();
			v58:Destroy();
			v63 = 0;
		end;
		v58 = v64:LoadAnimation(l_anim_1);
		if v65 then
			v58.Priority = v65;
		end;
		if script:GetAttribute("HasAnim") or not script.Parent:GetAttribute("ToolAnim") then
			return ;
		else
			v58:Play(v63);
			v58.Priority = Enum.AnimationPriority.Action2;
			v57 = v62;
			v59 = l_anim_1;
			v60 = v58.KeyframeReached:connect(toolKeyFrameReachedFunc);
		end;
	end;
end;
stopToolAnimations = function()
	local l_v57_0 = v57;
	if v60 ~= nil then
		v60:disconnect();
	end;
	v57 = "";
	v59 = nil;
	if v58 ~= nil then
		v58:Stop();
		v58:Destroy();
		v58 = nil;
	end;
	return l_v57_0;
end;
onRunning = function(v71)
	v71 = v71 / if v11 then l_Parent_0:GetScale() else 1;
	if v71 > 0.01 then
		playAnimation("walk", 0.1, l_Humanoid_0);
		if v14 and v14.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
			setAnimationSpeed(v71 / 14.5);
		end;
		v8 = "Running";
		return ;
	else
		if v21[v13] == nil then
			playAnimation("idle", 0.1, l_Humanoid_0);
			v8 = "Standing";
		end;
		return ;
	end;
end;
onDied = function()
	v8 = "Dead";
end;
onJumping = function()
	playAnimation("jump", 0.1, l_Humanoid_0);
	v44 = 0.3;
	v8 = "Jumping";
end;
onClimbing = function(v72)
	v72 = v72 / if v11 then l_Parent_0:GetScale() else 1;
	playAnimation("climb", 0.1, l_Humanoid_0);
	setAnimationSpeed(v72 / 12);
	v8 = "Climbing";
end;
onGettingUp = function()
	v8 = "GettingUp";
end;
onFreeFall = function()
	if v44 <= 0 then
		playAnimation("fall", 0.3, l_Humanoid_0);
	end;
	v8 = "FreeFall";
end;
onFallingDown = function()
	v8 = "FallingDown";
end;
onSeated = function()
	v8 = "Seated";
end;
onPlatformStanding = function()
	v8 = "PlatformStanding";
end;
onSwimming = function(v73)
	if v73 > 0 then
		v8 = "Running";
		return ;
	else
		v8 = "Standing";
		return ;
	end;
end;
getTool = function()
	for _, v75 in ipairs(l_Parent_0:GetChildren()) do
		if v75.className == "Tool" then
			return v75;
		end;
	end;
	return nil;
end;
getToolAnim = function(v76)
	for _, v78 in ipairs(v76:GetChildren()) do
		if v78.Name == "toolanim" and v78.className == "StringValue" then
			return v78;
		end;
	end;
	return nil;
end;
animateTool = function()
	if v42 == "None" then
		playToolAnimation("toolnone", 0.1, l_Humanoid_0, Enum.AnimationPriority.Core);
		return ;
	elseif v42 == "Slash" then
		playToolAnimation("toolslash", 0, l_Humanoid_0, Enum.AnimationPriority.Core);
		return ;
	elseif v42 == "Lunge" then
		playToolAnimation("toollunge", 0, l_Humanoid_0, Enum.AnimationPriority.Core);
		return ;
	else
		return ;
	end;
end;
moveSit = function()
	v2.MaxVelocity = 0.15;
	v3.MaxVelocity = 0.15;
	v2:SetDesiredAngle(1.57);
	v3:SetDesiredAngle(-1.57);
	v4:SetDesiredAngle(1.57);
	v5:SetDesiredAngle(-1.57);
end;
local v79 = 0;
move = function(v80)
	local v81 = 1;
	local v82 = 1;
	local v83 = v80 - v79;
	v79 = v80;
	local v84 = false;
	if v44 > 0 then
		v44 = v44 - v83;
	end;
	if v8 == "FreeFall" and v44 <= 0 then
		playAnimation("fall", 0.3, l_Humanoid_0);
	elseif v8 == "Seated" then
		playAnimation("sit", 0.5, l_Humanoid_0);
		return ;
	elseif v8 == "Running" then
		playAnimation("walk", 0.1, l_Humanoid_0);
	elseif not (((v8 ~= "Dead" and v8 ~= "GettingUp") and v8 ~= "FallingDown") and v8 ~= "Seated") or v8 == "PlatformStanding" then
		stopAllAnimations();
		v81 = 0.1;
		v82 = 1;
		v84 = true;
	end;
	if v84 then
		local v85 = v81 * math.sin(v80 * v82);
		v2:SetDesiredAngle(v85 + 0);
		v3:SetDesiredAngle(v85 - 0);
		v4:SetDesiredAngle(-v85);
		v5:SetDesiredAngle(-v85);
	end;
	local v86 = getTool();
	if v86 and v86:FindFirstChild("Handle") then
		local v87 = getToolAnim(v86);
		if v87 then
			v42 = v87.Value;
			v87.Parent = nil;
			v43 = v80 + 0.3;
		end;
		if v43 < v80 then
			v43 = 0;
			v42 = "None";
		end;
		animateTool();
		return ;
	else
		stopToolAnimations();
		v42 = "None";
		v59 = nil;
		v43 = 0;
		return ;
	end;
end;
l_Humanoid_0.Died:connect(onDied);
l_Humanoid_0.Running:connect(onRunning);
l_Humanoid_0.Jumping:connect(onJumping);
l_Humanoid_0.Climbing:connect(onClimbing);
l_Humanoid_0.GettingUp:connect(onGettingUp);
l_Humanoid_0.FreeFalling:connect(onFreeFall);
l_Humanoid_0.FallingDown:connect(onFallingDown);
l_Humanoid_0.Seated:connect(onSeated);
l_Humanoid_0.PlatformStanding:connect(onPlatformStanding);
l_Humanoid_0.Swimming:connect(onSwimming);
game:GetService("Players").LocalPlayer.Chatted:connect(function(v88)
	local v89 = "";
	if v88 == "/e dance" then
		v89 = v20[math.random(1, #v20)];
	elseif string.sub(v88, 1, 3) == "/e " then
		v89 = string.sub(v88, 4);
	elseif string.sub(v88, 1, 7) == "/emote " then
		v89 = string.sub(v88, 8);
	end;
	if v8 == "Standing" and v21[v89] ~= nil then
		playAnimation(v89, 0.1, l_Humanoid_0);
	end;
end);
script:WaitForChild("PlayEmote").OnInvoke = function(v90)
	if v8 ~= "Standing" then
		return ;
	elseif v21[v90] ~= nil then
		playAnimation(v90, 0.1, l_Humanoid_0);
		return true, v15;
	else
		return false;
	end;
end;
for _, v92 in ipairs(l_Humanoid_0:GetPlayingAnimationTracks()) do
	v92:Stop();
	v92:Destroy();
end;
if l_Humanoid_0:GetState() == Enum.HumanoidStateType.Running and l_Humanoid_0.MoveDirection.Magnitude > 0 then
	playAnimation("run", 0.1, l_Humanoid_0);
	v8 = "Running";
elseif l_Humanoid_0:GetState() == Enum.HumanoidStateType.Freefall then
	playAnimation("fall", 0.1, l_Humanoid_0);
	v8 = "Falling";
else
	playAnimation("idle", 0.1, l_Humanoid_0);
	v8 = "Standing";
end;
script.Parent:GetAttributeChangedSignal("ToolAnim"):Connect(function()
	if not script.Parent:GetAttribute("ToolAnim") and v58 then
		v58:Stop();
		v58:Destroy();
	end;
end);
while l_Parent_0.Parent ~= nil do
	local _, v94 = wait(0.1);
	move(v94);
end;
