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
local v0_19_ = "RecipesDB"
v0_16_ = v0_16_(v0_14_:WaitForChild(v0_19_))
local v0_17_ = require
local v0_20_ = "PreviewModels"
v0_17_ = v0_17_(v0_14_:WaitForChild(v0_20_))
v0_18_ = require
local v0_21_ = "RarityDB"
v0_18_ = v0_18_(v0_14_:WaitForChild(v0_21_))
v0_21_ = "RecipeList"
v0_19_ = v0_1_:WaitForChild(v0_21_)
local v0_22_ = "TierList"
v0_20_ = v0_1_:WaitForChild(v0_22_)
local v0_23_ = "Packets"
v0_21_ = v0_1_:WaitForChild(v0_23_)
v0_22_ = require
local v0_25_ = "Crafting"
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
local v0_54_ = false
local v0_55_ = nil
local v0_56_ = "Gears"
local v0_57_ = ""
local v0_58_ = {}
local v0_59_ = true
v0_58_.Ingredient = v0_59_
v0_59_ = true
v0_58_.Craft = v0_59_
v0_59_ = true
v0_58_.AutoAdd = v0_59_
v0_59_ = {}
local v0_60_ = nil
v0_59_.Ingredient = v0_60_
v0_60_ = nil
v0_59_.Craft = v0_60_
v0_60_ = nil
v0_59_.AutoAdd = v0_60_
v0_60_ = {}
local v0_61_ = nil
v0_60_.Item = v0_61_
v0_61_ = nil
v0_60_.Connection = v0_61_
v0_61_ = {}
local v0_62_ = nil
local v0_63_ = nil
local v0_64_ = nil
local v0_65_ = nil
local v0_66_ = nil
local v0_67_ = function(a1)
    local v1_2_ = v0_51_
    local v1_1_ = v1_2_[a1]
    if not v1_1_ then
        v1_2_ = false
        return v1_2_
    end
    v1_2_ = v0_56_
    if v1_2_ == "Gears" then
        local v1_3_ = v1_1_.Type
        if v1_3_ ~= "Gear" then
            v1_2_ = false
        end
        v1_2_ = true
        return v1_2_
    end
    v1_2_ = v0_56_
    if v1_2_ == "Items" then
        v1_2_ = true
        local v1_3_ = v1_1_.Type
        if v1_3_ ~= "Item" then
            v1_3_ = v1_1_.Type
            if v1_3_ ~= "Bank" then
                v1_2_ = false
            end
            v1_2_ = true
        end
        return v1_2_
    end
    v1_2_ = v0_56_
    if v1_2_ == "Auras" then
        local v1_3_ = v1_1_.Type
        if v1_3_ ~= "Aura" then
            v1_2_ = false
        end
        v1_2_ = true
        return v1_2_
    end
    v1_2_ = false
    return v1_2_
end
local v0_68_ = function()
    local v2_1_ = v0_28_
    local v2_0_ = v2_1_.GetObjects
    v2_1_ = "Recipe\n_"
    v2_0_ = v2_0_(v2_1_)
    local v2_3_ = function(a1, a2)
        local v3_2_ = a1.Name
        local v3_4_ = "^Recipe\n([%w%s%p]+)"
        v3_2_ = v3_2_:match(v3_4_)
        local v3_5_ = "%s"
        local v3_6_ = ""
        local v3_3_ = v3_2_:gsub(v3_5_, v3_6_)
        v3_3_ = v3_3_:lower()
        v3_5_ = v0_57_
        local v3_7_ = "%s"
        local v3_8_ = ""
        v3_5_ = v3_5_:gsub(v3_7_, v3_8_)
        v3_3_ = v3_3_:find(v3_5_:lower())
        if v3_3_ then
            v3_5_ = v0_51_
            v3_4_ = v3_5_[v3_2_]
            if not v3_4_ then
                v3_3_ = false
            else
                v3_5_ = v0_56_
                if v3_5_ == "Gears" then
                    v3_5_ = v3_4_.Type
                    if v3_5_ ~= "Gear" then
                        v3_3_ = false
                    end
                    v3_3_ = true
                else
                    v3_5_ = v0_56_
                    if v3_5_ == "Items" then
                        v3_3_ = true
                        v3_5_ = v3_4_.Type
                        if v3_5_ ~= "Item" then
                            v3_5_ = v3_4_.Type
                            if v3_5_ ~= "Bank" then
                                v3_3_ = false
                            end
                            v3_3_ = true
                            v3_5_ = v0_56_
                            if v3_5_ == "Auras" then
                                v3_5_ = v3_4_.Type
                                if v3_5_ ~= "Aura" then
                                    v3_3_ = false
                                end
                                v3_3_ = true
                            else
                                v3_3_ = false
                            end
                        else
                        end
                    else
                        v3_5_ = v0_56_
                        if v3_5_ == "Auras" then
                            v3_5_ = v3_4_.Type
                            if v3_5_ ~= "Aura" then
                                v3_3_ = false
                            end
                            v3_3_ = true
                        else
                            v3_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v3_3_
            return
        end
        v3_3_ = false
        a1.Visible = v3_3_
    end
    v2_0_:Each(v2_3_)
end
local v0_69_ = function(a1)
    local v4_1_ = a1
    local v4_2_ = nil
    local v4_3_ = nil
    local v4_6_ = v0_48_
    local v4_7_ = {}
    v4_7_.EffectName = nil
    local v4_8_ = 0
    v4_7_.EffectDuration = v4_8_
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v4_7_.SizeConstraint = RelativeXX
    v4_6_ = v4_6_(v4_7_)
    v4_7_ = v0_27_
    v4_8_ = v0_65_
    local v4_9_ = v4_6_
    v4_7_(v4_8_, v4_9_)
    v4_8_ = v0_61_
    v4_9_ = v4_6_
    local insert = table.insert
    insert(v4_8_, v4_9_)
end
local v0_70_ = function()
    local v5_0_ = v0_61_
    local v5_1_ = nil
    local v5_2_ = nil
    nil:Destroy()
end
local v0_71_ = function()
    local v6_0_ = false
    local v6_2_ = v0_60_
    local v6_1_ = v6_2_.Item
    if v6_1_ then
        v6_2_ = v0_60_
        v6_1_ = v6_2_.Connection
        if v6_1_ then
            v6_1_ = v0_62_
            local v6_3_ = "Model"
            v6_1_ = v6_1_:FindFirstChild(v6_3_)
            if v6_1_ then
                v6_1_ = v0_62_
                v6_3_ = "Model"
                v6_1_ = v6_1_:FindFirstChild(v6_3_)
                v6_1_:Destroy()
                v6_2_ = v0_60_
                v6_1_ = v6_2_.Connection
                v6_1_:Disconnect()
                v6_1_ = v0_60_
                v6_2_ = nil
                v6_1_.Item = v6_2_
                v6_1_ = v0_60_
                v6_2_ = nil
                v6_1_.Connection = v6_2_
                v6_0_ = true
            else
                v6_0_ = nil
                v6_1_ = v0_62_
                v6_3_ = "Text"
                v6_1_ = v6_1_:FindFirstChild(v6_3_)
                if v6_1_ then
                    v6_1_ = v0_62_
                    v6_3_ = "Text"
                    v6_1_ = v6_1_:FindFirstChild(v6_3_)
                    v6_1_:Destroy()
                    v6_0_ = nil
                else
                    v6_0_ = nil
                end
            end
        else
            v6_1_ = v0_62_
            local v6_3_ = "Text"
            v6_1_ = v6_1_:FindFirstChild(v6_3_)
            if v6_1_ then
                v6_1_ = v0_62_
                v6_3_ = "Text"
                v6_1_ = v6_1_:FindFirstChild(v6_3_)
                v6_1_:Destroy()
                v6_0_ = nil
            else
                v6_0_ = nil
            end
        end
    else
        v6_1_ = v0_62_
        local v6_3_ = "Text"
        v6_1_ = v6_1_:FindFirstChild(v6_3_)
        if v6_1_ then
            v6_1_ = v0_62_
            v6_3_ = "Text"
            v6_1_ = v6_1_:FindFirstChild(v6_3_)
            v6_1_:Destroy()
            v6_0_ = nil
        else
            v6_0_ = nil
        end
    end
    if v6_0_ == false then
        v6_1_ = nil
        v6_1_()
    end
end
local v0_72_ = function()
    local v7_0_ = v0_54_
    if v7_0_ then
        return
    end
    v7_0_ = true
    v0_54_ = v7_0_
    v7_0_ = v0_71_
    v7_0_()
    local v7_1_ = v0_51_
    local v7_2_ = v0_55_
    v7_0_ = v7_1_[v7_2_]
    v7_1_ = v0_17_
    local v7_3_ = v7_0_.PreviewModelName
    v7_1_ = v7_1_:GetValue(v7_3_)
    v7_1_ = v7_1_:Clone()
    v7_2_ = v0_62_
    local v7_4_ = "Camera"
    v7_2_ = v7_2_:FindFirstChild(v7_4_)
    v7_3_ = "Model"
    v7_1_.Name = v7_3_
    v7_3_ = v0_62_
    v7_1_.Parent = v7_3_
    local lookAt = CFrame.lookAt
    local v7_6_ = Vector3.new(0.000000, 0.500000, 1.000000)
    local v7_5_ = v7_6_.Unit
    local v7_9_ = v7_1_:GetExtentsSize()
    local v7_8_ = v7_9_.Magnitude
    local v7_7_ = v7_8_ + 0.500000
    v7_6_ = v7_7_ - 0.750000
    v7_4_ = v7_5_ * v7_6_
    local zero = Vector3.zero
    v7_3_ = lookAt(v7_4_, zero)
    v7_2_.CFrame = v7_3_
    v7_3_ = v7_2_.CFrame
    local new = CFrame.new
    v7_5_ = Vector3.new(0.000000, 0.175000, 0.000000)
    v7_4_ = new(v7_5_)
    v7_3_ *= v7_4_
    v7_2_.CFrame = v7_3_
    v7_3_ = 0
    v7_4_ = v0_60_
    v7_5_ = v0_55_
    v7_4_.Item = v7_5_
    v7_4_ = function()
        local v8_0_ = v0_56_
        if v8_0_ ~= "Gears" then
            return
        end
        v8_0_ = v7_1_
        v8_0_ = v8_0_:GetPivot()
        local lookAt = CFrame.lookAt
        local v8_3_ = Vector3.new(0.000000, 0.000000, 0.000000)
        local v8_4_ = v8_0_.LookVector
        local v8_2_ = lookAt(v8_3_, v8_4_)
        local fromMatrix = CFrame.fromMatrix
        v8_4_ = Vector3.new(0.000000, 0.000000, 0.000000)
        local v8_5_ = v8_0_.RightVector
        local v8_6_ = v8_0_.UpVector
        v8_3_ = fromMatrix(v8_4_, v8_5_, v8_6_)
        local v8_1_ = v8_2_ * v8_3_
        v8_2_ = function(a1)
            local v9_1_, v9_2_, v9_3_ = a1:GetDescendants()
            local v9_8_ = "BasePart"
            local v9_6_ = nil:IsA(v9_8_)
            if v9_6_ then
                v9_6_ = nil.Size
                local v9_7_ = Vector3.new(1.000000, 2.000000, 1.000000)
                if v9_6_ == v9_7_ then
                    return nil
                end
            end
        end
        v8_3_ = v7_1_
        v8_5_ = "Model"
        v8_3_ = v8_3_:IsA(v8_5_)
        if v8_3_ then
            v8_3_ = v7_1_
            v8_4_ = v8_2_
            v8_5_ = v7_1_
            v8_4_ = v8_4_(v8_5_)
            if not v8_4_ then
                v8_5_ = v7_1_
                local v8_7_ = "Model"
                v8_5_ = v8_5_:FindFirstChildOfClass(v8_7_)
                v8_4_ = v8_5_.PrimaryPart
            end
            v8_3_.PrimaryPart = v8_4_
        end
        local new = CFrame.new
        local zero = Vector3.zero
        v8_4_ = new(zero)
        local Angles = CFrame.Angles
        v8_6_ = 0
        local v8_7_ = 3.141593
        local v8_8_ = 0
        v8_5_ = Angles(v8_6_, v8_7_, v8_8_)
        v8_3_ = v8_4_ * v8_5_
        v8_4_ = v7_1_
        v8_6_ = v8_3_
        v8_4_:PivotTo(v8_6_)
        return v8_3_
    end
    v7_4_ = v7_4_()
    v7_5_ = v0_60_
    v7_7_ = v0_2_
    v7_6_ = v7_7_.RenderStepped
    v7_8_ = function(a1)
        local v10_1_ = v7_3_
        local v10_2_ = a1 * 90.000000
        v10_1_ += v10_2_
        v7_3_ = a1
        v10_1_ = v7_3_
        v10_2_ = 360
        if v10_2_ < v10_1_ then
            v10_1_ = 0
            v7_3_ = a1
        end
        v10_1_ = v7_1_
        local Angles = CFrame.Angles
        local v10_4_ = 0
        local v10_6_ = v7_3_
        local rad = math.rad
        local v10_5_ = rad(v10_6_)
        v10_6_ = 0
        v10_1_:PivotTo(Angles(v10_4_, v10_5_, v10_6_))
    end
    v7_6_ = v7_6_:Connect(v7_8_)
    v7_5_.Connection = v7_6_
    v7_5_ = false
    v0_54_ = v7_0_
