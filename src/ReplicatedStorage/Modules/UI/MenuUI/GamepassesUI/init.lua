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
v0_4_ = game
local v0_6_ = "HttpService"
v0_4_ = v0_4_:GetService(v0_6_)
v0_5_ = game
local v0_7_ = "MarketplaceService"
v0_5_ = v0_5_:GetService(v0_7_)
v0_6_ = {}
v0_7_ = v0_0_.LocalPlayer
local v0_10_ = "PlayerGui"
local v0_8_ = v0_7_:WaitForChild(v0_10_)
local v0_11_ = "MainInterface"
local v0_9_ = v0_8_:WaitForChild(v0_11_)
local v0_12_ = "Modules"
v0_10_ = v0_1_:WaitForChild(v0_12_)
local v0_13_ = "Utility"
v0_11_ = v0_10_:WaitForChild(v0_13_)
v0_12_ = require
v0_13_ = v0_11_
v0_12_ = v0_12_(v0_13_)
local v0_15_ = "UI"
v0_13_ = v0_10_:WaitForChild(v0_15_)
local v0_16_ = "Quad"
local v0_14_ = v0_13_:WaitForChild(v0_16_)
local v0_17_ = "Components"
v0_15_ = v0_13_:WaitForChild(v0_17_)
v0_16_ = require
local v0_19_ = "Notification"
v0_16_ = v0_16_(v0_13_:WaitForChild(v0_19_))
local v0_18_ = v0_12_.Replica
v0_17_ = v0_18_.WaitForReplica
v0_18_ = v0_7_
v0_17_ = v0_17_(v0_18_)
local v0_20_ = "Storage"
v0_18_ = v0_1_:WaitForChild(v0_20_)
v0_19_ = require
local v0_22_ = "Gamepasses"
v0_19_ = v0_19_(v0_18_:WaitForChild(v0_22_))
v0_22_ = "Packets"
v0_20_ = v0_1_:WaitForChild(v0_22_)
local v0_21_ = require
local v0_24_ = "Gamepasses"
v0_21_ = v0_21_(v0_20_:WaitForChild(v0_24_))
v0_22_ = require
local v0_23_ = v0_14_
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_22_.Class
v0_24_ = v0_22_.Event
local v0_25_ = v0_22_.Tween
local v0_26_ = v0_22_.Mount
local v0_27_ = v0_22_.Store
local v0_28_ = v0_22_.Style
local v0_29_ = v0_23_
local v0_30_ = "Frame"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_23_
local v0_31_ = "ScrollingFrame"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_23_
local v0_32_ = "ViewportFrame"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_23_
local v0_33_ = "TextLabel"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_23_
local v0_34_ = "TextButton"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_23_
local v0_35_ = "TextBox"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_23_
local v0_36_ = "ImageLabel"
v0_35_ = v0_35_(v0_36_)
v0_36_ = v0_23_
local v0_37_ = "ImageButton"
v0_36_ = v0_36_(v0_37_)
v0_37_ = v0_23_
local v0_38_ = "UIAspectRatioConstraint"
v0_37_ = v0_37_(v0_38_)
v0_38_ = v0_23_
local v0_39_ = "UIListLayout"
v0_38_ = v0_38_(v0_39_)
v0_39_ = v0_23_
local v0_40_ = "UIGridLayout"
v0_39_ = v0_39_(v0_40_)
v0_40_ = v0_23_
local v0_41_ = "UIStroke"
v0_40_ = v0_40_(v0_41_)
v0_41_ = v0_23_
local v0_42_ = "UIPadding"
v0_41_ = v0_41_(v0_42_)
v0_42_ = v0_23_
local v0_43_ = "UIGradient"
v0_42_ = v0_42_(v0_43_)
v0_43_ = v0_23_
local v0_46_ = "Corner"
v0_43_ = v0_43_(v0_15_:WaitForChild(v0_46_))
local v0_44_ = v0_23_
local v0_47_ = "Shadow"
v0_44_ = v0_44_(v0_15_:WaitForChild(v0_47_))
local v0_45_ = v0_23_
local v0_48_ = "SidebarButton"
v0_45_ = v0_45_(v0_15_:WaitForChild(v0_48_))
v0_46_ = v0_23_
local v0_49_ = "WarningFrame"
v0_46_ = v0_46_(v0_15_:WaitForChild(v0_49_))
v0_47_ = v0_23_
v0_48_ = script
local v0_50_ = "Item"
v0_47_ = v0_47_(v0_48_:WaitForChild(v0_50_))
v0_48_ = v0_27_.GetStore
v0_49_ = "Purchase"
v0_48_ = v0_48_(v0_49_)
local v0_51_ = "Alternative"
local v0_52_ = "Points"
v0_48_:Default(v0_51_, v0_52_)
v0_51_ = "AlternativeColor"
local new = Color3.new
local v0_53_ = 0.482353
local v0_54_ = 0.113725
local v0_55_ = 1
v0_48_:Default(new(v0_53_, v0_54_, v0_55_))
v0_51_ = "PromptVisible"
v0_52_ = false
v0_48_:Default(v0_51_, v0_52_)
v0_51_ = "Purchasing"
v0_52_ = false
v0_48_:Default(v0_51_, v0_52_)
v0_51_ = "RobuxPrice"
v0_52_ = 100
v0_48_:Default(v0_51_, v0_52_)
v0_51_ = "Price"
v0_52_ = 100
v0_48_:Default(v0_51_, v0_52_)
v0_49_ = v0_27_.GetStore
v0_50_ = "GiftStore"
v0_49_ = v0_49_(v0_50_)
v0_52_ = "Name"
v0_53_ = "NONE"
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "Price"
v0_53_ = 0
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "UserName"
v0_53_ = ""
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "UserThumbnail"
v0_53_ = ""
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "Searching"
v0_53_ = false
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "Disabled"
v0_53_ = true
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "DisabledReason"
v0_53_ = ""
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "GiftDisabled"
v0_53_ = true
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "SelectedGamepassId"
v0_53_ = 0
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "SelectedProductId"
v0_53_ = 0
v0_49_:Default(v0_52_, v0_53_)
v0_52_ = "CanSearch"
v0_53_ = true
v0_49_:Default(v0_52_, v0_53_)
v0_50_ = nil
v0_51_ = nil
v0_52_ = true
v0_53_ = nil
v0_54_ = nil
v0_55_ = true
local v0_56_ = nil
local v0_57_ = {}
local v0_58_ = {}
local v0_59_ = function(a1)
    local v1_2_ = a1
    local v1_1_ = tostring
    v1_1_ = v1_1_(v1_2_)
    local v1_3_ = "([-]?)(%d+)([.]?%d*)"
    local v1_1_, v1_2_, v1_3_, v1_4_, v1_5_ = v1_1_:find(v1_3_)
    if not v1_4_ then
        local v1_7_ = a1
        local v1_6_ = tostring
        v1_6_ = v1_6_(v1_7_)
        return v1_6_
    end
    local v1_6_ = v1_4_:reverse()
    local v1_8_ = "(%d%d%d)"
    local v1_9_ = "%1,"
    v1_6_ = v1_6_:gsub(v1_8_, v1_9_)
    v1_4_ = v1_6_
    local v1_7_ = v1_3_
    local v1_10_ = v1_4_:reverse()
    local v1_12_ = "^,"
    local v1_13_ = ""
    v1_10_ = v1_10_:gsub(v1_12_, v1_13_)
    v1_8_ = v1_10_
    v1_9_ = v1_5_
    v1_6_ = v1_7_ .. v1_8_
    return v1_6_
end
local v0_60_ = function(a1)
    local v2_2_ = v0_5_
    local v2_4_ = a1
    local GamePass = Enum.0oType.GamePass
    v2_2_ = v2_2_:GetProduct0o(v2_4_, GamePass)
    local v2_1_ = v2_2_.PriceInRobux
    return v2_1_
end
local v0_61_ = function(a1)
    local v3_1_ = print
    local v3_2_ = v0_5_
    local v3_4_ = a1
    local Product = Enum.0oType.Product
    v3_1_(v3_2_:GetProduct0o(v3_4_, Product))
    v3_2_ = v0_5_
    v3_4_ = a1
    local Product_0 = Enum.0oType.Product
    v3_2_ = v3_2_:GetProduct0o(v3_4_, Product_0)
    v3_1_ = v3_2_.PriceInRobux
    return v3_1_
end
local v0_62_ = function(a1)
    local v4_2_ = v0_58_
    local v4_3_ = a1.Id
    local v4_1_ = v4_2_[v4_3_]
    if v4_1_ then
        v4_3_ = v0_58_
        local v4_4_ = a1.Id
        v4_2_ = v4_3_[v4_4_]
        local unpack = table.unpack
        return unpack(v4_2_)
    end
    v4_1_ = nil
    v4_2_ = nil
    v4_3_ = a1.ProductId
    if v4_3_ then
        v4_3_ = print
        local v4_4_ = a1.Id
        local v4_5_ = a1.ProductId
        v4_3_(v4_4_, v4_5_)
        v4_3_ = pcall
        v4_4_ = v0_61_
        v4_5_ = a1.ProductId
        v4_3_, v4_4_ = v4_3_(v4_4_, v4_5_)
        v4_1_ = v4_3_
        v4_2_ = v4_4_
    else
        v4_3_ = pcall
        local v4_4_ = v0_60_
        local v4_5_ = a1.PassId
        v4_3_, v4_4_ = v4_3_(v4_4_, v4_5_)
        v4_1_ = v4_3_
        v4_2_ = v4_4_
    end
    if not v4_1_ then
        v4_3_ = 0
        v4_3_ += 1.000000
        local wait = task.wait
        local v4_6_ = 2
        local v4_5_ = v4_6_ ^ v4_3_
        wait(v4_5_)
        local v4_4_ = a1.ProductId
        if v4_4_ then
            v4_4_ = pcall
            v4_5_ = v0_61_
            v4_6_ = a1.ProductId
            v4_4_, v4_5_ = v4_4_(v4_5_, v4_6_)
            v4_1_ = v4_4_
            v4_2_ = v4_5_
        else
            v4_4_ = pcall
            v4_5_ = v0_60_
            v4_6_ = a1.PassId
            v4_4_, v4_5_ = v4_4_(v4_5_, v4_6_)
            v4_1_ = v4_4_
            v4_2_ = v4_5_
        end
        while not v4_1_ do
            v4_4_ = 2
            while v4_4_ > v4_3_ do
            end
        end
        if not v4_1_ then
            v4_4_ = false
            return v4_4_
        end
    end
    if not v4_2_ then
        v4_2_ = 100
    end
    v4_3_ = v0_58_
    local v4_4_ = a1.Id
    local v4_5_ = table.create(2)
    local v4_6_ = v4_2_
    local v4_8_ = a1.Alternatives
    if v4_8_ then
        local v4_9_ = a1.Alternatives
        v4_8_ = v4_9_.Price
        if v4_8_ == "Robux" then
            local v4_7_ = v4_2_
            if not v4_7_ then
                v4_8_ = a1.Alternatives
                v4_7_ = v4_8_.Price
                if not v4_7_ then
                    v4_7_ = nil
                end
            end
        end
        v4_8_ = a1.Alternatives
        local v4_7_ = v4_8_.Price
        if not v4_7_ then
            v4_7_ = nil
        end
    end
    local v4_7_ = nil
    v4_5_[1] = v4_6_
    v4_5_[2] = v4_7_
    v4_3_[v4_4_] = v4_5_
    v4_5_ = v0_58_
    v4_6_ = a1.Id
    v4_4_ = v4_5_[v4_6_]
    local unpack = table.unpack
    return unpack(v4_4_)
