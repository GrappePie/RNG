-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "ReplicatedStorage"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "TextService"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = {}
v0_5_ = v0_0_.LocalPlayer
local v0_8_ = "PlayerGui"
local v0_6_ = v0_5_:WaitForChild(v0_8_)
local v0_9_ = "MainInterface"
local v0_7_ = v0_6_:WaitForChild(v0_9_)
local v0_10_ = "Modules"
v0_8_ = v0_1_:WaitForChild(v0_10_)
local v0_11_ = "Utility"
v0_9_ = v0_8_:WaitForChild(v0_11_)
v0_10_ = require
v0_11_ = v0_9_
v0_10_ = v0_10_(v0_11_)
local v0_13_ = "UI"
v0_11_ = v0_8_:WaitForChild(v0_13_)
local v0_14_ = "Quad"
local v0_12_ = v0_11_:WaitForChild(v0_14_)
local v0_15_ = "Components"
v0_13_ = v0_11_:WaitForChild(v0_15_)
v0_14_ = require
local v0_17_ = "Notification"
v0_14_ = v0_14_(v0_11_:WaitForChild(v0_17_))
v0_17_ = "Storage"
v0_15_ = v0_1_:WaitForChild(v0_17_)
local v0_16_ = require
local v0_19_ = "ItemDB"
v0_16_ = v0_16_(v0_15_:WaitForChild(v0_19_))
v0_17_ = require
local v0_20_ = "PreviewModels"
v0_17_ = v0_17_(v0_15_:WaitForChild(v0_20_))
v0_20_ = "Packets"
local v0_18_ = v0_1_:WaitForChild(v0_20_)
v0_19_ = require
local v0_22_ = "Inventory"
v0_19_ = v0_19_(v0_18_:WaitForChild(v0_22_))
v0_20_ = require
local v0_21_ = v0_12_
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_20_.Class
v0_22_ = v0_20_.Event
local v0_23_ = v0_20_.Tween
local v0_24_ = v0_20_.Mount
local v0_25_ = v0_20_.Store
local v0_26_ = v0_20_.Style
local v0_27_ = v0_21_
local v0_28_ = "Frame"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_21_
local v0_29_ = "ScrollingFrame"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_21_
local v0_30_ = "ViewportFrame"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_21_
local v0_31_ = "TextLabel"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_21_
local v0_32_ = "TextButton"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_21_
local v0_33_ = "TextBox"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_21_
local v0_34_ = "ImageLabel"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_21_
local v0_35_ = "ImageButton"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_21_
local v0_36_ = "UIAspectRatioConstraint"
v0_35_ = v0_35_(v0_36_)
v0_36_ = v0_21_
local v0_37_ = "UIListLayout"
v0_36_ = v0_36_(v0_37_)
v0_37_ = v0_21_
local v0_38_ = "UIGridLayout"
v0_37_ = v0_37_(v0_38_)
v0_38_ = v0_21_
local v0_39_ = "UIStroke"
v0_38_ = v0_38_(v0_39_)
v0_39_ = v0_21_
local v0_42_ = "Corner"
v0_39_ = v0_39_(v0_13_:WaitForChild(v0_42_))
local v0_40_ = v0_21_
local v0_43_ = "Shadow"
v0_40_ = v0_40_(v0_13_:WaitForChild(v0_43_))
local v0_41_ = v0_21_
local v0_44_ = "SidebarButton"
v0_41_ = v0_41_(v0_13_:WaitForChild(v0_44_))
v0_42_ = v0_21_
v0_43_ = script
local v0_45_ = "Item"
v0_42_ = v0_42_(v0_43_:WaitForChild(v0_45_))
v0_44_ = v0_41_
v0_45_ = {}
local v0_46_ = "Inventory"
v0_45_.UsageText = v0_46_
v0_46_ = "rbxassetid://6035056487"
v0_45_.Icon = v0_46_
v0_46_ = 3
v0_45_.LayoutOrder = v0_46_
v0_44_ = v0_44_(v0_45_)
v0_43_ = v0_44_.__object
v0_44_ = v0_25_.GetStore
v0_45_ = "ItemMountStore"
v0_44_ = v0_44_(v0_45_)
v0_45_ = v0_25_.GetStore
v0_46_ = "InventoryStore"
v0_45_ = v0_45_(v0_46_)
local v0_47_ = v0_10_.Replica
v0_46_ = v0_47_.WaitForReplica
v0_47_ = v0_5_
v0_46_ = v0_46_(v0_47_)
v0_47_ = {}
local v0_48_ = nil
local v0_49_ = nil
local v0_50_ = "Gears"
local v0_51_ = ""
local v0_52_ = {}
local v0_53_ = nil
v0_52_.Item = v0_53_
v0_53_ = nil
v0_52_.Connection = v0_53_
v0_53_ = {}
local v0_54_ = true
v0_53_.RightGear = v0_54_
v0_54_ = true
v0_53_.LeftGear = v0_54_
v0_54_ = true
v0_53_.UseItem = v0_54_
v0_54_ = {}
local v0_55_ = nil
v0_54_.RightGear = v0_55_
v0_55_ = nil
v0_54_.LeftGear = v0_55_
v0_55_ = nil
v0_54_.UseItem = v0_55_
v0_55_ = nil
local v0_56_ = nil
local v0_57_ = nil
local v0_58_ = nil
local v0_59_ = nil
local v0_62_ = "Assets"
local v0_60_ = v0_1_:WaitForChild(v0_62_)
v0_62_ = "InventoryDummy"
v0_60_ = v0_60_:WaitForChild(v0_62_)
local v0_61_ = function(a1)
    local v1_1_ = v0_42_
    local v1_2_ = a1
    return v1_1_(v1_2_)
end
v0_62_ = function(a1)
    local v2_1_ = v0_50_
    if v2_1_ == "Gears" then
        v2_1_ = v0_16_
        local v2_3_ = a1
        return v2_1_:IsGear(v2_3_)
    end
    v2_1_ = v0_50_
    if v2_1_ == "Items" then
        local v2_2_ = v0_16_
        local v2_4_ = a1
        v2_2_ = v2_2_:IsGear(v2_4_)
        v2_1_ = not v2_2_
        return v2_1_
    end
    v2_1_ = false
    return v2_1_
end
local v0_63_ = function()
    local v3_1_ = v0_25_
    local v3_0_ = v3_1_.GetObjects
    v3_1_ = "Item\n_"
    v3_0_ = v3_0_(v3_1_)
    local v3_3_ = function(a1, a2)
        local v4_2_ = a1.Name
        local v4_4_ = "^Item\n([%w%s%p]+)"
        v4_2_ = v4_2_:match(v4_4_)
        local v4_5_ = "%s"
        local v4_6_ = ""
        local v4_3_ = v4_2_:gsub(v4_5_, v4_6_)
        v4_3_ = v4_3_:lower()
        v4_5_ = v0_51_
        local v4_7_ = "%s"
        local v4_8_ = ""
        v4_5_ = v4_5_:gsub(v4_7_, v4_8_)
        v4_3_ = v4_3_:find(v4_5_:lower())
        if v4_3_ then
            v4_4_ = v0_50_
            if v4_4_ == "Gears" then
                v4_3_ = v0_16_
                v4_5_ = v4_2_
                v4_3_ = v4_3_:IsGear(v4_5_)
            else
                v4_4_ = v0_50_
                if v4_4_ == "Items" then
                    v4_4_ = v0_16_
                    v4_6_ = v4_2_
                    v4_4_ = v4_4_:IsGear(v4_6_)
                    v4_3_ = not v4_4_
                else
                    v4_3_ = false
                end
            end
            a1.Visible = v4_3_
            return
        end
        v4_3_ = false
        a1.Visible = v4_3_
    end
    v3_0_:Each(v3_3_)
end
local v0_64_ = function()
    local v5_1_ = v0_25_
    local v5_0_ = v5_1_.GetObject
    v5_1_ = "UseAmountDisabled"
    v5_0_ = v5_0_(v5_1_)
    local v5_2_ = v0_25_
    v5_1_ = v5_2_.GetObject
    v5_2_ = "UseButtonDisabled"
    v5_1_ = v5_1_(v5_2_)
    v5_2_ = true
    v5_0_.Visible = v5_2_
    v5_2_ = true
    v5_1_.Visible = v5_2_
    v5_2_ = v0_59_
    local v5_3_ = false
    v5_2_.Interactable = v5_3_
end
local v0_65_ = function()
    local v6_1_ = v0_25_
    local v6_0_ = v6_1_.GetObject
    v6_1_ = "UseAmountDisabled"
    v6_0_ = v6_0_(v6_1_)
    local v6_2_ = v0_25_
    v6_1_ = v6_2_.GetObject
    v6_2_ = "UseButtonDisabled"
    v6_1_ = v6_1_(v6_2_)
    v6_2_ = false
    v6_0_.Visible = v6_2_
    v6_2_ = false
    v6_1_.Visible = v6_2_
    v6_2_ = v0_59_
    local v6_3_ = true
    v6_2_.Interactable = v6_3_
end
local v0_66_ = function()
    local v7_0_ = nil
    v0_48_ = v7_0_
    v7_0_ = nil
    v0_49_ = nil
    local v7_1_ = v0_25_
    v7_0_ = v7_1_.GetObject
    v7_1_ = "DescriptionTextLabel"
    v7_0_ = v7_0_(v7_1_)
    v7_1_ = "Empty."
    v7_0_.Text = v7_1_
    local v7_2_ = v0_52_
    v7_1_ = v7_2_.Item
    if v7_1_ then
        v7_2_ = v0_52_
        v7_1_ = v7_2_.Connection
        v7_1_:Disconnect()
        v7_1_ = v0_52_
        v7_2_ = nil
        v7_1_.Connection = v7_2_
        v7_1_ = v0_52_
        v7_2_ = nil
        v7_1_.Item = v7_2_
        v7_1_ = v0_55_
        local v7_3_ = "Model"
        v7_1_ = v7_1_:FindFirstChild(v7_3_)
        if v7_1_ then
            v7_1_ = v0_55_
            v7_3_ = "Model"
            v7_1_ = v7_1_:FindFirstChild(v7_3_)
            v7_1_:Destroy()
        end
    end
    v7_2_ = v0_25_
    v7_1_ = v7_2_.GetObject
    v7_2_ = "UseAmountDisabled"
    v7_1_ = v7_1_(v7_2_)
    local v7_3_ = v0_25_
    v7_2_ = v7_3_.GetObject
    v7_3_ = "UseButtonDisabled"
    v7_2_ = v7_2_(v7_3_)
    v7_3_ = true
    v7_1_.Visible = v7_3_
    v7_3_ = true
    v7_2_.Visible = v7_3_
    v7_3_ = v0_59_
    local v7_4_ = false
    v7_3_.Interactable = v7_4_
end
local v0_67_ = v0_27_
local v0_68_ = "Inventory"
v0_67_ = v0_67_(v0_68_)
v0_68_ = table.create(5)
local new = Vector2.new
local v0_75_ = 0.500000
local v0_76_ = 0.500000
local v0_74_ = new(v0_75_, v0_76_)
v0_68_.AnchorPoint = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.500000
v0_76_ = 0.500000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_68_.Position = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.500000
v0_76_ = 0.550000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_68_.Size = v0_74_
local new = Color3.new
v0_74_ = new()
v0_68_.BackgroundColor3 = v0_74_
v0_74_ = 0.400000
v0_68_.BackgroundTransparency = v0_74_
v0_74_ = false
v0_68_.Visible = v0_74_
local v0_69_ = v0_30_
local v0_70_ = "Title"
v0_69_ = v0_69_(v0_70_)
v0_70_ = table.create(4)
local fromScale = UDim2.fromScale
v0_76_ = 1
local v0_77_ = 0.080000
v0_75_ = fromScale(v0_76_, v0_77_)
v0_70_.Size = v0_75_
local new = Color3.new
v0_75_ = new()
v0_70_.BackgroundColor3 = v0_75_
v0_75_ = 0.650000
v0_70_.BackgroundTransparency = v0_75_
v0_75_ = "Inventory"
v0_70_.Text = v0_75_
v0_75_ = true
v0_70_.TextScaled = v0_75_
local new = Color3.new
v0_76_ = 1
v0_77_ = 1
local v0_78_ = 1
v0_75_ = new(v0_76_, v0_77_, v0_78_)
v0_70_.TextColor3 = v0_75_
local new = Font.new
v0_76_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_75_ = new(v0_76_, Bold)
v0_70_.FontFace = v0_75_
local v0_71_ = v0_31_
local v0_72_ = "Close"
v0_71_ = v0_71_(v0_72_)
v0_72_ = {}
local fromScale = UDim2.fromScale
v0_74_ = 0.950000
v0_75_ = 0
local v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Position = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 1
v0_75_ = 1
v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Size = v0_73_
v0_73_ = 1
v0_72_.BackgroundTransparency = v0_73_
v0_73_ = "X"
v0_72_.Text = v0_73_
v0_73_ = true
v0_72_.TextScaled = v0_73_
local new = Color3.new
v0_74_ = 1
v0_75_ = 1
v0_76_ = 1
v0_73_ = new(v0_74_, v0_75_, v0_76_)
v0_72_.TextColor3 = v0_73_
local new = Font.new
v0_74_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold_0 = Enum.FontWeight.Bold
v0_73_ = new(v0_74_, Bold_0)
v0_72_.FontFace = v0_73_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_72_.SizeConstraint = RelativeYY
v0_73_ = v0_22_
v0_74_ = "MouseButton1Click"
v0_73_ = v0_73_(v0_74_)
v0_74_ = function(a1)
    local v8_2_ = v0_10_
    local v8_1_ = v8_2_.PlaySFX
    v8_2_ = "Click"
    local v8_3_ = "UISounds"
    v8_1_(v8_2_, v8_3_)
    v8_2_ = a1.Parent
    v8_1_ = v8_2_.Parent
    v8_2_ = false
    v8_1_.Visible = v8_2_
