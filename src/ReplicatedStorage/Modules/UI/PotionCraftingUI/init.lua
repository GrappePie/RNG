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
local v0_16_ = "Storage"
v0_14_ = v0_1_:WaitForChild(v0_16_)
v0_15_ = require
local v0_18_ = "ItemDB"
v0_15_ = v0_15_(v0_14_:WaitForChild(v0_18_))
v0_16_ = require
local v0_19_ = "PotionRecipesDB"
v0_16_ = v0_16_(v0_14_:WaitForChild(v0_19_))
local v0_17_ = require
local v0_20_ = "PreviewModels"
v0_17_ = v0_17_(v0_14_:WaitForChild(v0_20_))
v0_18_ = require
local v0_21_ = "RarityDB"
v0_18_ = v0_18_(v0_14_:WaitForChild(v0_21_))
v0_21_ = "PotionRecipeList"
v0_19_ = v0_1_:WaitForChild(v0_21_)
local v0_22_ = "TierList"
v0_20_ = v0_1_:WaitForChild(v0_22_)
local v0_23_ = "Packets"
v0_21_ = v0_1_:WaitForChild(v0_23_)
v0_22_ = require
local v0_25_ = "PotionCrafting"
v0_22_ = v0_22_(v0_21_:WaitForChild(v0_25_))
v0_23_ = require
local v0_24_ = v0_12_
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_23_.Class
v0_25_ = v0_23_.Event
local v0_26_ = v0_23_.Tween
local v0_27_ = v0_23_.Mount
local v0_28_ = v0_23_.Store
local v0_29_ = v0_23_.Style
local v0_30_ = v0_24_
local v0_31_ = "Frame"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_24_
local v0_32_ = "ScrollingFrame"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_24_
local v0_33_ = "ViewportFrame"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_24_
local v0_34_ = "TextLabel"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_24_
local v0_35_ = "TextButton"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_24_
local v0_36_ = "TextBox"
v0_35_ = v0_35_(v0_36_)
v0_36_ = v0_24_
local v0_37_ = "ImageLabel"
v0_36_ = v0_36_(v0_37_)
v0_37_ = v0_24_
local v0_38_ = "ImageButton"
v0_37_ = v0_37_(v0_38_)
v0_38_ = v0_24_
local v0_39_ = "UIAspectRatioConstraint"
v0_38_ = v0_38_(v0_39_)
v0_39_ = v0_24_
local v0_40_ = "UIListLayout"
v0_39_ = v0_39_(v0_40_)
v0_40_ = v0_24_
local v0_41_ = "UIGridLayout"
v0_40_ = v0_40_(v0_41_)
v0_41_ = v0_24_
local v0_42_ = "UIStroke"
v0_41_ = v0_41_(v0_42_)
v0_42_ = v0_24_
local v0_43_ = "UIGradient"
v0_42_ = v0_42_(v0_43_)
v0_43_ = v0_24_
local v0_46_ = "Corner"
v0_43_ = v0_43_(v0_13_:WaitForChild(v0_46_))
local v0_44_ = v0_24_
local v0_47_ = "Shadow"
v0_44_ = v0_44_(v0_13_:WaitForChild(v0_47_))
local v0_45_ = v0_24_
local v0_48_ = "Ingredient"
v0_45_ = v0_45_(v0_13_:WaitForChild(v0_48_))
v0_46_ = v0_24_
local v0_49_ = "AuraLabel"
v0_46_ = v0_46_(v0_13_:WaitForChild(v0_49_))
v0_47_ = v0_24_
v0_48_ = script
local v0_50_ = "Recipe"
v0_47_ = v0_47_(v0_48_:WaitForChild(v0_50_))
v0_48_ = v0_24_
v0_49_ = script
local v0_51_ = "EffectIcon"
v0_48_ = v0_48_(v0_49_:WaitForChild(v0_51_))
v0_49_ = v0_28_.GetStore
v0_50_ = "RecipeStore"
v0_49_ = v0_49_(v0_50_)
v0_51_ = v0_10_.Replica
v0_50_ = v0_51_.WaitForReplica
v0_51_ = v0_5_
v0_50_ = v0_50_(v0_51_)
v0_51_ = {}
local v0_52_ = {}
local v0_53_ = {}
local v0_54_ = nil
local v0_55_ = ""
local v0_56_ = {}
local v0_57_ = true
v0_56_.Ingredient = v0_57_
v0_57_ = true
v0_56_.Craft = v0_57_
v0_57_ = true
v0_56_.AutoAdd = v0_57_
v0_57_ = {}
local v0_58_ = nil
v0_57_.Ingredient = v0_58_
v0_58_ = nil
v0_57_.Craft = v0_58_
v0_58_ = nil
v0_57_.AutoAdd = v0_58_
v0_58_ = {}
local v0_59_ = nil
v0_58_.Item = v0_59_
v0_59_ = nil
v0_58_.Connection = v0_59_
v0_59_ = {}
local v0_60_ = nil
local v0_61_ = nil
local v0_62_ = nil
local v0_63_ = nil
local v0_64_ = function()
    local v1_1_ = v0_28_
    local v1_0_ = v1_1_.GetObjects
    v1_1_ = "Recipe\n_"
    v1_0_ = v1_0_(v1_1_)
    local v1_3_ = function(a1, a2)
        local v2_2_ = a1.Name
        local v2_4_ = "^Recipe\n([%w%s%p]+)"
        v2_2_ = v2_2_:match(v2_4_)
        local v2_5_ = "%s"
        local v2_6_ = ""
        local v2_3_ = v2_2_:gsub(v2_5_, v2_6_)
        v2_3_ = v2_3_:lower()
        v2_5_ = v0_55_
        local v2_7_ = "%s"
        local v2_8_ = ""
        v2_5_ = v2_5_:gsub(v2_7_, v2_8_)
        v2_3_ = v2_3_:find(v2_5_:lower())
        if v2_3_ then
            v2_3_ = true
            a1.Visible = v2_3_
            return
        end
        v2_3_ = false
        a1.Visible = v2_3_
    end
    v1_0_:Each(v1_3_)
end
local v0_65_ = function(a1)
    local v3_1_ = a1
    local v3_2_ = nil
    local v3_3_ = nil
    local v3_6_ = v0_48_
    local v3_7_ = {}
    v3_7_.EffectName = nil
    local v3_8_ = 0
    v3_7_.EffectDuration = v3_8_
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v3_7_.SizeConstraint = RelativeXX
    v3_6_ = v3_6_(v3_7_)
    v3_7_ = v0_27_
    v3_8_ = v0_63_
    local v3_9_ = v3_6_
    v3_7_(v3_8_, v3_9_)
    v3_8_ = v0_59_
    v3_9_ = v3_6_
    local insert = table.insert
    insert(v3_8_, v3_9_)
end
local v0_66_ = function()
    local v4_0_ = v0_59_
    local v4_1_ = nil
    local v4_2_ = nil
    nil:Destroy()
end
local v0_67_ = function()
    local v5_0_ = false
    local v5_2_ = v0_58_
    local v5_1_ = v5_2_.Item
    if v5_1_ then
        v5_2_ = v0_58_
        v5_1_ = v5_2_.Connection
        if v5_1_ then
            v5_1_ = v0_60_
            local v5_3_ = "Model"
            v5_1_ = v5_1_:FindFirstChild(v5_3_)
            if v5_1_ then
                v5_1_ = v0_60_
                v5_3_ = "Model"
                v5_1_ = v5_1_:FindFirstChild(v5_3_)
                v5_1_:Destroy()
                v5_2_ = v0_58_
                v5_1_ = v5_2_.Connection
                v5_1_:Disconnect()
                v5_1_ = v0_58_
                v5_2_ = nil
                v5_1_.Item = v5_2_
                v5_1_ = v0_58_
                v5_2_ = nil
                v5_1_.Connection = v5_2_
                v5_0_ = true
            else
                v5_0_ = nil
                v5_1_ = v0_60_
                v5_3_ = "Text"
                v5_1_ = v5_1_:FindFirstChild(v5_3_)
                if v5_1_ then
                    v5_1_ = v0_60_
                    v5_3_ = "Text"
                    v5_1_ = v5_1_:FindFirstChild(v5_3_)
                    v5_1_:Destroy()
                    v5_0_ = nil
                else
                    v5_0_ = nil
                end
            end
        else
            v5_1_ = v0_60_
            local v5_3_ = "Text"
            v5_1_ = v5_1_:FindFirstChild(v5_3_)
            if v5_1_ then
                v5_1_ = v0_60_
                v5_3_ = "Text"
                v5_1_ = v5_1_:FindFirstChild(v5_3_)
                v5_1_:Destroy()
                v5_0_ = nil
            else
                v5_0_ = nil
            end
        end
    else
        v5_1_ = v0_60_
        local v5_3_ = "Text"
        v5_1_ = v5_1_:FindFirstChild(v5_3_)
        if v5_1_ then
            v5_1_ = v0_60_
            v5_3_ = "Text"
            v5_1_ = v5_1_:FindFirstChild(v5_3_)
            v5_1_:Destroy()
            v5_0_ = nil
        else
            v5_0_ = nil
        end
    end
    if v5_0_ == false then
        v5_1_ = nil
        v5_1_()
    end