end
local v0_63_ = function(a1)
    local v5_1_ = pairs
    local v5_2_ = v0_19_
    local v5_1_, v5_2_, v5_3_ = v5_1_(v5_2_)
    for v5_4_, v5_5_ in v5_1_, v5_2_, v5_3_ do
        local v5_6_ = v5_5_.ProductId
        if v5_6_ == a1 then
            return v5_5_
        end
    end
end
local v0_64_ = nil
local v0_65_ = v0_29_
local v0_66_ = "Gamepasses"
v0_65_ = v0_65_(v0_66_)
v0_66_ = table.create(6)
local new = Vector2.new
local v0_74_ = 0.500000
local v0_75_ = 0.500000
local v0_73_ = new(v0_74_, v0_75_)
v0_66_.AnchorPoint = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 0.500000
v0_75_ = 0.500000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_66_.Position = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 0.400000
v0_75_ = 0.400000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_66_.Size = v0_73_
local new = Color3.new
v0_73_ = new()
v0_66_.BackgroundColor3 = v0_73_
v0_73_ = 0.400000
v0_66_.BackgroundTransparency = v0_73_
v0_73_ = false
v0_66_.Visible = v0_73_
local v0_67_ = v0_32_
local v0_68_ = "Title"
v0_67_ = v0_67_(v0_68_)
v0_68_ = table.create(3)
local fromScale = UDim2.fromScale
v0_73_ = 1
v0_74_ = 0.080000
local v0_72_ = fromScale(v0_73_, v0_74_)
v0_68_.Size = v0_72_
local new = Color3.new
v0_72_ = new()
v0_68_.BackgroundColor3 = v0_72_
v0_72_ = 0.650000
v0_68_.BackgroundTransparency = v0_72_
v0_72_ = "Gamepasses"
v0_68_.Text = v0_72_
v0_72_ = true
v0_68_.TextScaled = v0_72_
local new = Color3.new
v0_73_ = 1
v0_74_ = 1
v0_75_ = 1
v0_72_ = new(v0_73_, v0_74_, v0_75_)
v0_68_.TextColor3 = v0_72_
local new = Font.new
v0_73_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_72_ = new(v0_73_, Bold)
v0_68_.FontFace = v0_72_
local v0_69_ = v0_33_
local v0_70_ = "Close"
v0_69_ = v0_69_(v0_70_)
v0_70_ = {}
local fromScale = UDim2.fromScale
v0_72_ = 0.950000
v0_73_ = 0
local v0_71_ = fromScale(v0_72_, v0_73_)
v0_70_.Position = v0_71_
local fromScale = UDim2.fromScale
v0_72_ = 1
v0_73_ = 1
v0_71_ = fromScale(v0_72_, v0_73_)
v0_70_.Size = v0_71_
v0_71_ = 1
v0_70_.BackgroundTransparency = v0_71_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_70_.SizeConstraint = RelativeYY
v0_71_ = "X"
v0_70_.Text = v0_71_
v0_71_ = true
v0_70_.TextScaled = v0_71_
local new = Color3.new
v0_72_ = 1
v0_73_ = 1
v0_74_ = 1
v0_71_ = new(v0_72_, v0_73_, v0_74_)
v0_70_.TextColor3 = v0_71_
local new = Font.new
v0_72_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_71_ = new(v0_72_, Bold)
v0_70_.FontFace = v0_71_
v0_71_ = v0_24_
v0_72_ = "MouseButton1Click"
v0_71_ = v0_71_(v0_72_)
v0_72_ = function(a1)
    local v6_2_ = v0_12_
    local v6_1_ = v6_2_.PlaySFX
    v6_2_ = "Click"
    local v6_3_ = "UISounds"
    v6_1_(v6_2_, v6_3_)
    v6_2_ = a1.Parent
    v6_1_ = v6_2_.Parent
    v6_2_ = false
    v6_1_.Visible = v6_2_
end
v0_70_[v0_71_] = v0_72_
v0_69_ = v0_69_(v0_70_)
v0_70_ = v0_40_
v0_71_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_71_.ApplyStrokeMode = Border
local new = Color3.new
v0_73_ = 1
v0_74_ = 1
v0_75_ = 1
v0_72_ = new(v0_73_, v0_74_, v0_75_)
v0_71_.Color = v0_72_
v0_72_ = 0.500000
v0_71_.Transparency = v0_72_
v0_72_ = 1.500000
v0_71_.Thickness = v0_72_
v0_70_ = v0_70_(v0_71_)
v0_71_ = v0_43_
v0_72_ = {}
v0_73_ = 0.250000
v0_72_.Size = v0_73_
-- WARNING: SETLIST_C0, output may be wrong!
v0_68_ = {v0_69_, v0_71_(v0_72_)}
v0_67_ = v0_67_(v0_68_)
v0_68_ = v0_29_
v0_69_ = "Items"
v0_68_ = v0_68_(v0_69_)
v0_69_ = table.create(4)
local new = Vector2.new
v0_75_ = 0.500000
local v0_76_ = 0
v0_74_ = new(v0_75_, v0_76_)
v0_69_.AnchorPoint = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.500000
v0_76_ = 0.090000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_69_.Position = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.990000
v0_76_ = 0.900000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_69_.Size = v0_74_
v0_74_ = 1
v0_69_.BackgroundTransparency = v0_74_
v0_70_ = v0_29_
v0_71_ = "Holder"
v0_70_ = v0_70_(v0_71_)
v0_71_ = table.create(1)
local fromScale = UDim2.fromScale
v0_74_ = 1
v0_75_ = 1
v0_73_ = fromScale(v0_74_, v0_75_)
v0_71_.Size = v0_73_
local new = Color3.new
v0_73_ = new()
v0_71_.BackgroundColor3 = v0_73_
v0_73_ = 0.650000
v0_71_.BackgroundTransparency = v0_73_
v0_73_ = true
v0_71_.ClipsDescendants = v0_73_
v0_72_ = v0_30_
v0_73_ = "ScrollingFrame"
v0_72_ = v0_72_(v0_73_)
v0_73_ = table.create(2)
local new = Vector2.new
local v0_77_ = 0.500000
local v0_78_ = 0.500000
v0_76_ = new(v0_77_, v0_78_)
v0_73_.AnchorPoint = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.500000
v0_78_ = 0.500000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_73_.Position = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.980000
v0_78_ = 0.970000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_73_.Size = v0_76_
v0_76_ = 1
v0_73_.BackgroundTransparency = v0_76_
local Y = Enum.AutomaticSize.Y
v0_73_.AutomaticCanvasSize = Y
local new = UDim2.new
v0_76_ = new()
v0_73_.CanvasSize = v0_76_
v0_76_ = false
v0_73_.ClipsDescendants = v0_76_
v0_76_ = 2
v0_73_.ScrollBarThickness = v0_76_
v0_74_ = v0_39_
v0_75_ = {}
local fromScale = UDim2.fromScale
v0_77_ = 0.015000
v0_78_ = 0.030000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_75_.CellPadding = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.323000
v0_78_ = 1
v0_76_ = fromScale(v0_77_, v0_78_)
v0_75_.CellSize = v0_76_
local Horizontal = Enum.FillDirection.Horizontal
v0_75_.FillDirection = Horizontal
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_75_.SortOrder = LayoutOrder
local Left = Enum.HorizontalAlignment.Left
v0_75_.HorizontalAlignment = Left
local Top = Enum.VerticalAlignment.Top
v0_75_.VerticalAlignment = Top
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_41_
v0_76_ = {}
local new = UDim.new
v0_78_ = 0
local v0_79_ = 2
v0_77_ = new(v0_78_, v0_79_)
v0_76_.PaddingRight = v0_77_
v0_75_ = v0_75_(v0_76_)
v0_73_[1] = v0_74_
v0_73_[2] = v0_75_
v0_76_ = v0_24_.CreatedAsync
v0_77_ = function(a1)
    v0_51_ = a1