end
v0_72_[v0_73_] = v0_74_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_38_
v0_73_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_73_.ApplyStrokeMode = Border
local new = Color3.new
v0_75_ = 1
v0_76_ = 1
v0_77_ = 1
v0_74_ = new(v0_75_, v0_76_, v0_77_)
v0_73_.Color = v0_74_
v0_74_ = 0.500000
v0_73_.Transparency = v0_74_
v0_74_ = 1.500000
v0_73_.Thickness = v0_74_
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_39_
v0_74_ = {}
v0_75_ = 0.300000
v0_74_.Size = v0_75_
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_40_
v0_75_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_70_ = {v0_71_, v0_74_(v0_75_)}
v0_69_ = v0_69_(v0_70_)
v0_70_ = v0_27_
v0_71_ = "Index"
v0_70_ = v0_70_(v0_71_)
v0_71_ = table.create(3)
local fromScale = UDim2.fromScale
v0_76_ = 0.005000
v0_77_ = 0.090000
v0_75_ = fromScale(v0_76_, v0_77_)
v0_71_.Position = v0_75_
local fromScale = UDim2.fromScale
v0_76_ = 0.290000
v0_77_ = 0.900000
v0_75_ = fromScale(v0_76_, v0_77_)
v0_71_.Size = v0_75_
v0_75_ = 1
v0_71_.BackgroundTransparency = v0_75_
v0_72_ = v0_27_
v0_73_ = "GearIndex"
v0_72_ = v0_72_(v0_73_)
v0_73_ = table.create(4)
local fromScale = UDim2.fromScale
local v0_79_ = 1
local v0_80_ = 0.585000
v0_78_ = fromScale(v0_79_, v0_80_)
v0_73_.Size = v0_78_
local new = Color3.new
v0_78_ = new()
v0_73_.BackgroundColor3 = v0_78_
v0_78_ = 0.650000
v0_73_.BackgroundTransparency = v0_78_
v0_74_ = v0_29_
v0_75_ = "Character"
v0_74_ = v0_74_(v0_75_)
v0_75_ = table.create(2)
local new = Vector2.new
v0_79_ = 0.500000
v0_80_ = 0.500000
v0_78_ = new(v0_79_, v0_80_)
v0_75_.AnchorPoint = v0_78_
local fromScale = UDim2.fromScale
v0_79_ = 0.500000
v0_80_ = 0.500000
v0_78_ = fromScale(v0_79_, v0_80_)
v0_75_.Position = v0_78_
local fromScale = UDim2.fromScale
v0_79_ = 0.950000
v0_80_ = 0.950000
v0_78_ = fromScale(v0_79_, v0_80_)
v0_75_.Size = v0_78_
v0_78_ = 1
v0_75_.BackgroundTransparency = v0_78_
v0_76_ = v0_31_
v0_77_ = "LeftGearButton"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(6)
local new = Vector2.new
local v0_85_ = 0.500000
local v0_86_ = 0.500000
local v0_84_ = new(v0_85_, v0_86_)
v0_77_.AnchorPoint = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.800000
v0_86_ = 0.650000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_77_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.250000
v0_86_ = 0.250000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_77_.Size = v0_84_
local new = Color3.new
v0_84_ = new()
v0_77_.BackgroundColor3 = v0_84_
v0_84_ = 0.650000
v0_77_.BackgroundTransparency = v0_84_
local RelativeXX = Enum.SizeConstraint.RelativeXX
v0_77_.SizeConstraint = RelativeXX
v0_84_ = ""
v0_77_.Text = v0_84_
v0_78_ = v0_30_
v0_79_ = "GearType"
v0_78_ = v0_78_(v0_79_)
v0_79_ = {}
local new = Vector2.new
local v0_81_ = 0.500000
local v0_82_ = 0.500000
v0_80_ = new(v0_81_, v0_82_)
v0_79_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.500000
v0_82_ = 0.500000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.900000
v0_82_ = 0.900000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Size = v0_80_
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = "L"
v0_79_.Text = v0_80_
v0_80_ = true
v0_79_.TextScaled = v0_80_
local fromRGB = Color3.fromRGB
v0_81_ = 99
v0_82_ = 99
local v0_83_ = 99
v0_80_ = fromRGB(v0_81_, v0_82_, v0_83_)
v0_79_.TextColor3 = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_80_ = new(v0_81_, Bold)
v0_79_.FontFace = v0_80_
local Center = Enum.TextXAlignment.Center
v0_79_.TextXAlignment = Center
local Center_0 = Enum.TextYAlignment.Center
v0_79_.TextYAlignment = Center_0
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_29_
v0_80_ = "LeftGearButtonViewport"
v0_79_ = v0_79_(v0_80_)
v0_80_ = {}
local fromScale = UDim2.fromScale
v0_82_ = 1
v0_83_ = 1
v0_81_ = fromScale(v0_82_, v0_83_)
v0_80_.Size = v0_81_
v0_81_ = 1
v0_80_.BackgroundTransparency = v0_81_
v0_81_ = v0_22_.CreatedAsync
v0_82_ = function(a1)
    local new = Instance.new
    local v9_2_ = "Camera"
    local v9_1_ = new(v9_2_)
    v9_1_.Parent = a1
    a1.CurrentCamera = v9_1_
end
v0_80_[v0_81_] = v0_82_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_34_
v0_81_ = "LeftGearVisible"
v0_80_ = v0_80_(v0_81_)
v0_81_ = table.create(3)
local new = Vector2.new
v0_86_ = 0.500000
local v0_87_ = 0
v0_85_ = new(v0_86_, v0_87_)
v0_81_.AnchorPoint = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.500000
v0_87_ = 1.200000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_81_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 1
v0_87_ = 0.200000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_81_.Size = v0_85_
local new = Color3.new
v0_85_ = new()
v0_81_.BackgroundColor3 = v0_85_
v0_85_ = 0.650000
v0_81_.BackgroundTransparency = v0_85_
v0_85_ = "rbxassetid://6031075931"
v0_81_.Image = v0_85_
local fromRGB = Color3.fromRGB
v0_86_ = 99
v0_87_ = 99
local v0_88_ = 99
v0_85_ = fromRGB(v0_86_, v0_87_, v0_88_)
v0_81_.ImageColor3 = v0_85_
local Fit = Enum.ScaleType.Fit
v0_81_.ScaleType = Fit
v0_82_ = v0_38_
v0_83_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_83_.ApplyStrokeMode = Border
local new = Color3.new
v0_85_ = 1
v0_86_ = 1
v0_87_ = 1
v0_84_ = new(v0_85_, v0_86_, v0_87_)
v0_83_.Color = v0_84_
v0_84_ = 0.500000
v0_83_.Transparency = v0_84_
v0_84_ = 1.500000
v0_83_.Thickness = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_39_
v0_84_ = {}
v0_85_ = 0.300000
v0_84_.Size = v0_85_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_40_
v0_85_ = {}
v0_84_ = v0_84_(v0_85_)
v0_81_[1] = v0_82_
v0_81_[2] = v0_83_
v0_81_[3] = v0_84_
v0_85_ = v0_22_.CreatedAsync
v0_86_ = function(a1)
    local v10_1_ = v0_5_
    local v10_3_ = "Loaded"
    v10_1_ = v10_1_:GetAttribute(v10_3_)
    if not v10_1_ then
        v10_1_ = v0_5_
        v10_3_ = "Loaded"
        v10_1_ = v10_1_:GetAttributeChangedSignal(v10_3_)
        v10_1_:Wait()
    end
    v10_1_ = v0_5_
    v10_3_ = "HasInvisible_Gear"
    v10_1_ = v10_1_:GetAttribute(v10_3_)
    a1.Visible = v10_1_
    v10_3_ = v0_46_
    local v10_2_ = v10_3_.Data
    v10_1_ = v10_2_.LeftGearVisible
    if v10_1_ then
        v10_1_ = "rbxassetid://6031075931"
        a1.Image = v10_1_
    else
        v10_1_ = "rbxassetid://6031075929"
        a1.Image = v10_1_
    end
    v10_1_ = v0_5_
    v10_3_ = "HasInvisible_Gear"
    v10_1_ = v10_1_:GetAttributeChangedSignal(v10_3_)
    v10_3_ = function()
        local v11_0_ = a1
        local v11_1_ = true
        v11_0_.Visible = v11_1_
    end
    v10_1_:Once(v10_3_)
    v0_56_ = v10_2_
end
v0_81_[v0_85_] = v0_86_
v0_85_ = v0_22_
v0_86_ = "MouseButton1Click"
v0_85_ = v0_85_(v0_86_)
v0_86_ = function(a1)
    local v12_2_ = v0_10_
    local v12_1_ = v12_2_.PlaySFX
    v12_2_ = "Click"
    local v12_3_ = "UISounds"
    v12_1_(v12_2_, v12_3_)
    v12_2_ = v0_4_
    v12_1_ = v12_2_.SendInvisibleGearRequest
    v12_2_ = "Left"
    v12_1_ = v12_1_(v12_2_)
    if v12_1_ then
        v12_2_ = "rbxassetid://6031075931"
        a1.Image = v12_2_
        return
    end
    v12_2_ = "rbxassetid://6031075929"
    a1.Image = v12_2_