end
local v0_73_ = function(a1)
    local v11_1_ = v0_71_
    v11_1_()
    v11_1_ = v0_46_
    local v11_2_ = {}
    v11_2_.Aura = a1
    local fromScale = UDim2.fromScale
    local v11_4_ = 1
    local v11_5_ = 1
    local v11_3_ = fromScale(v11_4_, v11_5_)
    v11_2_.Size = v11_3_
    v11_1_ = v11_1_(v11_2_)
    v11_2_ = v11_1_.__object
    v11_3_ = "Text"
    v11_2_.Name = v11_3_
    v11_2_ = v0_27_
    v11_3_ = v0_62_
    v11_4_ = v11_1_
    v11_2_(v11_3_, v11_4_)
end
local v0_74_ = function(a1, a2)
    local v12_5_ = v0_50_
    local v12_4_ = v12_5_.Data
    local v12_3_ = v12_4_.CraftingProgress
    local v12_2_ = v12_3_[a1]
    if not v12_2_ then
        v12_2_ = 0
        return v12_2_
    end
    local v12_6_ = v0_50_
    v12_5_ = v12_6_.Data
    v12_4_ = v12_5_.CraftingProgress
    v12_3_ = v12_4_[a1]
    v12_2_ = v12_3_[a2]
    if not v12_2_ then
        v12_2_ = 0
        return v12_2_
    end
    v12_6_ = v0_50_
    v12_5_ = v12_6_.Data
    v12_4_ = v12_5_.CraftingProgress
    v12_3_ = v12_4_[a1]
    v12_2_ = v12_3_[a2]
    return v12_2_
end
local v0_75_ = function(a1, a2)
    local v13_6_ = v0_50_
    local v13_5_ = v13_6_.Data
    local v13_2_ = v13_5_.InventoryAuras
    local v13_3_ = nil
    local v13_4_ = nil
    local v13_7_ = v13_6_.Name
    if v13_7_ == a1 then
        if a2 then
            if a2 then
                v13_7_ = v13_6_.Locked
                if not v13_7_ then
                    v13_7_ = true
                    return v13_7_
                end
            end
        end
        v13_7_ = true
        return v13_7_
    end
    v13_2_ = false
    return v13_2_
end
local v0_76_ = function(a1)
    local v14_1_ = 0
    local v14_6_ = v0_50_
    local v14_5_ = v14_6_.Data
    local v14_2_ = v14_5_.InventoryAuras
    local v14_3_ = nil
    local v14_4_ = nil
    local v14_7_ = v14_6_.Name
    if v14_7_ == a1 then
        v14_7_ = v14_6_.Locked
        if not v14_7_ then
            v14_1_ += 1.000000
        end
    end
    return v14_1_
end
local v0_77_ = function(a1)
    local v15_2_ = v0_51_
    local v15_1_ = v15_2_[a1]
    if not v15_1_ then
        v15_2_ = false
        return v15_2_
    end
    v15_2_ = v15_1_.Type
    if v15_2_ == "Aura" then
        local v15_7_ = v0_50_
        local v15_6_ = v15_7_.Data
        local v15_3_ = v15_6_.InventoryAuras
        local v15_4_ = nil
        local v15_5_ = nil
        local v15_8_ = v15_7_.Name
        if v15_8_ == a1 then
            v15_2_ = true
            return v15_2_
        end
        v15_2_ = false
        return v15_2_
    end
    v15_2_ = v15_1_.Type
    if v15_2_ ~= "Item" then
        v15_2_ = v15_1_.Type
        if v15_2_ == "Gear" then
            local v15_7_ = v0_50_
            local v15_6_ = v15_7_.Data
            local v15_5_ = v15_6_.Inventory
            local v15_4_ = v15_5_[a1]
            local v15_3_ = not v15_4_
            v15_2_ = not v15_3_
            return v15_2_
        end
    end
    local v15_7_ = v0_50_
    local v15_6_ = v15_7_.Data
    local v15_5_ = v15_6_.Inventory
    local v15_4_ = v15_5_[a1]
    local v15_3_ = not v15_4_
    v15_2_ = not v15_3_
    return v15_2_
end
local v0_78_ = v0_30_
local v0_79_ = "Crafting"
v0_78_ = v0_78_(v0_79_)
v0_79_ = table.create(6)
local new = Vector2.new
local v0_87_ = 0.500000
local v0_88_ = 0.500000
local v0_86_ = new(v0_87_, v0_88_)
v0_79_.AnchorPoint = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.500000
v0_88_ = 0.500000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_79_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.500000
v0_88_ = 0.550000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_79_.Size = v0_86_
local new = Color3.new
v0_86_ = new()
v0_79_.BackgroundColor3 = v0_86_
v0_86_ = 0.400000
v0_79_.BackgroundTransparency = v0_86_
v0_86_ = false
v0_79_.Visible = v0_86_
local v0_80_ = v0_30_
local v0_81_ = "Index"
v0_80_ = v0_80_(v0_81_)
v0_81_ = table.create(4)
local fromScale = UDim2.fromScale
v0_87_ = 0.005000
v0_88_ = 0.090000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_81_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 0.385000
v0_88_ = 0.900000
v0_86_ = fromScale(v0_87_, v0_88_)
v0_81_.Size = v0_86_
v0_86_ = 1
v0_81_.BackgroundTransparency = v0_86_
local v0_82_ = v0_30_
local v0_83_ = "ItemViewportHolder"
v0_82_ = v0_82_(v0_83_)
v0_83_ = table.create(5)
local fromScale = UDim2.fromScale
local v0_90_ = 0.842500
local v0_91_ = 0.585000
local v0_89_ = fromScale(v0_90_, v0_91_)
v0_83_.Size = v0_89_
local new = Color3.new
v0_89_ = new()
v0_83_.BackgroundColor3 = v0_89_
v0_89_ = 0.650000
v0_83_.BackgroundTransparency = v0_89_
local v0_84_ = v0_32_
local v0_85_ = "ItemViewportFrame"
v0_84_ = v0_84_(v0_85_)
v0_85_ = table.create(3)
local new = Vector2.new
v0_90_ = 0.500000
v0_89_ = new(v0_90_)
v0_85_.AnchorPoint = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 0.500000
v0_91_ = 0.050000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_85_.Position = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 0.900000
v0_91_ = 0.750000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_85_.Size = v0_89_
local new = Color3.new
v0_89_ = new()
v0_85_.BackgroundColor3 = v0_89_
v0_89_ = 0.800000
v0_85_.BackgroundTransparency = v0_89_
v0_86_ = v0_41_
v0_87_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_87_.ApplyStrokeMode = Border
local new = Color3.new
v0_89_ = 1
v0_90_ = 1
v0_91_ = 1
v0_88_ = new(v0_89_, v0_90_, v0_91_)
v0_87_.Color = v0_88_
v0_88_ = 0.500000
v0_87_.Transparency = v0_88_
v0_88_ = 1.500000
v0_87_.Thickness = v0_88_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_43_
v0_88_ = {}
v0_89_ = 0.050000
v0_88_.Size = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_44_
v0_89_ = {}
v0_88_ = v0_88_(v0_89_)
v0_85_[1] = v0_86_
v0_85_[2] = v0_87_
v0_85_[3] = v0_88_
v0_89_ = v0_25_.CreatedAsync
v0_90_ = function(a1)
    v0_62_ = a1
    local new = Instance.new
    local v16_2_ = "Camera"
    local v16_1_ = new(v16_2_)
    v16_1_.Parent = a1
    a1.CurrentCamera = v16_1_
end
v0_85_[v0_89_] = v0_90_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_34_
v0_86_ = "CraftButton"
v0_85_ = v0_85_(v0_86_)
v0_86_ = table.create(3)
local new = Vector2.new
v0_91_ = 0
local v0_92_ = 0
v0_90_ = new(v0_91_, v0_92_)
v0_86_.AnchorPoint = v0_90_
local fromScale = UDim2.fromScale
v0_91_ = 0.100000
v0_92_ = 0.850000
v0_90_ = fromScale(v0_91_, v0_92_)
v0_86_.Position = v0_90_
local fromScale = UDim2.fromScale
v0_91_ = 0.375000
v0_92_ = 0.110000
v0_90_ = fromScale(v0_91_, v0_92_)
v0_86_.Size = v0_90_
local new = Color3.new
v0_90_ = new()
v0_86_.BackgroundColor3 = v0_90_
v0_90_ = 0.650000
v0_86_.BackgroundTransparency = v0_90_
v0_90_ = "Craft"
v0_86_.Text = v0_90_
v0_90_ = true
v0_86_.TextScaled = v0_90_
local new = Color3.new
v0_91_ = 1
v0_92_ = 1
local v0_93_ = 1
v0_90_ = new(v0_91_, v0_92_, v0_93_)
v0_86_.TextColor3 = v0_90_
local new = Font.new
v0_91_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_90_ = new(v0_91_, Medium)
v0_86_.FontFace = v0_90_
v0_87_ = v0_41_
v0_88_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_88_.ApplyStrokeMode = Border
local new = Color3.new
v0_90_ = 1
v0_91_ = 1
v0_92_ = 1
v0_89_ = new(v0_90_, v0_91_, v0_92_)
v0_88_.Color = v0_89_
v0_89_ = 0.500000
v0_88_.Transparency = v0_89_
v0_89_ = 1.500000
v0_88_.Thickness = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_43_
v0_89_ = {}
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_44_
v0_90_ = {}
v0_89_ = v0_89_(v0_90_)
v0_86_[1] = v0_87_
v0_86_[2] = v0_88_
v0_86_[3] = v0_89_
v0_90_ = v0_25_
v0_91_ = "MouseButton1Click"
v0_90_ = v0_90_(v0_91_)
v0_91_ = function(a1)
    local v17_4_ = v0_50_
    local v17_3_ = v17_4_.Data
    local v17_2_ = v17_3_.CraftingProgress
    v17_3_ = v0_55_
    local v17_1_ = v17_2_[v17_3_]
    if not v17_1_ then
        v17_2_ = v0_10_
        v17_1_ = v17_2_.PlaySFX
        v17_2_ = "Error"
        v17_3_ = "UISounds"
        v17_1_(v17_2_, v17_3_)
        return
    end
    v17_2_ = v0_51_
    v17_3_ = v0_55_
    v17_1_ = v17_2_[v17_3_]
    v17_2_ = v17_1_.Ingredients
    v17_3_ = nil
    v17_4_ = nil
    local v17_11_ = v0_50_
    local v17_10_ = v17_11_.Data
    local v17_9_ = v17_10_.CraftingProgress
    v17_10_ = v0_55_
    local v17_8_ = v17_9_[v17_10_]
    v17_9_ = nil[-1]
    local v17_7_ = v17_8_[v17_9_]
    if not v17_7_ then
        v17_8_ = v0_10_
        v17_7_ = v17_8_.PlaySFX
        v17_8_ = "Error"
        v17_9_ = "UISounds"
        v17_7_(v17_8_, v17_9_)
        return
    end
    v17_11_ = v0_50_
    v17_10_ = v17_11_.Data
    v17_9_ = v17_10_.CraftingProgress
    v17_10_ = v0_55_
    v17_8_ = v17_9_[v17_10_]
    v17_9_ = nil[-1]
    v17_7_ = v17_8_[v17_9_]
    v17_8_ = nil[0]
    if v17_7_ < v17_8_ then
        v17_8_ = v0_10_
        v17_7_ = v17_8_.PlaySFX
        v17_8_ = "Error"
        v17_9_ = "UISounds"
        v17_7_(v17_8_, v17_9_)
        return
    end
    v17_3_ = v0_10_
    v17_2_ = v17_3_.PlaySFX
    v17_3_ = "Click"
    v17_4_ = "UISounds"
    v17_2_(v17_3_, v17_4_)
    v17_3_ = v0_4_
    v17_2_ = v17_3_.SendCraftRequest
    v17_3_ = v0_55_
    v17_2_ = v17_2_(v17_3_)
    if v17_2_ then
        local v17_5_ = v0_53_
        local v17_6_ = v0_55_
        v17_2_ = v17_5_[v17_6_]
        v17_3_ = nil
        v17_4_ = nil
        v17_7_ = v17_6_.__prop
        v17_8_ = 0
        v17_7_.CurrentProgress = v17_8_
        v17_2_ = v17_1_.OneTimeCraft
        if v17_2_ then
            v17_4_ = v0_52_
            v17_5_ = v0_55_
            v17_3_ = v17_4_[v17_5_]
            v17_2_ = v17_3_.__prop
            v17_3_ = true
            v17_2_.Disabled = v17_3_
        end
    end