end
v0_73_[v0_76_] = v0_77_
-- WARNING: SETLIST_C0, output may be wrong!
v0_71_ = {v0_72_, v0_72_(v0_73_)}
v0_70_ = v0_70_(v0_71_)
v0_71_ = v0_40_
v0_72_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_72_.ApplyStrokeMode = Border
local new = Color3.new
v0_74_ = 1
v0_75_ = 1
v0_76_ = 1
v0_73_ = new(v0_74_, v0_75_, v0_76_)
v0_72_.Color = v0_73_
v0_73_ = 0.500000
v0_72_.Transparency = v0_73_
v0_73_ = 1.500000
v0_72_.Thickness = v0_73_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_43_
v0_73_ = {}
v0_74_ = 0.026000
v0_73_.Size = v0_74_
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_44_
v0_74_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_69_ = {v0_70_, v0_73_(v0_74_)}
v0_68_ = v0_68_(v0_69_)
v0_69_ = v0_36_
v0_70_ = table.create(2)
local fromScale = UDim2.fromScale
v0_74_ = 1
v0_75_ = 0.920000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_70_.Size = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 0
v0_75_ = 0.080000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_70_.Position = v0_73_
local new = Color3.new
v0_73_ = new()
v0_70_.BackgroundColor3 = v0_73_
v0_73_ = 0.300000
v0_70_.BackgroundTransparency = v0_73_
v0_73_ = v0_48_
v0_74_ = "PromptVisible"
v0_73_ = v0_73_(v0_74_)
v0_70_.Visible = v0_73_
v0_73_ = 10
v0_70_.ZIndex = v0_73_
v0_73_ = false
v0_70_.AutoButtonColor = v0_73_
v0_73_ = true
v0_70_.Selectable = v0_73_
v0_71_ = v0_46_
v0_72_ = {}
local fromScale = UDim2.fromScale
v0_74_ = 0.500000
v0_75_ = 0.500000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Position = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 0.700000
v0_75_ = 0.800000
v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Size = v0_73_
v0_73_ = "[ Purchase Method Selection ]"
v0_72_.HeaderText = v0_73_
v0_73_ = "Choose the way you want to purchase."
v0_72_.Description = v0_73_
v0_73_ = v0_48_
v0_74_ = "RobuxPrice"
v0_73_ = v0_73_(v0_74_)
v0_75_ = function(a1, a2)
    local v8_3_ = "%* Robux"
    local v8_5_ = v0_59_
    local v8_6_ = a2
    v8_5_ = v8_5_(v8_6_)
    v8_3_ = v8_3_:format(v8_5_)
    local v8_2_ = v8_3_
    return v8_2_
end
v0_73_ = v0_73_:With(v0_75_)
v0_72_.YesButtonText = v0_73_
local fromRGB = Color3.fromRGB
v0_74_ = 125
v0_75_ = 255
v0_76_ = 78
v0_73_ = fromRGB(v0_74_, v0_75_, v0_76_)
v0_72_.YesButtonColor3 = v0_73_
v0_73_ = v0_48_
v0_74_ = "Alternative,Price"
v0_73_ = v0_73_(v0_74_)
v0_75_ = function(a1)
    local v9_2_ = "%* %*"
    local v9_4_ = v0_59_
    local v9_5_ = a1.Price
    v9_4_ = v9_4_(v9_5_)
    v9_5_ = a1.Alternative
    v9_2_ = v9_2_:format(v9_4_, v9_5_)
    local v9_1_ = v9_2_
    return v9_1_
end
v0_73_ = v0_73_:With(v0_75_)
v0_72_.NoButtonText = v0_73_
v0_73_ = v0_48_
v0_74_ = "AlternativeColor"
v0_73_ = v0_73_(v0_74_)
v0_72_.NoButtonColor3 = v0_73_
v0_73_ = v0_48_
v0_74_ = "PromptVisible"
v0_73_ = v0_73_(v0_74_)
v0_72_.Visible = v0_73_
v0_73_ = v0_24_.Created
v0_74_ = function(a1)
    v0_64_ = a1
end
v0_72_[v0_73_] = v0_74_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_29_
v0_73_ = table.create(1)
v0_75_ = -1
v0_73_.ZIndex = v0_75_
local fromScale = UDim2.fromScale
v0_76_ = 1
v0_77_ = 1
v0_75_ = fromScale(v0_76_, v0_77_)
v0_73_.Size = v0_75_
local new = Color3.new
v0_76_ = 1
v0_77_ = 1
v0_78_ = 1
v0_75_ = new(v0_76_, v0_77_, v0_78_)
v0_73_.BackgroundColor3 = v0_75_
v0_75_ = 0
v0_73_.BorderSizePixel = v0_75_
v0_75_ = v0_48_
v0_76_ = "Purchasing"
v0_75_ = v0_75_(v0_76_)
v0_73_.Visible = v0_75_
v0_74_ = v0_42_
v0_75_ = {}
v0_76_ = v0_24_.Created
v0_77_ = function(a1)
    local v11_3_ = "Follow"
    local v11_4_ = "Process"
    a1:SetAttribute(v11_3_, v11_4_)
