-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_TweenService_0 = game:GetService("TweenService");
local l_UserInputService_0 = game:GetService("UserInputService");
local l_Modules_0 = l_ReplicatedStorage_0.Modules;
local l_Components_0 = l_Modules_0.UI.Components;
local l_Christmas_0 = l_Modules_0.Christmas;
local _ = require(l_Christmas_0.Rarity);
local v8 = require(l_Modules_0.Utility);
local _ = require(l_Modules_0.Serializer);
local v10 = require(l_Modules_0.UI.Quad);
local l_Class_0 = v10.Class;
local l_Event_0 = v10.Event;
local _ = v10.Tween;
local l_Mount_0 = v10.Mount;
local l_Store_0 = v10.Store;
local _ = v10.Style;
local v17 = l_Class_0("Frame");
local _ = l_Class_0("ScrollingFrame");
local _ = l_Class_0("ViewportFrame");
local _ = l_Class_0("TextLabel");
local _ = l_Class_0("TextButton");
local _ = l_Class_0("TextBox");
local v23 = l_Class_0("ImageLabel");
local _ = l_Class_0("ImageButton");
local _ = l_Class_0("UIAspectRatioConstraint");
local _ = l_Class_0("UIListLayout");
local _ = l_Class_0("UIGradient");
local _ = l_Class_0("UIGridLayout");
local _ = l_Class_0("UIStroke");
local _ = l_Class_0(l_Components_0.Corner);
local _ = l_Class_0(l_Components_0.Shadow);
local _ = l_ReplicatedStorage_0.Packets;
local v33 = l_Class_0(l_Modules_0:WaitForChild("UI"):WaitForChild("Components"):WaitForChild("AuraLabel"));
local _ = v33({
    Aura = "Common", 
    Size = UDim2.fromScale(0.94, 0.94), 
    AnchorPoint = Vector2.new(0.5, 0.5), 
    Position = UDim2.fromScale(0.5, 0.5)
});
local l_TextStyles_0 = script.TextStyles;
local v36 = {};
local l_PlayerGui_0 = l_Players_0.LocalPlayer:WaitForChild("PlayerGui");
local v38 = Instance.new("ScreenGui", l_PlayerGui_0);
v38.IgnoreGuiInset = true;
v38.ResetOnSpawn = false;
v38.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v38.DisplayOrder = 9999;
local v39 = nil;
local v40 = nil;
local v41 = l_Store_0.GetStore("Roulette");
v41.Text = "";
v41.Image = "";
v41.Color = ColorSequence.new(Color3.new());
v39 = v17({
    AnchorPoint = Vector2.new(0, 0), 
    Position = UDim2.fromScale(0, 0), 
    Size = UDim2.fromScale(1, 1), 
    ZIndex = 99, 
    Visible = true, 
    Active = false, 
    BackgroundTransparency = 1, 
    [l_Event_0.CreatedAsync] = function(v42) --[[ Line: 93 ]]
        -- upvalues: v39 (ref)
        v39 = v42;
    end; 
    v23("Background")({
        AnchorPoint = Vector2.new(0.5, 0.5), 
        Position = UDim2.fromScale(0.5, 0.5), 
        Size = UDim2.fromScale(1, 1), 
        BackgroundColor3 = Color3.new(0, 0, 0), 
        ImageTransparency = 1, 
        Visible = true, 
        ZIndex = 1, 
        BackgroundTransparency = 0.5, 
        [l_Event_0.CreatedAsync] = function(v43) --[[ Line: 110 ]]
            -- upvalues: v40 (ref)
            v40 = v43;
        end; 
        v17("Outcome")({
            AnchorPoint = Vector2.new(0.5, 0.5), 
            Position = UDim2.fromScale(0.5, 0.5), 
            Size = UDim2.fromScale(0.6, 0.6), 
            SizeConstraint = Enum.SizeConstraint.RelativeYY, 
            BackgroundTransparency = 1
        })
    })
});
l_Mount_0(v38, v39);
local l_Background_0 = v39.Background;
local l_Outcome_0 = l_Background_0.Outcome;
l_UserInputService_0.InputBegan:Connect(function(v46, v47) --[[ Line: 131 ]]
    -- upvalues: v38 (copy), v8 (copy), v36 (copy)
    if v47 then
        return;
    else
        if v38.Enabled and (v46.UserInputType == Enum.UserInputType.MouseButton1 or v46.UserInputType == Enum.UserInputType.Touch) then
            v8.PlaySFX("Click", "UISounds");
            v36.hide();
        end;
        return;
    end;
end);
local v48 = {};
for _, v50 in script:GetChildren() do
    if v50:IsA("Frame") then
        v50.Visible = false;
        v50.Parent = l_Outcome_0;
        v48[tonumber(v50.Name)] = require(v50.ModuleScript);
    end;