end
v0_86_[v0_90_] = v0_91_
v0_85_ = v0_85_(v0_86_)
v0_86_ = v0_34_
v0_87_ = "AutoAddButton"
v0_86_ = v0_86_(v0_87_)
v0_87_ = table.create(3)
local new = Vector2.new
v0_92_ = 1
v0_93_ = 0
v0_91_ = new(v0_92_, v0_93_)
v0_87_.AnchorPoint = v0_91_
local fromScale = UDim2.fromScale
v0_92_ = 0.900000
v0_93_ = 0.850000
v0_91_ = fromScale(v0_92_, v0_93_)
v0_87_.Position = v0_91_
local fromScale = UDim2.fromScale
v0_92_ = 0.375000
v0_93_ = 0.110000
v0_91_ = fromScale(v0_92_, v0_93_)
v0_87_.Size = v0_91_
local new = Color3.new
v0_91_ = new()
v0_87_.BackgroundColor3 = v0_91_
v0_91_ = 0.650000
v0_87_.BackgroundTransparency = v0_91_
v0_91_ = "Auto"
v0_87_.Text = v0_91_
v0_91_ = true
v0_87_.TextScaled = v0_91_
local new = Color3.new
v0_92_ = 1
v0_93_ = 1
local v0_94_ = 1
v0_91_ = new(v0_92_, v0_93_, v0_94_)
v0_87_.TextColor3 = v0_91_
local new = Font.new
v0_92_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_91_ = new(v0_92_, Medium)
v0_87_.FontFace = v0_91_
v0_88_ = v0_41_
v0_89_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_89_.ApplyStrokeMode = Border
local new = Color3.new
v0_91_ = 1
v0_92_ = 1
v0_93_ = 1
v0_90_ = new(v0_91_, v0_92_, v0_93_)
v0_89_.Color = v0_90_
v0_90_ = 0.500000
v0_89_.Transparency = v0_90_
v0_90_ = 1.500000
v0_89_.Thickness = v0_90_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_43_
v0_90_ = {}
v0_91_ = 0.300000
v0_90_.Size = v0_91_
v0_89_ = v0_89_(v0_90_)
v0_90_ = v0_44_
v0_91_ = {}
v0_90_ = v0_90_(v0_91_)
v0_87_[1] = v0_88_
v0_87_[2] = v0_89_
v0_87_[3] = v0_90_
v0_91_ = v0_25_
v0_92_ = "MouseButton1Click"
v0_91_ = v0_91_(v0_92_)
v0_92_ = function(a1)
    local v18_2_ = v0_4_
    local v18_1_ = v18_2_.SendChangeAutoAddTargetRequest
    v18_2_ = v0_55_
    v18_1_ = v18_1_(v18_2_)
    if v18_1_ then
        v18_2_ = v0_10_
        v18_1_ = v18_2_.PlaySFX
        v18_2_ = "Click"
        local v18_3_ = "UISounds"
        v18_1_(v18_2_, v18_3_)
        v18_1_ = v0_49_
        local v18_4_ = v0_50_
        v18_3_ = v18_4_.Data
        v18_2_ = v18_3_.AutoAddTarget
        v18_1_.AutoAddTarget = v18_2_
    end
end
v0_87_[v0_91_] = v0_92_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_41_
v0_88_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_88_.ApplyStrokeMode = Border
local new = Color3.new
v0_90_ = 1
v0_91_ = 1
v0_92_ = 1
v0_89_ = new(v0_90_, v0_91_, v0_92_)
v0_88_.Color = v0_89_
v0_89_ = 0.500000
v0_88_.Transparency = v0_89_
v0_89_ = 1.500000
v0_88_.Thickness = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_43_
v0_89_ = {}
v0_90_ = 0.040000
v0_89_.Size = v0_90_
-- WARNING: SETLIST_C0, output may be wrong!
v0_83_ = {v0_84_, v0_88_(v0_89_)}
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_30_
v0_84_ = "IngredientsHolder"
v0_83_ = v0_83_(v0_84_)
v0_84_ = table.create(3)
local fromScale = UDim2.fromScale
v0_89_ = 0
v0_90_ = 0.600000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_84_.Position = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 1
v0_90_ = 0.400000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_84_.Size = v0_88_
local new = Color3.new
v0_88_ = new()
v0_84_.BackgroundColor3 = v0_88_
v0_88_ = 0.650000
v0_84_.BackgroundTransparency = v0_88_
v0_85_ = v0_31_
v0_86_ = "ScrollingFrame"
v0_85_ = v0_85_(v0_86_)
v0_86_ = table.create(1)
local new = Vector2.new
v0_89_ = 0.500000
v0_90_ = 0.500000
v0_88_ = new(v0_89_, v0_90_)
v0_86_.AnchorPoint = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.500000
v0_90_ = 0.500000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_86_.Position = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 1
v0_90_ = 0.950000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_86_.Size = v0_88_
v0_88_ = 1
v0_86_.BackgroundTransparency = v0_88_
v0_88_ = true
v0_86_.ClipsDescendants = v0_88_
local new = UDim2.new
v0_88_ = new()
v0_86_.CanvasSize = v0_88_
local Y = Enum.AutomaticSize.Y
v0_86_.AutomaticCanvasSize = Y
v0_88_ = 0
v0_86_.ScrollBarThickness = v0_88_
v0_87_ = v0_39_
v0_88_ = "UIListLayout"
v0_87_ = v0_87_(v0_88_)
v0_88_ = {}
local new = UDim.new
v0_90_ = 0.050000
v0_89_ = new(v0_90_)
v0_88_.Padding = v0_89_
local Vertical = Enum.FillDirection.Vertical
v0_88_.FillDirection = Vertical
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_88_.SortOrder = LayoutOrder
local Left = Enum.HorizontalAlignment.Left
v0_88_.HorizontalAlignment = Left
local Top = Enum.VerticalAlignment.Top
v0_88_.VerticalAlignment = Top
v0_87_ = v0_87_(v0_88_)
v0_86_[1] = v0_87_
v0_88_ = v0_25_.CreatedAsync
v0_89_ = function(a1)
    v0_64_ = a1
end
v0_86_[v0_88_] = v0_89_
v0_85_ = v0_85_(v0_86_)
v0_86_ = v0_41_
v0_87_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_87_.ApplyStrokeMode = Border
local new = Color3.new
v0_89_ = 1
v0_90_ = 1
v0_91_ = 1
v0_88_ = new(v0_89_, v0_90_, v0_91_)
v0_87_.Color = v0_88_
v0_88_ = 0.500000
v0_87_.Transparency = v0_88_
v0_88_ = 1.500000
v0_87_.Thickness = v0_88_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_43_
v0_88_ = {}
v0_89_ = 0.060000
v0_88_.Size = v0_89_
-- WARNING: SETLIST_C0, output may be wrong!
v0_84_ = {v0_85_, v0_87_(v0_88_)}
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_30_
v0_85_ = "Effects"
v0_84_ = v0_84_(v0_85_)
v0_85_ = table.create(4)
local fromScale = UDim2.fromScale
v0_91_ = 0.857500
v0_90_ = fromScale(v0_91_)
v0_85_.Position = v0_90_
local fromScale = UDim2.fromScale
v0_91_ = 0.142500
v0_92_ = 0.585000
v0_90_ = fromScale(v0_91_, v0_92_)
v0_85_.Size = v0_90_
local new = Color3.new
v0_90_ = new()
v0_85_.BackgroundColor3 = v0_90_
v0_90_ = 0.650000
v0_85_.BackgroundTransparency = v0_90_
v0_86_ = v0_30_
v0_87_ = table.create(1)
local new = Vector2.new
v0_90_ = 0.500000
v0_91_ = 0.500000
v0_89_ = new(v0_90_, v0_91_)
v0_87_.AnchorPoint = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 0.500000
v0_91_ = 0.500000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_87_.Position = v0_89_
local fromScale = UDim2.fromScale
v0_91_ = 1
v0_92_ = 1
v0_90_ = fromScale(v0_91_, v0_92_)
local fromOffset = UDim2.fromOffset
v0_92_ = 10
v0_93_ = 10
v0_91_ = fromOffset(v0_92_, v0_93_)
v0_89_ = v0_90_ - v0_91_
v0_87_.Size = v0_89_
v0_89_ = 1
v0_87_.BackgroundTransparency = v0_89_
v0_88_ = v0_39_
v0_89_ = {}
local new = UDim.new
v0_91_ = 0
v0_92_ = 2
v0_90_ = new(v0_91_, v0_92_)
v0_89_.Padding = v0_90_
local Center = Enum.HorizontalAlignment.Center
v0_89_.HorizontalAlignment = Center
v0_88_ = v0_88_(v0_89_)
v0_87_[1] = v0_88_
v0_89_ = v0_25_.CreatedAsync
v0_90_ = function(a1)
    v0_65_ = a1
end
v0_87_[v0_89_] = v0_90_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_41_
v0_88_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_88_.ApplyStrokeMode = Border
local new = Color3.new
v0_90_ = 1
v0_91_ = 1
v0_92_ = 1
v0_89_ = new(v0_90_, v0_91_, v0_92_)
v0_88_.Color = v0_89_
v0_89_ = 0.500000
v0_88_.Transparency = v0_89_
v0_89_ = 1.500000
v0_88_.Thickness = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_43_
v0_89_ = {}
v0_90_ = 0.040000
v0_89_.Size = v0_90_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_44_
v0_90_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_85_ = {v0_86_, v0_89_(v0_90_)}
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_30_
v0_86_ = "EffectsFrameDisabled"
v0_85_ = v0_85_(v0_86_)
v0_86_ = {}
local fromScale = UDim2.fromScale
v0_88_ = 0.857500
v0_87_ = fromScale(v0_88_)
v0_86_.Position = v0_87_
local fromScale = UDim2.fromScale
v0_88_ = 0.142500
v0_89_ = 0.585000
v0_87_ = fromScale(v0_88_, v0_89_)
v0_86_.Size = v0_87_
local new = Color3.new
v0_87_ = new()
v0_86_.BackgroundColor3 = v0_87_
v0_87_ = 0.400000
v0_86_.BackgroundTransparency = v0_87_
v0_87_ = false
v0_86_.Visible = v0_87_
v0_87_ = v0_25_.CreatedAsync
v0_88_ = function(a1)
    v0_66_ = a1
end
v0_86_[v0_87_] = v0_88_
-- WARNING: SETLIST_C0, output may be wrong!
v0_81_ = {v0_82_, v0_85_(v0_86_)}
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_30_
v0_82_ = "Recipes"
v0_81_ = v0_81_(v0_82_)
v0_82_ = table.create(5)
local new = Vector2.new
v0_89_ = 1
v0_90_ = 0
v0_88_ = new(v0_89_, v0_90_)
v0_82_.AnchorPoint = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.995000
v0_90_ = 0.090000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_82_.Position = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.600000
v0_90_ = 0.900000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_82_.Size = v0_88_
v0_88_ = 1
v0_82_.BackgroundTransparency = v0_88_
v0_83_ = v0_30_
v0_84_ = "RecipeItemGrid"
v0_83_ = v0_83_(v0_84_)
v0_84_ = table.create(4)
local fromScale = UDim2.fromScale
v0_90_ = 0
v0_91_ = 0.130000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_84_.Position = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 1
v0_91_ = 0.870000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_84_.Size = v0_89_
local new = Color3.new
v0_89_ = new()
v0_84_.BackgroundColor3 = v0_89_
v0_89_ = 0.650000
v0_84_.BackgroundTransparency = v0_89_
v0_85_ = v0_31_
v0_86_ = "RecipeItemGridScrollingFrame"
v0_85_ = v0_85_(v0_86_)
v0_86_ = table.create(1)
local new = Vector2.new
v0_89_ = 0.500000
v0_90_ = 0.500000
v0_88_ = new(v0_89_, v0_90_)
v0_86_.AnchorPoint = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.500000
v0_90_ = 0.500000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_86_.Position = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 1.050000
v0_90_ = 0.960000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_86_.Size = v0_88_
v0_88_ = 1
v0_86_.BackgroundTransparency = v0_88_
local Y = Enum.AutomaticSize.Y
v0_86_.AutomaticCanvasSize = Y
v0_88_ = 0
v0_86_.ScrollBarThickness = v0_88_
v0_87_ = v0_39_
v0_88_ = {}
local Vertical = Enum.FillDirection.Vertical
v0_88_.FillDirection = Vertical
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_88_.SortOrder = LayoutOrder
local Left = Enum.HorizontalAlignment.Left
v0_88_.HorizontalAlignment = Left
local Top = Enum.VerticalAlignment.Top
v0_88_.VerticalAlignment = Top
v0_87_ = v0_87_(v0_88_)
v0_86_[1] = v0_87_
v0_88_ = v0_25_.CreatedAsync
v0_89_ = function(a1)
    v0_63_ = a1