end
v0_75_[v0_76_] = v0_77_
-- WARNING: SETLIST_C0, output may be wrong!
v0_73_ = {v0_74_, v0_74_(v0_75_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_70_ = {v0_71_, v0_72_(v0_73_)}
v0_69_ = v0_69_(v0_70_)
v0_70_ = v0_37_
v0_71_ = {}
v0_72_ = 1.823000
v0_71_.AspectRatio = v0_72_
v0_70_ = v0_70_(v0_71_)
v0_71_ = v0_40_
v0_72_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_72_.ApplyStrokeMode = Border
local new = Color3.new
v0_74_ = 1
v0_75_ = 1
v0_76_ = 1
v0_73_ = new(v0_74_, v0_75_, v0_76_)
v0_72_.Color = v0_73_
v0_73_ = 0.500000
v0_72_.Transparency = v0_73_
v0_73_ = 1.500000
v0_72_.Thickness = v0_73_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_44_
v0_73_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_66_ = {v0_67_, v0_72_(v0_73_)}
v0_65_ = v0_65_(v0_66_)
v0_50_ = v0_65_
v0_65_ = v0_29_
v0_66_ = "Gamepass_Gifting"
v0_65_ = v0_65_(v0_66_)
v0_66_ = table.create(7)
local new = Vector2.new
v0_75_ = 0.500000
v0_76_ = 0.500000
v0_74_ = new(v0_75_, v0_76_)
v0_66_.AnchorPoint = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.500000
v0_76_ = 0.500000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_66_.Position = v0_74_
local fromScale = UDim2.fromScale
v0_75_ = 0.400000
v0_76_ = 0.400000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_66_.Size = v0_74_
local new = Color3.new
v0_74_ = new()
v0_66_.BackgroundColor3 = v0_74_
v0_74_ = 0.400000
v0_66_.BackgroundTransparency = v0_74_
v0_74_ = false
v0_66_.Visible = v0_74_
v0_67_ = v0_33_
v0_68_ = "Searching"
v0_67_ = v0_67_(v0_68_)
v0_68_ = table.create(1)
local fromScale = UDim2.fromScale
v0_71_ = 1
v0_72_ = 1
v0_70_ = fromScale(v0_71_, v0_72_)
v0_68_.Size = v0_70_
local new = Color3.new
v0_70_ = new()
v0_68_.BackgroundColor3 = v0_70_
v0_70_ = 0.300000
v0_68_.BackgroundTransparency = v0_70_
v0_70_ = ""
v0_68_.Text = v0_70_
v0_70_ = v0_49_
v0_71_ = "Searching"
v0_70_ = v0_70_(v0_71_)
v0_68_.Visible = v0_70_
v0_70_ = false
v0_68_.AutoButtonColor = v0_70_
v0_70_ = 200
v0_68_.ZIndex = v0_70_
v0_69_ = v0_32_
v0_70_ = "Title"
v0_69_ = v0_69_(v0_70_)
v0_70_ = {}
v0_71_ = 1
v0_70_.BackgroundTransparency = v0_71_
local new = Vector2.new
v0_72_ = 0.500000
v0_73_ = 0.500000
v0_71_ = new(v0_72_, v0_73_)
v0_70_.AnchorPoint = v0_71_
local fromScale = UDim2.fromScale
v0_72_ = 0.500000
v0_73_ = 0.500000
v0_71_ = fromScale(v0_72_, v0_73_)
v0_70_.Position = v0_71_
local fromScale = UDim2.fromScale
v0_72_ = 1
v0_73_ = 0.250000
v0_71_ = fromScale(v0_72_, v0_73_)
v0_70_.Size = v0_71_
v0_71_ = "Searching User..."
v0_70_.Text = v0_71_
v0_71_ = true
v0_70_.TextScaled = v0_71_
local new = Color3.new
v0_72_ = 1
v0_73_ = 1
v0_74_ = 1
v0_71_ = new(v0_72_, v0_73_, v0_74_)
v0_70_.TextColor3 = v0_71_
local new = Font.new
v0_72_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_71_ = new(v0_72_, Bold)
v0_70_.FontFace = v0_71_
-- WARNING: SETLIST_C0, output may be wrong!
v0_68_ = {v0_69_, v0_69_(v0_70_)}
v0_67_ = v0_67_(v0_68_)
v0_68_ = v0_33_
v0_69_ = "Disabled123"
v0_68_ = v0_68_(v0_69_)
v0_69_ = {}
local fromScale = UDim2.fromScale
v0_71_ = 1
v0_72_ = 1
v0_70_ = fromScale(v0_71_, v0_72_)
v0_69_.Size = v0_70_
local new = Color3.new
v0_70_ = new()
v0_69_.BackgroundColor3 = v0_70_
v0_70_ = 0.300000
v0_69_.BackgroundTransparency = v0_70_
v0_70_ = ""
v0_69_.Text = v0_70_
v0_70_ = true
v0_69_.TextScaled = v0_70_
local new = Color3.new
v0_71_ = 1
v0_72_ = 1
v0_73_ = 1
v0_70_ = new(v0_71_, v0_72_, v0_73_)
v0_69_.TextColor3 = v0_70_
local new = Font.new
v0_71_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_70_ = new(v0_71_, Bold)
v0_69_.FontFace = v0_70_
v0_70_ = v0_49_
v0_71_ = "CanSearch"
v0_70_ = v0_70_(v0_71_)
v0_72_ = function(a1, a2)
    local v12_2_ = not a2
    return v12_2_
end
v0_70_ = v0_70_:With(v0_72_)
v0_69_.Visible = v0_70_
v0_70_ = false
v0_69_.AutoButtonColor = v0_70_
v0_70_ = 200
v0_69_.ZIndex = v0_70_
v0_68_ = v0_68_(v0_69_)
v0_69_ = v0_32_
v0_70_ = "Title"
v0_69_ = v0_69_(v0_70_)
v0_70_ = table.create(3)
local fromScale = UDim2.fromScale
v0_75_ = 1
v0_76_ = 0.110000
v0_74_ = fromScale(v0_75_, v0_76_)
v0_70_.Size = v0_74_
local new = Color3.new
v0_74_ = new()
v0_70_.BackgroundColor3 = v0_74_
v0_74_ = 0.650000
v0_70_.BackgroundTransparency = v0_74_
v0_74_ = "Gamepass Gifting"
v0_70_.Text = v0_74_
v0_74_ = true
v0_70_.TextScaled = v0_74_
local new = Color3.new
v0_75_ = 1
v0_76_ = 1
v0_77_ = 1
v0_74_ = new(v0_75_, v0_76_, v0_77_)
v0_70_.TextColor3 = v0_74_
local new = Font.new
v0_75_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_74_ = new(v0_75_, Bold)
v0_70_.FontFace = v0_74_
v0_71_ = v0_33_
v0_72_ = "Close"
v0_71_ = v0_71_(v0_72_)
v0_72_ = {}
local fromScale = UDim2.fromScale
v0_74_ = 0.950000
v0_75_ = 0
v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Position = v0_73_
local fromScale = UDim2.fromScale
v0_74_ = 1
v0_75_ = 1
v0_73_ = fromScale(v0_74_, v0_75_)
v0_72_.Size = v0_73_
v0_73_ = 1
v0_72_.BackgroundTransparency = v0_73_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_72_.SizeConstraint = RelativeYY
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
local Bold = Enum.FontWeight.Bold
v0_73_ = new(v0_74_, Bold)
v0_72_.FontFace = v0_73_
v0_73_ = v0_24_
v0_74_ = "MouseButton1Click"
v0_73_ = v0_73_(v0_74_)
v0_74_ = function(a1)
    local v13_2_ = v0_12_
    local v13_1_ = v13_2_.PlaySFX
    v13_2_ = "Click"
    local v13_3_ = "UISounds"
    v13_1_(v13_2_, v13_3_)
    v13_2_ = v0_22_
    v13_1_ = v13_2_.CloseAllWindows
    v13_1_()
    v13_1_ = v0_50_
    v13_2_ = true
    v13_1_.Visible = v13_2_
    v13_2_ = v0_6_
    v13_1_ = v13_2_.Clear
    v13_1_()
end
v0_72_[v0_73_] = v0_74_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_40_
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
v0_73_ = v0_43_
v0_74_ = {}
v0_75_ = 0.250000
v0_74_.Size = v0_75_
-- WARNING: SETLIST_C0, output may be wrong!
v0_70_ = {v0_71_, v0_73_(v0_74_)}
v0_69_ = v0_69_(v0_70_)
v0_70_ = v0_29_
v0_71_ = "Gifting"
v0_70_ = v0_70_(v0_71_)
v0_71_ = table.create(4)
local new = Vector2.new
v0_77_ = 0.500000
v0_78_ = 0
v0_76_ = new(v0_77_, v0_78_)
v0_71_.AnchorPoint = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.500000
v0_78_ = 0.130000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_71_.Position = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.985000
v0_78_ = 0.850000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_71_.Size = v0_76_
v0_76_ = 1
v0_71_.BackgroundTransparency = v0_76_
v0_72_ = v0_29_
v0_73_ = "Holder"
v0_72_ = v0_72_(v0_73_)
v0_73_ = table.create(7)
local fromScale = UDim2.fromScale
local v0_82_ = 1
local v0_83_ = 1
local v0_81_ = fromScale(v0_82_, v0_83_)
v0_73_.Size = v0_81_
local new = Color3.new
v0_81_ = new()
v0_73_.BackgroundColor3 = v0_81_
v0_81_ = 0.650000
v0_73_.BackgroundTransparency = v0_81_
v0_74_ = v0_35_
v0_75_ = "TargetPlayerImage"
v0_74_ = v0_74_(v0_75_)
v0_75_ = table.create(5)
local new = Vector2.new
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = new(v0_82_, v0_83_)
v0_75_.AnchorPoint = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.150000
v0_83_ = 0.500000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_75_.Position = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.260000
v0_83_ = 0.900000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_75_.Size = v0_81_
local new = Color3.new
v0_81_ = new()
v0_75_.BackgroundColor3 = v0_81_
v0_81_ = 0.800000
v0_75_.BackgroundTransparency = v0_81_
v0_81_ = v0_49_
v0_82_ = "UserThumbnail"
v0_81_ = v0_81_(v0_82_)
v0_75_.Image = v0_81_
v0_76_ = v0_29_
v0_77_ = "Disabled"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(1)
local fromScale = UDim2.fromScale
local v0_80_ = 1
v0_81_ = 1
v0_79_ = fromScale(v0_80_, v0_81_)
v0_77_.Size = v0_79_
local new = Color3.new
v0_79_ = new()
v0_77_.BackgroundColor3 = v0_79_
v0_79_ = 0.300000
v0_77_.BackgroundTransparency = v0_79_
v0_79_ = v0_49_
v0_80_ = "Disabled"
v0_79_ = v0_79_(v0_80_)
v0_77_.Visible = v0_79_
v0_79_ = 200
v0_77_.ZIndex = v0_79_
v0_78_ = v0_32_
v0_79_ = {}
local new = Vector2.new
v0_81_ = 0.500000
v0_82_ = 0.500000
v0_80_ = new(v0_81_, v0_82_)
v0_79_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.500000
v0_82_ = 0.500000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.800000
v0_82_ = 0.800000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Size = v0_80_
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = v0_49_
v0_81_ = "DisabledReason"
v0_80_ = v0_80_(v0_81_)
v0_79_.Text = v0_80_
v0_80_ = true
v0_79_.TextScaled = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.TextColor3 = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_80_ = new(v0_81_, Bold)
v0_79_.FontFace = v0_80_
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_78_(v0_79_)}
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_32_
v0_78_ = "TargetPlayerName"
v0_77_ = v0_77_(v0_78_)
v0_78_ = {}
local new = Vector2.new
v0_80_ = 0.500000
v0_81_ = 1
v0_79_ = new(v0_80_, v0_81_)
v0_78_.AnchorPoint = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.500000
v0_81_ = 1
v0_79_ = fromScale(v0_80_, v0_81_)
v0_78_.Position = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.800000
v0_81_ = 0.150000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_78_.Size = v0_79_
v0_79_ = 1
v0_78_.BackgroundTransparency = v0_79_
v0_79_ = v0_49_
v0_80_ = "UserName"
v0_79_ = v0_79_(v0_80_)
v0_78_.Text = v0_79_
v0_79_ = true
v0_78_.TextScaled = v0_79_
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_78_.TextColor3 = v0_79_
local new = Font.new
v0_80_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_79_ = new(v0_80_, Bold)
v0_78_.FontFace = v0_79_
v0_79_ = 0.400000
v0_78_.TextStrokeTransparency = v0_79_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_40_
v0_79_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_79_.ApplyStrokeMode = Border
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.Color = v0_80_
v0_80_ = 0.500000
v0_79_.Transparency = v0_80_
v0_80_ = 1.500000
v0_79_.Thickness = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_43_
v0_80_ = {}
v0_81_ = 0.050000
v0_80_.Size = v0_81_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_44_
v0_81_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_75_ = {v0_76_, v0_80_(v0_81_)}
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_32_
v0_76_ = "Title"
v0_75_ = v0_75_(v0_76_)
v0_76_ = {}
local fromScale = UDim2.fromScale
v0_78_ = 0.320000
v0_79_ = 0.050000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_76_.Position = v0_77_
local fromScale = UDim2.fromScale
v0_78_ = 0.600000
v0_79_ = 0.200000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_76_.Size = v0_77_
v0_77_ = 1
v0_76_.BackgroundTransparency = v0_77_
v0_77_ = v0_49_
v0_78_ = "Name"
v0_77_ = v0_77_(v0_78_)
v0_79_ = function(a1, a2)
    local v14_3_ = "Gifting %*"
    local v14_5_ = a2
    v14_3_ = v14_3_:format(v14_5_)
    local v14_2_ = v14_3_
    return v14_2_
end
v0_77_ = v0_77_:With(v0_79_)
v0_76_.Text = v0_77_
v0_77_ = true
v0_76_.TextScaled = v0_77_
local new = Color3.new
v0_78_ = 1
v0_79_ = 1
v0_80_ = 1
v0_77_ = new(v0_78_, v0_79_, v0_80_)
v0_76_.TextColor3 = v0_77_
local new = Font.new
v0_78_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_77_ = new(v0_78_, Bold)
v0_76_.FontFace = v0_77_
local Left = Enum.TextXAlignment.Left
v0_76_.TextXAlignment = Left
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_32_
v0_77_ = "Price"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(1)
local fromScale = UDim2.fromScale
v0_80_ = 0.320000
v0_81_ = 0.270000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_77_.Position = v0_79_
local fromScale = UDim2.fromScale
v0_80_ = 0.600000
v0_81_ = 0.100000
v0_79_ = fromScale(v0_80_, v0_81_)
v0_77_.Size = v0_79_
v0_79_ = 1
v0_77_.BackgroundTransparency = v0_79_
v0_79_ = v0_49_
v0_80_ = "Price"
v0_79_ = v0_79_(v0_80_)
v0_81_ = function(a1, a2)
    local v15_3_ = "[ %*R$ ]"
    local v15_5_ = v0_59_
    local v15_6_ = a2
    v15_5_ = v15_5_(v15_6_)
    v15_3_ = v15_3_:format(v15_5_)
    local v15_2_ = v15_3_
    return v15_2_
end
v0_79_ = v0_79_:With(v0_81_)
v0_77_.Text = v0_79_
v0_79_ = true
v0_77_.TextScaled = v0_79_
local new = Color3.new
v0_80_ = 1
v0_81_ = 1
v0_82_ = 1
v0_79_ = new(v0_80_, v0_81_, v0_82_)
v0_77_.TextColor3 = v0_79_
local new = Font.new
v0_80_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_79_ = new(v0_80_, Bold)
v0_77_.FontFace = v0_79_
local Left = Enum.TextXAlignment.Left
v0_77_.TextXAlignment = Left
v0_78_ = v0_42_
v0_79_ = {}
local new = ColorSequence.new
v0_81_ = table.create(2)
local new_0 = ColorSequenceKeypoint.new
v0_83_ = 0
local fromRGB = Color3.fromRGB
local v0_85_ = 172
local v0_86_ = 255
local v0_87_ = 186
v0_82_ = new_0(fromRGB(v0_85_, v0_86_, v0_87_))
local new_0 = ColorSequenceKeypoint.new
local v0_84_ = 1
local fromRGB = Color3.fromRGB
v0_86_ = 57
v0_87_ = 255
local v0_88_ = 106
-- WARNING: SETLIST_C0, output may be wrong!
v0_81_ = {v0_82_, new_0(fromRGB(v0_86_, v0_87_, v0_88_))}
v0_80_ = new(v0_81_)
v0_79_.Color = v0_80_
v0_80_ = 90
v0_79_.Rotation = v0_80_
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_78_(v0_79_)}
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_34_
v0_78_ = "TargetPlayerTextBox"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(3)
local fromScale = UDim2.fromScale
v0_83_ = 0.320000
v0_84_ = 0.555000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_78_.Position = v0_82_
local fromScale = UDim2.fromScale
v0_83_ = 0.350000
v0_84_ = 0.120000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_78_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_78_.BackgroundColor3 = v0_82_
v0_82_ = 0.800000
v0_78_.BackgroundTransparency = v0_82_
v0_82_ = ""
v0_78_.Text = v0_82_
v0_82_ = "Search User..."
v0_78_.PlaceholderText = v0_82_
v0_82_ = true
v0_78_.TextScaled = v0_82_
local new = Color3.new
v0_83_ = 1
v0_84_ = 1
v0_85_ = 1
v0_82_ = new(v0_83_, v0_84_, v0_85_)
v0_78_.TextColor3 = v0_82_
local new = Font.new
v0_83_ = "rbxasset://fonts/families/Sarpanch.json"
v0_82_ = new(v0_83_)
v0_78_.FontFace = v0_82_
v0_79_ = v0_40_
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
v0_80_ = v0_43_
v0_81_ = {}
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_44_
v0_82_ = {}
v0_81_ = v0_81_(v0_82_)
v0_78_[1] = v0_79_
v0_78_[2] = v0_80_
v0_78_[3] = v0_81_
v0_82_ = v0_24_.Prop
v0_83_ = "Text"
v0_82_ = v0_82_(v0_83_)
v0_83_ = function(a1, a2)
    v0_54_ = a1