end
local v0_68_ = function()
    local v6_0_ = v0_67_
    v6_0_()
    local v6_1_ = v0_51_
    local v6_2_ = v0_54_
    v6_0_ = v6_1_[v6_2_]
    v6_1_ = v0_17_
    local v6_3_ = v6_0_.PreviewModelName
    v6_1_ = v6_1_:GetValue(v6_3_)
    v6_1_ = v6_1_:Clone()
    v6_2_ = v0_60_
    local v6_4_ = "Camera"
    v6_2_ = v6_2_:FindFirstChild(v6_4_)
    v6_3_ = "Model"
    v6_1_.Name = v6_3_
    v6_3_ = v0_60_
    v6_1_.Parent = v6_3_
    local lookAt = CFrame.lookAt
    local v6_6_ = Vector3.new(0.000000, 0.500000, 1.000000)
    local v6_5_ = v6_6_.Unit
    local v6_9_ = v6_1_:GetExtentsSize()
    local v6_8_ = v6_9_.Magnitude
    local v6_7_ = v6_8_ + 0.500000
    v6_6_ = v6_7_ - 0.750000
    v6_4_ = v6_5_ * v6_6_
    local zero = Vector3.zero
    v6_3_ = lookAt(v6_4_, zero)
    v6_2_.CFrame = v6_3_
    v6_3_ = v6_2_.CFrame
    local new = CFrame.new
    v6_5_ = Vector3.new(0.000000, 0.175000, 0.000000)
    v6_4_ = new(v6_5_)
    v6_3_ *= v6_4_
    v6_2_.CFrame = v6_3_
    v6_3_ = 0
    v6_4_ = v0_58_
    v6_5_ = v0_54_
    v6_4_.Item = v6_5_
    v6_4_ = function()
        local v7_0_ = v6_1_
        v7_0_ = v7_0_:GetPivot()
        local lookAt = CFrame.lookAt
        local v7_3_ = Vector3.new(0.000000, 0.000000, 0.000000)
        local v7_4_ = v7_0_.LookVector
        local v7_2_ = lookAt(v7_3_, v7_4_)
        local fromMatrix = CFrame.fromMatrix
        v7_4_ = Vector3.new(0.000000, 0.000000, 0.000000)
        local v7_5_ = v7_0_.RightVector
        local v7_6_ = v7_0_.UpVector
        v7_3_ = fromMatrix(v7_4_, v7_5_, v7_6_)
        local v7_1_ = v7_2_ * v7_3_
        v7_2_ = function(a1)
            local v8_1_, v8_2_, v8_3_ = a1:GetDescendants()
            local v8_8_ = "BasePart"
            local v8_6_ = nil:IsA(v8_8_)
            if v8_6_ then
                v8_6_ = nil.Size
                local v8_7_ = Vector3.new(1.000000, 2.000000, 1.000000)
                if v8_6_ == v8_7_ then
                    return nil
                end
            end
        end
        v7_3_ = v6_1_
        v7_5_ = "Model"
        v7_3_ = v7_3_:IsA(v7_5_)
        if v7_3_ then
            v7_3_ = v6_1_
            v7_4_ = v7_2_
            v7_5_ = v6_1_
            v7_4_ = v7_4_(v7_5_)
            if not v7_4_ then
                v7_5_ = v6_1_
                local v7_7_ = "Model"
                v7_5_ = v7_5_:FindFirstChildOfClass(v7_7_)
                v7_4_ = v7_5_.PrimaryPart
            end
            v7_3_.PrimaryPart = v7_4_
        end
        local new = CFrame.new
        local zero = Vector3.zero
        v7_4_ = new(zero)
        local Angles = CFrame.Angles
        v7_6_ = 0
        local v7_7_ = 3.141593
        local v7_8_ = 0
        v7_5_ = Angles(v7_6_, v7_7_, v7_8_)
        v7_3_ = v7_4_ * v7_5_
        v7_4_ = v6_1_
        v7_6_ = v7_3_
        v7_4_:PivotTo(v7_6_)
        return v7_3_
    end
    v6_4_ = v6_4_()
    v6_5_ = v0_58_
    v6_7_ = v0_2_
    v6_6_ = v6_7_.RenderStepped
    v6_8_ = function(a1)
        local v9_1_ = v6_3_
        local v9_2_ = a1 * 90.000000
        v9_1_ += v9_2_
        v6_3_ = a1
        v9_1_ = v6_3_
        v9_2_ = 360
        if v9_2_ < v9_1_ then
            v9_1_ = 0
            v6_3_ = a1
        end
        v9_1_ = v6_1_
        local Angles = CFrame.Angles
        local v9_4_ = 0
        local v9_6_ = v6_3_
        local rad = math.rad
        local v9_5_ = rad(v9_6_)
        v9_6_ = 0
        v9_1_:PivotTo(Angles(v9_4_, v9_5_, v9_6_))
    end
    v6_6_ = v6_6_:Connect(v6_8_)
    v6_5_.Connection = v6_6_
end
local v0_69_ = function(a1, a2)
    local v10_5_ = v0_50_
    local v10_4_ = v10_5_.Data
    local v10_3_ = v10_4_.PotionCraftingProgress
    local v10_2_ = v10_3_[a1]
    if not v10_2_ then
        v10_2_ = 0
        return v10_2_
    end
    local v10_6_ = v0_50_
    v10_5_ = v10_6_.Data
    v10_4_ = v10_5_.PotionCraftingProgress
    v10_3_ = v10_4_[a1]
    v10_2_ = v10_3_[a2]
    if not v10_2_ then
        v10_2_ = 0
        return v10_2_
    end
    v10_6_ = v0_50_
    v10_5_ = v10_6_.Data
    v10_4_ = v10_5_.PotionCraftingProgress
    v10_3_ = v10_4_[a1]
    v10_2_ = v10_3_[a2]
    return v10_2_
end
local v0_70_ = function(a1, a2)
    local v11_6_ = v0_50_
    local v11_5_ = v11_6_.Data
    local v11_2_ = v11_5_.InventoryAuras
    local v11_3_ = nil
    local v11_4_ = nil
    local v11_7_ = v11_6_.Name
    if v11_7_ == a1 then
        if a2 then
            if a2 then
                v11_7_ = v11_6_.Locked
                if not v11_7_ then
                    v11_7_ = true
                    return v11_7_
                end
            end
        end
        v11_7_ = true
        return v11_7_
    end
    v11_2_ = false
    return v11_2_
end
local v0_71_ = function(a1)
    local v12_1_ = 0
    local v12_6_ = v0_50_
    local v12_5_ = v12_6_.Data
    local v12_2_ = v12_5_.InventoryAuras
    local v12_3_ = nil
    local v12_4_ = nil
    local v12_7_ = v12_6_.Name
    if v12_7_ == a1 then
        v12_7_ = v12_6_.Locked
        if not v12_7_ then
            v12_1_ += 1.000000
        end
    end
    return v12_1_
end
local v0_72_ = function(a1)
    local v13_2_ = v0_51_
    local v13_1_ = v13_2_[a1]
    if not v13_1_ then
        v13_2_ = false
        return v13_2_
    end
    v13_2_ = v13_1_.Type
    if v13_2_ == "Aura" then
        local v13_7_ = v0_50_
        local v13_6_ = v13_7_.Data
        local v13_3_ = v13_6_.InventoryAuras
        local v13_4_ = nil
        local v13_5_ = nil
        local v13_8_ = v13_7_.Name
        if v13_8_ == a1 then
            v13_2_ = true
            return v13_2_
        end
        v13_2_ = false
        return v13_2_
    end
    v13_2_ = v13_1_.Type
    if v13_2_ ~= "Item" then
        v13_2_ = v13_1_.Type
        if v13_2_ == "Gear" then
            local v13_7_ = v0_50_
            local v13_6_ = v13_7_.Data
            local v13_5_ = v13_6_.Inventory
            local v13_4_ = v13_5_[a1]
            local v13_3_ = not v13_4_
            v13_2_ = not v13_3_
            return v13_2_
        end
    end
    local v13_7_ = v0_50_
    local v13_6_ = v13_7_.Data
    local v13_5_ = v13_6_.Inventory
    local v13_4_ = v13_5_[a1]
    local v13_3_ = not v13_4_
    v13_2_ = not v13_3_
    return v13_2_