end;
local _ = Tween0o.new(0.4, Enum.EasingStyle.Quad);
v36.show = function(v52, v53, v54, v55, v56, v57) --[[ Line: 156 ]] --[[ Name: show ]]
    -- upvalues: l_Outcome_0 (copy), v38 (copy), v36 (copy), v33 (copy), v23 (copy), l_TextStyles_0 (copy), v48 (copy)
    for _, v59 in l_Outcome_0:GetChildren() do
        local l_TextLabel_0 = v59:FindFirstChildWhichIsA("TextLabel");
        if l_TextLabel_0 then
            l_TextLabel_0:Destroy();
        end;
        v59.ImageLabel.Image = "";
    end;
    local l_l_Outcome_0_FirstChild_0 = l_Outcome_0:FindFirstChild(v56);
    v38:SetAttribute("LastEnabled", time());
    task.delay(3, function() --[[ Line: 169 ]]
        -- upvalues: v38 (ref), l_l_Outcome_0_FirstChild_0 (copy), v36 (ref)
        if v38:GetAttribute("LastEnabled") + 3 <= time() then
            l_l_Outcome_0_FirstChild_0.Visible = false;
            v36.hide();
        end;
    end);
    v38.Enabled = true;
    local v62 = nil;
    v62 = if v57 then v33({
        Aura = v52, 
        Size = UDim2.fromScale(1, 0.3), 
        AnchorPoint = Vector2.new(0.5, 1), 
        Position = UDim2.fromScale(0.5, 1); 
        v23("Shadow")({
            Image = "rbxassetid://18243588527", 
            ImageColor3 = Color3.new(0, 0, 0), 
            ImageTransparency = 0.4, 
            BackgroundTransparency = 1, 
            Size = UDim2.fromScale(1, 1), 
            ZIndex = 0
        })
    }) else l_TextStyles_0:FindFirstChild(v56):Clone();
    v62.Name = "ItemName";
    v62.Text = v52;
    v62.Parent = l_l_Outcome_0_FirstChild_0;
    local v63, v64, v65 = v53:ToHSV();
    local v66, v67, v68 = v54:ToHSV();
    l_l_Outcome_0_FirstChild_0.ImageLabel.Image = v55;
    l_l_Outcome_0_FirstChild_0.ImageLabel.UIGradient.Color = ColorSequence.new(Color3.fromHSV(v63, v64, v65 * 2.5), Color3.fromHSV(v66, v67, v68 * 2.5));
    l_l_Outcome_0_FirstChild_0.Visible = true;
    v48[v56].activate();
    script.Sound:Play();
end;
v36.hide = function() --[[ Line: 217 ]] --[[ Name: hide ]]
    -- upvalues: l_TweenService_0 (copy), l_Background_0 (copy), v38 (copy)
    coroutine.wrap(function() --[[ Line: 218 ]]
        -- upvalues: l_TweenService_0 (ref), l_Background_0 (ref), v38 (ref)
        l_TweenService_0:Create(l_Background_0, Tween0o.new(0.5), {
            BackgroundTransparency = 1
        }):Play();
        l_Background_0.Interactable = false;
        task.wait(0.5);
        v38.Enabled = false;
    end)();
end;
v36.hide();
return v36;