end
v0_78_[v0_82_] = v0_83_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_33_
v0_79_ = "SearchButton"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(3)
local fromScale = UDim2.fromScale
v0_84_ = 0.685000
v0_85_ = 0.555000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_79_.Position = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 0.135000
v0_85_ = 0.120000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_79_.Size = v0_83_
local new = Color3.new
v0_83_ = new()
v0_79_.BackgroundColor3 = v0_83_
v0_83_ = 0.650000
v0_79_.BackgroundTransparency = v0_83_
v0_83_ = "Search"
v0_79_.Text = v0_83_
v0_83_ = true
v0_79_.TextScaled = v0_83_
local new = Color3.new
v0_84_ = 1
v0_85_ = 1
v0_86_ = 1
v0_83_ = new(v0_84_, v0_85_, v0_86_)
v0_79_.TextColor3 = v0_83_
local new = Font.new
v0_84_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_83_ = new(v0_84_, Bold)
v0_79_.FontFace = v0_83_
v0_80_ = v0_40_
v0_81_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_81_.ApplyStrokeMode = Border
local new = Color3.new
v0_83_ = 1
v0_84_ = 1
v0_85_ = 1
v0_82_ = new(v0_83_, v0_84_, v0_85_)
v0_81_.Color = v0_82_
v0_82_ = 0.500000
v0_81_.Transparency = v0_82_
v0_82_ = 1.500000
v0_81_.Thickness = v0_82_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_43_
v0_82_ = {}
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_44_
v0_83_ = {}
v0_82_ = v0_82_(v0_83_)
v0_79_[1] = v0_80_
v0_79_[2] = v0_81_
v0_79_[3] = v0_82_
v0_83_ = v0_24_
v0_84_ = "MouseButton1Click"
v0_83_ = v0_83_(v0_84_)
v0_84_ = function(a1)
    local v17_2_ = v0_6_
    local v17_1_ = v17_2_.SearchUser
    local v17_3_ = v0_54_
    v17_2_ = v17_3_ or ""
    local v17_4_ = v0_49_
    v17_3_ = v17_4_.SelectedGamepassId
    v17_1_ = v17_1_(v17_2_, v17_3_)
    if v17_1_ then
        v17_3_ = v0_12_
        v17_2_ = v17_3_.PlaySFX
        v17_3_ = "Click"
        v17_4_ = "UISounds"
        v17_2_(v17_3_, v17_4_)
        v17_2_ = v17_1_.FailedReason
        if v17_2_ ~= "" then
            v17_2_ = v17_1_.FailedReason
            if v17_2_ == "NotSolsRNGUser" then
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.Disabled = v17_3_
                v17_2_ = v0_49_
                v17_3_ = "Not Sol's RNG user"
                v17_2_.DisabledReason = v17_3_
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.GiftDisabled = v17_3_
                v17_2_ = v0_49_
                v17_4_ = "%*%*(@%*)"
                local v17_6_ = v17_1_.DisplayName
                local v17_8_ = v17_1_.HasVerifiedBadge
                if v17_8_ then
                    local v17_7_ = ""
                else
                    local v17_7_ = ""
                end
                v17_8_ = v17_1_.UserName
                v17_4_ = v17_4_:format(v17_6_, nil, v17_8_)
                v17_3_ = v17_4_
                v17_2_.UserName = v17_3_
                v17_2_ = v0_49_
                v17_3_ = v17_1_.UserThumbnailId
                v17_2_.UserThumbnail = v17_3_
                return
            end
            v17_2_ = v17_1_.FailedReason
            if v17_2_ == "AlreadyHasGamepass" then
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.Disabled = v17_3_
                v17_2_ = v0_49_
                v17_3_ = "This user already has that game pass"
                v17_2_.DisabledReason = v17_3_
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.GiftDisabled = v17_3_
                v17_2_ = v0_49_
                v17_4_ = "%*%*(@%*)"
                local v17_6_ = v17_1_.DisplayName
                local v17_8_ = v17_1_.HasVerifiedBadge
                if v17_8_ then
                    local v17_7_ = ""
                else
                    local v17_7_ = ""
                end
                v17_8_ = v17_1_.UserName
                v17_4_ = v17_4_:format(v17_6_, nil, v17_8_)
                v17_3_ = v17_4_
                v17_2_.UserName = v17_3_
                v17_2_ = v0_49_
                v17_3_ = v17_1_.UserThumbnailId
                v17_2_.UserThumbnail = v17_3_
                return
            end
            v17_2_ = v17_1_.FailedReason
            if v17_2_ == "NotInSameServer" then
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.Disabled = v17_3_
                v17_2_ = v0_49_
                v17_3_ = "This user is not in same server"
                v17_2_.DisabledReason = v17_3_
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.GiftDisabled = v17_3_
                v17_2_ = v0_49_
                v17_4_ = "%*%*(@%*)"
                local v17_6_ = v17_1_.DisplayName
                local v17_8_ = v17_1_.HasVerifiedBadge
                if v17_8_ then
                    local v17_7_ = ""
                else
                    local v17_7_ = ""
                end
                v17_8_ = v17_1_.UserName
                v17_4_ = v17_4_:format(v17_6_, nil, v17_8_)
                v17_3_ = v17_4_
                v17_2_.UserName = v17_3_
                v17_2_ = v0_49_
                v17_3_ = v17_1_.UserThumbnailId
                v17_2_.UserThumbnail = v17_3_
                return
            end
            v17_2_ = v17_1_.FailedReason
            if v17_2_ == "Self" then
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.Disabled = v17_3_
                v17_2_ = v0_49_
                v17_3_ = "You cannot gift to yourself"
                v17_2_.DisabledReason = v17_3_
                v17_2_ = v0_49_
                v17_3_ = true
                v17_2_.GiftDisabled = v17_3_
                v17_2_ = v0_49_
                v17_4_ = "%*%*(@%*)"
                local v17_6_ = v17_1_.DisplayName
                local v17_8_ = v17_1_.HasVerifiedBadge
                if v17_8_ then
                    local v17_7_ = ""
                else
                    local v17_7_ = ""
                end
                v17_8_ = v17_1_.UserName
                v17_4_ = v17_4_:format(v17_6_, nil, v17_8_)
                v17_3_ = v17_4_
                v17_2_.UserName = v17_3_
                v17_2_ = v0_49_
                v17_3_ = v17_1_.UserThumbnailId
                v17_2_.UserThumbnail = v17_3_
                return
            end
            v17_2_ = v0_49_
            v17_3_ = true
            v17_2_.Disabled = v17_3_
            v17_2_ = v0_49_
            v17_3_ = ""
            v17_2_.DisabledReason = v17_3_
            v17_2_ = v0_49_
            v17_3_ = true
            v17_2_.GiftDisabled = v17_3_
            v17_2_ = v0_49_
            v17_3_ = ""
            v17_2_.UserName = v17_3_
            v17_2_ = v0_49_
            v17_3_ = ""
            v17_2_.UserThumbnail = v17_3_
            return
        end
        v17_2_ = v0_49_
        v17_3_ = false
        v17_2_.Disabled = v17_3_
        v17_2_ = v0_49_
        v17_3_ = ""
        v17_2_.DisabledReason = v17_3_
        v17_2_ = v0_49_
        v17_3_ = false
        v17_2_.GiftDisabled = v17_3_
        v17_2_ = v0_49_
        v17_4_ = "%*%*(@%*)"
        local v17_6_ = v17_1_.DisplayName
        local v17_8_ = v17_1_.HasVerifiedBadge
        if v17_8_ then
            local v17_7_ = ""
        else
            local v17_7_ = ""
        end
        v17_8_ = v17_1_.UserName
        v17_4_ = v17_4_:format(v17_6_, nil, v17_8_)
        v17_3_ = v17_4_
        v17_2_.UserName = v17_3_
        v17_2_ = v0_49_
        v17_3_ = v17_1_.UserThumbnailId
        v17_2_.UserThumbnail = v17_3_
    end