end
local v0_73_ = v0_30_
local v0_74_ = "PotionCrafting"
v0_73_ = v0_73_(v0_74_)
v0_74_ = table.create(6)
local new = Vector2.new
local v0_82_ = 0.500000
local v0_83_ = 0.500000
local v0_81_ = new(v0_82_, v0_83_)
v0_74_.AnchorPoint = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.500000
v0_83_ = 0.500000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_74_.Position = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 0.500000
v0_83_ = 0.550000
v0_81_ = fromScale(v0_82_, v0_83_)
v0_74_.Size = v0_81_
local new = Color3.new
v0_81_ = new()
v0_74_.BackgroundColor3 = v0_81_
v0_81_ = 0.400000
v0_74_.BackgroundTransparency = v0_81_
v0_81_ = false
v0_74_.Visible = v0_81_
local v0_75_ = v0_30_
local v0_76_ = "Index"
v0_75_ = v0_75_(v0_76_)
v0_76_ = table.create(3)
local fromScale = UDim2.fromScale
v0_81_ = 0.005000
v0_82_ = 0.090000
local v0_80_ = fromScale(v0_81_, v0_82_)
v0_76_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.385000
v0_82_ = 0.900000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_76_.Size = v0_80_
v0_80_ = 1
v0_76_.BackgroundTransparency = v0_80_
local v0_77_ = v0_30_
local v0_78_ = "ItemViewportHolder"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(5)
local fromScale = UDim2.fromScale
local v0_85_ = 0.842500
local v0_86_ = 0.585000
local v0_84_ = fromScale(v0_85_, v0_86_)
v0_78_.Size = v0_84_
local new = Color3.new
v0_84_ = new()
v0_78_.BackgroundColor3 = v0_84_
v0_84_ = 0.650000
v0_78_.BackgroundTransparency = v0_84_
local v0_79_ = v0_32_
v0_80_ = "ItemViewportFrame"
v0_79_ = v0_79_(v0_80_)
v0_80_ = table.create(3)
local new = Vector2.new
v0_85_ = 0.500000
v0_84_ = new(v0_85_)
v0_80_.AnchorPoint = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.500000
v0_86_ = 0.050000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_80_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.900000
v0_86_ = 0.750000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_80_.Size = v0_84_
local new = Color3.new
v0_84_ = new()
v0_80_.BackgroundColor3 = v0_84_
v0_84_ = 0.800000
v0_80_.BackgroundTransparency = v0_84_
v0_81_ = v0_41_
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
v0_82_ = v0_43_
v0_83_ = {}
v0_84_ = 0.050000
v0_83_.Size = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_44_
v0_84_ = {}
v0_83_ = v0_83_(v0_84_)
v0_80_[1] = v0_81_
v0_80_[2] = v0_82_
v0_80_[3] = v0_83_
v0_84_ = v0_25_.CreatedAsync
v0_85_ = function(a1)
    v0_60_ = a1
    local new = Instance.new
    local v14_2_ = "Camera"
    local v14_1_ = new(v14_2_)
    v14_1_.Parent = a1
    a1.CurrentCamera = v14_1_
end
v0_80_[v0_84_] = v0_85_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_34_
v0_81_ = "CraftButton"
v0_80_ = v0_80_(v0_81_)
v0_81_ = table.create(3)
local new = Vector2.new
v0_86_ = 0
local v0_87_ = 0
v0_85_ = new(v0_86_, v0_87_)
v0_81_.AnchorPoint = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.100000
v0_87_ = 0.850000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_81_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.375000
v0_87_ = 0.110000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_81_.Size = v0_85_
local new = Color3.new
v0_85_ = new()
v0_81_.BackgroundColor3 = v0_85_
v0_85_ = 0.650000
v0_81_.BackgroundTransparency = v0_85_
v0_85_ = "Craft"
v0_81_.Text = v0_85_
v0_85_ = true
v0_81_.TextScaled = v0_85_
local new = Color3.new
v0_86_ = 1
v0_87_ = 1
local v0_88_ = 1
v0_85_ = new(v0_86_, v0_87_, v0_88_)
v0_81_.TextColor3 = v0_85_
local new = Font.new
v0_86_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_85_ = new(v0_86_, Medium)
v0_81_.FontFace = v0_85_
v0_82_ = v0_41_
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
v0_83_ = v0_43_
v0_84_ = {}
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_44_
v0_85_ = {}
v0_84_ = v0_84_(v0_85_)
v0_81_[1] = v0_82_
v0_81_[2] = v0_83_
v0_81_[3] = v0_84_
v0_85_ = v0_25_
v0_86_ = "MouseButton1Click"
v0_85_ = v0_85_(v0_86_)
v0_86_ = function(a1)
    local v15_4_ = v0_50_
    local v15_3_ = v15_4_.Data
    local v15_2_ = v15_3_.PotionCraftingProgress
    v15_3_ = v0_54_
    local v15_1_ = v15_2_[v15_3_]
    if not v15_1_ then
        v15_2_ = v0_10_
        v15_1_ = v15_2_.PlaySFX
        v15_2_ = "Error"
        v15_3_ = "UISounds"
        v15_1_(v15_2_, v15_3_)
        return
    end
    v15_2_ = v0_51_
    v15_3_ = v0_54_
    v15_1_ = v15_2_[v15_3_]
    v15_2_ = v15_1_.Ingredients
    v15_3_ = nil
    v15_4_ = nil
    local v15_11_ = v0_50_
    local v15_10_ = v15_11_.Data
    local v15_9_ = v15_10_.PotionCraftingProgress
    v15_10_ = v0_54_
    local v15_8_ = v15_9_[v15_10_]
    v15_9_ = nil[-1]
    local v15_7_ = v15_8_[v15_9_]
    if not v15_7_ then
        v15_8_ = v0_10_
        v15_7_ = v15_8_.PlaySFX
        v15_8_ = "Error"
        v15_9_ = "UISounds"
        v15_7_(v15_8_, v15_9_)
        return
    end
    v15_11_ = v0_50_
    v15_10_ = v15_11_.Data
    v15_9_ = v15_10_.PotionCraftingProgress
    v15_10_ = v0_54_
    v15_8_ = v15_9_[v15_10_]
    v15_9_ = nil[-1]
    v15_7_ = v15_8_[v15_9_]
    v15_8_ = nil[0]
    if v15_7_ < v15_8_ then
        v15_8_ = v0_10_
        v15_7_ = v15_8_.PlaySFX
        v15_8_ = "Error"
        v15_9_ = "UISounds"
        v15_7_(v15_8_, v15_9_)
        return
    end
    v15_3_ = v0_10_
    v15_2_ = v15_3_.PlaySFX
    v15_3_ = "Click"
    v15_4_ = "UISounds"
    v15_2_(v15_3_, v15_4_)
    v15_3_ = v0_4_
    v15_2_ = v15_3_.SendCraftRequest
    v15_3_ = v0_54_
    v15_2_ = v15_2_(v15_3_)
    if v15_2_ then
        local v15_5_ = v0_53_
        local v15_6_ = v0_54_
        v15_2_ = v15_5_[v15_6_]
        v15_3_ = nil
        v15_4_ = nil
        v15_7_ = v15_6_.__prop
        v15_8_ = 0
        v15_7_.CurrentProgress = v15_8_
        v15_2_ = v15_1_.OneTimeCraft
        if v15_2_ then
            v15_4_ = v0_52_
            v15_5_ = v0_54_
            v15_3_ = v15_4_[v15_5_]
            v15_2_ = v15_3_.__prop
            v15_3_ = true
            v15_2_.Disabled = v15_3_
        end
    end
end
v0_81_[v0_85_] = v0_86_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_34_
v0_82_ = "AutoAddButton"
v0_81_ = v0_81_(v0_82_)
v0_82_ = table.create(3)
local new = Vector2.new
v0_87_ = 1
v0_88_ = 0
v0_86_ = new(v0_87_, v0_88_)
v0_82_.AnchorPoint = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.900000
v0_88_ = 0.850000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_82_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.375000
v0_88_ = 0.110000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_82_.Size = v0_86_
local new = Color3.new
v0_86_ = new()
v0_82_.BackgroundColor3 = v0_86_
v0_86_ = 0.650000
v0_82_.BackgroundTransparency = v0_86_
v0_86_ = "Auto"
v0_82_.Text = v0_86_
v0_86_ = true
v0_82_.TextScaled = v0_86_
local new = Color3.new
v0_87_ = 1
v0_88_ = 1
local v0_89_ = 1
v0_86_ = new(v0_87_, v0_88_, v0_89_)
v0_82_.TextColor3 = v0_86_
local new = Font.new
v0_87_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_86_ = new(v0_87_, Medium)
v0_82_.FontFace = v0_86_
v0_83_ = v0_41_
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
v0_84_ = v0_43_
v0_85_ = {}
v0_86_ = 0.300000
v0_85_.Size = v0_86_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_44_
v0_86_ = {}
v0_85_ = v0_85_(v0_86_)
v0_82_[1] = v0_83_
v0_82_[2] = v0_84_
v0_82_[3] = v0_85_
v0_86_ = v0_25_
v0_87_ = "MouseButton1Click"
v0_86_ = v0_86_(v0_87_)
v0_87_ = function(a1)
    local v16_2_ = v0_4_
    local v16_1_ = v16_2_.SendChangeAutoAddTargetRequest
    v16_2_ = v0_54_
    v16_1_ = v16_1_(v16_2_)
    if v16_1_ then
        v16_2_ = v0_10_
        v16_1_ = v16_2_.PlaySFX
        v16_2_ = "Click"
        local v16_3_ = "UISounds"
        v16_1_(v16_2_, v16_3_)
        v16_1_ = v0_49_
        local v16_4_ = v0_50_
        v16_3_ = v16_4_.Data
        v16_2_ = v16_3_.AutoAddTarget
        v16_1_.AutoAddTarget = v16_2_
    end