end
v0_81_[v0_85_] = v0_86_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_38_
v0_82_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_82_.ApplyStrokeMode = Border
local new = Color3.new
v0_84_ = 1
v0_85_ = 1
v0_86_ = 1
v0_83_ = new(v0_84_, v0_85_, v0_86_)
v0_82_.Color = v0_83_
v0_83_ = 0.500000
v0_82_.Transparency = v0_83_
v0_83_ = 1.500000
v0_82_.Thickness = v0_83_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_39_
v0_83_ = {}
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_40_
v0_84_ = {}
v0_83_ = v0_83_(v0_84_)
v0_77_[1] = v0_78_
v0_77_[2] = v0_79_
v0_77_[3] = v0_80_
v0_77_[4] = v0_81_
v0_77_[5] = v0_82_
v0_77_[6] = v0_83_
v0_84_ = v0_22_
v0_85_ = "MouseButton1Click"
v0_84_ = v0_84_(v0_85_)
v0_85_ = function(a1)
    local v13_2_ = v0_10_
    local v13_1_ = v13_2_.PlaySFX
    v13_2_ = "Click"
    local v13_3_ = "UISounds"
    v13_1_(v13_2_, v13_3_)
    v13_2_ = v0_25_
    v13_1_ = v13_2_.GetObject
    v13_2_ = "LeftGearButtonViewport"
    v13_1_ = v13_1_(v13_2_)
    local v13_4_ = v0_46_
    v13_3_ = v13_4_.Data
    v13_2_ = v13_3_.LeftGear
    if v13_2_ ~= "" then
        v13_3_ = v0_4_
        v13_2_ = v13_3_.SendGearUnequipRequest
        v13_3_ = "Left"
        v13_2_(v13_3_)
        v13_4_ = "Model"
        v13_2_ = v13_1_:FindFirstChild(v13_4_)
        if v13_2_ then
            v13_4_ = "Model"
            v13_2_ = v13_1_:FindFirstChild(v13_4_)
            v13_2_:Destroy()
            return
        end
    end
    v13_2_ = v0_48_
    if v13_2_ then
        v13_3_ = v0_53_
        v13_2_ = v13_3_.LeftGear
        if v13_2_ then
            v13_2_ = v0_49_
            if v13_2_ then
                v13_3_ = v0_49_
                v13_2_ = v13_3_.GearConfig
                if v13_2_ then
                    v13_4_ = v0_49_
                    v13_3_ = v13_4_.GearConfig
                    v13_2_ = v13_3_.GearType
                    if v13_2_ == "Left" then
                        v13_3_ = v0_4_
                        v13_2_ = v13_3_.SendGearEquipRequest
                        v13_3_ = "Left"
                        v13_4_ = v0_48_
                        v13_2_ = v13_2_(v13_3_, v13_4_)
                        if v13_2_ then
                            v13_2_ = v0_17_
                            local v13_5_ = v0_49_
                            v13_4_ = v13_5_.ModelName
                            v13_2_ = v13_2_:GetValue(v13_4_)
                            v13_2_ = v13_2_:Clone()
                            v13_3_ = v13_1_.CurrentCamera
                            local v13_6_ = "Model"
                            v13_4_ = v13_1_:FindFirstChild(v13_6_)
                            if v13_4_ then
                                v13_6_ = "Model"
                                v13_4_ = v13_1_:FindFirstChild(v13_6_)
                                v13_4_:Destroy()
                            end
                            v13_4_ = "Model"
                            v13_2_.Name = v13_4_
                            v13_2_.Parent = v13_1_
                            local new = CFrame.new
                            v13_2_:PivotTo(new())
                            v13_6_ = v13_2_:GetPivot()
                            local v13_9_ = v13_2_:GetPivot()
                            local v13_8_ = v13_9_.LookVector
                            local v13_7_ = v13_8_ * 3.000000
                            v13_5_ = v13_6_ + v13_7_
                            local Angles = CFrame.Angles
                            v13_7_ = 0
                            v13_8_ = 3.141593
                            v13_9_ = 1.570796
                            v13_6_ = Angles(v13_7_, v13_8_, v13_9_)
                            v13_4_ = v13_5_ * v13_6_
                            v13_3_.CFrame = v13_4_
                            local Angles = CFrame.Angles
                            v13_7_ = 3.141593
                            v13_8_ = -3.141593
                            v13_9_ = 1.570796
                            v13_2_:PivotTo(Angles(v13_7_, v13_8_, v13_9_))
                            return
                        end
                    end
                end
            end
        end
    end
    v13_3_ = v0_10_
    v13_2_ = v13_3_.PlaySFX
    v13_3_ = "Error"
    v13_4_ = "UISounds"
    v13_2_(v13_3_, v13_4_)
end
v0_77_[v0_84_] = v0_85_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_31_
v0_78_ = "RightGearButton"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(6)
local new = Vector2.new
v0_86_ = 0.500000
v0_87_ = 0.500000
v0_85_ = new(v0_86_, v0_87_)
v0_78_.AnchorPoint = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.200000
v0_87_ = 0.650000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_78_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.250000
v0_87_ = 0.250000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_78_.Size = v0_85_
local new = Color3.new
v0_85_ = new()
v0_78_.BackgroundColor3 = v0_85_
v0_85_ = 0.650000
v0_78_.BackgroundTransparency = v0_85_
local RelativeXX = Enum.SizeConstraint.RelativeXX
v0_78_.SizeConstraint = RelativeXX
v0_85_ = ""
v0_78_.Text = v0_85_
v0_79_ = v0_30_
v0_80_ = "GearType"
v0_79_ = v0_79_(v0_80_)
v0_80_ = {}
local new = Vector2.new
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = new(v0_82_, v0_83_)
v0_80_.AnchorPoint = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_80_.Position = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.900000
v0_83_ = 0.900000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_80_.Size = v0_81_
v0_81_ = 1
v0_80_.BackgroundTransparency = v0_81_
v0_81_ = "R"
v0_80_.Text = v0_81_
v0_81_ = true
v0_80_.TextScaled = v0_81_
local fromRGB = Color3.fromRGB
v0_82_ = 99
v0_83_ = 99
v0_84_ = 99
v0_81_ = fromRGB(v0_82_, v0_83_, v0_84_)
v0_80_.TextColor3 = v0_81_
local new = Font.new
v0_82_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_81_ = new(v0_82_, Bold)
v0_80_.FontFace = v0_81_
local Center = Enum.TextXAlignment.Center
v0_80_.TextXAlignment = Center
local Center_0 = Enum.TextYAlignment.Center
v0_80_.TextYAlignment = Center_0
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_29_
v0_81_ = "RightGearButtonViewport"
v0_80_ = v0_80_(v0_81_)
v0_81_ = {}
local fromScale = UDim2.fromScale
v0_83_ = 1
v0_84_ = 1
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.Size = v0_82_
v0_82_ = 1
v0_81_.BackgroundTransparency = v0_82_
v0_82_ = v0_22_.CreatedAsync
v0_83_ = function(a1)
    local new = Instance.new
    local v14_2_ = "Camera"
    local v14_1_ = new(v14_2_)
    v14_1_.Parent = a1
    a1.CurrentCamera = v14_1_
end
v0_81_[v0_82_] = v0_83_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_34_
v0_82_ = "RightGearVisible"
v0_81_ = v0_81_(v0_82_)
v0_82_ = table.create(3)
local new = Vector2.new
v0_87_ = 0.500000
v0_88_ = 0
v0_86_ = new(v0_87_, v0_88_)
v0_82_.AnchorPoint = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.500000
v0_88_ = 1.200000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_82_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 1
v0_88_ = 0.200000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_82_.Size = v0_86_
local new = Color3.new
v0_86_ = new()
v0_82_.BackgroundColor3 = v0_86_
v0_86_ = 0.650000
v0_82_.BackgroundTransparency = v0_86_
v0_86_ = "rbxassetid://6031075931"
v0_82_.Image = v0_86_
local fromRGB = Color3.fromRGB
v0_87_ = 99
v0_88_ = 99
local v0_89_ = 99
v0_86_ = fromRGB(v0_87_, v0_88_, v0_89_)
v0_82_.ImageColor3 = v0_86_
local Fit = Enum.ScaleType.Fit
v0_82_.ScaleType = Fit
v0_86_ = false
v0_82_.Visible = v0_86_
v0_83_ = v0_38_
v0_84_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_84_.ApplyStrokeMode = Border
local new = Color3.new
v0_86_ = 1
v0_87_ = 1
v0_88_ = 1
v0_85_ = new(v0_86_, v0_87_, v0_88_)
v0_84_.Color = v0_85_
v0_85_ = 0.500000
v0_84_.Transparency = v0_85_
v0_85_ = 1.500000
v0_84_.Thickness = v0_85_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_39_
v0_85_ = {}
v0_86_ = 0.300000
v0_85_.Size = v0_86_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_40_
v0_86_ = {}
v0_85_ = v0_85_(v0_86_)
v0_82_[1] = v0_83_
v0_82_[2] = v0_84_
v0_82_[3] = v0_85_
v0_86_ = v0_22_.CreatedAsync
v0_87_ = function(a1)
    local v15_1_ = v0_5_
    local v15_3_ = "Loaded"
    v15_1_ = v15_1_:GetAttribute(v15_3_)
    if not v15_1_ then
        v15_1_ = v0_5_
        v15_3_ = "Loaded"
        v15_1_ = v15_1_:GetAttributeChangedSignal(v15_3_)
        v15_1_:Wait()
    end
    v15_1_ = v0_5_
    v15_3_ = "HasInvisible_Gear"
    v15_1_ = v15_1_:GetAttribute(v15_3_)
    a1.Visible = v15_1_
    v15_3_ = v0_46_
    local v15_2_ = v15_3_.Data
    v15_1_ = v15_2_.RightGearVisible
    if v15_1_ then
        v15_1_ = "rbxassetid://6031075931"
        a1.Image = v15_1_
    else
        v15_1_ = "rbxassetid://6031075929"
        a1.Image = v15_1_
    end
    v15_1_ = v0_5_
    v15_3_ = "HasInvisible_Gear"
    v15_1_ = v15_1_:GetAttributeChangedSignal(v15_3_)
    v15_3_ = function()
        local v16_0_ = a1
        local v16_1_ = true
        v16_0_.Visible = v16_1_
    end
    v15_1_:Once(v15_3_)
    v0_57_ = v15_2_
end
v0_82_[v0_86_] = v0_87_
v0_86_ = v0_22_
v0_87_ = "MouseButton1Click"
v0_86_ = v0_86_(v0_87_)
v0_87_ = function(a1)
    local v17_2_ = v0_10_
    local v17_1_ = v17_2_.PlaySFX
    v17_2_ = "Click"
    local v17_3_ = "UISounds"
    v17_1_(v17_2_, v17_3_)
    v17_2_ = v0_4_
    v17_1_ = v17_2_.SendInvisibleGearRequest
    v17_2_ = "Right"
    v17_1_ = v17_1_(v17_2_)
    if v17_1_ then
        v17_2_ = "rbxassetid://6031075931"
        a1.Image = v17_2_
        return
    end
    v17_2_ = "rbxassetid://6031075929"
    a1.Image = v17_2_
end
v0_82_[v0_86_] = v0_87_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_38_
v0_83_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_83_.ApplyStrokeMode = Border
local new = Color3.new
v0_85_ = 1
v0_86_ = 1
v0_87_ = 1
v0_84_ = new(v0_85_, v0_86_, v0_87_)
v0_83_.Color = v0_84_
v0_84_ = 0.500000
v0_83_.Transparency = v0_84_
v0_84_ = 1.500000
v0_83_.Thickness = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_39_
v0_84_ = {}
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_40_
v0_85_ = {}
v0_84_ = v0_84_(v0_85_)
v0_78_[1] = v0_79_
v0_78_[2] = v0_80_
v0_78_[3] = v0_81_
v0_78_[4] = v0_82_
v0_78_[5] = v0_83_
v0_78_[6] = v0_84_
v0_85_ = v0_22_
v0_86_ = "MouseButton1Click"
v0_85_ = v0_85_(v0_86_)
v0_86_ = function(a1)
    local v18_2_ = v0_10_
    local v18_1_ = v18_2_.PlaySFX
    v18_2_ = "Click"
    local v18_3_ = "UISounds"
    v18_1_(v18_2_, v18_3_)
    v18_2_ = v0_25_
    v18_1_ = v18_2_.GetObject
    v18_2_ = "RightGearButtonViewport"
    v18_1_ = v18_1_(v18_2_)
    local v18_4_ = v0_46_
    v18_3_ = v18_4_.Data
    v18_2_ = v18_3_.RightGear
    if v18_2_ ~= "" then
        v18_3_ = v0_4_
        v18_2_ = v18_3_.SendGearUnequipRequest
        v18_3_ = "Right"
        v18_2_(v18_3_)
        v18_4_ = "Model"
        v18_2_ = v18_1_:FindFirstChild(v18_4_)
        if v18_2_ then
            v18_4_ = "Model"
            v18_2_ = v18_1_:FindFirstChild(v18_4_)
            v18_2_:Destroy()
            return
        end
    end
    v18_2_ = v0_48_
    if v18_2_ then
        v18_3_ = v0_53_
        v18_2_ = v18_3_.RightGear
        if v18_2_ then
            v18_2_ = v0_49_
            if v18_2_ then
                v18_3_ = v0_49_
                v18_2_ = v18_3_.GearConfig
                if v18_2_ then
                    v18_4_ = v0_49_
                    v18_3_ = v18_4_.GearConfig
                    v18_2_ = v18_3_.GearType
                    if v18_2_ == "Right" then
                        v18_3_ = v0_4_
                        v18_2_ = v18_3_.SendGearEquipRequest
                        v18_3_ = "Right"
                        v18_4_ = v0_48_
                        v18_2_ = v18_2_(v18_3_, v18_4_)
                        if v18_2_ then
                            v18_2_ = v0_17_
                            local v18_5_ = v0_49_
                            v18_4_ = v18_5_.ModelName
                            v18_2_ = v18_2_:GetValue(v18_4_)
                            v18_2_ = v18_2_:Clone()
                            v18_3_ = v18_1_.CurrentCamera
                            local v18_6_ = "Model"
                            v18_4_ = v18_1_:FindFirstChild(v18_6_)
                            if v18_4_ then
                                v18_6_ = "Model"
                                v18_4_ = v18_1_:FindFirstChild(v18_6_)
                                v18_4_:Destroy()
                            end
                            v18_4_ = "Model"
                            v18_2_.Name = v18_4_
                            v18_2_.Parent = v18_1_
                            local new = CFrame.new
                            v18_2_:PivotTo(new())
                            v18_6_ = v18_2_:GetPivot()
                            local v18_9_ = v18_2_:GetPivot()
                            local v18_8_ = v18_9_.LookVector
                            local v18_7_ = v18_8_ * 3.000000
                            v18_5_ = v18_6_ + v18_7_
                            local Angles = CFrame.Angles
                            v18_7_ = 0
                            v18_8_ = 3.141593
                            v18_9_ = 1.570796
                            v18_6_ = Angles(v18_7_, v18_8_, v18_9_)
                            v18_4_ = v18_5_ * v18_6_
                            v18_3_.CFrame = v18_4_
                            local Angles = CFrame.Angles
                            v18_7_ = -3.141593
                            v18_8_ = 3.141593
                            v18_9_ = 1.570796
                            v18_2_:PivotTo(Angles(v18_7_, v18_8_, v18_9_))
                            return
                        end
                    end
                end
            end
        end
    end
    v18_3_ = v0_10_
    v18_2_ = v18_3_.PlaySFX
    v18_3_ = "Error"
    v18_4_ = "UISounds"
    v18_2_(v18_3_, v18_4_)