end
v0_86_[v0_88_] = v0_89_
v0_85_ = v0_85_(v0_86_)
v0_86_ = v0_41_
v0_87_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_87_.ApplyStrokeMode = Border
local new = Color3.new
v0_89_ = 1
v0_90_ = 1
v0_91_ = 1
v0_88_ = new(v0_89_, v0_90_, v0_91_)
v0_87_.Color = v0_88_
v0_88_ = 0.500000
v0_87_.Transparency = v0_88_
v0_88_ = 1.500000
v0_87_.Thickness = v0_88_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_43_
v0_88_ = {}
v0_89_ = 0.026000
v0_88_.Size = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_44_
v0_89_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_84_ = {v0_85_, v0_88_(v0_89_)}
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_30_
v0_85_ = "Search"
v0_84_ = v0_84_(v0_85_)
v0_85_ = table.create(5)
local fromScale = UDim2.fromScale
v0_92_ = 0
v0_93_ = 0.065000
v0_91_ = fromScale(v0_92_, v0_93_)
v0_85_.Position = v0_91_
local fromScale = UDim2.fromScale
v0_92_ = 1
v0_93_ = 0.050000
v0_91_ = fromScale(v0_92_, v0_93_)
v0_85_.Size = v0_91_
local new = Color3.new
v0_91_ = new()
v0_85_.BackgroundColor3 = v0_91_
v0_91_ = 0.650000
v0_85_.BackgroundTransparency = v0_91_
v0_86_ = v0_35_
v0_87_ = "SearchContent"
v0_86_ = v0_86_(v0_87_)
v0_87_ = {}
local new = Vector2.new
v0_89_ = 0
v0_90_ = 0.500000
v0_88_ = new(v0_89_, v0_90_)
v0_87_.AnchorPoint = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.050000
v0_90_ = 0.500000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_87_.Position = v0_88_
local fromScale = UDim2.fromScale
v0_89_ = 0.950000
v0_90_ = 0.800000
v0_88_ = fromScale(v0_89_, v0_90_)
v0_87_.Size = v0_88_
v0_88_ = 1
v0_87_.BackgroundTransparency = v0_88_
v0_88_ = ""
v0_87_.Text = v0_88_
v0_88_ = "Search..."
v0_87_.PlaceholderText = v0_88_
v0_88_ = true
v0_87_.TextScaled = v0_88_
local new = Color3.new
v0_89_ = 1
v0_90_ = 1
v0_91_ = 1
v0_88_ = new(v0_89_, v0_90_, v0_91_)
v0_87_.TextColor3 = v0_88_
local new = Font.new
v0_89_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_88_ = new(v0_89_, Medium)
v0_87_.FontFace = v0_88_
local Left = Enum.TextXAlignment.Left
v0_87_.TextXAlignment = Left
v0_88_ = v0_25_.Prop
v0_89_ = "Text"
v0_88_ = v0_88_(v0_89_)
v0_89_ = function(a1, a2)
    v0_57_ = a1
    local v23_3_ = v0_28_
    local v23_2_ = v23_3_.GetObjects
    v23_3_ = "Recipe\n_"
    v23_2_ = v23_2_(v23_3_)
    local v23_5_ = function(a1, a2)
        local v24_2_ = a1.Name
        local v24_4_ = "^Recipe\n([%w%s%p]+)"
        v24_2_ = v24_2_:match(v24_4_)
        local v24_5_ = "%s"
        local v24_6_ = ""
        local v24_3_ = v24_2_:gsub(v24_5_, v24_6_)
        v24_3_ = v24_3_:lower()
        v24_5_ = v0_57_
        local v24_7_ = "%s"
        local v24_8_ = ""
        v24_5_ = v24_5_:gsub(v24_7_, v24_8_)
        v24_3_ = v24_3_:find(v24_5_:lower())
        if v24_3_ then
            v24_5_ = v0_51_
            v24_4_ = v24_5_[v24_2_]
            if not v24_4_ then
                v24_3_ = false
            else
                v24_5_ = v0_56_
                if v24_5_ == "Gears" then
                    v24_5_ = v24_4_.Type
                    if v24_5_ ~= "Gear" then
                        v24_3_ = false
                    end
                    v24_3_ = true
                else
                    v24_5_ = v0_56_
                    if v24_5_ == "Items" then
                        v24_3_ = true
                        v24_5_ = v24_4_.Type
                        if v24_5_ ~= "Item" then
                            v24_5_ = v24_4_.Type
                            if v24_5_ ~= "Bank" then
                                v24_3_ = false
                            end
                            v24_3_ = true
                            v24_5_ = v0_56_
                            if v24_5_ == "Auras" then
                                v24_5_ = v24_4_.Type
                                if v24_5_ ~= "Aura" then
                                    v24_3_ = false
                                end
                                v24_3_ = true
                            else
                                v24_3_ = false
                            end
                        else
                        end
                    else
                        v24_5_ = v0_56_
                        if v24_5_ == "Auras" then
                            v24_5_ = v24_4_.Type
                            if v24_5_ ~= "Aura" then
                                v24_3_ = false
                            end
                            v24_3_ = true
                        else
                            v24_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v24_3_
            return
        end
        v24_3_ = false
        a1.Visible = v24_3_
    end
    v23_2_:Each(v23_5_)
end
v0_87_[v0_88_] = v0_89_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_36_
v0_88_ = "Icon"
v0_87_ = v0_87_(v0_88_)
v0_88_ = {}
local new = Vector2.new
v0_90_ = 0
v0_91_ = 0.500000
v0_89_ = new(v0_90_, v0_91_)
v0_88_.AnchorPoint = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 0.010000
v0_91_ = 0.500000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_88_.Position = v0_89_
local fromScale = UDim2.fromScale
v0_90_ = 0.900000
v0_91_ = 0.900000
v0_89_ = fromScale(v0_90_, v0_91_)
v0_88_.Size = v0_89_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_88_.SizeConstraint = RelativeYY
v0_89_ = 1
v0_88_.BackgroundTransparency = v0_89_
v0_89_ = "rbxassetid://6031154871"
v0_88_.Image = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_41_
v0_89_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_89_.ApplyStrokeMode = Border
local new = Color3.new
v0_91_ = 1
v0_92_ = 1
v0_93_ = 1
v0_90_ = new(v0_91_, v0_92_, v0_93_)
v0_89_.Color = v0_90_
v0_90_ = 0.500000
v0_89_.Transparency = v0_90_
v0_90_ = 1.500000
v0_89_.Thickness = v0_90_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_43_
v0_90_ = {}
v0_91_ = 0.300000
v0_90_.Size = v0_91_
v0_89_ = v0_89_(v0_90_)
v0_90_ = v0_44_
v0_91_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_85_ = {v0_86_, v0_90_(v0_91_)}
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_34_
v0_86_ = "GearsTab"
v0_85_ = v0_85_(v0_86_)
v0_86_ = table.create(3)
local fromScale = UDim2.fromScale
v0_91_ = 0.320000
v0_92_ = 0.050000
v0_90_ = fromScale(v0_91_, v0_92_)
v0_86_.Size = v0_90_
local new = Color3.new
v0_90_ = new()
v0_86_.BackgroundColor3 = v0_90_
v0_90_ = 0.650000
v0_86_.BackgroundTransparency = v0_90_
v0_90_ = "Gears"
v0_86_.Text = v0_90_
v0_90_ = true
v0_86_.TextScaled = v0_90_
local new = Color3.new
v0_91_ = 1
v0_92_ = 1
v0_93_ = 1
v0_90_ = new(v0_91_, v0_92_, v0_93_)
v0_86_.TextColor3 = v0_90_
local new = Font.new
v0_91_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_90_ = new(v0_91_, Medium)
v0_86_.FontFace = v0_90_
v0_87_ = v0_41_
v0_88_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_88_.ApplyStrokeMode = Border
local new = Color3.new
v0_90_ = 1
v0_91_ = 1
v0_92_ = 1
v0_89_ = new(v0_90_, v0_91_, v0_92_)
v0_88_.Color = v0_89_
v0_89_ = 0.500000
v0_88_.Transparency = v0_89_
v0_89_ = 1.500000
v0_88_.Thickness = v0_89_
v0_87_ = v0_87_(v0_88_)
v0_88_ = v0_43_
v0_89_ = {}
v0_90_ = 0.300000
v0_89_.Size = v0_90_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_44_
v0_90_ = {}
v0_89_ = v0_89_(v0_90_)
v0_86_[1] = v0_87_
v0_86_[2] = v0_88_
v0_86_[3] = v0_89_
v0_90_ = v0_25_
v0_91_ = "MouseButton1Click"
v0_90_ = v0_90_(v0_91_)
v0_91_ = function(a1)
    local v25_2_ = v0_10_
    local v25_1_ = v25_2_.PlaySFX
    v25_2_ = "Click"
    local v25_3_ = "UISounds"
    v25_1_(v25_2_, v25_3_)
    v25_1_ = "Gears"
    v0_56_ = v25_1_
    v25_2_ = v0_28_
    v25_1_ = v25_2_.GetObjects
    v25_2_ = "Recipe\n_"
    v25_1_ = v25_1_(v25_2_)
    local v25_4_ = function(a1, a2)
        local v26_2_ = a1.Name
        local v26_4_ = "^Recipe\n([%w%s%p]+)"
        v26_2_ = v26_2_:match(v26_4_)
        local v26_5_ = "%s"
        local v26_6_ = ""
        local v26_3_ = v26_2_:gsub(v26_5_, v26_6_)
        v26_3_ = v26_3_:lower()
        v26_5_ = v0_57_
        local v26_7_ = "%s"
        local v26_8_ = ""
        v26_5_ = v26_5_:gsub(v26_7_, v26_8_)
        v26_3_ = v26_3_:find(v26_5_:lower())
        if v26_3_ then
            v26_5_ = v0_51_
            v26_4_ = v26_5_[v26_2_]
            if not v26_4_ then
                v26_3_ = false
            else
                v26_5_ = v0_56_
                if v26_5_ == "Gears" then
                    v26_5_ = v26_4_.Type
                    if v26_5_ ~= "Gear" then
                        v26_3_ = false
                    end
                    v26_3_ = true
                else
                    v26_5_ = v0_56_
                    if v26_5_ == "Items" then
                        v26_3_ = true
                        v26_5_ = v26_4_.Type
                        if v26_5_ ~= "Item" then
                            v26_5_ = v26_4_.Type
                            if v26_5_ ~= "Bank" then
                                v26_3_ = false
                            end
                            v26_3_ = true
                            v26_5_ = v0_56_
                            if v26_5_ == "Auras" then
                                v26_5_ = v26_4_.Type
                                if v26_5_ ~= "Aura" then
                                    v26_3_ = false
                                end
                                v26_3_ = true
                            else
                                v26_3_ = false
                            end
                        else
                        end
                    else
                        v26_5_ = v0_56_
                        if v26_5_ == "Auras" then
                            v26_5_ = v26_4_.Type
                            if v26_5_ ~= "Aura" then
                                v26_3_ = false
                            end
                            v26_3_ = true
                        else
                            v26_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v26_3_
            return
        end
        v26_3_ = false
        a1.Visible = v26_3_
    end
    v25_1_:Each(v25_4_)