end
v0_79_[v0_83_] = v0_84_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_33_
v0_80_ = "GiftButton"
v0_79_ = v0_79_(v0_80_)
v0_80_ = table.create(4)
local fromScale = UDim2.fromScale
v0_86_ = 0.320000
v0_87_ = 0.720000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_80_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.500000
v0_87_ = 0.240000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_80_.Size = v0_85_
local fromRGB = Color3.fromRGB
v0_86_ = 50
v0_87_ = 50
v0_88_ = 50
v0_85_ = fromRGB(v0_86_, v0_87_, v0_88_)
v0_80_.BackgroundColor3 = v0_85_
v0_85_ = 0.600000
v0_80_.BackgroundTransparency = v0_85_
v0_85_ = "Gift"
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
local Bold = Enum.FontWeight.Bold
v0_85_ = new(v0_86_, Bold)
v0_80_.FontFace = v0_85_
v0_81_ = v0_42_
v0_82_ = {}
local new = ColorSequence.new
v0_84_ = table.create(3)
local new_0 = ColorSequenceKeypoint.new
v0_86_ = 0
local fromRGB = Color3.fromRGB
v0_88_ = 116
local v0_89_ = 169
local v0_90_ = 255
v0_85_ = new_0(fromRGB(v0_88_, v0_89_, v0_90_))
local new_0 = ColorSequenceKeypoint.new
v0_87_ = 0.500000
local fromRGB = Color3.fromRGB
v0_89_ = 198
v0_90_ = 223
local v0_91_ = 255
v0_86_ = new_0(fromRGB(v0_89_, v0_90_, v0_91_))
local new_0 = ColorSequenceKeypoint.new
v0_88_ = 1
local fromRGB = Color3.fromRGB
v0_90_ = 167
v0_91_ = 205
local v0_92_ = 255
-- WARNING: SETLIST_C0, output may be wrong!
v0_84_ = {v0_85_, new_0(fromRGB(v0_90_, v0_91_, v0_92_))}
v0_83_ = new(v0_84_)
v0_82_.Color = v0_83_
v0_83_ = 70
v0_82_.Rotation = v0_83_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_40_
v0_83_ = table.create(1)
local Border = Enum.ApplyStrokeMode.Border
v0_83_.ApplyStrokeMode = Border
local new = Color3.new
v0_86_ = 1
v0_87_ = 1
v0_88_ = 1
v0_85_ = new(v0_86_, v0_87_, v0_88_)
v0_83_.Color = v0_85_
v0_85_ = 0.500000
v0_83_.Transparency = v0_85_
v0_85_ = 1.500000
v0_83_.Thickness = v0_85_
v0_84_ = v0_42_
v0_85_ = {}
local new = ColorSequence.new
v0_87_ = table.create(3)
local new_0 = ColorSequenceKeypoint.new
v0_89_ = 0
local fromRGB = Color3.fromRGB
v0_91_ = 116
v0_92_ = 169
local v0_93_ = 255
v0_88_ = new_0(fromRGB(v0_91_, v0_92_, v0_93_))
local new_0 = ColorSequenceKeypoint.new
v0_90_ = 0.500000
local fromRGB = Color3.fromRGB
v0_92_ = 198
v0_93_ = 223
local v0_94_ = 255
v0_89_ = new_0(fromRGB(v0_92_, v0_93_, v0_94_))
local new_0 = ColorSequenceKeypoint.new
v0_91_ = 1
local fromRGB = Color3.fromRGB
v0_93_ = 167
v0_94_ = 205
local v0_95_ = 255
-- WARNING: SETLIST_C0, output may be wrong!
v0_87_ = {v0_88_, new_0(fromRGB(v0_93_, v0_94_, v0_95_))}
v0_86_ = new(v0_87_)
v0_85_.Color = v0_86_
v0_86_ = 70
v0_85_.Rotation = v0_86_
-- WARNING: SETLIST_C0, output may be wrong!
v0_83_ = {v0_84_, v0_84_(v0_85_)}
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_43_
v0_84_ = table.create(1)
v0_86_ = 0.150000
v0_84_.Size = v0_86_
v0_85_ = v0_42_
v0_86_ = {}
local new = ColorSequence.new
v0_88_ = table.create(3)
local new_1 = ColorSequenceKeypoint.new
v0_90_ = 0
local fromRGB_0 = Color3.fromRGB
v0_92_ = 116
v0_93_ = 169
v0_94_ = 255
v0_89_ = new_1(fromRGB_0(v0_92_, v0_93_, v0_94_))
local new_0 = ColorSequenceKeypoint.new
v0_91_ = 0.500000
local fromRGB = Color3.fromRGB
v0_93_ = 198
v0_94_ = 223
v0_95_ = 255
v0_90_ = new_0(fromRGB(v0_93_, v0_94_, v0_95_))
local new_0 = ColorSequenceKeypoint.new
v0_92_ = 1
local fromRGB = Color3.fromRGB
v0_94_ = 167
v0_95_ = 205
local v0_96_ = 255
-- WARNING: SETLIST_C0, output may be wrong!
v0_88_ = {v0_89_, new_0(fromRGB(v0_94_, v0_95_, v0_96_))}
v0_87_ = new(v0_88_)
v0_86_.Color = v0_87_
v0_87_ = 70
v0_86_.Rotation = v0_87_
-- WARNING: SETLIST_C0, output may be wrong!
v0_84_ = {v0_85_, v0_85_(v0_86_)}
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_44_
v0_85_ = {}
v0_84_ = v0_84_(v0_85_)
v0_80_[1] = v0_81_
v0_80_[2] = v0_82_
v0_80_[3] = v0_83_
v0_80_[4] = v0_84_
v0_85_ = v0_24_
v0_86_ = "MouseButton1Click"
v0_85_ = v0_85_(v0_86_)
v0_86_ = function(a1)
    local v18_2_ = v0_49_
    local v18_1_ = v18_2_.UserName
    if v18_1_ ~= "" then
        v18_2_ = v0_12_
        v18_1_ = v18_2_.PlaySFX
        v18_2_ = "Click"
        local v18_3_ = "UISounds"
        v18_1_(v18_2_, v18_3_)
        v18_1_ = v0_5_
        v18_3_ = v0_7_
        local v18_5_ = v0_49_
        local v18_4_ = v18_5_.SelectedProductId
        v18_1_:PromptProductPurchase(v18_3_, v18_4_)
        v18_1_ = v0_49_
        v18_2_ = false
        v18_1_.CanSearch = v18_2_
    end
end
v0_80_[v0_85_] = v0_86_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_33_
v0_81_ = "GiftButtonDisabled"
v0_80_ = v0_80_(v0_81_)
v0_81_ = {}
local fromScale = UDim2.fromScale
v0_83_ = 0.320000
v0_84_ = 0.720000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.Position = v0_82_
local fromScale = UDim2.fromScale
v0_83_ = 0.500000
v0_84_ = 0.240000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_81_.Size = v0_82_
v0_82_ = false
v0_81_.AutoButtonColor = v0_82_
local new = Color3.new
v0_82_ = new()
v0_81_.BackgroundColor3 = v0_82_
v0_82_ = 0.300000
v0_81_.BackgroundTransparency = v0_82_
v0_82_ = ""
v0_81_.Text = v0_82_
v0_82_ = v0_49_
v0_83_ = "GiftDisabled"
v0_82_ = v0_82_(v0_83_)
v0_81_.Visible = v0_82_
v0_82_ = 200
v0_81_.ZIndex = v0_82_
-- WARNING: SETLIST_C0, output may be wrong!
v0_73_ = {v0_74_, v0_80_(v0_81_)}
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_40_
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
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_43_
v0_75_ = {}
v0_76_ = 0.040000
v0_75_.Size = v0_76_
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_44_
v0_76_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_71_ = {v0_72_, v0_75_(v0_76_)}
v0_70_ = v0_70_(v0_71_)
v0_71_ = v0_37_
v0_72_ = {}
v0_73_ = 3
v0_72_.AspectRatio = v0_73_
v0_71_ = v0_71_(v0_72_)
v0_72_ = v0_40_
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
v0_73_ = v0_44_
v0_74_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_66_ = {v0_67_, v0_73_(v0_74_)}
v0_65_ = v0_65_(v0_66_)
v0_66_ = v0_26_
v0_67_ = v0_9_
v0_68_ = v0_50_
v0_66_(v0_67_, v0_68_)
v0_66_ = v0_26_
v0_67_ = v0_9_
v0_68_ = v0_65_
v0_66_(v0_67_, v0_68_)
v0_66_ = false
v0_67_ = nil
v0_68_ = nil
v0_69_ = nil
v0_70_ = function(a1)
    local v19_1_ = function()
        local v20_0_ = v0_66_
        if v20_0_ then
            return
        end
        local find = table.find
        local v20_3_ = v0_17_
        local v20_2_ = v20_3_.Data
        local v20_1_ = v20_2_.OwnedPasses
        v20_3_ = a1
        v20_2_ = v20_3_.PassId
        v20_0_ = find(v20_1_, v20_2_)
        if v20_0_ then
            v20_1_ = v0_12_
            v20_0_ = v20_1_.Notify
            v20_1_ = "Error"
            v20_2_ = "You already purchased this product."
            v20_3_ = 10
            local v20_4_ = "Warn"
            return v20_0_(v20_1_, v20_2_, v20_3_, v20_4_)
        end
        v20_1_ = a1
        v20_0_ = v20_1_.PurchaseLimit
        if v20_0_ then
            v20_3_ = v0_17_
            v20_2_ = v20_3_.Data
            v20_1_ = v20_2_.ProductPurchaseCounts
            v20_3_ = a1
            v20_2_ = v20_3_.Id
            v20_0_ = v20_1_[v20_2_]
            if v20_0_ then
                v20_3_ = v0_17_
                v20_2_ = v20_3_.Data
                v20_1_ = v20_2_.ProductPurchaseCounts
                v20_3_ = a1
                v20_2_ = v20_3_.Id
                v20_0_ = v20_1_[v20_2_]
                v20_2_ = a1
                v20_1_ = v20_2_.PurchaseLimit
                if v20_1_ <= v20_0_ then
                    v20_1_ = v0_12_
                    v20_0_ = v20_1_.Notify
                    v20_1_ = "Error"
                    v20_2_ = "You've reached the purchase limit"
                    v20_3_ = 7
                    local v20_4_ = "Warn"
                    return v20_0_(v20_1_, v20_2_, v20_3_, v20_4_)
                end
            end
        end
        v20_1_ = a1
        v20_0_ = v20_1_.Alternatives
        if v20_0_ then
            v20_0_ = true
            v0_66_ = v20_0_
            v20_0_ = v0_62_
            v20_1_ = a1
            v20_0_, v20_1_ = v20_0_(v20_1_)
            if not v20_0_ then
                v20_2_ = false
                v0_66_ = v20_0_
                v20_3_ = v0_12_
                v20_2_ = v20_3_.Notify
                v20_3_ = "Error"
                local v20_4_ = "Price fetch failed. Please try later."
                local v20_5_ = 15
                local v20_6_ = "Warn"
                return v20_2_(v20_3_, v20_4_, v20_5_, v20_6_)
            end
            v20_3_ = a1
            v20_2_ = v20_3_.Alternatives
            v20_3_ = v0_48_
            local v20_4_ = v20_2_.Name
            v20_3_.Alternative = v20_4_
            v20_3_ = v0_48_
            v20_4_ = v20_2_.Color
            if not v20_4_ then
                local new = Color3.new
                local v20_5_ = 1
                local v20_6_ = 1
                local v20_7_ = 1
                v20_4_ = new(v20_5_, v20_6_, v20_7_)
            end
            v20_3_.AlternativeColor = v20_4_
            v20_3_ = v0_48_
            v20_4_ = true
            v20_3_.PromptVisible = v20_4_
            v20_3_ = v0_48_
            v20_3_.Price = v20_1_
            v20_3_ = v0_48_
            v20_3_.RobuxPrice = v20_0_
            v20_3_ = v0_64_
            local v20_5_ = true
            v20_3_ = v20_3_:GetResult(v20_5_)
            if v20_3_ == true then
                v20_5_ = a1
                v20_4_ = v20_5_.ProductId
                if v20_4_ then
                    v20_5_ = a1
                    v20_4_ = v20_5_.ProductId
                    v0_69_ = nil
                    v20_4_ = v0_5_
                    local v20_6_ = v0_7_
                    local v20_8_ = a1
                    local v20_7_ = v20_8_.ProductId
                    v20_4_:PromptProductPurchase(v20_6_, v20_7_)
                    return
                end
                v20_4_ = v0_5_
                local v20_6_ = v0_7_
                local v20_8_ = a1
                local v20_7_ = v20_8_.PassId
                v20_4_:PromptGamePassPurchase(v20_6_, v20_7_)
                return
            end
            if v20_3_ == false then
                v20_4_ = v0_4_
                local v20_6_ = false
                v20_4_ = v20_4_:GenerateGUID(v20_6_)
                v0_67_ = nil
                v20_4_ = a1
                v0_68_ = nil
                v20_6_ = v0_21_
                v20_5_ = v20_6_.CurrencyPurchase
                v20_4_ = v20_5_.send
                v20_5_ = {}
                v20_6_ = v20_2_.Name
                v20_5_.CurrencyType = v20_6_
                local v20_7_ = a1
                v20_6_ = v20_7_.Id
                v20_5_.ProductName = v20_6_
                v20_6_ = v0_67_
                v20_5_.RayId = v20_6_
                v20_4_(v20_5_)
                v20_4_ = v0_48_
                v20_5_ = true
                v20_4_.Purchasing = v20_5_
                return
            end
            v20_4_ = v0_48_
            v20_5_ = false
            v20_4_.PromptVisible = v20_5_
            v20_4_ = false
            v0_66_ = v20_0_
            return
        end
        v20_1_ = a1
        v20_0_ = v20_1_.ProductId
        if v20_0_ then
            v20_1_ = a1
            v20_0_ = v20_1_.ProductId
            v0_69_ = nil
            v20_0_ = v0_5_
            v20_2_ = v0_7_
            local v20_4_ = a1
            v20_3_ = v20_4_.ProductId
            v20_0_:PromptProductPurchase(v20_2_, v20_3_)
            return
        end
        v20_0_ = v0_5_
        v20_2_ = v0_7_
        local v20_4_ = a1
        v20_3_ = v20_4_.PassId
        v20_0_:PromptGamePassPurchase(v20_2_, v20_3_)
    end
    return v19_1_