end
v0_78_[v0_85_] = v0_86_
v0_77_ = v0_77_(v0_78_)
v0_75_[1] = v0_76_
v0_75_[2] = v0_77_
v0_78_ = v0_22_.CreatedAsync
v0_79_ = function(a1)
    local new = Instance.new
    local v19_2_ = "Camera"
    local v19_1_ = new(v19_2_)
    v19_1_.Parent = a1
    a1.CurrentCamera = v19_1_
    v19_2_ = v0_60_
    v19_2_.Parent = a1
    local v19_3_ = v0_60_
    v19_2_ = v19_3_.HumanoidRootPart
    local new = CFrame.new
    v19_2_:PivotTo(new())
    local lookAt = CFrame.lookAt
    local v19_6_ = v0_60_
    local v19_8_ = "Torso"
    v19_6_ = v19_6_:WaitForChild(v19_8_)
    local v19_5_ = v19_6_.CFrame
    local new_0 = CFrame.new
    local v19_7_ = 0
    v19_8_ = 0
    local v19_9_ = -4
    v19_6_ = new_0(v19_7_, v19_8_, v19_9_)
    local v19_4_ = v19_5_ * v19_6_
    v19_3_ = v19_4_.Position
    v19_5_ = v0_60_
    v19_7_ = "Torso"
    v19_5_ = v19_5_:WaitForChild(v19_7_)
    v19_4_ = v19_5_.Position
    v19_2_ = lookAt(v19_3_, v19_4_)
    v19_1_.CFrame = v19_2_
end
v0_75_[v0_78_] = v0_79_
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_38_
v0_76_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_76_.ApplyStrokeMode = Border
local new = Color3.new
v0_78_ = 1
v0_79_ = 1
v0_80_ = 1
v0_77_ = new(v0_78_, v0_79_, v0_80_)
v0_76_.Color = v0_77_
v0_77_ = 0.500000
v0_76_.Transparency = v0_77_
v0_77_ = 1.500000
v0_76_.Thickness = v0_77_
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_39_
v0_77_ = {}
v0_78_ = 0.050000
v0_77_.Size = v0_78_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_40_
v0_78_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_73_ = {v0_74_, v0_77_(v0_78_)}
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_27_
v0_74_ = "ItemIndex"
v0_73_ = v0_73_(v0_74_)
v0_74_ = table.create(5)
local fromScale = UDim2.fromScale
v0_81_ = 1
v0_82_ = 0.585000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_74_.Size = v0_80_
local new = Color3.new
v0_80_ = new()
v0_74_.BackgroundColor3 = v0_80_
v0_80_ = 0.650000
v0_74_.BackgroundTransparency = v0_80_
v0_80_ = false
v0_74_.Visible = v0_80_
v0_75_ = v0_29_
v0_76_ = table.create(3)
local new = Vector2.new
v0_81_ = 0.500000
v0_82_ = 0
v0_80_ = new(v0_81_, v0_82_)
v0_76_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.900000
v0_82_ = 0.750000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_76_.Size = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.500000
v0_82_ = 0.050000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_76_.Position = v0_80_
local new = Color3.new
v0_80_ = new()
v0_76_.BackgroundColor3 = v0_80_
v0_80_ = 0.650000
v0_76_.BackgroundTransparency = v0_80_
v0_77_ = v0_38_
v0_78_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_78_.ApplyStrokeMode = Border
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_78_.Color = v0_79_
v0_79_ = 0.500000
v0_78_.Transparency = v0_79_
v0_79_ = 1.500000
v0_78_.Thickness = v0_79_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_39_
v0_79_ = {}
v0_80_ = 0.050000
v0_79_.Size = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_40_
v0_80_ = {}
v0_79_ = v0_79_(v0_80_)
v0_76_[1] = v0_77_
v0_76_[2] = v0_78_
v0_76_[3] = v0_79_
v0_80_ = v0_22_.CreatedAsync
v0_81_ = function(a1)
    local new = Instance.new
    local v20_2_ = "Camera"
    local v20_1_ = new(v20_2_)
    v20_1_.Parent = a1
    a1.CurrentCamera = v20_1_
    v0_55_ = a1
end
v0_76_[v0_80_] = v0_81_
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_27_
v0_77_ = "UseHolder"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(2)
local new = Vector2.new
v0_81_ = 0.500000
v0_82_ = 0
v0_80_ = new(v0_81_, v0_82_)
v0_77_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.500000
v0_82_ = 0.860000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.800000
v0_82_ = 0.110000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Size = v0_80_
v0_80_ = 1
v0_77_.BackgroundTransparency = v0_80_
v0_78_ = v0_32_
v0_79_ = "UseAmount"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(4)
local new = Vector2.new
v0_85_ = 0
v0_86_ = 0.500000
v0_84_ = new(v0_85_, v0_86_)
v0_79_.AnchorPoint = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0
v0_86_ = 0.500000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_79_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.480000
v0_86_ = 1
v0_84_ = fromScale(v0_85_, v0_86_)
v0_79_.Size = v0_84_
local new = Color3.new
v0_84_ = new()
v0_79_.BackgroundColor3 = v0_84_
v0_84_ = 0.650000
v0_79_.BackgroundTransparency = v0_84_
v0_84_ = ""
v0_79_.PlaceholderText = v0_84_
v0_84_ = "1"
v0_79_.Text = v0_84_
v0_84_ = true
v0_79_.TextScaled = v0_84_
local new = Color3.new
v0_85_ = 1
v0_86_ = 1
v0_87_ = 1
v0_84_ = new(v0_85_, v0_86_, v0_87_)
v0_79_.TextColor3 = v0_84_
local new = Font.new
v0_85_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_84_ = new(v0_85_, Medium)
v0_79_.FontFace = v0_84_
v0_84_ = false
v0_79_.ClearTextOnFocus = v0_84_
v0_80_ = v0_27_
v0_81_ = "UseAmountDisabled"
v0_80_ = v0_80_(v0_81_)
v0_81_ = {}
local fromScale = UDim2.fromScale
v0_83_ = 1
v0_84_ = 1
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_81_.BackgroundColor3 = v0_82_
v0_82_ = 0.350000
v0_81_.BackgroundTransparency = v0_82_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_38_
v0_82_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_82_.ApplyStrokeMode = Border
local new = Color3.new
v0_84_ = 1
v0_85_ = 1
v0_86_ = 1
v0_83_ = new(v0_84_, v0_85_, v0_86_)
v0_82_.Color = v0_83_
v0_83_ = 0.500000
v0_82_.Transparency = v0_83_
v0_83_ = 1.500000
v0_82_.Thickness = v0_83_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_39_
v0_83_ = {}
v0_84_ = 0.300000
v0_83_.Size = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_40_
v0_84_ = {}
v0_83_ = v0_83_(v0_84_)
v0_79_[1] = v0_80_
v0_79_[2] = v0_81_
v0_79_[3] = v0_82_
v0_79_[4] = v0_83_
v0_84_ = v0_22_.CreatedAsync
v0_85_ = function(a1)
    v0_58_ = a1
end
v0_79_[v0_84_] = v0_85_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_31_
v0_80_ = "UseButton"
v0_79_ = v0_79_(v0_80_)
v0_80_ = table.create(4)
local new = Vector2.new
v0_86_ = 1
v0_87_ = 0.500000
v0_85_ = new(v0_86_, v0_87_)
v0_80_.AnchorPoint = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 1
v0_87_ = 0.500000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_80_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.480000
v0_87_ = 1
v0_85_ = fromScale(v0_86_, v0_87_)
v0_80_.Size = v0_85_
local new = Color3.new
v0_85_ = new()
v0_80_.BackgroundColor3 = v0_85_
v0_85_ = 0.650000
v0_80_.BackgroundTransparency = v0_85_
v0_85_ = "Use"
v0_80_.Text = v0_85_
v0_85_ = true
v0_80_.TextScaled = v0_85_
local new = Color3.new
v0_86_ = 1
v0_87_ = 1
v0_88_ = 1
v0_85_ = new(v0_86_, v0_87_, v0_88_)
v0_80_.TextColor3 = v0_85_
local new = Font.new
v0_86_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_85_ = new(v0_86_, Medium)
v0_80_.FontFace = v0_85_
v0_81_ = v0_27_
v0_82_ = "UseButtonDisabled"
v0_81_ = v0_81_(v0_82_)
v0_82_ = {}
local fromScale = UDim2.fromScale
v0_84_ = 1
v0_85_ = 1
v0_83_ = fromScale(v0_84_, v0_85_)
v0_82_.Size = v0_83_
local new = Color3.new
v0_83_ = new()
v0_82_.BackgroundColor3 = v0_83_
v0_83_ = 0.350000
v0_82_.BackgroundTransparency = v0_83_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_38_
v0_83_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_83_.ApplyStrokeMode = Border
local new = Color3.new
v0_85_ = 1
v0_86_ = 1
v0_87_ = 1
v0_84_ = new(v0_85_, v0_86_, v0_87_)
v0_83_.Color = v0_84_
v0_84_ = 0.500000
v0_83_.Transparency = v0_84_
v0_84_ = 1.500000
v0_83_.Thickness = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_39_
v0_84_ = {}
v0_85_ = 0.300000
v0_84_.Size = v0_85_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_40_
v0_85_ = {}
v0_84_ = v0_84_(v0_85_)
v0_80_[1] = v0_81_
v0_80_[2] = v0_82_
v0_80_[3] = v0_83_
v0_80_[4] = v0_84_
v0_85_ = v0_22_.CreatedAsync
v0_86_ = function(a1)
    v0_59_ = a1