end
v0_86_[v0_90_] = v0_91_
v0_85_ = v0_85_(v0_86_)
v0_86_ = v0_34_
v0_87_ = "AurasTab"
v0_86_ = v0_86_(v0_87_)
v0_87_ = table.create(3)
local new = Vector2.new
v0_92_ = 0.500000
v0_93_ = 0
v0_91_ = new(v0_92_, v0_93_)
v0_87_.AnchorPoint = v0_91_
local fromScale = UDim2.fromScale
v0_92_ = 0.500000
v0_93_ = 0
v0_91_ = fromScale(v0_92_, v0_93_)
v0_87_.Position = v0_91_
local fromScale = UDim2.fromScale
v0_92_ = 0.320000
v0_93_ = 0.050000
v0_91_ = fromScale(v0_92_, v0_93_)
v0_87_.Size = v0_91_
local new = Color3.new
v0_91_ = new()
v0_87_.BackgroundColor3 = v0_91_
v0_91_ = 0.650000
v0_87_.BackgroundTransparency = v0_91_
v0_91_ = "Auras"
v0_87_.Text = v0_91_
v0_91_ = true
v0_87_.TextScaled = v0_91_
local new = Color3.new
v0_92_ = 1
v0_93_ = 1
v0_94_ = 1
v0_91_ = new(v0_92_, v0_93_, v0_94_)
v0_87_.TextColor3 = v0_91_
local new = Font.new
v0_92_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_91_ = new(v0_92_, Medium)
v0_87_.FontFace = v0_91_
v0_88_ = v0_41_
v0_89_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_89_.ApplyStrokeMode = Border
local new = Color3.new
v0_91_ = 1
v0_92_ = 1
v0_93_ = 1
v0_90_ = new(v0_91_, v0_92_, v0_93_)
v0_89_.Color = v0_90_
v0_90_ = 0.500000
v0_89_.Transparency = v0_90_
v0_90_ = 1.500000
v0_89_.Thickness = v0_90_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_43_
v0_90_ = {}
v0_91_ = 0.300000
v0_90_.Size = v0_91_
v0_89_ = v0_89_(v0_90_)
v0_90_ = v0_44_
v0_91_ = {}
v0_90_ = v0_90_(v0_91_)
v0_87_[1] = v0_88_
v0_87_[2] = v0_89_
v0_87_[3] = v0_90_
v0_91_ = v0_25_
v0_92_ = "MouseButton1Click"
v0_91_ = v0_91_(v0_92_)
v0_92_ = function(a1)
    local v27_2_ = v0_10_
    local v27_1_ = v27_2_.PlaySFX
    v27_2_ = "Click"
    local v27_3_ = "UISounds"
    v27_1_(v27_2_, v27_3_)
    v27_1_ = "Auras"
    v0_56_ = v27_1_
    v27_2_ = v0_28_
    v27_1_ = v27_2_.GetObjects
    v27_2_ = "Recipe\n_"
    v27_1_ = v27_1_(v27_2_)
    local v27_4_ = function(a1, a2)
        local v28_2_ = a1.Name
        local v28_4_ = "^Recipe\n([%w%s%p]+)"
        v28_2_ = v28_2_:match(v28_4_)
        local v28_5_ = "%s"
        local v28_6_ = ""
        local v28_3_ = v28_2_:gsub(v28_5_, v28_6_)
        v28_3_ = v28_3_:lower()
        v28_5_ = v0_57_
        local v28_7_ = "%s"
        local v28_8_ = ""
        v28_5_ = v28_5_:gsub(v28_7_, v28_8_)
        v28_3_ = v28_3_:find(v28_5_:lower())
        if v28_3_ then
            v28_5_ = v0_51_
            v28_4_ = v28_5_[v28_2_]
            if not v28_4_ then
                v28_3_ = false
            else
                v28_5_ = v0_56_
                if v28_5_ == "Gears" then
                    v28_5_ = v28_4_.Type
                    if v28_5_ ~= "Gear" then
                        v28_3_ = false
                    end
                    v28_3_ = true
                else
                    v28_5_ = v0_56_
                    if v28_5_ == "Items" then
                        v28_3_ = true
                        v28_5_ = v28_4_.Type
                        if v28_5_ ~= "Item" then
                            v28_5_ = v28_4_.Type
                            if v28_5_ ~= "Bank" then
                                v28_3_ = false
                            end
                            v28_3_ = true
                            v28_5_ = v0_56_
                            if v28_5_ == "Auras" then
                                v28_5_ = v28_4_.Type
                                if v28_5_ ~= "Aura" then
                                    v28_3_ = false
                                end
                                v28_3_ = true
                            else
                                v28_3_ = false
                            end
                        else
                        end
                    else
                        v28_5_ = v0_56_
                        if v28_5_ == "Auras" then
                            v28_5_ = v28_4_.Type
                            if v28_5_ ~= "Aura" then
                                v28_3_ = false
                            end
                            v28_3_ = true
                        else
                            v28_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v28_3_
            return
        end
        v28_3_ = false
        a1.Visible = v28_3_
    end
    v27_1_:Each(v27_4_)
    v27_1_ = v0_61_
    v27_2_ = nil
    v27_3_ = nil
    nil:Destroy()
end
v0_87_[v0_91_] = v0_92_
v0_86_ = v0_86_(v0_87_)
v0_87_ = v0_34_
v0_88_ = "ItemsTab"
v0_87_ = v0_87_(v0_88_)
v0_88_ = table.create(3)
local new = Vector2.new
v0_93_ = 1
v0_94_ = 0
v0_92_ = new(v0_93_, v0_94_)
v0_88_.AnchorPoint = v0_92_
local fromScale = UDim2.fromScale
v0_93_ = 1
v0_94_ = 0
v0_92_ = fromScale(v0_93_, v0_94_)
v0_88_.Position = v0_92_
local fromScale = UDim2.fromScale
v0_93_ = 0.320000
v0_94_ = 0.050000
v0_92_ = fromScale(v0_93_, v0_94_)
v0_88_.Size = v0_92_
local new = Color3.new
v0_92_ = new()
v0_88_.BackgroundColor3 = v0_92_
v0_92_ = 0.650000
v0_88_.BackgroundTransparency = v0_92_
v0_92_ = "Items"
v0_88_.Text = v0_92_
v0_92_ = true
v0_88_.TextScaled = v0_92_
local new = Color3.new
v0_93_ = 1
v0_94_ = 1
local v0_95_ = 1
v0_92_ = new(v0_93_, v0_94_, v0_95_)
v0_88_.TextColor3 = v0_92_
local new = Font.new
v0_93_ = "rbxasset://fonts/families/Sarpanch.json"
local Medium = Enum.FontWeight.Medium
v0_92_ = new(v0_93_, Medium)
v0_88_.FontFace = v0_92_
v0_89_ = v0_41_
v0_90_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_90_.ApplyStrokeMode = Border
local new = Color3.new
v0_92_ = 1
v0_93_ = 1
v0_94_ = 1
v0_91_ = new(v0_92_, v0_93_, v0_94_)
v0_90_.Color = v0_91_
v0_91_ = 0.500000
v0_90_.Transparency = v0_91_
v0_91_ = 1.500000
v0_90_.Thickness = v0_91_
v0_89_ = v0_89_(v0_90_)
v0_90_ = v0_43_
v0_91_ = {}
v0_92_ = 0.300000
v0_91_.Size = v0_92_
v0_90_ = v0_90_(v0_91_)
v0_91_ = v0_44_
v0_92_ = {}
v0_91_ = v0_91_(v0_92_)
v0_88_[1] = v0_89_
v0_88_[2] = v0_90_
v0_88_[3] = v0_91_
v0_92_ = v0_25_
v0_93_ = "MouseButton1Click"
v0_92_ = v0_92_(v0_93_)
v0_93_ = function(a1)
    local v29_2_ = v0_10_
    local v29_1_ = v29_2_.PlaySFX
    v29_2_ = "Click"
    local v29_3_ = "UISounds"
    v29_1_(v29_2_, v29_3_)
    v29_1_ = "Items"
    v0_56_ = v29_1_
    v29_2_ = v0_28_
    v29_1_ = v29_2_.GetObjects
    v29_2_ = "Recipe\n_"
    v29_1_ = v29_1_(v29_2_)
    local v29_4_ = function(a1, a2)
        local v30_2_ = a1.Name
        local v30_4_ = "^Recipe\n([%w%s%p]+)"
        v30_2_ = v30_2_:match(v30_4_)
        local v30_5_ = "%s"
        local v30_6_ = ""
        local v30_3_ = v30_2_:gsub(v30_5_, v30_6_)
        v30_3_ = v30_3_:lower()
        v30_5_ = v0_57_
        local v30_7_ = "%s"
        local v30_8_ = ""
        v30_5_ = v30_5_:gsub(v30_7_, v30_8_)
        v30_3_ = v30_3_:find(v30_5_:lower())
        if v30_3_ then
            v30_5_ = v0_51_
            v30_4_ = v30_5_[v30_2_]
            if not v30_4_ then
                v30_3_ = false
            else
                v30_5_ = v0_56_
                if v30_5_ == "Gears" then
                    v30_5_ = v30_4_.Type
                    if v30_5_ ~= "Gear" then
                        v30_3_ = false
                    end
                    v30_3_ = true
                else
                    v30_5_ = v0_56_
                    if v30_5_ == "Items" then
                        v30_3_ = true
                        v30_5_ = v30_4_.Type
                        if v30_5_ ~= "Item" then
                            v30_5_ = v30_4_.Type
                            if v30_5_ ~= "Bank" then
                                v30_3_ = false
                            end
                            v30_3_ = true
                            v30_5_ = v0_56_
                            if v30_5_ == "Auras" then
                                v30_5_ = v30_4_.Type
                                if v30_5_ ~= "Aura" then
                                    v30_3_ = false
                                end
                                v30_3_ = true
                            else
                                v30_3_ = false
                            end
                        else
                        end
                    else
                        v30_5_ = v0_56_
                        if v30_5_ == "Auras" then
                            v30_5_ = v30_4_.Type
                            if v30_5_ ~= "Aura" then
                                v30_3_ = false
                            end
                            v30_3_ = true
                        else
                            v30_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v30_3_
            return
        end
        v30_3_ = false
        a1.Visible = v30_3_
    end
    v29_1_:Each(v29_4_)
    v29_1_ = v0_61_
    v29_2_ = nil
    v29_3_ = nil
    nil:Destroy()
end
v0_88_[v0_92_] = v0_93_
-- WARNING: SETLIST_C0, output may be wrong!
v0_82_ = {v0_83_, v0_87_(v0_88_)}
v0_81_ = v0_81_(v0_82_)
v0_82_ = v0_33_
v0_83_ = "Title"
v0_82_ = v0_82_(v0_83_)
v0_83_ = table.create(3)
local fromScale = UDim2.fromScale
v0_88_ = 1
v0_89_ = 0.080000
v0_87_ = fromScale(v0_88_, v0_89_)
v0_83_.Size = v0_87_
local new = Color3.new
v0_87_ = new()
v0_83_.BackgroundColor3 = v0_87_
v0_87_ = 0.650000
v0_83_.BackgroundTransparency = v0_87_
v0_87_ = "Jake's workshop"
v0_83_.Text = v0_87_
v0_87_ = true
v0_83_.TextScaled = v0_87_
local new = Color3.new
v0_88_ = 1
v0_89_ = 1
v0_90_ = 1
v0_87_ = new(v0_88_, v0_89_, v0_90_)
v0_83_.TextColor3 = v0_87_
local new = Font.new
v0_88_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_87_ = new(v0_88_, Bold)
v0_83_.FontFace = v0_87_
v0_84_ = v0_34_
v0_85_ = "Close"
v0_84_ = v0_84_(v0_85_)
v0_85_ = {}
local fromScale = UDim2.fromScale
v0_87_ = 0.950000
v0_86_ = fromScale(v0_87_)
v0_85_.Position = v0_86_
local fromScale = UDim2.fromScale
v0_87_ = 1
v0_88_ = 1
v0_86_ = fromScale(v0_87_, v0_88_)
v0_85_.Size = v0_86_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_85_.SizeConstraint = RelativeYY
v0_86_ = 1
v0_85_.BackgroundTransparency = v0_86_
v0_86_ = "X"
v0_85_.Text = v0_86_
v0_86_ = true
v0_85_.TextScaled = v0_86_
local new = Color3.new
v0_87_ = 1
v0_88_ = 1
v0_89_ = 1
v0_86_ = new(v0_87_, v0_88_, v0_89_)
v0_85_.TextColor3 = v0_86_
local new = Font.new
v0_87_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_86_ = new(v0_87_, Bold)
v0_85_.FontFace = v0_86_
v0_86_ = v0_25_
v0_87_ = "MouseButton1Click"
v0_86_ = v0_86_(v0_87_)
v0_87_ = function(a1)
    local v31_2_ = v0_10_
    local v31_1_ = v31_2_.PlaySFX
    v31_2_ = "Click"
    local v31_3_ = "UISounds"
    v31_1_(v31_2_, v31_3_)
    v31_2_ = a1.Parent
    v31_1_ = v31_2_.Parent
    v31_2_ = false
    v31_1_.Visible = v31_2_