end
v0_71_ = function(a1)
    local v21_1_ = function()
        local v22_1_ = v0_16_
        local v22_0_ = v22_1_.Create
        v22_1_ = "Mainte0ce in progress"
        local v22_2_ = "The game pass gifting feature is currently under mainte0ce, so the gifting function is unavailable"
        local v22_3_ = 10
        local v22_4_ = "Warn"
        v22_0_(v22_1_, v22_2_, v22_3_, v22_4_)
    end
    return v21_1_
end
v0_72_ = function(a1, a2)
    local v23_2_ = v0_52_
    if v23_2_ then
        v23_2_ = false
        v0_52_ = a1
        v23_2_ = v0_49_
        local v23_3_ = true
        v23_2_.Searching = v23_3_
        local running = coroutine.running
        v23_2_ = running()
        v0_53_ = v23_2_
        local v23_4_ = v0_21_
        v23_3_ = v23_4_.SearchUser
        v23_2_ = v23_3_.send
        v23_3_ = {}
        v23_3_.UserName = a1
        v23_3_.GamepassId = a2
        v23_2_(v23_3_)
        local yield = coroutine.yield
        v23_2_ = yield()
        v23_3_ = true
        v0_52_ = a1
        v23_3_ = v0_49_
        v23_4_ = false
        v23_3_.Searching = v23_4_
        return v23_2_
    end
    v23_2_ = false
    return v23_2_
end
v0_6_.SearchUser = v0_72_
v0_72_ = function()
    local v24_0_ = v0_55_
    if v24_0_ then
        v24_0_ = false
        v0_55_ = v24_0_
        v24_0_ = v0_49_
        local v24_1_ = false
        v24_0_.CanSearch = v24_1_
        local running = coroutine.running
        v24_0_ = running()
        v0_56_ = nil
        local v24_2_ = v0_21_
        v24_1_ = v24_2_.Clear
        v24_0_ = v24_1_.send
        v24_1_ = nil
        v24_0_(v24_1_)
        local yield = coroutine.yield
        v24_0_ = yield()
        v24_1_ = true
        v0_55_ = v24_0_
        v24_1_ = v0_49_
        v24_2_ = true
        v24_1_.CanSearch = v24_2_
        return v24_0_
    end
    v24_0_ = false
    return v24_0_
end
v0_6_.Clear = v0_72_
v0_6_.Frame = v0_50_
v0_73_ = v0_21_.SearchUserResult
v0_72_ = v0_73_.listen
v0_73_ = function(a1)
    local v25_1_ = v0_53_
    if v25_1_ then
        local spawn = task.spawn
        local v25_2_ = v0_53_
        local v25_3_ = a1
        spawn(v25_2_, v25_3_)
        v25_1_ = nil
        v0_53_ = a1
    end
end
v0_72_(v0_73_)
v0_73_ = v0_21_.Clear
v0_72_ = v0_73_.listen
v0_73_ = function(a1)
    local v26_1_ = v0_56_
    if v26_1_ then
        local spawn = task.spawn
        local v26_2_ = v0_56_
        local v26_3_ = true
        spawn(v26_2_, v26_3_)
        v26_1_ = nil
        v0_56_ = a1
    end
end
v0_72_(v0_73_)
v0_73_ = v0_21_.CurrencyPurchaseResult
v0_72_ = v0_73_.listen
v0_73_ = function(a1)
    local v27_1_ = a1.RayId
    local v27_2_ = v0_67_
    if v27_1_ ~= v27_2_ then
        return
    end
    v27_1_ = a1.Success
    if not v27_1_ then
        v27_2_ = v0_12_
        v27_1_ = v27_2_.Notify
        v27_2_ = "Purchase Failed"
        local v27_3_ = a1.Result
        local v27_4_ = 15
        local v27_5_ = "Warn"
        v27_1_(v27_2_, v27_3_, v27_4_, v27_5_)
    else
        v27_2_ = v0_12_
        v27_1_ = v27_2_.Notify
        v27_2_ = "Purchase Complete"
        local v27_4_ = "You've purchased \"%*\" with %*."
        local v27_7_ = v0_68_
        local v27_6_ = v27_7_.DisplayName
        if not v27_6_ then
            v27_7_ = v0_68_
            v27_6_ = v27_7_.Id
        end
        local v27_9_ = v0_68_
        local v27_8_ = v27_9_.Alternatives
        v27_7_ = v27_8_.Name
        v27_4_ = v27_4_:format(v27_6_, v27_7_)
        local v27_3_ = v27_4_
        v27_1_(v27_2_, v27_3_)
    end
    v27_1_ = a1.Cleared
    if v27_1_ then
        v27_1_ = nil
        v0_68_ = v27_2_
        v27_1_ = nil
        v0_67_ = a1
        v27_1_ = false
        v0_66_ = nil
        v27_1_ = v0_48_
        v27_2_ = false
        v27_1_.Purchasing = v27_2_
        v27_1_ = v0_48_
        v27_2_ = false
        v27_1_.PromptVisible = v27_2_
    end
end
v0_72_(v0_73_)
v0_73_ = v0_21_.ProductPurchased
v0_72_ = v0_73_.listen
v0_73_ = function(a1)
    local v28_2_ = v0_57_
    local v28_3_ = a1.ProductName
    local v28_1_ = v28_2_[v28_3_]
    if v28_1_ then
        v28_2_ = v28_1_.__prop
        v28_3_ = a1.PurchaseCount
        v28_2_.PurchaseCount = v28_3_
    end
end
v0_72_(v0_73_)
v0_72_ = v0_5_.PromptPurchaseFinished
v0_74_ = function(a1, a2, a3)
    local v29_3_ = v0_7_
    if v29_3_ ~= a1 then
        return
    end
    v29_3_ = v0_48_
    local v29_4_ = false
    v29_3_.PromptVisible = v29_4_
    v29_3_ = false
    v0_66_ = a3