end
v0_80_[v0_85_] = v0_86_
v0_85_ = v0_22_
v0_86_ = "MouseButton1Click"
v0_85_ = v0_85_(v0_86_)
v0_86_ = function(a1)
    local v23_2_ = v0_49_
    local v23_1_ = v23_2_.CanUse
    if not v23_1_ then
        v23_2_ = v0_10_
        v23_1_ = v23_2_.PlaySFX
        v23_2_ = "Error"
        local v23_3_ = "UISounds"
        v23_1_(v23_2_, v23_3_)
        return
    end
    v23_2_ = v0_10_
    v23_1_ = v23_2_.PlaySFX
    v23_2_ = "Click"
    local v23_3_ = "UISounds"
    v23_1_(v23_2_, v23_3_)
    v23_3_ = a1.Parent
    v23_2_ = v23_3_.UseAmount
    v23_1_ = v23_2_.Text
    v23_3_ = "%D"
    local v23_4_ = ""
    v23_1_ = v23_1_:gsub(v23_3_, v23_4_)
    v23_3_ = v23_1_
    v23_2_ = tonumber
    v23_2_ = v23_2_(v23_3_)
    v23_1_ = v23_2_
    v23_3_ = v0_49_
    v23_2_ = v23_3_.MaximumConsumptionAtATime
    if v23_2_ then
        v23_3_ = v0_49_
        v23_2_ = v23_3_.MaximumConsumptionAtATime
        if v23_2_ < v23_1_ then
            v23_3_ = v0_14_
            v23_2_ = v23_3_.Create
            v23_4_ = v0_49_
            v23_3_ = v23_4_.DisplayName
            if not v23_3_ then
                v23_4_ = v0_49_
                v23_3_ = v23_4_.ItemName
            end
            local v23_5_ = "You can only use %* %* at a time"
            local v23_8_ = v0_49_
            local v23_7_ = v23_8_.MaximumConsumptionAtATime
            local v23_9_ = v0_49_
            v23_8_ = v23_9_.DisplayName
            if not v23_8_ then
                v23_9_ = v0_49_
                v23_8_ = v23_9_.ItemName
            end
            v23_5_ = v23_5_:format(v23_7_, v23_8_)
            v23_4_ = v23_5_
            v23_5_ = 5
            local v23_6_ = "Warn"
            v23_2_(v23_3_, v23_4_, v23_5_, v23_6_)
            v23_3_ = v0_10_
            v23_2_ = v23_3_.PlaySFX
            v23_3_ = "Error"
            v23_4_ = "UISounds"
            v23_2_(v23_3_, v23_4_)
            v23_2_ = v0_58_
            v23_4_ = v0_49_
            v23_3_ = v23_4_.MaximumConsumptionAtATime
            v23_2_.Text = v23_3_
            return
        end
    end
    local v23_5_ = v0_46_
    v23_4_ = v23_5_.Data
    v23_3_ = v23_4_.Inventory
    v23_4_ = v0_48_
    v23_2_ = v23_3_[v23_4_]
    if v23_2_ then
        local v23_6_ = v0_46_
        v23_5_ = v23_6_.Data
        v23_4_ = v23_5_.Inventory
        v23_5_ = v0_48_
        v23_3_ = v23_4_[v23_5_]
        v23_2_ = v23_3_.Amount
        if v23_1_ <= v23_2_ then
            v23_2_ = 0
            if v23_2_ < v23_1_ then
                v23_3_ = v0_4_
                v23_2_ = v23_3_.SendItemUseRequest
                v23_3_ = v0_48_
                v23_4_ = v23_1_
                v23_2_ = v23_2_(v23_3_, v23_4_)
                if v23_2_ then
                    v23_3_ = v0_52_
                    v23_2_ = v23_3_.Item
                    if v23_2_ then
                        v23_3_ = v0_52_
                        v23_2_ = v23_3_.Item
                        v23_3_ = v0_48_
                        if v23_2_ ~= v23_3_ then
                            v23_3_ = v0_52_
                            v23_2_ = v23_3_.Connection
                            if v23_2_ then
                                v23_2_ = v0_55_
                                v23_4_ = "Model"
                                v23_2_ = v23_2_:FindFirstChild(v23_4_)
                                if v23_2_ then
                                    v23_2_ = v0_55_
                                    v23_4_ = "Model"
                                    v23_2_ = v23_2_:FindFirstChild(v23_4_)
                                    v23_2_:Destroy()
                                end
                                v23_3_ = v0_52_
                                v23_2_ = v23_3_.Connection
                                v23_2_:Disconnect()
                                v23_2_ = v0_52_
                                v23_3_ = nil
                                v23_2_.Connection = v23_3_
                                v23_2_ = v0_52_
                                v23_3_ = nil
                                v23_2_.Item = v23_3_
                                return
                            end
                        end
                    end
                end
            end
        end
    end
    v23_3_ = v0_10_
    v23_2_ = v23_3_.PlaySFX
    v23_3_ = "Error"
    v23_4_ = "UISounds"
    v23_2_(v23_3_, v23_4_)
    return