end
v0_85_[v0_86_] = v0_87_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_41_
v0_86_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_86_.ApplyStrokeMode = Border
local new = Color3.new
v0_88_ = 1
v0_89_ = 1
v0_90_ = 1
v0_87_ = new(v0_88_, v0_89_, v0_90_)
v0_86_.Color = v0_87_
v0_87_ = 0.500000
v0_86_.Transparency = v0_87_
v0_87_ = 1.500000
v0_86_.Thickness = v0_87_
v0_85_ = v0_85_(v0_86_)
v0_86_ = v0_43_
v0_87_ = {}
v0_88_ = 0.250000
v0_87_.Size = v0_88_
-- WARNING: SETLIST_C0, output may be wrong!
v0_83_ = {v0_84_, v0_86_(v0_87_)}
v0_82_ = v0_82_(v0_83_)
v0_83_ = v0_38_
v0_84_ = {}
v0_85_ = 1.823000
v0_84_.AspectRatio = v0_85_
v0_83_ = v0_83_(v0_84_)
v0_84_ = v0_41_
v0_85_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_85_.ApplyStrokeMode = Border
local new = Color3.new
v0_87_ = 1
v0_88_ = 1
v0_89_ = 1
v0_86_ = new(v0_87_, v0_88_, v0_89_)
v0_85_.Color = v0_86_
v0_86_ = 0.500000
v0_85_.Transparency = v0_86_
v0_86_ = 1.500000
v0_85_.Thickness = v0_86_
v0_84_ = v0_84_(v0_85_)
v0_85_ = v0_44_
v0_86_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_79_ = {v0_80_, v0_85_(v0_86_)}
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_27_
v0_80_ = v0_7_
v0_81_ = v0_78_
v0_79_(v0_80_, v0_81_)
v0_81_ = "AutoAddTarget"
v0_83_ = v0_50_.Data
v0_82_ = v0_83_.AutoAddTarget
v0_49_:Default(v0_81_, v0_82_)
v0_79_ = function(a1)
    local v32_2_ = v0_10_
    local v32_1_ = v32_2_.PlaySFX
    v32_2_ = "Click"
    local v32_3_ = "UISounds"
    v32_1_(v32_2_, v32_3_)
    v32_2_ = a1.Parent
    v32_1_ = v32_2_.Name
    v32_3_ = "^Recipe\n([%s%w%p]+)"
    v32_1_ = v32_1_:match(v32_3_)
    v0_55_ = v32_1_
    v32_3_ = v0_51_
    local v32_4_ = v0_55_
    v32_2_ = v32_3_[v32_4_]
    v32_1_ = v32_2_.Type
    if v32_1_ == "Aura" then
        v32_1_ = v0_73_
        v32_4_ = v0_51_
        local v32_5_ = v0_55_
        v32_3_ = v32_4_[v32_5_]
        v32_2_ = v32_3_.RecipeName
        v32_1_(v32_2_)
        v32_1_ = v0_66_
        v32_2_ = true
        v32_1_.Visible = v32_2_
    else
        v32_3_ = v0_51_
        v32_4_ = v0_55_
        v32_2_ = v32_3_[v32_4_]
        v32_1_ = v32_2_.Type
        if v32_1_ ~= "Item" then
            v32_3_ = v0_51_
            v32_4_ = v0_55_
            v32_2_ = v32_3_[v32_4_]
            v32_1_ = v32_2_.Type
            if v32_1_ ~= "Gear" then
                v32_3_ = v0_51_
                v32_4_ = v0_55_
                v32_2_ = v32_3_[v32_4_]
                v32_1_ = v32_2_.Type
                if v32_1_ == "Bank" then
                    v32_1_ = v0_72_
                    v32_1_()
                    v32_3_ = v0_51_
                    v32_4_ = v0_55_
                    v32_2_ = v32_3_[v32_4_]
                    v32_1_ = v32_2_.Type
                    if v32_1_ == "Gear" then
                        v32_1_ = v0_66_
                        v32_2_ = false
                        v32_1_.Visible = v32_2_
                        v32_1_ = v0_61_
                        v32_2_ = nil
                        v32_3_ = nil
                        nil:Destroy()
                        v32_1_ = v0_69_
                        v32_4_ = v0_51_
                        local v32_5_ = v0_55_
                        v32_3_ = v32_4_[v32_5_]
                        v32_2_ = v32_3_.Buffs
                        v32_1_(v32_2_)
                    else
                        v32_1_ = v0_66_
                        v32_2_ = true
                        v32_1_.Visible = v32_2_
                    end
                end
            end
        end
        v32_1_ = v0_72_
        v32_1_()
        v32_3_ = v0_51_
        v32_4_ = v0_55_
        v32_2_ = v32_3_[v32_4_]
        v32_1_ = v32_2_.Type
        if v32_1_ == "Gear" then
            v32_1_ = v0_66_
            v32_2_ = false
            v32_1_.Visible = v32_2_
            v32_1_ = v0_61_
            v32_2_ = nil
            v32_3_ = nil
            nil:Destroy()
            v32_1_ = v0_69_
            v32_4_ = v0_51_
            local v32_5_ = v0_55_
            v32_3_ = v32_4_[v32_5_]
            v32_2_ = v32_3_.Buffs
            v32_1_(v32_2_)
        else
            v32_1_ = v0_66_
            v32_2_ = true
            v32_1_.Visible = v32_2_
        end
    end
    v32_1_ = v0_64_
    v32_1_, v32_2_, v32_3_ = v32_1_:GetChildren()
    local v32_8_ = "Frame"
    local v32_6_ = nil:IsA(v32_8_)
    if v32_6_ then
        v32_6_ = nil.Name
        v32_8_ = "^Ingredient\n([%s%w%p]+)\n([%s%w%p]+)"
        local v32_6_, v32_7_ = v32_6_:match(v32_8_)
        v32_8_ = v0_55_
        if v32_6_ == v32_8_ then
            v32_8_ = true
            nil.Visible = v32_8_
        else
            v32_8_ = false
            nil.Visible = v32_8_
        end
    end
end
v0_80_ = function(a1)
    local v33_3_ = a1.Parent
    local v33_2_ = v33_3_.Parent
    local v33_1_ = v33_2_.Name
    v33_3_ = "^Ingredient\n([%s%w%p]+)\n([%s%w%p]+)"
    v33_1_, v33_2_ = v33_1_:match(v33_3_)
    local v33_6_ = a1.Parent
    local v33_5_ = v33_6_.AddAmount
    local v33_4_ = v33_5_.Text
    v33_3_ = tonumber
    v33_3_ = v33_3_(v33_4_)
    if v33_3_ then
        if v33_3_ ~= 0 then
            if v33_3_ == 0(ind) then
                v33_5_ = v0_10_
                v33_4_ = v33_5_.PlaySFX
                v33_5_ = "Error"
                v33_6_ = "UISounds"
                v33_4_(v33_5_, v33_6_)
                return
            end
        end
    end
    v33_5_ = v0_10_
    v33_4_ = v33_5_.PlaySFX
    v33_5_ = "Error"
    v33_6_ = "UISounds"
    v33_4_(v33_5_, v33_6_)
    return
end
v0_81_ = function()
    local v34_1_ = v0_23_
    local v34_0_ = v34_1_.CloseAllWindows
    v34_0_()
    v34_0_ = v0_78_
    v34_1_ = true
    v34_0_.Visible = v34_1_
end
v0_4_.Show = v0_81_
v0_81_ = function()
    local v35_0_ = v0_78_
    local v35_1_ = false
    v35_0_.Visible = v35_1_
end
v0_4_.Disappear = v0_81_
v0_81_ = function(a1, a2, a3)
    local v36_4_ = v0_58_
    local v36_3_ = v36_4_.Ingredient
    if v36_3_ then
        v36_3_ = v0_58_
        v36_4_ = false
        v36_3_.Ingredient = v36_4_
        v36_3_ = v0_59_
        local running = coroutine.running
        v36_4_ = running()
        v36_3_.Ingredient = v36_4_
        local v36_5_ = v0_22_
        v36_4_ = v36_5_.AddIngredients
        v36_3_ = v36_4_.send
        v36_4_ = {}
        v36_4_.amount = a3
        v36_4_.ingredientName = a2
        v36_4_.recipeName = a1
        v36_3_(v36_4_)
        local yield = coroutine.yield
        v36_3_ = yield()
        local wait = task.wait
        wait()
        local v36_7_ = v0_50_
        local v36_6_ = v36_7_.Data
        v36_5_ = v36_6_.CraftingProgress
        v36_4_ = v36_5_[a1]
        if v36_4_ then
            local v36_8_ = v0_50_
            v36_7_ = v36_8_.Data
            v36_6_ = v36_7_.CraftingProgress
            v36_5_ = v36_6_[a1]
            v36_4_ = v36_5_[a2]
            while v36_4_ ~= v36_3_ do
            end
        end
        v36_4_ = v0_58_
        v36_5_ = true
        v36_4_.Ingredient = v36_5_
        v36_4_ = true
        v36_5_ = v36_3_
        return v36_4_, v36_5_
    end
    v36_3_ = false
    return v36_3_
end
v0_4_.SendAddIngredientRequest = v0_81_
v0_81_ = function(a1)
    local v37_2_ = v0_58_
    local v37_1_ = v37_2_.Craft
    if v37_1_ then
        v37_1_ = v0_58_
        v37_2_ = false
        v37_1_.Craft = v37_2_
        v37_1_ = v0_59_
        local running = coroutine.running
        v37_2_ = running()
        v37_1_.Craft = v37_2_
        local v37_3_ = v0_22_
        v37_2_ = v37_3_.Craft
        v37_1_ = v37_2_.send
        v37_2_ = a1
        v37_1_(v37_2_)
        local yield = coroutine.yield
        v37_1_ = yield()
        local wait = task.wait
        wait()
        local v37_5_ = v0_50_
        local v37_4_ = v37_5_.Data
        v37_3_ = v37_4_.CraftingProgress
        v37_2_ = v37_3_[a1]
        while v37_2_ do
        end
        v37_2_ = v0_58_
        v37_3_ = true
        v37_2_.Craft = v37_3_
        v37_2_ = true
        return v37_2_
    end
    v37_1_ = false
    return v37_1_
end
v0_4_.SendCraftRequest = v0_81_
v0_81_ = function(a1)
    local v38_2_ = v0_58_
    local v38_1_ = v38_2_.AutoAdd
    if v38_1_ then
        v38_1_ = v0_58_
        v38_2_ = false
        v38_1_.AutoAdd = v38_2_
        v38_1_ = v0_59_
        local running = coroutine.running
        v38_2_ = running()
        v38_1_.AutoAdd = v38_2_
        local v38_3_ = v0_22_
        v38_2_ = v38_3_.SetAutoAddTarget
        v38_1_ = v38_2_.send
        v38_2_ = a1
        v38_1_(v38_2_)
        local yield = coroutine.yield
        v38_1_ = yield()
        local wait = task.wait
        wait()
        local v38_4_ = v0_50_
        v38_3_ = v38_4_.Data
        v38_2_ = v38_3_.AutoAddTarget
        while v38_2_ ~= v38_1_ do
        end
        v38_2_ = v0_58_
        v38_3_ = true
        v38_2_.AutoAdd = v38_3_
        v38_2_ = true
        return v38_2_
    end
    v38_1_ = false
    return v38_1_
end
v0_4_.SendChangeAutoAddTargetRequest = v0_81_
v0_82_ = v0_22_.AddIngredients
v0_81_ = v0_82_.listen
v0_82_ = function(a1)
    local v39_2_ = v0_59_
    local v39_1_ = v39_2_.Ingredient
    if v39_1_ then
        local defer = task.defer
        local v39_3_ = v0_59_
        v39_2_ = v39_3_.Ingredient
        v39_3_ = a1.amount
        defer(v39_2_, v39_3_)
        v39_1_ = v0_59_
        v39_2_ = nil
        v39_1_.Ingredient = v39_2_
    end
end
v0_81_(v0_82_)
v0_82_ = v0_22_.Craft
v0_81_ = v0_82_.listen
v0_82_ = function(a1)
    local v40_2_ = v0_59_
    local v40_1_ = v40_2_.Craft
    if v40_1_ then
        local defer = task.defer
        local v40_3_ = v0_59_
        v40_2_ = v40_3_.Craft
        v40_3_ = true
        defer(v40_2_, v40_3_)
        v40_1_ = v0_59_
        v40_2_ = nil
        v40_1_.Craft = v40_2_
    end
end
v0_81_(v0_82_)
v0_82_ = v0_22_.SetAutoAddTarget
v0_81_ = v0_82_.listen
v0_82_ = function(a1)
    local v41_2_ = v0_59_
    local v41_1_ = v41_2_.AutoAdd
    if v41_1_ then
        local defer = task.defer
        local v41_3_ = v0_59_
        v41_2_ = v41_3_.AutoAdd
        v41_3_ = a1
        defer(v41_2_, v41_3_)
        v41_1_ = v0_59_
        v41_2_ = nil
        v41_1_.AutoAdd = v41_2_
    end