end
v0_82_[v0_86_] = v0_87_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_41_
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
v0_83_ = v0_43_
v0_84_ = {}
v0_85_ = 0.040000
v0_84_.Size = v0_85_
-- WARNING: SETLIST_C0, output may be wrong!
v0_78_ = {v0_79_, v0_83_(v0_84_)}
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_30_
v0_79_ = "IngredientsHolder"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(3)
local fromScale = UDim2.fromScale
v0_84_ = 0
v0_85_ = 0.600000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_79_.Position = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 1
v0_85_ = 0.400000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_79_.Size = v0_83_
local new = Color3.new
v0_83_ = new()
v0_79_.BackgroundColor3 = v0_83_
v0_83_ = 0.650000
v0_79_.BackgroundTransparency = v0_83_
v0_80_ = v0_31_
v0_81_ = "ScrollingFrame"
v0_80_ = v0_80_(v0_81_)
v0_81_ = table.create(1)
local new = Vector2.new
v0_84_ = 0.500000
v0_85_ = 0.500000
v0_83_ = new(v0_84_, v0_85_)
v0_81_.AnchorPoint = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 0.500000
v0_85_ = 0.500000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_81_.Position = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 1
v0_85_ = 0.950000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_81_.Size = v0_83_
v0_83_ = 1
v0_81_.BackgroundTransparency = v0_83_
v0_83_ = true
v0_81_.ClipsDescendants = v0_83_
local new = UDim2.new
v0_83_ = new()
v0_81_.CanvasSize = v0_83_
local Y = Enum.AutomaticSize.Y
v0_81_.AutomaticCanvasSize = Y
v0_83_ = 0
v0_81_.ScrollBarThickness = v0_83_
v0_82_ = v0_39_
v0_83_ = "UIListLayout"
v0_82_ = v0_82_(v0_83_)
v0_83_ = {}
local new = UDim.new
v0_85_ = 0.050000
v0_84_ = new(v0_85_)
v0_83_.Padding = v0_84_
local Vertical = Enum.FillDirection.Vertical
v0_83_.FillDirection = Vertical
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_83_.SortOrder = LayoutOrder
local Left = Enum.HorizontalAlignment.Left
v0_83_.HorizontalAlignment = Left
local Top = Enum.VerticalAlignment.Top
v0_83_.VerticalAlignment = Top
v0_82_ = v0_82_(v0_83_)
v0_81_[1] = v0_82_
v0_83_ = v0_25_.CreatedAsync
v0_84_ = function(a1)
    v0_62_ = a1
end
v0_81_[v0_83_] = v0_84_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_41_
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
v0_82_ = v0_43_
v0_83_ = {}
v0_84_ = 0.060000
v0_83_.Size = v0_84_
-- WARNING: SETLIST_C0, output may be wrong!
v0_79_ = {v0_80_, v0_82_(v0_83_)}
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_30_
v0_80_ = "Effects"
v0_79_ = v0_79_(v0_80_)
v0_80_ = table.create(4)
local fromScale = UDim2.fromScale
v0_86_ = 0.857500
v0_85_ = fromScale(v0_86_)
v0_80_.Position = v0_85_
local fromScale = UDim2.fromScale
v0_86_ = 0.142500
v0_87_ = 0.585000
v0_85_ = fromScale(v0_86_, v0_87_)
v0_80_.Size = v0_85_
local new = Color3.new
v0_85_ = new()
v0_80_.BackgroundColor3 = v0_85_
v0_85_ = 0.650000
v0_80_.BackgroundTransparency = v0_85_
v0_81_ = v0_30_
v0_82_ = table.create(1)
local new = Vector2.new
v0_85_ = 0.500000
v0_86_ = 0.500000
v0_84_ = new(v0_85_, v0_86_)
v0_82_.AnchorPoint = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.500000
v0_86_ = 0.500000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_82_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_86_ = 1
v0_87_ = 1
v0_85_ = fromScale(v0_86_, v0_87_)
local fromOffset = UDim2.fromOffset
v0_87_ = 10
v0_88_ = 10
v0_86_ = fromOffset(v0_87_, v0_88_)
v0_84_ = v0_85_ - v0_86_
v0_82_.Size = v0_84_
v0_84_ = 1
v0_82_.BackgroundTransparency = v0_84_
v0_83_ = v0_39_
v0_84_ = {}
local new = UDim.new
v0_86_ = 0
v0_87_ = 2
v0_85_ = new(v0_86_, v0_87_)
v0_84_.Padding = v0_85_
local Center = Enum.HorizontalAlignment.Center
v0_84_.HorizontalAlignment = Center
v0_83_ = v0_83_(v0_84_)
v0_82_[1] = v0_83_
v0_84_ = v0_25_.CreatedAsync
v0_85_ = function(a1)
    v0_63_ = a1