end
v0_80_[v0_85_] = v0_86_
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_79_(v0_80_)}
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_38_
v0_78_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_78_.ApplyStrokeMode = Border
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_78_.Color = v0_79_
v0_79_ = 0.500000
v0_78_.Transparency = v0_79_
v0_79_ = 1.500000
v0_78_.Thickness = v0_79_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_39_
v0_79_ = {}
v0_80_ = 0.040000
v0_79_.Size = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_40_
v0_80_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_74_ = {v0_75_, v0_79_(v0_80_)}
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_27_
v0_75_ = "DescriptionHolder"
v0_74_ = v0_74_(v0_75_)
v0_75_ = table.create(4)
local fromScale = UDim2.fromScale
v0_81_ = 0
v0_82_ = 0.600000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_75_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 1
v0_82_ = 0.400000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_75_.Size = v0_80_
local new = Color3.new
v0_80_ = new()
v0_75_.BackgroundColor3 = v0_80_
v0_80_ = 0.650000
v0_75_.BackgroundTransparency = v0_80_
v0_76_ = v0_28_
v0_77_ = "DescriptionScrollingFrame"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(1)
local new = Vector2.new
v0_80_ = 0.500000
v0_81_ = 0.500000
v0_79_ = new(v0_80_, v0_81_)
v0_77_.AnchorPoint = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.500000
v0_81_ = 0.500000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_77_.Position = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.950000
v0_81_ = 0.950000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_77_.Size = v0_79_
v0_79_ = 1
v0_77_.BackgroundTransparency = v0_79_
v0_79_ = 0
v0_77_.BorderSizePixel = v0_79_
v0_79_ = true
v0_77_.ClipsDescendants = v0_79_
local Y = Enum.AutomaticSize.Y
v0_77_.AutomaticCanvasSize = Y
local new = UDim2.new
v0_79_ = new()
v0_77_.CanvasSize = v0_79_
v0_79_ = 0
v0_77_.ScrollBarThickness = v0_79_
v0_78_ = v0_30_
v0_79_ = "DescriptionTextLabel"
v0_78_ = v0_78_(v0_79_)
v0_79_ = {}
local new = UDim2.new
v0_81_ = 1
v0_82_ = 0
v0_83_ = 0
v0_84_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_, v0_84_)
v0_79_.Size = v0_80_
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = "Empty."
v0_79_.Text = v0_80_
v0_80_ = 16
v0_79_.TextSize = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.TextColor3 = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Gotham.json"
local Bold = Enum.FontWeight.Bold
v0_80_ = new(v0_81_, Bold)
v0_79_.FontFace = v0_80_
v0_80_ = true
v0_79_.TextWrapped = v0_80_
v0_80_ = true
v0_79_.RichText = v0_80_
local Left = Enum.TextXAlignment.Left
v0_79_.TextXAlignment = Left
local Top = Enum.TextYAlignment.Top
v0_79_.TextYAlignment = Top
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_78_(v0_79_)}
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_38_
v0_78_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_78_.ApplyStrokeMode = Border
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_78_.Color = v0_79_
v0_79_ = 0.500000
v0_78_.Transparency = v0_79_
v0_79_ = 1.500000
v0_78_.Thickness = v0_79_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_39_
v0_79_ = {}
v0_80_ = 0.060000
v0_79_.Size = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_40_
v0_80_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_75_ = {v0_76_, v0_79_(v0_80_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_71_ = {v0_72_, v0_74_(v0_75_)}
v0_70_ = v0_70_(v0_71_)
v0_71_ = v0_27_
v0_72_ = "Items"
v0_71_ = v0_71_(v0_72_)
v0_72_ = table.create(4)
local new = Vector2.new
v0_78_ = 1
v0_79_ = 0
v0_77_ = new(v0_78_, v0_79_)
v0_72_.AnchorPoint = v0_77_
local fromScale = UDim2.fromScale
v0_78_ = 0.995000
v0_79_ = 0.090000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_72_.Position = v0_77_
local fromScale = UDim2.fromScale
v0_78_ = 0.690000
v0_79_ = 0.900000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_72_.Size = v0_77_
v0_77_ = 1
v0_72_.BackgroundTransparency = v0_77_
v0_73_ = v0_31_
v0_74_ = "GearsTab"
v0_73_ = v0_73_(v0_74_)
v0_74_ = table.create(3)
local fromScale = UDim2.fromScale
v0_79_ = 0.495000
v0_80_ = 0.050000
v0_78_ = fromScale(v0_79_, v0_80_)
v0_74_.Size = v0_78_
local new = Color3.new
v0_78_ = new()
v0_74_.BackgroundColor3 = v0_78_
v0_78_ = 0.650000
v0_74_.BackgroundTransparency = v0_78_
v0_78_ = "Gears"
v0_74_.Text = v0_78_
v0_78_ = true
v0_74_.TextScaled = v0_78_
local new = Color3.new
v0_79_ = 1
v0_80_ = 1
v0_81_ = 1
v0_78_ = new(v0_79_, v0_80_, v0_81_)
v0_74_.TextColor3 = v0_78_
local new = Font.new
v0_79_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_78_ = new(v0_79_, Medium)
v0_74_.FontFace = v0_78_
v0_75_ = v0_38_
v0_76_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_76_.ApplyStrokeMode = Border
local new = Color3.new
v0_78_ = 1
v0_79_ = 1
v0_80_ = 1
v0_77_ = new(v0_78_, v0_79_, v0_80_)
v0_76_.Color = v0_77_
v0_77_ = 0.500000
v0_76_.Transparency = v0_77_
v0_77_ = 1.500000
v0_76_.Thickness = v0_77_
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_39_
v0_77_ = {}
v0_78_ = 0.300000
v0_77_.Size = v0_78_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_40_
v0_78_ = {}
v0_77_ = v0_77_(v0_78_)
v0_74_[1] = v0_75_
v0_74_[2] = v0_76_
v0_74_[3] = v0_77_
v0_78_ = v0_22_
v0_79_ = "MouseButton1Click"
v0_78_ = v0_78_(v0_79_)
v0_79_ = function(a1)
    local v24_2_ = v0_10_
    local v24_1_ = v24_2_.PlaySFX
    v24_2_ = "Click"
    local v24_3_ = "UISounds"
    v24_1_(v24_2_, v24_3_)
    v24_1_ = "Gears"
    v0_50_ = v24_1_
    v24_2_ = v0_25_
    v24_1_ = v24_2_.GetObject
    v24_2_ = "GearIndex"
    v24_1_ = v24_1_(v24_2_)
    v24_3_ = v0_25_
    v24_2_ = v24_3_.GetObject
    v24_3_ = "ItemIndex"
    v24_2_ = v24_2_(v24_3_)
    v24_3_ = true
    v24_1_.Visible = v24_3_
    v24_3_ = false
    v24_2_.Visible = v24_3_
    v24_3_ = v0_66_
    v24_3_()
    local v24_4_ = v0_25_
    v24_3_ = v24_4_.GetObjects
    v24_4_ = "Item\n_"
    v24_3_ = v24_3_(v24_4_)
    local v24_6_ = function(a1, a2)
        local v25_2_ = a1.Name
        local v25_4_ = "^Item\n([%w%s%p]+)"
        v25_2_ = v25_2_:match(v25_4_)
        local v25_5_ = "%s"
        local v25_6_ = ""
        local v25_3_ = v25_2_:gsub(v25_5_, v25_6_)
        v25_3_ = v25_3_:lower()
        v25_5_ = v0_51_
        local v25_7_ = "%s"
        local v25_8_ = ""
        v25_5_ = v25_5_:gsub(v25_7_, v25_8_)
        v25_3_ = v25_3_:find(v25_5_:lower())
        if v25_3_ then
            v25_4_ = v0_50_
            if v25_4_ == "Gears" then
                v25_3_ = v0_16_
                v25_5_ = v25_2_
                v25_3_ = v25_3_:IsGear(v25_5_)
            else
                v25_4_ = v0_50_
                if v25_4_ == "Items" then
                    v25_4_ = v0_16_
                    v25_6_ = v25_2_
                    v25_4_ = v25_4_:IsGear(v25_6_)
                    v25_3_ = not v25_4_
                else
                    v25_3_ = false
                end
            end
            a1.Visible = v25_3_
            return
        end
        v25_3_ = false
        a1.Visible = v25_3_
    end
    v24_3_:Each(v24_6_)
end
v0_74_[v0_78_] = v0_79_
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_31_
v0_75_ = "ItemsTab"
v0_74_ = v0_74_(v0_75_)
v0_75_ = table.create(3)
local new = Vector2.new
v0_80_ = 1
v0_81_ = 0
v0_79_ = new(v0_80_, v0_81_)
v0_75_.AnchorPoint = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 1
v0_81_ = 0
v0_79_ = fromScale(v0_80_, v0_81_)
v0_75_.Position = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.495000
v0_81_ = 0.050000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_75_.Size = v0_79_
local new = Color3.new
v0_79_ = new()
v0_75_.BackgroundColor3 = v0_79_
v0_79_ = 0.650000
v0_75_.BackgroundTransparency = v0_79_
v0_79_ = "Items"
v0_75_.Text = v0_79_
v0_79_ = true
v0_75_.TextScaled = v0_79_
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_75_.TextColor3 = v0_79_
local new = Font.new
v0_80_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_79_ = new(v0_80_, Medium)
v0_75_.FontFace = v0_79_
v0_76_ = v0_38_
v0_77_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_77_.ApplyStrokeMode = Border
local new = Color3.new
v0_79_ = 1
v0_80_ = 1
v0_81_ = 1
v0_78_ = new(v0_79_, v0_80_, v0_81_)
v0_77_.Color = v0_78_
v0_78_ = 0.500000
v0_77_.Transparency = v0_78_
v0_78_ = 1.500000
v0_77_.Thickness = v0_78_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_39_
v0_78_ = {}
v0_79_ = 0.300000
v0_78_.Size = v0_79_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_40_
v0_79_ = {}
v0_78_ = v0_78_(v0_79_)
v0_75_[1] = v0_76_
v0_75_[2] = v0_77_
v0_75_[3] = v0_78_
v0_79_ = v0_22_
v0_80_ = "MouseButton1Click"
v0_79_ = v0_79_(v0_80_)
v0_80_ = function(a1)
    local v26_2_ = v0_10_
    local v26_1_ = v26_2_.PlaySFX
    v26_2_ = "Click"
    local v26_3_ = "UISounds"
    v26_1_(v26_2_, v26_3_)
    v26_1_ = "Items"
    v0_50_ = v26_1_
    v26_2_ = v0_25_
    v26_1_ = v26_2_.GetObject
    v26_2_ = "GearIndex"
    v26_1_ = v26_1_(v26_2_)
    v26_3_ = v0_25_
    v26_2_ = v26_3_.GetObject
    v26_3_ = "ItemIndex"
    v26_2_ = v26_2_(v26_3_)
    v26_3_ = false
    v26_1_.Visible = v26_3_
    v26_3_ = true
    v26_2_.Visible = v26_3_
    v26_3_ = v0_66_
    v26_3_()
    local v26_4_ = v0_25_
    v26_3_ = v26_4_.GetObjects
    v26_4_ = "Item\n_"
    v26_3_ = v26_3_(v26_4_)
    local v26_6_ = function(a1, a2)
        local v27_2_ = a1.Name
        local v27_4_ = "^Item\n([%w%s%p]+)"
        v27_2_ = v27_2_:match(v27_4_)
        local v27_5_ = "%s"
        local v27_6_ = ""
        local v27_3_ = v27_2_:gsub(v27_5_, v27_6_)
        v27_3_ = v27_3_:lower()
        v27_5_ = v0_51_
        local v27_7_ = "%s"
        local v27_8_ = ""
        v27_5_ = v27_5_:gsub(v27_7_, v27_8_)
        v27_3_ = v27_3_:find(v27_5_:lower())
        if v27_3_ then
            v27_4_ = v0_50_
            if v27_4_ == "Gears" then
                v27_3_ = v0_16_
                v27_5_ = v27_2_
                v27_3_ = v27_3_:IsGear(v27_5_)
            else
                v27_4_ = v0_50_
                if v27_4_ == "Items" then
                    v27_4_ = v0_16_
                    v27_6_ = v27_2_
                    v27_4_ = v27_4_:IsGear(v27_6_)
                    v27_3_ = not v27_4_
                else
                    v27_3_ = false
                end
            end
            a1.Visible = v27_3_
            return
        end
        v27_3_ = false
        a1.Visible = v27_3_
    end
    v26_3_:Each(v26_6_)
end
v0_75_[v0_79_] = v0_80_
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_27_
v0_76_ = "Search"
v0_75_ = v0_75_(v0_76_)
v0_76_ = table.create(5)
local fromScale = UDim2.fromScale
v0_83_ = 0
v0_84_ = 0.065000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_76_.Position = v0_82_
local fromScale = UDim2.fromScale
v0_83_ = 1
v0_84_ = 0.050000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_76_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_76_.BackgroundColor3 = v0_82_
v0_82_ = 0.650000
v0_76_.BackgroundTransparency = v0_82_
v0_77_ = v0_33_
v0_78_ = "SearchIcon"
v0_77_ = v0_77_(v0_78_)
v0_78_ = {}
local new = Vector2.new
v0_80_ = 0
v0_81_ = 0.500000
v0_79_ = new(v0_80_, v0_81_)
v0_78_.AnchorPoint = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.010000
v0_81_ = 0.500000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_78_.Position = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.900000
v0_81_ = 0.900000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_78_.Size = v0_79_
v0_79_ = 1
v0_78_.BackgroundTransparency = v0_79_
v0_79_ = "rbxassetid://6031154871"
v0_78_.Image = v0_79_
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_78_.ImageColor3 = v0_79_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_78_.SizeConstraint = RelativeYY
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_32_
v0_79_ = "Content"
v0_78_ = v0_78_(v0_79_)
v0_79_ = {}
local new = Vector2.new
v0_81_ = 0
v0_82_ = 0.500000
v0_80_ = new(v0_81_, v0_82_)
v0_79_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.050000
v0_82_ = 0.500000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.950000
v0_82_ = 0.800000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Size = v0_80_
v0_80_ = ""
v0_79_.Text = v0_80_
v0_80_ = "Search..."
v0_79_.PlaceholderText = v0_80_
v0_80_ = 20
v0_79_.TextSize = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.TextColor3 = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_80_ = new(v0_81_, Medium)
v0_79_.FontFace = v0_80_
local Left = Enum.TextXAlignment.Left
v0_79_.TextXAlignment = Left
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = v0_22_.Prop
v0_81_ = "Text"
v0_80_ = v0_80_(v0_81_)
v0_81_ = function(a1, a2)
    v0_51_ = a1
    local v28_3_ = v0_25_
    local v28_2_ = v28_3_.GetObjects
    v28_3_ = "Item\n_"
    v28_2_ = v28_2_(v28_3_)
    local v28_5_ = function(a1, a2)
        local v29_2_ = a1.Name
        local v29_4_ = "^Item\n([%w%s%p]+)"
        v29_2_ = v29_2_:match(v29_4_)
        local v29_5_ = "%s"
        local v29_6_ = ""
        local v29_3_ = v29_2_:gsub(v29_5_, v29_6_)
        v29_3_ = v29_3_:lower()
        v29_5_ = v0_51_
        local v29_7_ = "%s"
        local v29_8_ = ""
        v29_5_ = v29_5_:gsub(v29_7_, v29_8_)
        v29_3_ = v29_3_:find(v29_5_:lower())
        if v29_3_ then
            v29_4_ = v0_50_
            if v29_4_ == "Gears" then
                v29_3_ = v0_16_
                v29_5_ = v29_2_
                v29_3_ = v29_3_:IsGear(v29_5_)
            else
                v29_4_ = v0_50_
                if v29_4_ == "Items" then
                    v29_4_ = v0_16_
                    v29_6_ = v29_2_
                    v29_4_ = v29_4_:IsGear(v29_6_)
                    v29_3_ = not v29_4_
                else
                    v29_3_ = false
                end
            end
            a1.Visible = v29_3_
            return
        end
        v29_3_ = false
        a1.Visible = v29_3_
    end
    v28_2_:Each(v28_5_)
end
v0_79_[v0_80_] = v0_81_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_38_
v0_80_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_80_.ApplyStrokeMode = Border
local new = Color3.new
v0_82_ = 1
v0_83_ = 1
v0_84_ = 1
v0_81_ = new(v0_82_, v0_83_, v0_84_)
v0_80_.Color = v0_81_
v0_81_ = 0.500000
v0_80_.Transparency = v0_81_
v0_81_ = 1.500000
v0_80_.Thickness = v0_81_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_39_
v0_81_ = {}
v0_82_ = 0.300000
v0_81_.Size = v0_82_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_40_
v0_82_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_76_ = {v0_77_, v0_81_(v0_82_)}
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_27_
v0_77_ = "ItemGrid"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(4)
local fromScale = UDim2.fromScale
v0_83_ = 0
v0_84_ = 0.130000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_77_.Position = v0_82_
local fromScale = UDim2.fromScale
v0_83_ = 1
v0_84_ = 0.870000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_77_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_77_.BackgroundColor3 = v0_82_
v0_82_ = 0.650000
v0_77_.BackgroundTransparency = v0_82_
v0_82_ = true
v0_77_.ClipsDescendants = v0_82_
v0_78_ = v0_28_
v0_79_ = "ItemGridScrollingFrame"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(1)
local new = Vector2.new
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = new(v0_82_, v0_83_)
v0_79_.AnchorPoint = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_79_.Position = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.925000
v0_83_ = 0.950000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_79_.Size = v0_81_
v0_81_ = 1
v0_79_.BackgroundTransparency = v0_81_
v0_81_ = false
v0_79_.ClipsDescendants = v0_81_
local Y = Enum.AutomaticSize.Y
v0_79_.AutomaticCanvasSize = Y
local new = UDim2.new
v0_81_ = new()
v0_79_.CanvasSize = v0_81_
v0_81_ = 0
v0_79_.ScrollBarThickness = v0_81_
v0_80_ = v0_37_
v0_81_ = {}
local fromScale = UDim2.fromScale
v0_83_ = 0.034000
v0_84_ = 0.060000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.CellPadding = v0_82_
local fromScale = UDim2.fromScale
v0_83_ = 0.138000
v0_84_ = 0.230000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.CellSize = v0_82_
-- WARNING: SETLIST_C0, output may be wrong!
v0_79_ = {v0_80_, v0_80_(v0_81_)}
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_38_
v0_80_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_80_.ApplyStrokeMode = Border
local new = Color3.new
v0_82_ = 1
v0_83_ = 1
v0_84_ = 1
v0_81_ = new(v0_82_, v0_83_, v0_84_)
v0_80_.Color = v0_81_
v0_81_ = 0.500000
v0_80_.Transparency = v0_81_
v0_81_ = 1.500000
v0_80_.Thickness = v0_81_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_39_
v0_81_ = {}
v0_82_ = 0.032600
v0_81_.Size = v0_82_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_40_
v0_82_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_81_(v0_82_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_72_ = {v0_73_, v0_76_(v0_77_)}
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_35_
v0_73_ = "Aspect"
v0_72_ = v0_72_(v0_73_)
v0_73_ = {}
v0_74_ = 1.823000
v0_73_.AspectRatio = v0_74_
local Width = Enum.DominantAxis.Width
v0_73_.DominantAxis = Width
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_38_
v0_74_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_74_.ApplyStrokeMode = Border
local new = Color3.new
v0_76_ = 1
v0_77_ = 1
v0_78_ = 1
v0_75_ = new(v0_76_, v0_77_, v0_78_)
v0_74_.Color = v0_75_
v0_75_ = 0.500000
v0_74_.Transparency = v0_75_
v0_75_ = 1.500000
v0_74_.Thickness = v0_75_
-- WARNING: SETLIST_C0, output may be wrong!
v0_68_ = {v0_69_, v0_73_(v0_74_)}
v0_67_ = v0_67_(v0_68_)
v0_68_ = v0_24_
v0_69_ = v0_7_
v0_70_ = v0_67_
v0_68_(v0_69_, v0_70_)
v0_68_ = function(a1)
    local v30_2_ = v0_47_
    local v30_1_ = v30_2_[a1]
    return v30_1_
end
v0_4_.FindItemFrame = v0_68_
v0_68_ = function(a1, a2)
    local v31_2_ = v0_16_
    local v31_4_ = a1
    v31_2_ = v31_2_:GetValue(v31_4_)
    if v31_2_ == "None" then
        return
    end
    v31_4_ = v0_4_
    local v31_3_ = v31_4_.FindItemFrame
    v31_4_ = a1
    v31_3_ = v31_3_(v31_4_)
    if not v31_3_ then
        v31_4_ = 0
        if v31_4_ < a2 then
            v31_4_ = v0_42_
            local v31_5_ = {}
            local v31_7_ = "Item\n%*"
            local v31_9_ = a1
            v31_7_ = v31_7_:format(v31_9_)
            local v31_6_ = v31_7_
            v31_5_.Name = v31_6_
            v31_6_ = v31_2_.DisplayName
            if not v31_6_ then
                v31_6_ = v31_2_.ItemName
            end
            v31_5_.ItemName = v31_6_
            v31_6_ = v31_2_.ItemNameColor3
            v31_5_.ItemNameColor3 = v31_6_
            v31_5_.Amount = a2
            v31_7_ = v31_2_.GearConfig
            if v31_7_ then
                v31_7_ = v31_2_.GearConfig
                v31_6_ = v31_7_.GearType
                if not v31_6_ then
                    v31_6_ = " "
                end
            end
            v31_6_ = " "
            v31_5_.GearType = v31_6_
            v31_7_ = v0_50_
            if v31_7_ == "Gears" then
                v31_6_ = v0_16_
                local v31_8_ = a1
                v31_6_ = v31_6_:IsGear(v31_8_)
            else
                v31_7_ = v0_50_
                if v31_7_ == "Items" then
                    v31_7_ = v0_16_
                    v31_9_ = a1
                    v31_7_ = v31_7_:IsGear(v31_9_)
                    v31_6_ = not v31_7_
                else
                    v31_6_ = false
                end
            end
            v31_5_.Visible = v31_6_
            v31_4_ = v31_4_(v31_5_)
            v31_3_ = v31_4_.__object
            v31_4_ = v0_47_
            v31_4_[a1] = v31_3_
        end
    end
    v31_4_ = 0
    if a2 <= v31_4_ then
        local v31_5_ = v0_44_
        local v31_7_ = "Item\n%*"
        local v31_9_ = a1
        v31_7_ = v31_7_:format(v31_9_)
        local v31_6_ = v31_7_
        v31_4_ = v31_5_[v31_6_]
        if v31_4_ then
            v31_4_:Unmount()
            v31_5_ = v0_44_
            v31_7_ = "Item\n%*"
            v31_9_ = a1
            v31_7_ = v31_7_:format(v31_9_)
            v31_6_ = v31_7_
            v31_7_ = nil
            v31_5_[v31_6_] = v31_7_
            v31_6_ = v0_47_
            v31_5_ = v31_6_[a1]
            v31_5_:Destroy()
            v31_5_ = v0_47_
            v31_6_ = nil
            v31_5_[a1] = v31_6_
        end
        v31_5_ = v0_48_
        if v31_5_ == a1 then
            v31_5_ = v0_66_
            v31_5_()
            return
        end
    end
    local v31_6_ = "ItemAmount"
    v31_4_ = v31_3_:FindFirstChild(v31_6_)
    v31_6_ = "x%*"
    local v31_8_ = a2
    v31_6_ = v31_6_:format(v31_8_)
    local v31_5_ = v31_6_
    v31_4_.Text = v31_5_
end
v0_4_.UpdateItemFrame = v0_68_
v0_68_ = function(a1, a2)
    local v32_3_ = v0_53_
    local v32_2_ = v32_3_.UseItem
    if v32_2_ then
        v32_2_ = v0_53_
        v32_3_ = false
        v32_2_.UseItem = v32_3_
        v32_2_ = v0_54_
        local running = coroutine.running
        v32_3_ = running()
        v32_2_.UseItem = v32_3_
        local v32_4_ = v0_19_
        v32_3_ = v32_4_.UseItem
        v32_2_ = v32_3_.send
        v32_3_ = {}
        v32_3_.amount = a2
        v32_3_.itemName = a1
        v32_2_(v32_3_)
        local yield = coroutine.yield
        v32_2_, v32_3_ = yield()
        if not v32_2_ then
            v32_4_ = false
            return v32_4_
        end
        v32_4_ = v0_53_
        local v32_5_ = true
        v32_4_.UseItem = v32_5_
        v32_4_ = true
        return v32_4_
    end
end
v0_4_.SendItemUseRequest = v0_68_
v0_68_ = function(a1, a2)
    if a2 == "Eclipse Device" then
        local v33_2_ = print
        local v33_3_ = a2
        local v33_4_ = a1
        local traceback = debug.traceback
        v33_2_(traceback())
    end
    local v33_3_ = v0_53_
    local v33_5_ = a1
    local v33_6_ = "Gear"
    local v33_4_ = v33_5_
    local v33_2_ = v33_3_[v33_4_]
    if v33_2_ then
        v33_2_ = v0_53_
        v33_4_ = a1
        v33_5_ = "Gear"
        v33_3_ = v33_4_
        v33_4_ = false
        v33_2_[v33_3_] = v33_4_
        v33_2_ = v0_54_
        v33_4_ = a1
        v33_5_ = "Gear"
        v33_3_ = v33_4_
        local running = coroutine.running
        v33_4_ = running()
        v33_2_[v33_3_] = v33_4_
        v33_4_ = v0_19_
        v33_3_ = v33_4_.EquipItem
        v33_2_ = v33_3_.send
        v33_3_ = {}
        v33_3_.gearType = a1
        v33_3_.gearName = a2
        v33_2_(v33_3_)
        local yield = coroutine.yield
        v33_2_ = yield()
        local wait = task.wait
        wait()
        v33_5_ = v0_46_
        v33_4_ = v33_5_.Data
        v33_6_ = a1
        local v33_7_ = "Gear"
        v33_5_ = v33_6_
        v33_3_ = v33_4_[v33_5_]
        while v33_3_ ~= a2 do
        end
        v33_3_ = v0_53_
        v33_5_ = a1
        v33_6_ = "Gear"
        v33_4_ = v33_5_
        v33_5_ = true
        v33_3_[v33_4_] = v33_5_
        return v33_2_
    end
    v33_2_ = false
    return v33_2_
end
v0_4_.SendGearEquipRequest = v0_68_
v0_68_ = function(a1)
    local v34_2_ = v0_53_
    local v34_4_ = a1
    local v34_5_ = "Gear"
    local v34_3_ = v34_4_
    local v34_1_ = v34_2_[v34_3_]
    if v34_1_ then
        v34_1_ = v0_53_
        v34_3_ = a1
        v34_4_ = "Gear"
        v34_2_ = v34_3_
        v34_3_ = false
        v34_1_[v34_2_] = v34_3_
        v34_1_ = v0_54_
        v34_3_ = a1
        v34_4_ = "Gear"
        v34_2_ = v34_3_
        local running = coroutine.running
        v34_3_ = running()
        v34_1_[v34_2_] = v34_3_
        v34_3_ = v0_19_
        v34_2_ = v34_3_.UnequipItem
        v34_1_ = v34_2_.send
        v34_2_ = a1
        v34_1_(v34_2_)
        local yield = coroutine.yield
        v34_1_ = yield()
        local wait = task.wait
        wait()
        v34_4_ = v0_46_
        v34_3_ = v34_4_.Data
        v34_5_ = a1
        local v34_6_ = "Gear"
        v34_4_ = v34_5_
        v34_2_ = v34_3_[v34_4_]
        while v34_2_ ~= "" do
        end
        v34_2_ = v0_53_
        v34_4_ = a1
        v34_5_ = "Gear"
        v34_3_ = v34_4_
        v34_4_ = true
        v34_2_[v34_3_] = v34_4_
        return v34_1_
    end
    v34_1_ = false
    return v34_1_
end
v0_4_.SendGearUnequipRequest = v0_68_
v0_68_ = function(a1)
    local v35_2_ = v0_53_
    local v35_4_ = a1
    local v35_5_ = "Gear"
    local v35_3_ = v35_4_
    local v35_1_ = v35_2_[v35_3_]
    if v35_1_ then
        v35_1_ = v0_53_
        v35_3_ = a1
        v35_4_ = "Gear"
        v35_2_ = v35_3_
        v35_3_ = false
        v35_1_[v35_2_] = v35_3_
        v35_1_ = v0_54_
        v35_3_ = a1
        v35_4_ = "Gear"
        v35_2_ = v35_3_
        local running = coroutine.running
        v35_3_ = running()
        v35_1_[v35_2_] = v35_3_
        v35_3_ = v0_19_
        v35_2_ = v35_3_.InvisibleGear
        v35_1_ = v35_2_.send
        v35_2_ = a1
        v35_1_(v35_2_)
        local yield = coroutine.yield
        v35_1_ = yield()
        v35_2_ = print
        v35_3_ = v35_1_
        v35_2_(v35_3_)
        local wait = task.wait
        wait()
        local v35_6_ = v0_46_
        v35_5_ = v35_6_.Data
        local v35_7_ = a1
        local v35_8_ = "GearVisible"
        v35_6_ = v35_7_
        v35_4_ = v35_5_[v35_6_]
        v35_3_ = not v35_4_
        v35_2_ = not v35_3_
        while v35_2_ ~= v35_1_ do
        end
        v35_2_ = v0_53_
        v35_4_ = a1
        v35_5_ = "Gear"
        v35_3_ = v35_4_
        v35_4_ = true
        v35_2_[v35_3_] = v35_4_
        return v35_1_
    end
    v35_1_ = false
    return v35_1_
end
v0_4_.SendInvisibleGearRequest = v0_68_
v0_4_.Frame = v0_67_
v0_68_ = function(a1)
    local v36_2_ = v0_10_
    local v36_1_ = v36_2_.PlaySFX
    v36_2_ = "Click"
    local v36_3_ = "UISounds"
    v36_1_(v36_2_, v36_3_)
    v36_2_ = v0_25_
    v36_1_ = v36_2_.GetObject
    v36_2_ = "DescriptionHolder"
    v36_1_ = v36_1_(v36_2_)
    v36_3_ = v0_25_
    v36_2_ = v36_3_.GetObject
    v36_3_ = "DescriptionScrollingFrame"
    v36_2_ = v36_2_(v36_3_)
    local v36_4_ = v0_25_
    v36_3_ = v36_4_.GetObject
    v36_4_ = "DescriptionTextLabel"
    v36_3_ = v36_3_(v36_4_)
    v36_4_ = a1.Name
    local v36_6_ = "^Item\n([%s%w%p]+)"
    v36_4_ = v36_4_:match(v36_6_)
    v0_48_ = v36_2_
    v36_4_ = v0_16_
    v36_6_ = v0_48_
    v36_4_ = v36_4_:GetValue(v36_6_)
    v0_49_ = v36_3_
    local v36_5_ = v0_49_
    v36_4_ = v36_5_.CanUse
    if v36_4_ then
        v36_5_ = v0_25_
        v36_4_ = v36_5_.GetObject
        v36_5_ = "UseAmountDisabled"
        v36_4_ = v36_4_(v36_5_)
        v36_6_ = v0_25_
        v36_5_ = v36_6_.GetObject
        v36_6_ = "UseButtonDisabled"
        v36_5_ = v36_5_(v36_6_)
        v36_6_ = false
        v36_4_.Visible = v36_6_
        v36_6_ = false
        v36_5_.Visible = v36_6_
        v36_6_ = v0_59_
        local v36_7_ = true
        v36_6_.Interactable = v36_7_
    else
        v36_4_ = v0_58_
        v36_5_ = 1
        v36_4_.Text = v36_5_
        v36_5_ = v0_25_
        v36_4_ = v36_5_.GetObject
        v36_5_ = "UseAmountDisabled"
        v36_4_ = v36_4_(v36_5_)
        v36_6_ = v0_25_
        v36_5_ = v36_6_.GetObject
        v36_6_ = "UseButtonDisabled"
        v36_5_ = v36_5_(v36_6_)
        v36_6_ = true
        v36_4_.Visible = v36_6_
        v36_6_ = true
        v36_5_.Visible = v36_6_
        v36_6_ = v0_59_
        local v36_7_ = false
        v36_6_.Interactable = v36_7_
    end
    v36_5_ = v0_49_
    v36_4_ = v36_5_.Description
    v36_3_.Text = v36_4_
    v36_4_ = v0_3_
    local v36_7_ = v0_49_
    v36_6_ = v36_7_.Description
    v36_7_ = 16
    local GothamBold = Enum.Font.GothamBold
    local new = Vector2.new
    local v36_11_ = v36_2_.AbsoluteSize
    local v36_10_ = v36_11_.X
    v36_11_ = inf
    v36_4_ = v36_4_:GetTextSize(new(v36_10_, v36_11_))
    local new_0 = UDim2.new
    v36_6_ = 1
    v36_7_ = 0
    local v36_8_ = 0
    local v36_9_ = v36_4_.Y
    v36_5_ = new_0(v36_6_, v36_7_, v36_8_, v36_9_)
    v36_3_.Size = v36_5_
    v36_6_ = v0_52_
    v36_5_ = v36_6_.Item
    if v36_5_ then
        v36_6_ = v0_52_
        v36_5_ = v36_6_.Item
        v36_6_ = v0_48_
        if v36_5_ ~= v36_6_ then
            v36_6_ = v0_52_
            v36_5_ = v36_6_.Connection
            if v36_5_ then
                v36_5_ = v0_55_
                v36_7_ = "Model"
                v36_5_ = v36_5_:FindFirstChild(v36_7_)
                if v36_5_ then
                    v36_5_ = v0_55_
                    v36_7_ = "Model"
                    v36_5_ = v36_5_:FindFirstChild(v36_7_)
                    v36_5_:Destroy()
                end
                v36_6_ = v0_52_
                v36_5_ = v36_6_.Connection
                v36_5_:Disconnect()
                v36_5_ = v0_52_
                v36_6_ = nil
                v36_5_.Connection = v36_6_
                v36_5_ = v0_52_
                v36_6_ = nil
                v36_5_.Item = v36_6_
            end
        end
    end
    v36_5_ = v0_16_
    v36_7_ = v0_48_
    v36_5_ = v36_5_:IsGear(v36_7_)
    if not v36_5_ then
        v36_6_ = v0_49_
        v36_5_ = v36_6_.CanUse
        if v36_5_ then
            v36_6_ = v0_25_
            v36_5_ = v36_6_.GetObject
            v36_6_ = "UseAmountDisabled"
            v36_5_ = v36_5_(v36_6_)
            v36_7_ = v0_25_
            v36_6_ = v36_7_.GetObject
            v36_7_ = "UseButtonDisabled"
            v36_6_ = v36_6_(v36_7_)
            v36_7_ = false
            v36_5_.Visible = v36_7_
            v36_7_ = false
            v36_6_.Visible = v36_7_
            v36_7_ = v0_59_
            v36_8_ = true
            v36_7_.Interactable = v36_8_
        end
        v36_6_ = v0_52_
        v36_5_ = v36_6_.Item
        v36_6_ = v0_48_
        if v36_5_ ~= v36_6_ then
            v36_5_ = v0_17_
            v36_8_ = v0_49_
            v36_7_ = v36_8_.ModelName
            v36_5_ = v36_5_:GetValue(v36_7_)
            v36_5_ = v36_5_:Clone()
            v36_6_ = v0_55_
            v36_8_ = "Camera"
            v36_6_ = v36_6_:FindFirstChild(v36_8_)
            v36_7_ = nil
            v36_10_ = "Model"
            v36_8_ = v36_5_:IsA(v36_10_)
            if v36_8_ then
                v36_8_ = v36_5_:GetExtentsSize()
                v36_7_ = v36_8_
            else
                v36_7_ = v36_5_.Size
            end
            v36_9_ = v36_7_.X
            v36_10_ = v36_7_.Y
            v36_11_ = v36_7_.Z
            local max = math.max
            v36_8_ = max(v36_9_, v36_10_, v36_11_)
            local new = CFrame.new
            v36_11_ = 0
            local v36_15_ = v36_8_
            local ceil = math.ceil
            local v36_14_ = ceil(v36_15_)
            local v36_13_ = v36_14_ / 3.000000
            local v36_12_ = v36_13_ * 2.000000
            v36_14_ = v36_8_
            local ceil = math.ceil
            v36_13_ = ceil(v36_14_)
            local new_0 = Vector3.new
            v36_10_ = new_0(v36_11_, v36_12_, v36_13_)
            local new_0 = Vector3.new
            v36_11_ = new_0()
            v36_9_ = new(v36_10_, v36_11_)
            v36_6_.CFrame = v36_9_
            v36_9_ = "Model"
            v36_5_.Name = v36_9_
            v36_9_ = v0_55_
            v36_5_.Parent = v36_9_
            local new = CFrame.new
            v36_5_:PivotTo(new())
            v36_9_ = v0_52_
            v36_10_ = v0_48_
            v36_9_.Item = v36_10_
            v36_9_ = v0_52_
            v36_11_ = v0_2_
            v36_10_ = v36_11_.RenderStepped
            v36_12_ = function(a1)
                local v37_1_ = v36_5_
                local v37_4_ = v36_5_
                v37_4_ = v37_4_:GetPivot()
                local Angles = CFrame.Angles
                local v37_6_ = 0
                local v37_8_ = a1 * 90.000000
                local rad = math.rad
                local v37_7_ = rad(v37_8_)
                v37_8_ = 0
                local v37_5_ = Angles(v37_6_, v37_7_, v37_8_)
                local v37_3_ = v37_4_ * v37_5_
                v37_1_:PivotTo(v37_3_)
            end
            v36_10_ = v36_10_:Connect(v36_12_)
            v36_9_.Connection = v36_10_
        end
    end
end
v0_45_.MouseButton1ClickBind = v0_68_
v0_69_ = v0_19_.UseItem
v0_68_ = v0_69_.listen
v0_69_ = function(a1)
    local v38_2_ = v0_54_
    local v38_1_ = v38_2_.UseItem
    if v38_1_ then
        v38_1_ = true
        v38_2_ = a1.amount
        if v38_2_ == -1.000000 then
            v38_1_ = false
        end
        local defer = task.defer
        local v38_4_ = v0_54_
        local v38_3_ = v38_4_.UseItem
        v38_4_ = v38_1_
        local v38_5_ = a1.amount
        defer(v38_3_, v38_4_, v38_5_)
        v38_2_ = v0_54_
        v38_3_ = nil
        v38_2_.UseItem = v38_3_
    end
end
v0_68_(v0_69_)
v0_69_ = v0_19_.EquipItem
v0_68_ = v0_69_.listen
v0_69_ = function(a1)
    local v39_2_ = v0_54_
    local v39_4_ = a1.gearType
    local v39_5_ = "Gear"
    local v39_3_ = v39_4_
    local v39_1_ = v39_2_[v39_3_]
    if v39_1_ then
        local defer = task.defer
        v39_3_ = v0_54_
        v39_5_ = a1.gearType
        local v39_6_ = "Gear"
        v39_4_ = v39_5_
        v39_2_ = v39_3_[v39_4_]
        v39_3_ = true
        defer(v39_2_, v39_3_)
        v39_1_ = v0_54_
        v39_3_ = a1.gearType
        v39_4_ = "Gear"
        v39_2_ = v39_3_
        v39_3_ = nil
        v39_1_[v39_2_] = v39_3_
    end
end
v0_68_(v0_69_)
v0_69_ = v0_19_.UnequipItem
v0_68_ = v0_69_.listen
v0_69_ = function(a1)
    local v40_2_ = v0_54_
    local v40_4_ = a1
    local v40_5_ = "Gear"
    local v40_3_ = v40_4_
    local v40_1_ = v40_2_[v40_3_]
    if v40_1_ then
        local defer = task.defer
        v40_3_ = v0_54_
        v40_5_ = a1
        local v40_6_ = "Gear"
        v40_4_ = v40_5_
        v40_2_ = v40_3_[v40_4_]
        v40_3_ = true
        defer(v40_2_, v40_3_)
        v40_1_ = v0_54_
        v40_3_ = a1
        v40_4_ = "Gear"
        v40_2_ = v40_3_
        v40_3_ = nil
        v40_1_[v40_2_] = v40_3_
    end
end
v0_68_(v0_69_)
v0_69_ = v0_19_.InvisibleGearResult
v0_68_ = v0_69_.listen
v0_69_ = function(a1)
    local v41_2_ = v0_54_
    local v41_4_ = a1.gearType
    local v41_5_ = "Gear"
    local v41_3_ = v41_4_
    local v41_1_ = v41_2_[v41_3_]
    if v41_1_ then
        local defer = task.defer
        v41_3_ = v0_54_
        v41_5_ = a1.gearType
        local v41_6_ = "Gear"
        v41_4_ = v41_5_
        v41_2_ = v41_3_[v41_4_]
        v41_3_ = a1.invisible
        defer(v41_2_, v41_3_)
        v41_1_ = v0_54_
        v41_3_ = a1.gearType
        v41_4_ = "Gear"
        v41_2_ = v41_3_
        v41_3_ = nil
        v41_1_[v41_2_] = v41_3_
    end
end
v0_68_(v0_69_)
v0_68_ = v0_43_.MouseButton1Click
v0_70_ = function()
    local v42_1_ = v0_67_
    local v42_0_ = v42_1_.Visible
    if not v42_0_ then
        v42_1_ = v0_20_
        v42_0_ = v42_1_.CloseAllWindows
        v42_0_()
        v42_0_ = v0_67_
        v42_1_ = true
        v42_0_.Visible = v42_1_
        return
    end
    v42_0_ = v0_67_
    v42_1_ = false
    v42_0_.Visible = v42_1_
end
v0_68_:Connect(v0_70_)
v0_70_ = "HasInvisible_Gear"
v0_68_ = v0_5_:GetAttributeChangedSignal(v0_70_)
v0_70_ = function()
    local v43_0_ = v0_56_
    while not v43_0_ do
        local wait = task.wait
        wait()
        v43_0_ = v0_56_
        while not v43_0_ do
        end
    end
    v43_0_ = v0_56_
    local v43_1_ = true
    v43_0_.Visible = v43_1_
    v43_0_ = v0_57_
    while not v43_0_ do
        local wait = task.wait
        wait()
        v43_0_ = v0_57_
        while not v43_0_ do
        end
    end
    v43_0_ = v0_57_
    v43_1_ = true
    v43_0_.Visible = v43_1_
end
v0_68_:Once(v0_70_)
local wait = task.wait
wait()
v0_68_ = v0_5_.Character
while not v0_68_ do
end
v0_69_ = v0_46_.Data
v0_68_ = v0_69_.LeftGear
if v0_68_ ~= "" then
    v0_68_ = v0_4_.SendGearEquipRequest
    v0_69_ = "Left"
    v0_71_ = v0_46_.Data
    v0_70_ = v0_71_.LeftGear
    v0_68_ = v0_68_(v0_69_, v0_70_)
    if v0_68_ then
        v0_68_ = v0_25_.GetObject
        v0_69_ = "LeftGearButtonViewport"
        v0_68_ = v0_68_(v0_69_)
        v0_75_ = v0_46_.Data
        v0_74_ = v0_75_.LeftGear
        v0_72_ = v0_16_:GetValue(v0_74_)
        v0_71_ = v0_72_.ModelName
        v0_69_ = v0_17_:GetValue(v0_71_)
        v0_69_ = v0_69_:Clone()
        v0_70_ = v0_68_.CurrentCamera
        v0_71_ = "Model"
        v0_69_.Name = v0_71_
        v0_69_.Parent = v0_68_
        local new = CFrame.new
        v0_69_:PivotTo(new())
        v0_73_ = v0_69_:GetPivot()
        v0_76_ = v0_69_:GetPivot()
        v0_75_ = v0_76_.LookVector
        v0_76_ = 3
        v0_74_ = v0_75_ * v0_76_
        v0_72_ = v0_73_ + v0_74_
        local Angles = CFrame.Angles
        v0_74_ = 0
        v0_75_ = 3.141593
        v0_76_ = 1.570796
        v0_73_ = Angles(v0_74_, v0_75_, v0_76_)
        v0_71_ = v0_72_ * v0_73_
        v0_70_.CFrame = v0_71_
        local Angles = CFrame.Angles
        v0_74_ = 3.141593
        v0_75_ = -3.141593
        v0_76_ = 1.570796
        v0_69_:PivotTo(Angles(v0_74_, v0_75_, v0_76_))
    end
end
v0_69_ = v0_46_.Data
v0_68_ = v0_69_.RightGear
if v0_68_ ~= "" then
    v0_68_ = v0_4_.SendGearEquipRequest
    v0_69_ = "Right"
    v0_71_ = v0_46_.Data
    v0_70_ = v0_71_.RightGear
    v0_68_ = v0_68_(v0_69_, v0_70_)
    if v0_68_ then
        v0_68_ = v0_25_.GetObject
        v0_69_ = "RightGearButtonViewport"
        v0_68_ = v0_68_(v0_69_)
        v0_75_ = v0_46_.Data
        v0_74_ = v0_75_.RightGear
        v0_72_ = v0_16_:GetValue(v0_74_)
        v0_71_ = v0_72_.ModelName
        v0_69_ = v0_17_:GetValue(v0_71_)
        v0_69_ = v0_69_:Clone()
        v0_70_ = v0_68_.CurrentCamera
        v0_71_ = "Model"
        v0_69_.Name = v0_71_
        v0_69_.Parent = v0_68_
        local new = CFrame.new
        v0_69_:PivotTo(new())
        v0_73_ = v0_69_:GetPivot()
        v0_76_ = v0_69_:GetPivot()
        v0_75_ = v0_76_.LookVector
        v0_76_ = 3
        v0_74_ = v0_75_ * v0_76_
        v0_72_ = v0_73_ + v0_74_
        local Angles = CFrame.Angles
        v0_74_ = 0
        v0_75_ = 3.141593
        v0_76_ = 1.570796
        v0_73_ = Angles(v0_74_, v0_75_, v0_76_)
        v0_71_ = v0_72_ * v0_73_
        v0_70_.CFrame = v0_71_
        local Angles = CFrame.Angles
        v0_74_ = -3.141593
        v0_75_ = 3.141593
        v0_76_ = 1.570796
        v0_69_:PivotTo(Angles(v0_74_, v0_75_, v0_76_))
    end
end
v0_68_ = v0_25_.AddObject
v0_69_ = "Window"
v0_70_ = v0_67_
v0_68_(v0_69_, v0_70_)
return v0_4_