end
v0_81_(v0_82_)
local wait = task.wait
wait()
v0_82_ = v0_19_:GetChildren()
v0_81_ = #v0_82_
v0_84_ = "Children"
v0_82_ = v0_19_:GetAttribute(v0_84_)
while v0_82_ > v0_81_ do
end
v0_81_, v0_82_, v0_83_ = v0_19_:GetChildren()
v0_88_ = "UnlockBy"
v0_86_ = v0_85_:GetAttribute(v0_88_)
if v0_86_ then
    local find = table.find
    v0_89_ = v0_50_.Data
    v0_88_ = v0_89_.UnlockedRecipes
    v0_89_ = v0_86_
    v0_87_ = find(v0_88_, v0_89_)
    if v0_87_ then
        v0_89_ = v0_85_.Name
        v0_87_ = v0_16_:GetValue(v0_89_)
        v0_88_ = v0_85_.Name
        v0_51_[v0_88_] = v0_87_
        v0_88_ = v0_47_
        v0_89_ = {}
        v0_91_ = "Recipe\n%*"
        v0_93_ = v0_87_.RecipeName
        v0_91_ = v0_91_:format(v0_93_)
        v0_90_ = v0_91_
        v0_89_.Name = v0_90_
        v0_90_ = v0_87_.RecipeName
        v0_89_.RecipeName = v0_90_
        v0_90_ = v0_87_.DisplayName
        if not v0_90_ then
            v0_90_ = v0_87_.RecipeName
        end
        v0_89_.RecipeDisplayName = v0_90_
        v0_90_ = v0_87_.RecipeNameColor3
        v0_89_.RecipeNameColor3 = v0_90_
        v0_90_ = v0_87_.Description
        v0_89_.RecipeDescription = v0_90_
        v0_91_ = v0_87_.Tier
        if v0_91_ then
            v0_90_ = v0_87_.Tier
        else
            v0_90_ = nil
        end
        v0_89_.RecipeTier = v0_90_
        v0_90_ = v0_87_.LayoutOrder
        v0_89_.LayoutOrder = v0_90_
        v0_90_ = v0_87_.OneTimeCraft
        if v0_90_ then
            v0_91_ = v0_87_.RecipeName
            v0_92_ = v0_51_[v0_91_]
            if not v0_92_ then
                v0_90_ = false
            else
                v0_93_ = v0_92_.Type
                if v0_93_ == "Aura" then
                    local v0_96_ = v0_50_.Data
                    v0_93_ = v0_96_.InventoryAuras
                    v0_94_ = nil
                    v0_95_ = nil
                    local v0_98_ = nil.Name
                    if v0_98_ == v0_91_ then
                        v0_90_ = true
                    else
                        v0_90_ = false
                        v0_93_ = v0_92_.Type
                        if v0_93_ ~= "Item" then
                            v0_93_ = v0_92_.Type
                            if v0_93_ == "Gear" then
                                v0_96_ = v0_50_.Data
                                v0_95_ = v0_96_.Inventory
                                v0_94_ = v0_95_[v0_91_]
                                v0_93_ = not v0_94_
                                v0_90_ = not v0_93_
                            else
                                v0_93_ = v0_92_.Type
                                if v0_93_ == "Bank" then
                                    v0_93_ = v0_50_.Data
                                    v0_90_ = v0_93_.BankEnabled
                                else
                                    v0_90_ = nil
                                end
                            end
                        end
                        v0_96_ = v0_50_.Data
                        v0_95_ = v0_96_.Inventory
                        v0_94_ = v0_95_[v0_91_]
                        v0_93_ = not v0_94_
                        v0_90_ = not v0_93_
                        v0_93_ = v0_92_.Type
                        if v0_93_ == "Bank" then
                            v0_93_ = v0_50_.Data
                            v0_90_ = v0_93_.BankEnabled
                        else
                            v0_90_ = nil
                        end
                    end
                else
                    v0_93_ = v0_92_.Type
                    if v0_93_ ~= "Item" then
                        v0_93_ = v0_92_.Type
                        if v0_93_ == "Gear" then
                            local v0_96_ = v0_50_.Data
                            v0_95_ = v0_96_.Inventory
                            v0_94_ = v0_95_[v0_91_]
                            v0_93_ = not v0_94_
                            v0_90_ = not v0_93_
                        else
                            v0_93_ = v0_92_.Type
                            if v0_93_ == "Bank" then
                                v0_93_ = v0_50_.Data
                                v0_90_ = v0_93_.BankEnabled
                            else
                                v0_90_ = nil
                            end
                        end
                    end
                    local v0_96_ = v0_50_.Data
                    v0_95_ = v0_96_.Inventory
                    v0_94_ = v0_95_[v0_91_]
                    v0_93_ = not v0_94_
                    v0_90_ = not v0_93_
                    v0_93_ = v0_92_.Type
                    if v0_93_ == "Bank" then
                        v0_93_ = v0_50_.Data
                        v0_90_ = v0_93_.BankEnabled
                    else
                        v0_90_ = nil
                    end
                end
            end
        end
        v0_89_.Disabled = v0_90_
        v0_91_ = v0_87_.Type
        v0_94_ = ".$"
        v0_95_ = ""
        v0_92_ = v0_56_:gsub(v0_94_, v0_95_)
        if v0_91_ == v0_92_ then
            v0_90_ = true
        else
            v0_90_ = false
        end
        v0_89_.Visible = v0_90_
        v0_89_.Click = v0_79_
        v0_88_ = v0_88_(v0_89_)
        v0_89_ = v0_27_
        v0_90_ = v0_63_
        v0_91_ = v0_88_
        v0_89_(v0_90_, v0_91_)
        v0_89_ = v0_85_.Name
        v0_52_[v0_89_] = v0_88_
        v0_89_ = v0_87_.RecipeName
        if v0_89_ == "Luck Glove" then
            v0_55_ = v0_87_.RecipeName
            v0_89_ = v0_69_
            v0_90_ = v0_87_.Buffs
            v0_89_(v0_90_)
        end
        v0_89_ = v0_87_.Ingredients
        v0_90_ = nil
        v0_91_ = nil
        v0_94_ = v0_45_
        v0_95_ = {}
        local v0_97_ = "Ingredient\n%*\n%*"
        local v0_99_ = v0_87_.RecipeName
        local v0_100_ = v0_93_[-1]
        v0_97_ = v0_97_:format(v0_99_, v0_100_)
        local v0_96_ = v0_97_
        v0_95_.Name = v0_96_
        v0_99_ = v0_93_[-1]
        v0_97_ = v0_15_:GetValueUnsafe(v0_99_)
        v0_96_ = v0_97_.DisplayName
        if not v0_96_ then
            v0_96_ = v0_93_[-1]
        end
        v0_95_.IngredientName = v0_96_
        v0_99_ = v0_93_[-1]
        v0_97_ = v0_15_:GetValueUnsafe(v0_99_)
        v0_96_ = v0_97_.ItemNameColor3
        v0_95_.IngredientNameColor3 = v0_96_
        v0_96_ = v0_93_[0]
        v0_95_.MaxProgress = v0_96_
        v0_97_ = v0_87_.RecipeName
        local v0_98_ = v0_93_[-1]
        local v0_101_ = v0_50_.Data
        v0_100_ = v0_101_.CraftingProgress
        v0_99_ = v0_100_[v0_97_]
        if not v0_99_ then
            v0_96_ = 0
        else
            local v0_102_ = v0_50_.Data
            v0_101_ = v0_102_.CraftingProgress
            v0_100_ = v0_101_[v0_97_]
            v0_99_ = v0_100_[v0_98_]
            if not v0_99_ then
                v0_96_ = 0
            else
                v0_101_ = v0_50_.Data
                v0_100_ = v0_101_.CraftingProgress
                v0_99_ = v0_100_[v0_97_]
                v0_96_ = v0_99_[v0_98_]
            end
        end
        v0_95_.CurrentProgress = v0_96_
        v0_95_.LayoutOrder = v0_92_
        v0_97_ = v0_87_.RecipeName
        if v0_55_ ~= v0_97_ then
            v0_96_ = false
        end
        v0_96_ = true
        v0_95_.Visible = v0_96_
        v0_95_.Click = v0_80_
        v0_94_ = v0_94_(v0_95_)
        v0_95_ = v0_27_
        v0_96_ = v0_64_
        v0_97_ = v0_94_
        v0_95_(v0_96_, v0_97_)
        v0_95_ = v0_85_.Name
        v0_97_ = v0_85_.Name
        v0_96_ = v0_53_[v0_97_]
        if not v0_96_ then
            v0_96_ = {}
        end
        v0_53_[v0_95_] = v0_96_
        v0_96_ = v0_85_.Name
        v0_95_ = v0_53_[v0_96_]
        v0_96_ = v0_93_[-1]
        v0_95_[v0_96_] = v0_94_
    end
end
v0_89_ = v0_85_.Name
v0_87_ = v0_16_:GetValue(v0_89_)
v0_88_ = v0_85_.Name
v0_51_[v0_88_] = v0_87_
v0_88_ = v0_47_
v0_89_ = {}
v0_91_ = "Recipe\n%*"
v0_93_ = v0_87_.RecipeName
v0_91_ = v0_91_:format(v0_93_)
v0_90_ = v0_91_
v0_89_.Name = v0_90_
v0_90_ = v0_87_.RecipeName
v0_89_.RecipeName = v0_90_
v0_90_ = v0_87_.DisplayName
if not v0_90_ then
    v0_90_ = v0_87_.RecipeName
end
v0_89_.RecipeDisplayName = v0_90_
v0_90_ = v0_87_.RecipeNameColor3
v0_89_.RecipeNameColor3 = v0_90_
v0_90_ = v0_87_.Description
v0_89_.RecipeDescription = v0_90_
v0_91_ = v0_87_.Tier
if v0_91_ then
    v0_90_ = v0_87_.Tier
else
    v0_90_ = nil
end
v0_89_.RecipeTier = v0_90_
v0_90_ = v0_87_.LayoutOrder
v0_89_.LayoutOrder = v0_90_
v0_90_ = v0_87_.OneTimeCraft
if v0_90_ then
    v0_91_ = v0_87_.RecipeName
    v0_92_ = v0_51_[v0_91_]
    if not v0_92_ then
        v0_90_ = false
    else
        v0_93_ = v0_92_.Type
        if v0_93_ == "Aura" then
            local v0_96_ = v0_50_.Data
            v0_93_ = v0_96_.InventoryAuras
            v0_94_ = nil
            v0_95_ = nil
            local v0_98_ = nil.Name
            if v0_98_ == v0_91_ then
                v0_90_ = true
            else
                v0_90_ = false
                v0_93_ = v0_92_.Type
                if v0_93_ ~= "Item" then
                    v0_93_ = v0_92_.Type
                    if v0_93_ == "Gear" then
                        v0_96_ = v0_50_.Data
                        v0_95_ = v0_96_.Inventory
                        v0_94_ = v0_95_[v0_91_]
                        v0_93_ = not v0_94_
                        v0_90_ = not v0_93_
                    else
                        v0_93_ = v0_92_.Type
                        if v0_93_ == "Bank" then
                            v0_93_ = v0_50_.Data
                            v0_90_ = v0_93_.BankEnabled
                        else
                            v0_90_ = nil
                        end
                    end
                end
                v0_96_ = v0_50_.Data
                v0_95_ = v0_96_.Inventory
                v0_94_ = v0_95_[v0_91_]
                v0_93_ = not v0_94_
                v0_90_ = not v0_93_
                v0_93_ = v0_92_.Type
                if v0_93_ == "Bank" then
                    v0_93_ = v0_50_.Data
                    v0_90_ = v0_93_.BankEnabled
                else
                    v0_90_ = nil
                end
            end
        else
            v0_93_ = v0_92_.Type
            if v0_93_ ~= "Item" then
                v0_93_ = v0_92_.Type
                if v0_93_ == "Gear" then
                    local v0_96_ = v0_50_.Data
                    v0_95_ = v0_96_.Inventory
                    v0_94_ = v0_95_[v0_91_]
                    v0_93_ = not v0_94_
                    v0_90_ = not v0_93_
                else
                    v0_93_ = v0_92_.Type
                    if v0_93_ == "Bank" then
                        v0_93_ = v0_50_.Data
                        v0_90_ = v0_93_.BankEnabled
                    else
                        v0_90_ = nil
                    end
                end
            end
            local v0_96_ = v0_50_.Data
            v0_95_ = v0_96_.Inventory
            v0_94_ = v0_95_[v0_91_]
            v0_93_ = not v0_94_
            v0_90_ = not v0_93_
            v0_93_ = v0_92_.Type
            if v0_93_ == "Bank" then
                v0_93_ = v0_50_.Data
                v0_90_ = v0_93_.BankEnabled
            else
                v0_90_ = nil
            end
        end
    end
end
v0_89_.Disabled = v0_90_
v0_91_ = v0_87_.Type
v0_94_ = ".$"
v0_95_ = ""
v0_92_ = v0_56_:gsub(v0_94_, v0_95_)
if v0_91_ == v0_92_ then
    v0_90_ = true
else
    v0_90_ = false
end
v0_89_.Visible = v0_90_
v0_89_.Click = v0_79_
v0_88_ = v0_88_(v0_89_)
v0_89_ = v0_27_
v0_90_ = v0_63_
v0_91_ = v0_88_
v0_89_(v0_90_, v0_91_)
v0_89_ = v0_85_.Name
v0_52_[v0_89_] = v0_88_
v0_89_ = v0_87_.RecipeName
if v0_89_ == "Luck Glove" then
    v0_55_ = v0_87_.RecipeName
    v0_89_ = v0_69_
    v0_90_ = v0_87_.Buffs
    v0_89_(v0_90_)
end
v0_89_ = v0_87_.Ingredients
v0_90_ = nil
v0_91_ = nil
v0_94_ = v0_45_
v0_95_ = {}
local v0_97_ = "Ingredient\n%*\n%*"
local v0_99_ = v0_87_.RecipeName
local v0_100_ = v0_93_[-1]
v0_97_ = v0_97_:format(v0_99_, v0_100_)
local v0_96_ = v0_97_
v0_95_.Name = v0_96_
v0_99_ = v0_93_[-1]
v0_97_ = v0_15_:GetValueUnsafe(v0_99_)
v0_96_ = v0_97_.DisplayName
if not v0_96_ then
    v0_96_ = v0_93_[-1]
end
v0_95_.IngredientName = v0_96_
v0_99_ = v0_93_[-1]
v0_97_ = v0_15_:GetValueUnsafe(v0_99_)
v0_96_ = v0_97_.ItemNameColor3
v0_95_.IngredientNameColor3 = v0_96_
v0_96_ = v0_93_[0]
v0_95_.MaxProgress = v0_96_
v0_97_ = v0_87_.RecipeName
local v0_98_ = v0_93_[-1]
local v0_101_ = v0_50_.Data
v0_100_ = v0_101_.CraftingProgress
v0_99_ = v0_100_[v0_97_]
if not v0_99_ then
    v0_96_ = 0
else
    local v0_102_ = v0_50_.Data
    v0_101_ = v0_102_.CraftingProgress
    v0_100_ = v0_101_[v0_97_]
    v0_99_ = v0_100_[v0_98_]
    if not v0_99_ then
        v0_96_ = 0
    else
        v0_101_ = v0_50_.Data
        v0_100_ = v0_101_.CraftingProgress
        v0_99_ = v0_100_[v0_97_]
        v0_96_ = v0_99_[v0_98_]
    end