end
v0_82_[v0_84_] = v0_85_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_41_
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
v0_83_ = v0_43_
v0_84_ = {}
v0_85_ = 0.040000
v0_84_.Size = v0_85_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_44_
v0_85_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_80_ = {v0_81_, v0_84_(v0_85_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_76_ = {v0_77_, v0_79_(v0_80_)}
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_30_
v0_77_ = "Recipes"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(2)
local new = Vector2.new
v0_81_ = 1
v0_82_ = 0
v0_80_ = new(v0_81_, v0_82_)
v0_77_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.995000
v0_82_ = 0.090000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.600000
v0_82_ = 0.900000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Size = v0_80_
v0_80_ = 1
v0_77_.BackgroundTransparency = v0_80_
v0_78_ = v0_30_
v0_79_ = "RecipeItemGrid"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(4)
local fromScale = UDim2.fromScale
v0_85_ = 0
v0_86_ = 0.065000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_79_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 1
v0_86_ = 0.935000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_79_.Size = v0_84_
local new = Color3.new
v0_84_ = new()
v0_79_.BackgroundColor3 = v0_84_
v0_84_ = 0.650000
v0_79_.BackgroundTransparency = v0_84_
v0_80_ = v0_31_
v0_81_ = "RecipeItemGridScrollingFrame"
v0_80_ = v0_80_(v0_81_)
v0_81_ = table.create(1)
local new = Vector2.new
v0_84_ = 0.500000
v0_85_ = 0.500000
v0_83_ = new(v0_84_, v0_85_)
v0_81_.AnchorPoint = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 0.500000
v0_85_ = 0.500000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_81_.Position = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 1.050000
v0_85_ = 0.960000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_81_.Size = v0_83_
v0_83_ = 1
v0_81_.BackgroundTransparency = v0_83_
local Y = Enum.AutomaticSize.Y
v0_81_.AutomaticCanvasSize = Y
v0_83_ = 0
v0_81_.ScrollBarThickness = v0_83_
v0_82_ = v0_39_
v0_83_ = {}
local Vertical = Enum.FillDirection.Vertical
v0_83_.FillDirection = Vertical
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_83_.SortOrder = LayoutOrder
local Left = Enum.HorizontalAlignment.Left
v0_83_.HorizontalAlignment = Left
local Top = Enum.VerticalAlignment.Top
v0_83_.VerticalAlignment = Top
v0_82_ = v0_82_(v0_83_)
v0_81_[1] = v0_82_
v0_83_ = v0_25_.CreatedAsync
v0_84_ = function(a1)
    v0_61_ = a1
end
v0_81_[v0_83_] = v0_84_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_41_
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
v0_82_ = v0_43_
v0_83_ = {}
v0_84_ = 0.026000
v0_83_.Size = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_44_
v0_84_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_79_ = {v0_80_, v0_83_(v0_84_)}
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_30_
v0_80_ = "Search"
v0_79_ = v0_79_(v0_80_)
v0_80_ = table.create(5)
local fromScale = UDim2.fromScale
v0_87_ = 0
v0_88_ = 0
v0_86_ = fromScale(v0_87_, v0_88_)
v0_80_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 1
v0_88_ = 0.050000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_80_.Size = v0_86_
local new = Color3.new
v0_86_ = new()
v0_80_.BackgroundColor3 = v0_86_
v0_86_ = 0.650000
v0_80_.BackgroundTransparency = v0_86_
v0_81_ = v0_35_
v0_82_ = "SearchContent"
v0_81_ = v0_81_(v0_82_)
v0_82_ = {}
local new = Vector2.new
v0_84_ = 0
v0_85_ = 0.500000
v0_83_ = new(v0_84_, v0_85_)
v0_82_.AnchorPoint = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 0.050000
v0_85_ = 0.500000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_82_.Position = v0_83_
local fromScale = UDim2.fromScale
v0_84_ = 0.950000
v0_85_ = 0.800000
v0_83_ = fromScale(v0_84_, v0_85_)
v0_82_.Size = v0_83_
v0_83_ = 1
v0_82_.BackgroundTransparency = v0_83_
v0_83_ = ""
v0_82_.Text = v0_83_
v0_83_ = "Search..."
v0_82_.PlaceholderText = v0_83_
v0_83_ = true
v0_82_.TextScaled = v0_83_
local new = Color3.new
v0_84_ = 1
v0_85_ = 1
v0_86_ = 1
v0_83_ = new(v0_84_, v0_85_, v0_86_)
v0_82_.TextColor3 = v0_83_
local new = Font.new
v0_84_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_83_ = new(v0_84_, Medium)
v0_82_.FontFace = v0_83_
local Left = Enum.TextXAlignment.Left
v0_82_.TextXAlignment = Left
v0_83_ = v0_25_.Prop
v0_84_ = "Text"
v0_83_ = v0_83_(v0_84_)
v0_84_ = function(a1, a2)
    v0_55_ = a1
    local v20_3_ = v0_28_
    local v20_2_ = v20_3_.GetObjects
    v20_3_ = "Recipe\n_"
    v20_2_ = v20_2_(v20_3_)
    local v20_5_ = function(a1, a2)
        local v21_2_ = a1.Name
        local v21_4_ = "^Recipe\n([%w%s%p]+)"
        v21_2_ = v21_2_:match(v21_4_)
        local v21_5_ = "%s"
        local v21_6_ = ""
        local v21_3_ = v21_2_:gsub(v21_5_, v21_6_)
        v21_3_ = v21_3_:lower()
        v21_5_ = v0_55_
        local v21_7_ = "%s"
        local v21_8_ = ""
        v21_5_ = v21_5_:gsub(v21_7_, v21_8_)
        v21_3_ = v21_3_:find(v21_5_:lower())
        if v21_3_ then
            v21_3_ = true
            a1.Visible = v21_3_
            return
        end
        v21_3_ = false
        a1.Visible = v21_3_
    end
    v20_2_:Each(v20_5_)
end
v0_82_[v0_83_] = v0_84_
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_36_
v0_83_ = "Icon"
v0_82_ = v0_82_(v0_83_)
v0_83_ = {}
local new = Vector2.new
v0_85_ = 0
v0_86_ = 0.500000
v0_84_ = new(v0_85_, v0_86_)
v0_83_.AnchorPoint = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.010000
v0_86_ = 0.500000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_83_.Position = v0_84_
local fromScale = UDim2.fromScale
v0_85_ = 0.900000
v0_86_ = 0.900000
v0_84_ = fromScale(v0_85_, v0_86_)
v0_83_.Size = v0_84_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_83_.SizeConstraint = RelativeYY
v0_84_ = 1
v0_83_.BackgroundTransparency = v0_84_
v0_84_ = "rbxassetid://6031154871"
v0_83_.Image = v0_84_
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_41_
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
v0_84_ = v0_43_
v0_85_ = {}
v0_86_ = 0.300000
v0_85_.Size = v0_86_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_44_
v0_86_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_80_ = {v0_81_, v0_85_(v0_86_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_77_ = {v0_78_, v0_79_(v0_80_)}
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_33_
v0_78_ = "Title"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(3)
local fromScale = UDim2.fromScale
v0_83_ = 1
v0_84_ = 0.080000
v0_82_ = fromScale(v0_83_, v0_84_)
v0_78_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_78_.BackgroundColor3 = v0_82_
v0_82_ = 0.650000
v0_78_.BackgroundTransparency = v0_82_
v0_82_ = "Stella's Cauldron"
v0_78_.Text = v0_82_
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
local Bold = Enum.FontWeight.Bold
v0_82_ = new(v0_83_, Bold)
v0_78_.FontFace = v0_82_
v0_79_ = v0_34_
v0_80_ = "Close"
v0_79_ = v0_79_(v0_80_)
v0_80_ = {}
local fromScale = UDim2.fromScale
v0_82_ = 0.950000
v0_81_ = fromScale(v0_82_)
v0_80_.Position = v0_81_
local fromScale = UDim2.fromScale
v0_82_ = 1
v0_83_ = 1
v0_81_ = fromScale(v0_82_, v0_83_)
v0_80_.Size = v0_81_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_80_.SizeConstraint = RelativeYY
v0_81_ = 1
v0_80_.BackgroundTransparency = v0_81_
v0_81_ = "X"
v0_80_.Text = v0_81_
v0_81_ = true
v0_80_.TextScaled = v0_81_
local new = Color3.new
v0_82_ = 1
v0_83_ = 1
v0_84_ = 1
v0_81_ = new(v0_82_, v0_83_, v0_84_)
v0_80_.TextColor3 = v0_81_
local new = Font.new
v0_82_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_81_ = new(v0_82_, Bold)
v0_80_.FontFace = v0_81_
v0_81_ = v0_25_
v0_82_ = "MouseButton1Click"
v0_81_ = v0_81_(v0_82_)
v0_82_ = function(a1)
    local v22_2_ = v0_10_
    local v22_1_ = v22_2_.PlaySFX
    v22_2_ = "Click"
    local v22_3_ = "UISounds"
    v22_1_(v22_2_, v22_3_)
    v22_2_ = a1.Parent
    v22_1_ = v22_2_.Parent
    v22_2_ = false
    v22_1_.Visible = v22_2_
end
v0_80_[v0_81_] = v0_82_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_41_
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
v0_83_ = 0.250000
v0_82_.Size = v0_83_
-- WARNING: SETLIST_C0, output may be wrong!
v0_78_ = {v0_79_, v0_81_(v0_82_)}
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_38_
v0_79_ = {}
v0_80_ = 1.823000
v0_79_.AspectRatio = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_41_
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
v0_80_ = v0_44_
v0_81_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_74_ = {v0_75_, v0_80_(v0_81_)}
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_27_
v0_75_ = v0_7_
v0_76_ = v0_73_
v0_74_(v0_75_, v0_76_)
v0_76_ = "AutoAddTarget"
v0_78_ = v0_50_.Data
v0_77_ = v0_78_.AutoAddTarget
v0_49_:Default(v0_76_, v0_77_)
v0_74_ = function(a1)
    local v23_2_ = v0_10_
    local v23_1_ = v23_2_.PlaySFX
    v23_2_ = "Click"
    local v23_3_ = "UISounds"
    v23_1_(v23_2_, v23_3_)
    v23_2_ = a1.Parent
    v23_1_ = v23_2_.Name
    v23_3_ = "^Recipe\n([%s%w%p]+)"
    v23_1_ = v23_1_:match(v23_3_)
    v0_54_ = v23_1_
    v23_1_ = v0_68_
    v23_1_()
    v23_1_ = v0_59_
    v23_2_ = nil
    v23_3_ = nil
    nil:Destroy()
    v23_1_ = v0_65_
    local v23_4_ = v0_51_
    local v23_5_ = v0_54_
    v23_3_ = v23_4_[v23_5_]
    v23_2_ = v23_3_.Buffs
    v23_1_(v23_2_)
    v23_1_ = v0_62_
    v23_1_, v23_2_, v23_3_ = v23_1_:GetChildren()
    local v23_8_ = "Frame"
    local v23_6_ = v23_5_:IsA(v23_8_)
    if v23_6_ then
        v23_6_ = v23_5_.Name
        v23_8_ = "^Ingredient\n([%s%w%p]+)\n([%s%w%p]+)"
        local v23_6_, v23_7_ = v23_6_:match(v23_8_)
        v23_8_ = v0_54_
        if v23_6_ == v23_8_ then
            v23_8_ = true
            v23_5_.Visible = v23_8_
        else
            v23_8_ = false
            v23_5_.Visible = v23_8_
        end
    end
end
v0_75_ = function(a1)
    local v24_3_ = a1.Parent
    local v24_2_ = v24_3_.Parent
    local v24_1_ = v24_2_.Name
    v24_3_ = "^Ingredient\n([%s%w%p]+)\n([%s%w%p]+)"
    v24_1_, v24_2_ = v24_1_:match(v24_3_)
    local v24_6_ = a1.Parent
    local v24_5_ = v24_6_.AddAmount
    local v24_4_ = v24_5_.Text
    v24_3_ = tonumber
    v24_3_ = v24_3_(v24_4_)
    if v24_3_ then
        if v24_3_ ~= inf then
            if v24_3_ == -nan(ind) then
                v24_5_ = v0_10_
                v24_4_ = v24_5_.PlaySFX
                v24_5_ = "Error"
                v24_6_ = "UISounds"
                v24_4_(v24_5_, v24_6_)
                return
            end
        end
    end
    v24_5_ = v0_10_
    v24_4_ = v24_5_.PlaySFX
    v24_5_ = "Error"
    v24_6_ = "UISounds"
    v24_4_(v24_5_, v24_6_)
    return
end
v0_76_ = function()
    local v25_1_ = v0_23_
    local v25_0_ = v25_1_.CloseAllWindows
    v25_0_()
    v25_0_ = v0_73_
    v25_1_ = true
    v25_0_.Visible = v25_1_
end
v0_4_.Show = v0_76_
v0_76_ = function()
    local v26_0_ = v0_73_
    local v26_1_ = false
    v26_0_.Visible = v26_1_
end
v0_4_.Disappear = v0_76_
v0_76_ = function(a1, a2, a3)
    local v27_4_ = v0_56_
    local v27_3_ = v27_4_.Ingredient
    if v27_3_ then
        v27_3_ = v0_56_
        v27_4_ = false
        v27_3_.Ingredient = v27_4_
        v27_3_ = v0_57_
        local running = coroutine.running
        v27_4_ = running()
        v27_3_.Ingredient = v27_4_
        local v27_5_ = v0_22_
        v27_4_ = v27_5_.AddIngredients
        v27_3_ = v27_4_.send
        v27_4_ = {}
        v27_4_.amount = a3
        v27_4_.ingredientName = a2
        v27_4_.recipeName = a1
        v27_3_(v27_4_)
        local yield = coroutine.yield
        v27_3_ = yield()
        local wait = task.wait
        wait()
        local v27_7_ = v0_50_
        local v27_6_ = v27_7_.Data
        v27_5_ = v27_6_.PotionCraftingProgress
        v27_4_ = v27_5_[a1]
        if v27_4_ then
            local v27_8_ = v0_50_
            v27_7_ = v27_8_.Data
            v27_6_ = v27_7_.PotionCraftingProgress
            v27_5_ = v27_6_[a1]
            v27_4_ = v27_5_[a2]
            while v27_4_ ~= v27_3_ do
            end
        end
        v27_4_ = v0_56_
        v27_5_ = true
        v27_4_.Ingredient = v27_5_
        v27_4_ = true
        v27_5_ = v27_3_
        return v27_4_, v27_5_
    end
    v27_3_ = false
    return v27_3_
end
v0_4_.SendAddIngredientRequest = v0_76_
v0_76_ = function(a1)
    local v28_2_ = v0_56_
    local v28_1_ = v28_2_.Craft
    if v28_1_ then
        v28_1_ = v0_56_
        v28_2_ = false
        v28_1_.Craft = v28_2_
        v28_1_ = v0_57_
        local running = coroutine.running
        v28_2_ = running()
        v28_1_.Craft = v28_2_
        local v28_3_ = v0_22_
        v28_2_ = v28_3_.Craft
        v28_1_ = v28_2_.send
        v28_2_ = a1
        v28_1_(v28_2_)
        local yield = coroutine.yield
        v28_1_ = yield()
        local wait = task.wait
        wait()
        local v28_5_ = v0_50_
        local v28_4_ = v28_5_.Data
        v28_3_ = v28_4_.PotionCraftingProgress
        v28_2_ = v28_3_[a1]
        while v28_2_ do
        end
        v28_2_ = v0_56_
        v28_3_ = true
        v28_2_.Craft = v28_3_
        v28_2_ = true
        return v28_2_
    end
    v28_1_ = false
    return v28_1_
end
v0_4_.SendCraftRequest = v0_76_
v0_76_ = function(a1)
    local v29_2_ = v0_56_
    local v29_1_ = v29_2_.AutoAdd
    if v29_1_ then
        v29_1_ = v0_56_
        v29_2_ = false
        v29_1_.AutoAdd = v29_2_
        v29_1_ = v0_57_
        local running = coroutine.running
        v29_2_ = running()
        v29_1_.AutoAdd = v29_2_
        local v29_3_ = v0_22_
        v29_2_ = v29_3_.SetAutoAddTarget
        v29_1_ = v29_2_.send
        v29_2_ = a1
        v29_1_(v29_2_)
        local yield = coroutine.yield
        v29_1_ = yield()
        local wait = task.wait
        wait()
        local v29_4_ = v0_50_
        v29_3_ = v29_4_.Data
        v29_2_ = v29_3_.AutoAddTarget
        while v29_2_ ~= v29_1_ do
        end
        v29_2_ = v0_56_
        v29_3_ = true
        v29_2_.AutoAdd = v29_3_
        v29_2_ = true
        return v29_2_
    end
    v29_1_ = false
    return v29_1_
end
v0_4_.SendChangeAutoAddTargetRequest = v0_76_
v0_77_ = v0_22_.AddIngredients
v0_76_ = v0_77_.listen
v0_77_ = function(a1)
    local v30_2_ = v0_57_
    local v30_1_ = v30_2_.Ingredient
    if v30_1_ then
        local defer = task.defer
        local v30_3_ = v0_57_
        v30_2_ = v30_3_.Ingredient
        v30_3_ = a1.amount
        defer(v30_2_, v30_3_)
        v30_1_ = v0_57_
        v30_2_ = nil
        v30_1_.Ingredient = v30_2_
    end
end
v0_76_(v0_77_)
v0_77_ = v0_22_.Craft
v0_76_ = v0_77_.listen
v0_77_ = function(a1)
    local v31_2_ = v0_57_
    local v31_1_ = v31_2_.Craft
    if v31_1_ then
        local defer = task.defer
        local v31_3_ = v0_57_
        v31_2_ = v31_3_.Craft
        v31_3_ = true
        defer(v31_2_, v31_3_)
        v31_1_ = v0_57_
        v31_2_ = nil
        v31_1_.Craft = v31_2_
    end
end
v0_76_(v0_77_)
v0_77_ = v0_22_.SetAutoAddTarget
v0_76_ = v0_77_.listen
v0_77_ = function(a1)
    local v32_2_ = v0_57_
    local v32_1_ = v32_2_.AutoAdd
    if v32_1_ then
        local defer = task.defer
        local v32_3_ = v0_57_
        v32_2_ = v32_3_.AutoAdd
        v32_3_ = a1
        defer(v32_2_, v32_3_)
        v32_1_ = v0_57_
        v32_2_ = nil
        v32_1_.AutoAdd = v32_2_
    end
end
v0_76_(v0_77_)
local wait = task.wait
wait()
v0_77_ = v0_19_:GetChildren()
v0_76_ = #v0_77_
v0_79_ = "Children"
v0_77_ = v0_19_:GetAttribute(v0_79_)
while v0_77_ > v0_76_ do
end
v0_76_, v0_77_, v0_78_ = v0_19_:GetChildren()
v0_83_ = "UnlockBy"
v0_81_ = v0_80_:GetAttribute(v0_83_)
if v0_81_ then
    local find = table.find
    v0_84_ = v0_50_.Data
    v0_83_ = v0_84_.UnlockedRecipes
    v0_84_ = v0_81_
    v0_82_ = find(v0_83_, v0_84_)
    if v0_82_ then
        v0_84_ = v0_80_.Name
        v0_82_ = v0_16_:GetValue(v0_84_)
        v0_83_ = v0_80_.Name
        v0_51_[v0_83_] = v0_82_
        v0_83_ = v0_47_
        v0_84_ = {}
        v0_86_ = "Recipe\n%*"
        v0_88_ = v0_82_.RecipeName
        v0_86_ = v0_86_:format(v0_88_)
        v0_85_ = v0_86_
        v0_84_.Name = v0_85_
        v0_85_ = v0_82_.RecipeName
        v0_84_.RecipeName = v0_85_
        v0_85_ = v0_82_.DisplayName
        if not v0_85_ then
            v0_85_ = v0_82_.RecipeName
        end
        v0_84_.RecipeDisplayName = v0_85_
        v0_85_ = v0_82_.RecipeNameColor3
        v0_84_.RecipeNameColor3 = v0_85_
        v0_85_ = v0_82_.Description
        v0_84_.RecipeDescription = v0_85_
        v0_86_ = v0_82_.Tier
        if v0_86_ then
            v0_85_ = v0_82_.Tier
        else
            v0_85_ = nil
        end
        v0_84_.RecipeTier = v0_85_
        v0_85_ = v0_82_.LayoutOrder
        v0_84_.LayoutOrder = v0_85_
        v0_85_ = v0_82_.OneTimeCraft
        if v0_85_ then
            v0_86_ = v0_82_.RecipeName
            v0_87_ = v0_51_[v0_86_]
            if not v0_87_ then
                v0_85_ = false
            else
                v0_88_ = v0_87_.Type
                if v0_88_ == "Aura" then
                    local v0_91_ = v0_50_.Data
                    v0_88_ = v0_91_.InventoryAuras
                    v0_89_ = nil
                    local v0_90_ = nil
                    local v0_93_ = nil.Name
                    if v0_93_ == v0_86_ then
                        v0_85_ = true
                    else
                        v0_85_ = false
                        v0_88_ = v0_87_.Type
                        if v0_88_ ~= "Item" then
                            v0_88_ = v0_87_.Type
                            if v0_88_ == "Gear" then
                                v0_91_ = v0_50_.Data
                                v0_90_ = v0_91_.Inventory
                                v0_89_ = v0_90_[v0_86_]
                                v0_88_ = not v0_89_
                                v0_85_ = not v0_88_
                            else
                                v0_85_ = nil
                            end
                        end
                        v0_91_ = v0_50_.Data
                        v0_90_ = v0_91_.Inventory
                        v0_89_ = v0_90_[v0_86_]
                        v0_88_ = not v0_89_
                        v0_85_ = not v0_88_
                        v0_85_ = nil
                    end
                else
                    v0_88_ = v0_87_.Type
                    if v0_88_ ~= "Item" then
                        v0_88_ = v0_87_.Type
                        if v0_88_ == "Gear" then
                            local v0_91_ = v0_50_.Data
                            local v0_90_ = v0_91_.Inventory
                            v0_89_ = v0_90_[v0_86_]
                            v0_88_ = not v0_89_
                            v0_85_ = not v0_88_
                        else
                            v0_85_ = nil
                        end
                    end
                    local v0_91_ = v0_50_.Data
                    local v0_90_ = v0_91_.Inventory
                    v0_89_ = v0_90_[v0_86_]
                    v0_88_ = not v0_89_
                    v0_85_ = not v0_88_
                    v0_85_ = nil
                end
            end
        end
        v0_84_.Disabled = v0_85_
        v0_85_ = true
        v0_84_.Visible = v0_85_
        v0_84_.Click = v0_74_
        v0_83_ = v0_83_(v0_84_)
        v0_84_ = v0_27_
        v0_85_ = v0_61_
        v0_86_ = v0_83_
        v0_84_(v0_85_, v0_86_)
        v0_84_ = v0_80_.Name
        v0_52_[v0_84_] = v0_83_
        v0_84_ = v0_82_.RecipeName
        if v0_84_ == "Fortune Potion I" then
            v0_54_ = v0_82_.RecipeName
            v0_84_ = v0_65_
            v0_85_ = v0_82_.Buffs
            v0_84_(v0_85_)
        end
        v0_84_ = v0_82_.Ingredients
        v0_85_ = nil
        v0_86_ = nil
        v0_89_ = v0_45_
        local v0_90_ = {}
        local v0_92_ = "Ingredient\n%*\n%*"
        local v0_94_ = v0_82_.RecipeName
        local v0_95_ = v0_88_[-1]
        v0_92_ = v0_92_:format(v0_94_, v0_95_)
        local v0_91_ = v0_92_
        v0_90_.Name = v0_91_
        v0_94_ = v0_88_[-1]
        v0_92_ = v0_15_:GetValueUnsafe(v0_94_)
        v0_91_ = v0_92_.DisplayName
        if not v0_91_ then
            v0_91_ = v0_88_[-1]
        end
        v0_90_.IngredientName = v0_91_
        v0_94_ = v0_88_[-1]
        v0_92_ = v0_15_:GetValueUnsafe(v0_94_)
        v0_91_ = v0_92_.ItemNameColor3
        v0_90_.IngredientNameColor3 = v0_91_
        v0_91_ = v0_88_[0]
        v0_90_.MaxProgress = v0_91_
        v0_92_ = v0_82_.RecipeName
        local v0_93_ = v0_88_[-1]
        local v0_96_ = v0_50_.Data
        v0_95_ = v0_96_.PotionCraftingProgress
        v0_94_ = v0_95_[v0_92_]
        if not v0_94_ then
            v0_91_ = 0
        else
            local v0_97_ = v0_50_.Data
            v0_96_ = v0_97_.PotionCraftingProgress
            v0_95_ = v0_96_[v0_92_]
            v0_94_ = v0_95_[v0_93_]
            if not v0_94_ then
                v0_91_ = 0
            else
                v0_96_ = v0_50_.Data
                v0_95_ = v0_96_.PotionCraftingProgress
                v0_94_ = v0_95_[v0_92_]
                v0_91_ = v0_94_[v0_93_]
            end
        end
        v0_90_.CurrentProgress = v0_91_
        v0_90_.LayoutOrder = v0_87_
        v0_92_ = v0_82_.RecipeName
        if v0_54_ ~= v0_92_ then
            v0_91_ = false
        end
        v0_91_ = true
        v0_90_.Visible = v0_91_
        v0_90_.Click = v0_75_
        v0_89_ = v0_89_(v0_90_)
        v0_90_ = v0_27_
        v0_91_ = v0_62_
        v0_92_ = v0_89_
        v0_90_(v0_91_, v0_92_)
        v0_90_ = v0_80_.Name
        v0_92_ = v0_80_.Name
        v0_91_ = v0_53_[v0_92_]
        if not v0_91_ then
            v0_91_ = {}
        end
        v0_53_[v0_90_] = v0_91_
        v0_91_ = v0_80_.Name
        v0_90_ = v0_53_[v0_91_]
        v0_91_ = v0_88_[-1]
        v0_90_[v0_91_] = v0_89_
    end
end
v0_84_ = v0_80_.Name
v0_82_ = v0_16_:GetValue(v0_84_)
v0_83_ = v0_80_.Name
v0_51_[v0_83_] = v0_82_
v0_83_ = v0_47_
v0_84_ = {}
v0_86_ = "Recipe\n%*"
v0_88_ = v0_82_.RecipeName
v0_86_ = v0_86_:format(v0_88_)
v0_85_ = v0_86_
v0_84_.Name = v0_85_
v0_85_ = v0_82_.RecipeName
v0_84_.RecipeName = v0_85_
v0_85_ = v0_82_.DisplayName
if not v0_85_ then
    v0_85_ = v0_82_.RecipeName
end
v0_84_.RecipeDisplayName = v0_85_
v0_85_ = v0_82_.RecipeNameColor3
v0_84_.RecipeNameColor3 = v0_85_
v0_85_ = v0_82_.Description
v0_84_.RecipeDescription = v0_85_
v0_86_ = v0_82_.Tier
if v0_86_ then
    v0_85_ = v0_82_.Tier
else
    v0_85_ = nil
end
v0_84_.RecipeTier = v0_85_
v0_85_ = v0_82_.LayoutOrder
v0_84_.LayoutOrder = v0_85_
v0_85_ = v0_82_.OneTimeCraft
if v0_85_ then
    v0_86_ = v0_82_.RecipeName
    v0_87_ = v0_51_[v0_86_]
    if not v0_87_ then
        v0_85_ = false
    else
        v0_88_ = v0_87_.Type
        if v0_88_ == "Aura" then
            local v0_91_ = v0_50_.Data
            v0_88_ = v0_91_.InventoryAuras
            v0_89_ = nil
            local v0_90_ = nil
            local v0_93_ = nil.Name
            if v0_93_ == v0_86_ then
                v0_85_ = true
            else
                v0_85_ = false
                v0_88_ = v0_87_.Type
                if v0_88_ ~= "Item" then
                    v0_88_ = v0_87_.Type
                    if v0_88_ == "Gear" then
                        v0_91_ = v0_50_.Data
                        v0_90_ = v0_91_.Inventory
                        v0_89_ = v0_90_[v0_86_]
                        v0_88_ = not v0_89_
                        v0_85_ = not v0_88_
                    else
                        v0_85_ = nil
                    end
                end
                v0_91_ = v0_50_.Data
                v0_90_ = v0_91_.Inventory
                v0_89_ = v0_90_[v0_86_]
                v0_88_ = not v0_89_
                v0_85_ = not v0_88_
                v0_85_ = nil
            end
        else
            v0_88_ = v0_87_.Type
            if v0_88_ ~= "Item" then
                v0_88_ = v0_87_.Type
                if v0_88_ == "Gear" then
                    local v0_91_ = v0_50_.Data
                    local v0_90_ = v0_91_.Inventory
                    v0_89_ = v0_90_[v0_86_]
                    v0_88_ = not v0_89_
                    v0_85_ = not v0_88_
                else
                    v0_85_ = nil
                end
            end
            local v0_91_ = v0_50_.Data
            local v0_90_ = v0_91_.Inventory
            v0_89_ = v0_90_[v0_86_]
            v0_88_ = not v0_89_
            v0_85_ = not v0_88_
            v0_85_ = nil
        end
    end
end
v0_84_.Disabled = v0_85_
v0_85_ = true
v0_84_.Visible = v0_85_
v0_84_.Click = v0_74_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_27_
v0_85_ = v0_61_
v0_86_ = v0_83_
v0_84_(v0_85_, v0_86_)
v0_84_ = v0_80_.Name
v0_52_[v0_84_] = v0_83_
v0_84_ = v0_82_.RecipeName
if v0_84_ == "Fortune Potion I" then
    v0_54_ = v0_82_.RecipeName
    v0_84_ = v0_65_
    v0_85_ = v0_82_.Buffs
    v0_84_(v0_85_)
end
v0_84_ = v0_82_.Ingredients
v0_85_ = nil
v0_86_ = nil
v0_89_ = v0_45_
local v0_90_ = {}
local v0_92_ = "Ingredient\n%*\n%*"
local v0_94_ = v0_82_.RecipeName
local v0_95_ = v0_88_[-1]
v0_92_ = v0_92_:format(v0_94_, v0_95_)
local v0_91_ = v0_92_
v0_90_.Name = v0_91_
v0_94_ = v0_88_[-1]
v0_92_ = v0_15_:GetValueUnsafe(v0_94_)
v0_91_ = v0_92_.DisplayName
if not v0_91_ then
    v0_91_ = v0_88_[-1]
end
v0_90_.IngredientName = v0_91_
v0_94_ = v0_88_[-1]
v0_92_ = v0_15_:GetValueUnsafe(v0_94_)
v0_91_ = v0_92_.ItemNameColor3
v0_90_.IngredientNameColor3 = v0_91_
v0_91_ = v0_88_[0]
v0_90_.MaxProgress = v0_91_
v0_92_ = v0_82_.RecipeName
local v0_93_ = v0_88_[-1]
local v0_96_ = v0_50_.Data
v0_95_ = v0_96_.PotionCraftingProgress
v0_94_ = v0_95_[v0_92_]
if not v0_94_ then
    v0_91_ = 0
else
    local v0_97_ = v0_50_.Data
    v0_96_ = v0_97_.PotionCraftingProgress
    v0_95_ = v0_96_[v0_92_]
    v0_94_ = v0_95_[v0_93_]
    if not v0_94_ then
        v0_91_ = 0
    else
        v0_96_ = v0_50_.Data
        v0_95_ = v0_96_.PotionCraftingProgress
        v0_94_ = v0_95_[v0_92_]
        v0_91_ = v0_94_[v0_93_]
    end
end
v0_90_.CurrentProgress = v0_91_
v0_90_.LayoutOrder = v0_87_
v0_92_ = v0_82_.RecipeName
if v0_54_ ~= v0_92_ then
    v0_91_ = false
end
v0_91_ = true
v0_90_.Visible = v0_91_
v0_90_.Click = v0_75_
v0_89_ = v0_89_(v0_90_)
v0_90_ = v0_27_
v0_91_ = v0_62_
v0_92_ = v0_89_
v0_90_(v0_91_, v0_92_)
v0_90_ = v0_80_.Name
v0_92_ = v0_80_.Name
v0_91_ = v0_53_[v0_92_]
if not v0_91_ then
    v0_91_ = {}
end
v0_53_[v0_90_] = v0_91_
v0_91_ = v0_80_.Name
v0_90_ = v0_53_[v0_91_]
v0_91_ = v0_88_[-1]
v0_90_[v0_91_] = v0_89_
v0_77_ = v0_22_.UnlockRecipe
v0_76_ = v0_77_.listen
v0_77_ = function(a1)
    local v33_1_ = v0_19_
    local v33_1_, v33_2_, v33_3_ = v33_1_:GetChildren()
    local v33_8_ = "UnlockBy"
    local v33_6_ = nil:GetAttribute(v33_8_)
    if v33_6_ == a1 then
        v33_6_ = v0_16_
        v33_8_ = nil.Name
        v33_6_ = v33_6_:GetValue(v33_8_)
        local v33_7_ = v0_47_
        v33_8_ = {}
        local v33_10_ = "Recipe\n%*"
        local v33_12_ = v33_6_.RecipeName
        v33_10_ = v33_10_:format(v33_12_)
        local v33_9_ = v33_10_
        v33_8_.Name = v33_9_
        v33_9_ = v33_6_.RecipeName
        v33_8_.RecipeName = v33_9_
        v33_9_ = v33_6_.DisplayName
        if not v33_9_ then
            v33_9_ = v33_6_.RecipeName
        end
        v33_8_.RecipeDisplayName = v33_9_
        v33_9_ = v33_6_.RecipeNameColor3
        v33_8_.RecipeNameColor3 = v33_9_
        v33_9_ = v33_6_.Description
        v33_8_.RecipeDescription = v33_9_
        v33_9_ = v33_6_.Tier
        v33_8_.RecipeTier = v33_9_
        v33_9_ = v33_6_.LayoutOrder
        v33_8_.LayoutOrder = v33_9_
        v33_9_ = v33_6_.OneTimeCraft
        if v33_9_ then
            v33_10_ = v33_6_.RecipeName
            v33_12_ = v0_51_
            local v33_11_ = v33_12_[v33_10_]
            if not v33_11_ then
                v33_9_ = false
            else
                v33_12_ = v33_11_.Type
                if v33_12_ == "Aura" then
                    local v33_16_ = v0_50_
                    local v33_15_ = v33_16_.Data
                    v33_12_ = v33_15_.InventoryAuras
                    local v33_13_ = nil
                    local v33_14_ = nil
                    local v33_17_ = v33_16_.Name
                    if v33_17_ == v33_10_ then
                        v33_9_ = true
                    else
                        v33_9_ = false
                        v33_12_ = v33_11_.Type
                        if v33_12_ ~= "Item" then
                            v33_12_ = v33_11_.Type
                            if v33_12_ == "Gear" then
                                v33_16_ = v0_50_
                                v33_15_ = v33_16_.Data
                                v33_14_ = v33_15_.Inventory
                                v33_13_ = v33_14_[v33_10_]
                                v33_12_ = not v33_13_
                                v33_9_ = not v33_12_
                            else
                                v33_9_ = nil
                            end
                        end
                        v33_16_ = v0_50_
                        v33_15_ = v33_16_.Data
                        v33_14_ = v33_15_.Inventory
                        v33_13_ = v33_14_[v33_10_]
                        v33_12_ = not v33_13_
                        v33_9_ = not v33_12_
                        v33_9_ = nil
                    end
                else
                    v33_12_ = v33_11_.Type
                    if v33_12_ ~= "Item" then
                        v33_12_ = v33_11_.Type
                        if v33_12_ == "Gear" then
                            local v33_16_ = v0_50_
                            local v33_15_ = v33_16_.Data
                            local v33_14_ = v33_15_.Inventory
                            local v33_13_ = v33_14_[v33_10_]
                            v33_12_ = not v33_13_
                            v33_9_ = not v33_12_
                        else
                            v33_9_ = nil
                        end
                    end
                    local v33_16_ = v0_50_
                    local v33_15_ = v33_16_.Data
                    local v33_14_ = v33_15_.Inventory
                    local v33_13_ = v33_14_[v33_10_]
                    v33_12_ = not v33_13_
                    v33_9_ = not v33_12_
                    v33_9_ = nil
                end
            end
        end
        v33_8_.Disabled = v33_9_
        v33_9_ = true
        v33_8_.Visible = v33_9_
        v33_9_ = v0_74_
        v33_8_.Click = v33_9_
        v33_7_ = v33_7_(v33_8_)
        v33_8_ = v0_27_
        v33_9_ = v0_61_
        v33_10_ = v33_7_
        v33_8_(v33_9_, v33_10_)
        v33_8_ = v0_52_
        v33_9_ = nil.Name
        v33_8_[v33_9_] = v33_7_
        v33_8_ = v0_51_
        v33_9_ = nil.Name
        v33_8_[v33_9_] = v33_6_
        v33_8_ = v33_6_.Ingredients
        v33_9_ = nil
        v33_10_ = nil
        local v33_13_ = v0_45_
        local v33_14_ = {}
        local v33_16_ = "Ingredient\n%*\n%*"
        local v33_18_ = v33_6_.RecipeName
        local v33_19_ = v33_12_[-1]
        v33_16_ = v33_16_:format(v33_18_, v33_19_)
        local v33_15_ = v33_16_
        v33_14_.Name = v33_15_
        v33_16_ = v0_15_
        v33_18_ = v33_12_[-1]
        v33_16_ = v33_16_:GetValueUnsafe(v33_18_)
        v33_15_ = v33_16_.DisplayName
        if not v33_15_ then
            v33_15_ = v33_12_[-1]
        end
        v33_14_.IngredientName = v33_15_
        v33_16_ = v0_15_
        v33_18_ = v33_12_[-1]
        v33_16_ = v33_16_:GetValueUnsafe(v33_18_)
        v33_15_ = v33_16_.ItemNameColor3
        v33_14_.IngredientNameColor3 = v33_15_
        v33_15_ = v33_12_[0]
        v33_14_.MaxProgress = v33_15_
        v33_16_ = v33_6_.RecipeName
        local v33_17_ = v33_12_[-1]
        local v33_21_ = v0_50_
        local v33_20_ = v33_21_.Data
        v33_19_ = v33_20_.PotionCraftingProgress
        v33_18_ = v33_19_[v33_16_]
        if not v33_18_ then
            v33_15_ = 0
        else
            local v33_22_ = v0_50_
            v33_21_ = v33_22_.Data
            v33_20_ = v33_21_.PotionCraftingProgress
            v33_19_ = v33_20_[v33_16_]
            v33_18_ = v33_19_[v33_17_]
            if not v33_18_ then
                v33_15_ = 0
            else
                v33_21_ = v0_50_
                v33_20_ = v33_21_.Data
                v33_19_ = v33_20_.PotionCraftingProgress
                v33_18_ = v33_19_[v33_16_]
                v33_15_ = v33_18_[v33_17_]
            end
        end
        v33_14_.CurrentProgress = v33_15_
        v33_14_.LayoutOrder = nil
        v33_16_ = v0_54_
        v33_17_ = v33_6_.RecipeName
        if v33_16_ ~= v33_17_ then
            v33_15_ = false
        end
        v33_15_ = true
        v33_14_.Visible = v33_15_
        v33_15_ = v0_75_
        v33_14_.Click = v33_15_
        v33_13_ = v33_13_(v33_14_)
        v33_14_ = v0_27_
        v33_15_ = v0_62_
        v33_16_ = v33_13_
        v33_14_(v33_15_, v33_16_)
        v33_14_ = v0_53_
        v33_15_ = nil.Name
        v33_17_ = v0_53_
        v33_18_ = nil.Name
        v33_16_ = v33_17_[v33_18_]
        if not v33_16_ then
            v33_16_ = {}
        end
        v33_14_[v33_15_] = v33_16_
        v33_15_ = v0_53_
        v33_16_ = nil.Name
        v33_14_ = v33_15_[v33_16_]
        v33_15_ = v33_12_[-1]
        v33_14_[v33_15_] = v33_13_
    end
    v33_2_ = v0_28_
    v33_1_ = v33_2_.GetObjects
    v33_2_ = "Recipe\n_"
    v33_1_ = v33_1_(v33_2_)
    local v33_4_ = function(a1, a2)
        local v34_2_ = a1.Name
        local v34_4_ = "^Recipe\n([%w%s%p]+)"
        v34_2_ = v34_2_:match(v34_4_)
        local v34_5_ = "%s"
        local v34_6_ = ""
        local v34_3_ = v34_2_:gsub(v34_5_, v34_6_)
        v34_3_ = v34_3_:lower()
        v34_5_ = v0_55_
        local v34_7_ = "%s"
        local v34_8_ = ""
        v34_5_ = v34_5_:gsub(v34_7_, v34_8_)
        v34_3_ = v34_3_:find(v34_5_:lower())
        if v34_3_ then
            v34_3_ = true
            a1.Visible = v34_3_
            return
        end
        v34_3_ = false
        a1.Visible = v34_3_
    end
    v33_1_:Each(v33_4_)
end
v0_76_(v0_77_)
v0_77_ = v0_22_.AutoAdded
v0_76_ = v0_77_.listen
v0_77_ = function(a1)
    local v35_3_ = v0_53_
    local v35_4_ = a1.recipeName
    local v35_2_ = v35_3_[v35_4_]
    v35_3_ = a1.ingredientName
    local v35_1_ = v35_2_[v35_3_]
    v35_2_ = v35_1_.__prop
    v35_3_ = a1.amount
    v35_2_.CurrentProgress = v35_3_
end
v0_76_(v0_77_)
v0_76_ = v0_68_
v0_76_()
v0_76_ = v0_28_.AddObject
v0_77_ = "Window"
v0_78_ = v0_73_
v0_76_(v0_77_, v0_78_)
return v0_4_