end
v0_72_:Connect(v0_74_)
v0_72_ = v0_5_.PromptProductPurchaseFinished
v0_74_ = function(a1, a2, a3)
    local v30_4_ = v0_7_
    local v30_3_ = v30_4_.UserId
    if v30_3_ ~= a1 then
        return
    end
    v30_3_ = v0_69_
    if v30_3_ == a2 then
        v30_3_ = nil
        v0_68_ = a3
        v30_3_ = nil
        v0_67_ = v30_3_
        v30_3_ = nil
        v0_69_ = a2
        v30_3_ = false
        v0_66_ = v30_4_
        v30_3_ = v0_48_
        v30_4_ = false
        v30_3_.Purchasing = v30_4_
        v30_3_ = v0_48_
        v30_4_ = false
        v30_3_.PromptVisible = v30_4_
        if a3 then
            v30_4_ = pairs
            local v30_5_ = v0_19_
            local v30_4_, v30_5_, v30_6_ = v30_4_(v30_5_)
            for v30_7_, v30_8_ in v30_4_, v30_5_, v30_6_ do
                local v30_9_ = v30_8_.ProductId
                if v30_9_ == a2 then
                    v30_3_ = v30_8_
                else
                    v30_3_ = nil
                end
            end
            v30_3_ = nil
            v30_5_ = v0_57_
            v30_6_ = v30_3_.Id
            v30_4_ = v30_5_[v30_6_]
            v30_6_ = v0_12_
            v30_5_ = v30_6_.Notify
            v30_6_ = "Purchase Complete"
            local v30_8_ = "You've purchased \"%*\"."
            local v30_10_ = v30_3_.DisplayName
            if not v30_10_ then
                v30_10_ = v30_3_.Id
            end
            v30_8_ = v30_8_:format(v30_10_)
            local v30_7_ = v30_8_
            v30_5_(v30_6_, v30_7_)
            return
        end
    end
    v30_3_ = v0_49_
    v30_4_ = true
    v30_3_.CanSearch = v30_4_
    if a3 then
        v30_3_ = v0_49_
        v30_4_ = true
        v30_3_.Disabled = v30_4_
        v30_3_ = v0_49_
        v30_4_ = true
        v30_3_.GiftDisabled = v30_4_
        v30_3_ = v0_49_
        v30_4_ = "This user already has that game pass"
        v30_3_.DisabledReason = v30_4_
        v30_3_ = v0_49_
        v30_4_ = true
        v30_3_.GiftDisabled = v30_4_
    end
end
v0_72_:Connect(v0_74_)
v0_72_ = v0_27_.AddObject
v0_73_ = "Window"
v0_74_ = v0_50_
v0_72_(v0_73_, v0_74_)
v0_72_ = v0_27_.AddObject
v0_73_ = "Window"
v0_74_ = v0_65_
v0_72_(v0_73_, v0_74_)
v0_74_ = "PlayBegin"
v0_72_ = v0_7_:GetAttribute(v0_74_)
while not v0_72_ do
    local wait = task.wait
    wait()
    v0_74_ = "PlayBegin"
    v0_72_ = v0_7_:GetAttribute(v0_74_)
    while not v0_72_ do
    end
end
v0_72_ = ipairs
v0_73_ = v0_19_
v0_72_, v0_73_, v0_74_ = v0_72_(v0_73_)
for v0_75_, v0_76_ in v0_72_, v0_73_, v0_74_ do
    v0_77_ = v0_47_
    v0_78_ = {}
    v0_79_ = v0_76_.DisplayName
    if not v0_79_ then
        v0_79_ = v0_76_.Id
    end
    v0_78_.Name = v0_79_
    v0_79_ = v0_76_.Description
    v0_78_.Description = v0_79_
    v0_79_ = v0_76_.ImageId
    v0_78_.ImageId = v0_79_
    v0_79_ = v0_76_.LimitedTime
    if not v0_79_ then
        v0_79_ = 0
    end
    v0_78_.Timestamp = v0_79_
    v0_81_ = v0_17_.Data
    v0_80_ = v0_81_.ProductPurchaseCounts
    v0_81_ = v0_76_.Id
    v0_79_ = v0_80_[v0_81_]
    if not v0_79_ then
        v0_79_ = 0
    end
    v0_78_.PurchaseCount = v0_79_
    v0_79_ = v0_76_.PurchaseLimit
    v0_78_.PurchaseLimit = v0_79_
    v0_79_ = function()
        local v31_0_ = v0_66_
        if v31_0_ then
            return
        end
        local find = table.find
        local v31_3_ = v0_17_
        local v31_2_ = v31_3_.Data
        local v31_1_ = v31_2_.OwnedPasses
        v31_3_ = v0_76_
        v31_2_ = v31_3_.PassId
        v31_0_ = find(v31_1_, v31_2_)
        if v31_0_ then
            v31_1_ = v0_12_
            v31_0_ = v31_1_.Notify
            v31_1_ = "Error"
            v31_2_ = "You already purchased this product."
            v31_3_ = 10
            local v31_4_ = "Warn"
            return v31_0_(v31_1_, v31_2_, v31_3_, v31_4_)
        end
        v31_1_ = v0_76_
        v31_0_ = v31_1_.PurchaseLimit
        if v31_0_ then
            v31_3_ = v0_17_
            v31_2_ = v31_3_.Data
            v31_1_ = v31_2_.ProductPurchaseCounts
            v31_3_ = v0_76_
            v31_2_ = v31_3_.Id
            v31_0_ = v31_1_[v31_2_]
            if v31_0_ then
                v31_3_ = v0_17_
                v31_2_ = v31_3_.Data
                v31_1_ = v31_2_.ProductPurchaseCounts
                v31_3_ = v0_76_
                v31_2_ = v31_3_.Id
                v31_0_ = v31_1_[v31_2_]
                v31_2_ = v0_76_
                v31_1_ = v31_2_.PurchaseLimit
                if v31_1_ <= v31_0_ then
                    v31_1_ = v0_12_
                    v31_0_ = v31_1_.Notify
                    v31_1_ = "Error"
                    v31_2_ = "You've reached the purchase limit"
                    v31_3_ = 7
                    local v31_4_ = "Warn"
                    return v31_0_(v31_1_, v31_2_, v31_3_, v31_4_)
                end
            end
        end
        v31_1_ = v0_76_
        v31_0_ = v31_1_.Alternatives
        if v31_0_ then
            v31_0_ = true
            v0_66_ = v31_0_
            v31_0_ = v0_62_
            v31_1_ = v0_76_
            v31_0_, v31_1_ = v31_0_(v31_1_)
            if not v31_0_ then
                v31_2_ = false
                v0_66_ = v31_0_
                v31_3_ = v0_12_
                v31_2_ = v31_3_.Notify
                v31_3_ = "Error"
                local v31_4_ = "Price fetch failed. Please try later."
                local v31_5_ = 15
                local v31_6_ = "Warn"
                return v31_2_(v31_3_, v31_4_, v31_5_, v31_6_)
            end
            v31_3_ = v0_76_
            v31_2_ = v31_3_.Alternatives
            v31_3_ = v0_48_
            local v31_4_ = v31_2_.Name
            v31_3_.Alternative = v31_4_
            v31_3_ = v0_48_
            v31_4_ = v31_2_.Color
            if not v31_4_ then
                local new = Color3.new
                local v31_5_ = 1
                local v31_6_ = 1
                local v31_7_ = 1
                v31_4_ = new(v31_5_, v31_6_, v31_7_)
            end
            v31_3_.AlternativeColor = v31_4_
            v31_3_ = v0_48_
            v31_4_ = true
            v31_3_.PromptVisible = v31_4_
            v31_3_ = v0_48_
            v31_3_.Price = v31_1_
            v31_3_ = v0_48_
            v31_3_.RobuxPrice = v31_0_
            v31_3_ = v0_64_
            local v31_5_ = true
            v31_3_ = v31_3_:GetResult(v31_5_)
            if v31_3_ == true then
                v31_5_ = v0_76_
                v31_4_ = v31_5_.ProductId
                if v31_4_ then
                    v31_5_ = v0_76_
                    v31_4_ = v31_5_.ProductId
                    v0_69_ = nil
                    v31_4_ = v0_5_
                    local v31_6_ = v0_7_
                    local v31_8_ = v0_76_
                    local v31_7_ = v31_8_.ProductId
                    v31_4_:PromptProductPurchase(v31_6_, v31_7_)
                    return
                end
                v31_4_ = v0_5_
                local v31_6_ = v0_7_
                local v31_8_ = v0_76_
                local v31_7_ = v31_8_.PassId
                v31_4_:PromptGamePassPurchase(v31_6_, v31_7_)
                return
            end
            if v31_3_ == false then
                v31_4_ = v0_4_
                local v31_6_ = false
                v31_4_ = v31_4_:GenerateGUID(v31_6_)
                v0_67_ = nil
                v31_4_ = v0_76_
                v0_68_ = nil
                v31_6_ = v0_21_
                v31_5_ = v31_6_.CurrencyPurchase
                v31_4_ = v31_5_.send
                v31_5_ = {}
                v31_6_ = v31_2_.Name
                v31_5_.CurrencyType = v31_6_
                local v31_7_ = v0_76_
                v31_6_ = v31_7_.Id
                v31_5_.ProductName = v31_6_
                v31_6_ = v0_67_
                v31_5_.RayId = v31_6_
                v31_4_(v31_5_)
                v31_4_ = v0_48_
                v31_5_ = true
                v31_4_.Purchasing = v31_5_
                return
            end
            v31_4_ = v0_48_
            v31_5_ = false
            v31_4_.PromptVisible = v31_5_
            v31_4_ = false
            v0_66_ = v31_0_
            return
        end
        v31_1_ = v0_76_
        v31_0_ = v31_1_.ProductId
        if v31_0_ then
            v31_1_ = v0_76_
            v31_0_ = v31_1_.ProductId
            v0_69_ = nil
            v31_0_ = v0_5_
            v31_2_ = v0_7_
            local v31_4_ = v0_76_
            v31_3_ = v31_4_.ProductId
            v31_0_:PromptProductPurchase(v31_2_, v31_3_)
            return
        end
        v31_0_ = v0_5_
        v31_2_ = v0_7_
        local v31_4_ = v0_76_
        v31_3_ = v31_4_.PassId
        v31_0_:PromptGamePassPurchase(v31_2_, v31_3_)
    end
    v0_78_.PurchaseButtonClick = v0_79_
    v0_79_ = function()
        local v32_1_ = v0_16_
        local v32_0_ = v32_1_.Create
        v32_1_ = "Mainte0ce in progress"
        local v32_2_ = "The game pass gifting feature is currently under mainte0ce, so the gifting function is unavailable"
        local v32_3_ = 10
        local v32_4_ = "Warn"
        v32_0_(v32_1_, v32_2_, v32_3_, v32_4_)
    end
    v0_78_.GiftButtonClick = v0_79_
    v0_77_ = v0_77_(v0_78_)
    v0_78_ = v0_26_
    v0_79_ = v0_51_
    v0_80_ = v0_77_
    v0_78_(v0_79_, v0_80_)
    v0_78_ = v0_76_.Id
    v0_57_[v0_78_] = v0_77_
end
return v0_6_