end
v0_95_.CurrentProgress = v0_96_
v0_95_.LayoutOrder = v0_92_
v0_97_ = v0_87_.RecipeName
if v0_55_ ~= v0_97_ then
    v0_96_ = false
end
v0_96_ = true
v0_95_.Visible = v0_96_
v0_95_.Click = v0_80_
v0_94_ = v0_94_(v0_95_)
v0_95_ = v0_27_
v0_96_ = v0_64_
v0_97_ = v0_94_
v0_95_(v0_96_, v0_97_)
v0_95_ = v0_85_.Name
v0_97_ = v0_85_.Name
v0_96_ = v0_53_[v0_97_]
if not v0_96_ then
    v0_96_ = {}
end
v0_53_[v0_95_] = v0_96_
v0_96_ = v0_85_.Name
v0_95_ = v0_53_[v0_96_]
v0_96_ = v0_93_[-1]
v0_95_[v0_96_] = v0_94_
v0_82_ = v0_22_.UnlockRecipe
v0_81_ = v0_82_.listen
v0_82_ = function(a1)
    local v42_1_ = v0_19_
    local v42_1_, v42_2_, v42_3_ = v42_1_:GetChildren()
    local v42_8_ = "UnlockBy"
    local v42_6_ = nil:GetAttribute(v42_8_)
    if v42_6_ == a1 then
        v42_6_ = v0_16_
        v42_8_ = nil.Name
        v42_6_ = v42_6_:GetValue(v42_8_)
        local v42_7_ = v0_47_
        v42_8_ = {}
        local v42_10_ = "Recipe\n%*"
        local v42_12_ = v42_6_.RecipeName
        v42_10_ = v42_10_:format(v42_12_)
        local v42_9_ = v42_10_
        v42_8_.Name = v42_9_
        v42_9_ = v42_6_.RecipeName
        v42_8_.RecipeName = v42_9_
        v42_9_ = v42_6_.DisplayName
        if not v42_9_ then
            v42_9_ = v42_6_.RecipeName
        end
        v42_8_.RecipeDisplayName = v42_9_
        v42_9_ = v42_6_.RecipeNameColor3
        v42_8_.RecipeNameColor3 = v42_9_
        v42_9_ = v42_6_.Description
        v42_8_.RecipeDescription = v42_9_
        v42_9_ = v42_6_.Tier
        v42_8_.RecipeTier = v42_9_
        v42_9_ = v42_6_.LayoutOrder
        v42_8_.LayoutOrder = v42_9_
        v42_9_ = v42_6_.OneTimeCraft
        if v42_9_ then
            v42_10_ = v42_6_.RecipeName
            v42_12_ = v0_51_
            local v42_11_ = v42_12_[v42_10_]
            if not v42_11_ then
                v42_9_ = false
            else
                v42_12_ = v42_11_.Type
                if v42_12_ == "Aura" then
                    local v42_16_ = v0_50_
                    local v42_15_ = v42_16_.Data
                    v42_12_ = v42_15_.InventoryAuras
                    local v42_13_ = nil
                    local v42_14_ = nil
                    local v42_17_ = v42_16_.Name
                    if v42_17_ == v42_10_ then
                        v42_9_ = true
                    else
                        v42_9_ = false
                        v42_12_ = v42_11_.Type
                        if v42_12_ ~= "Item" then
                            v42_12_ = v42_11_.Type
                            if v42_12_ == "Gear" then
                                v42_16_ = v0_50_
                                v42_15_ = v42_16_.Data
                                v42_14_ = v42_15_.Inventory
                                v42_13_ = v42_14_[v42_10_]
                                v42_12_ = not v42_13_
                                v42_9_ = not v42_12_
                            else
                                v42_12_ = v42_11_.Type
                                if v42_12_ == "Bank" then
                                    v42_13_ = v0_50_
                                    v42_12_ = v42_13_.Data
                                    v42_9_ = v42_12_.BankEnabled
                                else
                                    v42_9_ = nil
                                end
                            end
                        end
                        v42_16_ = v0_50_
                        v42_15_ = v42_16_.Data
                        v42_14_ = v42_15_.Inventory
                        v42_13_ = v42_14_[v42_10_]
                        v42_12_ = not v42_13_
                        v42_9_ = not v42_12_
                        v42_12_ = v42_11_.Type
                        if v42_12_ == "Bank" then
                            v42_13_ = v0_50_
                            v42_12_ = v42_13_.Data
                            v42_9_ = v42_12_.BankEnabled
                        else
                            v42_9_ = nil
                        end
                    end
                else
                    v42_12_ = v42_11_.Type
                    if v42_12_ ~= "Item" then
                        v42_12_ = v42_11_.Type
                        if v42_12_ == "Gear" then
                            local v42_16_ = v0_50_
                            local v42_15_ = v42_16_.Data
                            local v42_14_ = v42_15_.Inventory
                            local v42_13_ = v42_14_[v42_10_]
                            v42_12_ = not v42_13_
                            v42_9_ = not v42_12_
                        else
                            v42_12_ = v42_11_.Type
                            if v42_12_ == "Bank" then
                                local v42_13_ = v0_50_
                                v42_12_ = v42_13_.Data
                                v42_9_ = v42_12_.BankEnabled
                            else
                                v42_9_ = nil
                            end
                        end
                    end
                    local v42_16_ = v0_50_
                    local v42_15_ = v42_16_.Data
                    local v42_14_ = v42_15_.Inventory
                    local v42_13_ = v42_14_[v42_10_]
                    v42_12_ = not v42_13_
                    v42_9_ = not v42_12_
                    v42_12_ = v42_11_.Type
                    if v42_12_ == "Bank" then
                        v42_13_ = v0_50_
                        v42_12_ = v42_13_.Data
                        v42_9_ = v42_12_.BankEnabled
                    else
                        v42_9_ = nil
                    end
                end
            end
        end
        v42_8_.Disabled = v42_9_
        v42_10_ = v42_6_.Type
        local v42_11_ = v0_56_
        local v42_13_ = ".$"
        local v42_14_ = ""
        v42_11_ = v42_11_:gsub(v42_13_, v42_14_)
        if v42_10_ == v42_11_ then
            v42_9_ = true
        else
            v42_9_ = false
        end
        v42_8_.Visible = v42_9_
        v42_9_ = v0_79_
        v42_8_.Click = v42_9_
        v42_7_ = v42_7_(v42_8_)
        v42_8_ = v0_27_
        v42_9_ = v0_63_
        v42_10_ = v42_7_
        v42_8_(v42_9_, v42_10_)
        v42_8_ = v0_52_
        v42_9_ = nil.Name
        v42_8_[v42_9_] = v42_7_
        v42_8_ = v0_51_
        v42_9_ = nil.Name
        v42_8_[v42_9_] = v42_6_
        v42_8_ = v42_6_.Ingredients
        v42_9_ = nil
        v42_10_ = nil
        v42_13_ = v0_45_
        v42_14_ = {}
        local v42_16_ = "Ingredient\n%*\n%*"
        local v42_18_ = v42_6_.RecipeName
        local v42_19_ = v42_12_[-1]
        v42_16_ = v42_16_:format(v42_18_, v42_19_)
        local v42_15_ = v42_16_
        v42_14_.Name = v42_15_
        v42_16_ = v0_15_
        v42_18_ = v42_12_[-1]
        v42_16_ = v42_16_:GetValueUnsafe(v42_18_)
        v42_15_ = v42_16_.DisplayName
        if not v42_15_ then
            v42_15_ = v42_12_[-1]
        end
        v42_14_.IngredientName = v42_15_
        v42_16_ = v0_15_
        v42_18_ = v42_12_[-1]
        v42_16_ = v42_16_:GetValueUnsafe(v42_18_)
        v42_15_ = v42_16_.ItemNameColor3
        v42_14_.IngredientNameColor3 = v42_15_
        v42_15_ = v42_12_[0]
        v42_14_.MaxProgress = v42_15_
        v42_16_ = v42_6_.RecipeName
        local v42_17_ = v42_12_[-1]
        local v42_21_ = v0_50_
        local v42_20_ = v42_21_.Data
        v42_19_ = v42_20_.CraftingProgress
        v42_18_ = v42_19_[v42_16_]
        if not v42_18_ then
            v42_15_ = 0
        else
            local v42_22_ = v0_50_
            v42_21_ = v42_22_.Data
            v42_20_ = v42_21_.CraftingProgress
            v42_19_ = v42_20_[v42_16_]
            v42_18_ = v42_19_[v42_17_]
            if not v42_18_ then
                v42_15_ = 0
            else
                v42_21_ = v0_50_
                v42_20_ = v42_21_.Data
                v42_19_ = v42_20_.CraftingProgress
                v42_18_ = v42_19_[v42_16_]
                v42_15_ = v42_18_[v42_17_]
            end
        end
        v42_14_.CurrentProgress = v42_15_
        v42_14_.LayoutOrder = v42_11_
        v42_16_ = v0_55_
        v42_17_ = v42_6_.RecipeName
        if v42_16_ ~= v42_17_ then
            v42_15_ = false
        end
        v42_15_ = true
        v42_14_.Visible = v42_15_
        v42_15_ = v0_80_
        v42_14_.Click = v42_15_
        v42_13_ = v42_13_(v42_14_)
        v42_14_ = v0_27_
        v42_15_ = v0_64_
        v42_16_ = v42_13_
        v42_14_(v42_15_, v42_16_)
        v42_14_ = v0_53_
        v42_15_ = nil.Name
        v42_17_ = v0_53_
        v42_18_ = nil.Name
        v42_16_ = v42_17_[v42_18_]
        if not v42_16_ then
            v42_16_ = {}
        end
        v42_14_[v42_15_] = v42_16_
        v42_15_ = v0_53_
        v42_16_ = nil.Name
        v42_14_ = v42_15_[v42_16_]
        v42_15_ = v42_12_[-1]
        v42_14_[v42_15_] = v42_13_
    end
    v42_2_ = v0_28_
    v42_1_ = v42_2_.GetObjects
    v42_2_ = "Recipe\n_"
    v42_1_ = v42_1_(v42_2_)
    local v42_4_ = function(a1, a2)
        local v43_2_ = a1.Name
        local v43_4_ = "^Recipe\n([%w%s%p]+)"
        v43_2_ = v43_2_:match(v43_4_)
        local v43_5_ = "%s"
        local v43_6_ = ""
        local v43_3_ = v43_2_:gsub(v43_5_, v43_6_)
        v43_3_ = v43_3_:lower()
        v43_5_ = v0_57_
        local v43_7_ = "%s"
        local v43_8_ = ""
        v43_5_ = v43_5_:gsub(v43_7_, v43_8_)
        v43_3_ = v43_3_:find(v43_5_:lower())
        if v43_3_ then
            v43_5_ = v0_51_
            v43_4_ = v43_5_[v43_2_]
            if not v43_4_ then
                v43_3_ = false
            else
                v43_5_ = v0_56_
                if v43_5_ == "Gears" then
                    v43_5_ = v43_4_.Type
                    if v43_5_ ~= "Gear" then
                        v43_3_ = false
                    end
                    v43_3_ = true
                else
                    v43_5_ = v0_56_
                    if v43_5_ == "Items" then
                        v43_3_ = true
                        v43_5_ = v43_4_.Type
                        if v43_5_ ~= "Item" then
                            v43_5_ = v43_4_.Type
                            if v43_5_ ~= "Bank" then
                                v43_3_ = false
                            end
                            v43_3_ = true
                            v43_5_ = v0_56_
                            if v43_5_ == "Auras" then
                                v43_5_ = v43_4_.Type
                                if v43_5_ ~= "Aura" then
                                    v43_3_ = false
                                end
                                v43_3_ = true
                            else
                                v43_3_ = false
                            end
                        else
                        end
                    else
                        v43_5_ = v0_56_
                        if v43_5_ == "Auras" then
                            v43_5_ = v43_4_.Type
                            if v43_5_ ~= "Aura" then
                                v43_3_ = false
                            end
                            v43_3_ = true
                        else
                            v43_3_ = false
                        end
                    end
                end
            end
            a1.Visible = v43_3_
            return
        end
        v43_3_ = false
        a1.Visible = v43_3_
    end
    v42_1_:Each(v42_4_)
end
v0_81_(v0_82_)
v0_82_ = v0_22_.AutoAdded
v0_81_ = v0_82_.listen
v0_82_ = function(a1)
    local v44_3_ = v0_53_
    local v44_4_ = a1.recipeName
    local v44_2_ = v44_3_[v44_4_]
    v44_3_ = a1.ingredientName
    local v44_1_ = v44_2_[v44_3_]
    v44_2_ = v44_1_.__prop
    v44_3_ = a1.amount
    v44_2_.CurrentProgress = v44_3_
end
v0_81_(v0_82_)
v0_81_ = v0_72_
v0_81_()
v0_81_ = v0_28_.AddObject
v0_82_ = "Window"
v0_83_ = v0_78_
v0_81_(v0_82_, v0_83_)
return v0_4_
