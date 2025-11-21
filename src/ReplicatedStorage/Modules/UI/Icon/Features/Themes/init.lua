-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = {}
local v0_1_ = require
local v0_5_ = script
local v0_4_ = v0_5_.Parent
local v0_3_ = v0_4_.Parent
local v0_2_ = v0_3_.Utility
v0_1_ = v0_1_(v0_2_)
v0_2_ = require
v0_4_ = script
v0_3_ = v0_4_.Default
v0_2_ = v0_2_(v0_3_)
v0_3_ = function(a1, a2, a3, a4)
    if a1 then
        local v1_4_ = pairs
        local v1_5_ = a1
        local v1_4_, v1_5_, v1_6_ = v1_4_(v1_5_)
        for v1_7_, v1_8_ in v1_4_, v1_5_, v1_6_ do
            local v1_10_ = v1_8_
            local v1_9_ = unpack
            local v1_9_, v1_10_, v1_11_ = v1_9_(v1_10_)
            if a2 == v1_9_ then
                if a3 == v1_10_ then
                    return v1_11_
                end
            end
        end
    end
end
v0_0_.getThemeValue = v0_3_
v0_3_ = function(a1, a2)
    local v2_2_ = pcall
    local v2_3_ = function()
        local v3_1_ = a1
        local v3_2_ = a2
        local v3_0_ = v3_1_[v3_2_]
        return v3_0_
    end
    v2_2_, v2_3_ = v2_2_(v2_3_)
    if not v2_2_ then
        local v2_6_ = a2
        local v2_4_ = a1:GetAttribute(v2_6_)
        v2_3_ = v2_4_
    end
    return v2_3_
end
v0_0_.getInstanceValue = v0_3_
v0_3_ = function(a1)
    local v4_3_ = "IsAClippedClone"
    local v4_1_ = a1:GetAttribute(v4_3_)
    if not v4_1_ then
        return
    end
    v4_3_ = "OriginalInstance"
    v4_1_ = a1:FindFirstChild(v4_3_)
    if not v4_1_ then
        return
    end
    local v4_2_ = v4_1_.Value
    return v4_2_
end
v0_0_.getRealInstance = v0_3_
v0_3_ = function(a1)
    local v5_3_ = "HasAClippedClone"
    local v5_1_ = a1:GetAttribute(v5_3_)
    if not v5_1_ then
        return
    end
    v5_3_ = "ClippedClone"
    v5_1_ = a1:FindFirstChild(v5_3_)
    if not v5_1_ then
        return
    end
    local v5_2_ = v5_1_.Value
    return v5_2_
end
v0_0_.getClippedClone = v0_3_
v0_3_ = function(a1, a2, a3)
    if a3 then
        local v6_3_ = a1:getStateGroup()
        local v6_5_ = v0_0_
        local v6_4_ = v6_5_.getThemeValue
        v6_5_ = v6_3_
        local v6_6_ = a2.Name
        local v6_7_ = a3
        v6_4_ = v6_4_(v6_5_, v6_6_, v6_7_)
        if not v6_4_ then
            v6_5_ = v0_0_
            v6_4_ = v6_5_.getInstanceValue
            v6_5_ = a2
            v6_6_ = a3
            v6_4_ = v6_4_(v6_5_, v6_6_)
        end
        v6_6_ = v0_0_
        v6_5_ = v6_6_.apply
        v6_6_ = a1
        v6_7_ = a2
        local v6_8_ = a3
        local v6_9_ = v6_4_
        local v6_10_ = true
        v6_5_(v6_6_, v6_7_, v6_8_, v6_9_, v6_10_)
        return
    end
    local v6_3_ = a1:getStateGroup()
    if not v6_3_ then
        return
    end
    local v6_4_ = {}
    local v6_5_ = a2.Name
    v6_4_[v6_5_] = a2
    v6_5_ = pairs
    local v6_5_, v6_6_, v6_7_ = v6_5_(a2:GetDescendants())
    for v6_8_, v6_9_ in v6_5_, v6_6_, v6_7_ do
        local v6_12_ = "Collective"
        local v6_10_ = v6_9_:GetAttribute(v6_12_)
        if v6_10_ then
            v6_4_[v6_10_] = v6_9_
        end
        local v6_11_ = v6_9_.Name
    end
    v6_5_ = pairs
    v6_6_ = v6_3_
    v6_5_, v6_6_, v6_7_ = v6_5_(v6_6_)
    for v6_8_, v6_9_ in v6_5_, v6_6_, v6_7_ do
        local v6_11_ = v6_9_
        local v6_10_ = unpack
        local v6_10_, v6_11_, v6_12_ = v6_10_(v6_11_)
        local v6_13_ = v6_4_[v6_10_]
        if v6_13_ then
            local v6_15_ = v0_0_
            local v6_14_ = v6_15_.apply
            v6_15_ = a1
            local v6_16_ = v6_13_.Name
            local v6_17_ = v6_11_
            local v6_18_ = v6_12_
            local v6_19_ = true
            v6_14_(v6_15_, v6_16_, v6_17_, v6_18_, v6_19_)
        end
    end
end
v0_0_.refresh = v0_3_
v0_3_ = function(a1, a2, a3, a4, a5)
    local v7_5_ = a1.isDestroyed
    if v7_5_ then
        return
    end
    v7_5_ = nil
    local v7_6_ = a2
    local v7_8_ = a2
    local v7_7_ = typeof
    v7_7_ = v7_7_(v7_8_)
    if v7_7_ == "Instance" then
        v7_7_ = table.create(1)
        v7_8_ = a2
        v7_7_[1] = v7_8_
        v7_5_ = v7_7_
        v7_6_ = a2.Name
    else
        local v7_9_ = a2
        v7_7_ = a1:getInstanceOrCollective(v7_9_)
        v7_5_ = v7_7_
    end
    v7_8_ = v7_6_
    local v7_9_ = "-"
    local v7_10_ = a3
    v7_7_ = v7_8_ .. v7_9_
    v7_9_ = a1.customBehaviours
    v7_8_ = v7_9_[v7_7_]
    v7_9_ = pairs
    v7_10_ = v7_5_
    local v7_9_, v7_10_, v7_11_ = v7_9_(v7_10_)
    for v7_12_, v7_13_ in v7_9_, v7_10_, v7_11_ do
        local v7_15_ = v0_0_
        local v7_14_ = v7_15_.getClippedClone
        v7_15_ = v7_13_
        v7_14_ = v7_14_(v7_15_)
        if v7_14_ then
            local v7_16_ = v7_5_
            local v7_17_ = v7_14_
            local insert = table.insert
            insert(v7_16_, v7_17_)
        end
    end
    v7_9_ = pairs
    v7_10_ = v7_5_
    v7_9_, v7_10_, v7_11_ = v7_9_(v7_10_)
    for v7_12_, v7_13_ in v7_9_, v7_10_, v7_11_ do
        if a3 == "Position" then
            local v7_15_ = v0_0_
            local v7_14_ = v7_15_.getClippedClone
            v7_15_ = v7_13_
            v7_14_ = v7_14_(v7_15_)
            if v7_14_ then
            else
                if a3 == "Size" then
                    v7_15_ = v0_0_
                    v7_14_ = v7_15_.getRealInstance
                    v7_15_ = v7_13_
                    v7_14_ = v7_14_(v7_15_)
                    if not v7_14_ then
                        v7_15_ = v0_0_
                        v7_14_ = v7_15_.getInstanceValue
                        v7_15_ = v7_13_
                        local v7_16_ = a3
                        v7_14_ = v7_14_(v7_15_, v7_16_)
                        if not a5 then
                            if a4 ~= v7_14_ then
                                if v7_8_ then
                                    v7_15_ = v7_8_
                                    v7_16_ = a4
                                    local v7_17_ = v7_13_
                                    local v7_18_ = a3
                                    v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                                    if v7_15_ ~= nil then
                                        v7_3_ = v7_15_
                                    end
                                end
                                v7_15_ = pcall
                                v7_16_ = function()
                                    local v8_0_ = v7_13_
                                    local v8_1_ = a3
                                    local v8_2_ = a4
                                    v8_0_[v8_1_] = v8_2_
                                end
                                v7_15_ = v7_15_(v7_16_)
                                if not v7_15_ then
                                    local v7_18_ = a3
                                    local v7_19_ = a4
                                    v7_13_:SetAttribute(v7_18_, v7_19_)
                                end
                            end
                        end
                        if v7_8_ then
                            v7_15_ = v7_8_
                            v7_16_ = a4
                            local v7_17_ = v7_13_
                            local v7_18_ = a3
                            v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                            if v7_15_ ~= nil then
                                v7_3_ = v7_15_
                            end
                        end
                        v7_15_ = pcall
                        v7_16_ = function()
                            local v9_0_ = v7_13_
                            local v9_1_ = a3
                            local v9_2_ = a4
                            v9_0_[v9_1_] = v9_2_
                        end
                        v7_15_ = v7_15_(v7_16_)
                        if not v7_15_ then
                            local v7_18_ = a3
                            local v7_19_ = a4
                            v7_13_:SetAttribute(v7_18_, v7_19_)
                        end
                    end
                end
                v7_15_ = v0_0_
                v7_14_ = v7_15_.getInstanceValue
                v7_15_ = v7_13_
                local v7_16_ = a3
                v7_14_ = v7_14_(v7_15_, v7_16_)
                if not a5 then
                    if a4 ~= v7_14_ then
                        if v7_8_ then
                            v7_15_ = v7_8_
                            v7_16_ = a4
                            local v7_17_ = v7_13_
                            local v7_18_ = a3
                            v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                            if v7_15_ ~= nil then
                                v7_3_ = v7_15_
                            end
                        end
                        v7_15_ = pcall
                        v7_16_ = function()
                            local v10_0_ = v7_13_
                            local v10_1_ = a3
                            local v10_2_ = a4
                            v10_0_[v10_1_] = v10_2_
                        end
                        v7_15_ = v7_15_(v7_16_)
                        if not v7_15_ then
                            local v7_18_ = a3
                            local v7_19_ = a4
                            v7_13_:SetAttribute(v7_18_, v7_19_)
                        end
                    end
                end
                if v7_8_ then
                    v7_15_ = v7_8_
                    v7_16_ = a4
                    local v7_17_ = v7_13_
                    local v7_18_ = a3
                    v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                    if v7_15_ ~= nil then
                        v7_3_ = v7_15_
                    end
                end
                v7_15_ = pcall
                v7_16_ = function()
                    local v11_0_ = v7_13_
                    local v11_1_ = a3
                    local v11_2_ = a4
                    v11_0_[v11_1_] = v11_2_
                end
                v7_15_ = v7_15_(v7_16_)
                if not v7_15_ then
                    local v7_18_ = a3
                    local v7_19_ = a4
                    v7_13_:SetAttribute(v7_18_, v7_19_)
                end
            end
        else
            if a3 == "Size" then
                local v7_15_ = v0_0_
                local v7_14_ = v7_15_.getRealInstance
                v7_15_ = v7_13_
                v7_14_ = v7_14_(v7_15_)
                if not v7_14_ then
                    v7_15_ = v0_0_
                    v7_14_ = v7_15_.getInstanceValue
                    v7_15_ = v7_13_
                    local v7_16_ = a3
                    v7_14_ = v7_14_(v7_15_, v7_16_)
                    if not a5 then
                        if a4 ~= v7_14_ then
                            if v7_8_ then
                                v7_15_ = v7_8_
                                v7_16_ = a4
                                local v7_17_ = v7_13_
                                local v7_18_ = a3
                                v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                                if v7_15_ ~= nil then
                                    v7_3_ = v7_15_
                                end
                            end
                            v7_15_ = pcall
                            v7_16_ = function()
                                local v12_0_ = v7_13_
                                local v12_1_ = a3
                                local v12_2_ = a4
                                v12_0_[v12_1_] = v12_2_
                            end
                            v7_15_ = v7_15_(v7_16_)
                            if not v7_15_ then
                                local v7_18_ = a3
                                local v7_19_ = a4
                                v7_13_:SetAttribute(v7_18_, v7_19_)
                            end
                        end
                    end
                    if v7_8_ then
                        v7_15_ = v7_8_
                        v7_16_ = a4
                        local v7_17_ = v7_13_
                        local v7_18_ = a3
                        v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                        if v7_15_ ~= nil then
                            v7_3_ = v7_15_
                        end
                    end
                    v7_15_ = pcall
                    v7_16_ = function()
                        local v13_0_ = v7_13_
                        local v13_1_ = a3
                        local v13_2_ = a4
                        v13_0_[v13_1_] = v13_2_
                    end
                    v7_15_ = v7_15_(v7_16_)
                    if not v7_15_ then
                        local v7_18_ = a3
                        local v7_19_ = a4
                        v7_13_:SetAttribute(v7_18_, v7_19_)
                    end
                end
            end
            local v7_15_ = v0_0_
            local v7_14_ = v7_15_.getInstanceValue
            v7_15_ = v7_13_
            local v7_16_ = a3
            v7_14_ = v7_14_(v7_15_, v7_16_)
            if not a5 then
                if a4 ~= v7_14_ then
                    if v7_8_ then
                        v7_15_ = v7_8_
                        v7_16_ = a4
                        local v7_17_ = v7_13_
                        local v7_18_ = a3
                        v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                        if v7_15_ ~= nil then
                            v7_3_ = v7_15_
                        end
                    end
                    v7_15_ = pcall
                    v7_16_ = function()
                        local v14_0_ = v7_13_
                        local v14_1_ = a3
                        local v14_2_ = a4
                        v14_0_[v14_1_] = v14_2_
                    end
                    v7_15_ = v7_15_(v7_16_)
                    if not v7_15_ then
                        local v7_18_ = a3
                        local v7_19_ = a4
                        v7_13_:SetAttribute(v7_18_, v7_19_)
                    end
                end
            end
            if v7_8_ then
                v7_15_ = v7_8_
                v7_16_ = a4
                local v7_17_ = v7_13_
                local v7_18_ = a3
                v7_15_ = v7_15_(v7_16_, v7_17_, v7_18_)
                if v7_15_ ~= nil then
                    v7_3_ = v7_15_
                end
            end
            v7_15_ = pcall
            v7_16_ = function()
                local v15_0_ = v7_13_
                local v15_1_ = a3
                local v15_2_ = a4
                v15_0_[v15_1_] = v15_2_
            end
            v7_15_ = v7_15_(v7_16_)
            if not v7_15_ then
                local v7_18_ = a3
                local v7_19_ = a4
                v7_13_:SetAttribute(v7_18_, v7_19_)
            end
        end
    end
end
v0_0_.apply = v0_3_
v0_3_ = function(a1)
    local v16_2_ = a1[-1]
    local v16_1_ = typeof
    v16_1_ = v16_1_(v16_2_)
    if v16_1_ ~= "table" then
        v16_1_ = table.create(1)
        v16_2_ = a1
        v16_1_[1] = v16_2_
        v16_0_ = v16_1_
    end
    return a1
end
v0_0_.getModifications = v0_3_
v0_3_ = function(a1, a2, a3)
    local v17_4_ = a2
    local unpack = table.unpack
    local v17_3_, v17_4_, v17_5_, v17_6_ = unpack(v17_4_)
    local v17_8_ = a1
    local unpack = table.unpack
    local v17_7_, v17_8_, v17_9_, v17_10_ = unpack(v17_8_)
    if v17_3_ == v17_7_ then
        if v17_4_ == v17_8_ then
            local v17_12_ = v0_0_
            local v17_11_ = v17_12_.statesMatch
            v17_12_ = v17_6_
            local v17_13_ = v17_10_
            v17_11_ = v17_11_(v17_12_, v17_13_)
            if v17_11_ then
                a1[1] = v17_5_
                if a3 then
                    v17_11_ = a3
                    v17_12_ = a1
                    v17_11_(v17_12_)
                end
                v17_11_ = true
                return v17_11_
            end
        end
    end
    local v17_11_ = false
    return v17_11_
end
v0_0_.merge = v0_3_
v0_3_ = function(a1, a2, a3)
    local spawn = task.spawn
    local v18_4_ = function()
        local v19_0_ = a3
        if not v19_0_ then
            local v19_1_ = v0_1_
            v19_0_ = v19_1_.generateUID
            v19_0_ = v19_0_()
        end
        a3 = v19_0_
        local v19_1_ = v0_0_
        v19_0_ = v19_1_.getModifications
        v19_1_ = a2
        v19_0_ = v19_0_(v19_1_)
        a2 = nil
        v19_0_ = pairs
        v19_1_ = a2
        local v19_0_, v19_1_, v19_2_ = v19_0_(v19_1_)
        for v19_3_, v19_4_ in v19_0_, v19_1_, v19_2_ do
            local v19_6_ = v19_4_
            local unpack = table.unpack
            local v19_5_, v19_6_, v19_7_, v19_8_ = unpack(v19_6_)
            if v19_8_ == nil then
                local v19_10_ = v0_0_
                local v19_9_ = v19_10_.modify
                v19_10_ = a1
                local v19_11_ = table.create(4)
                local v19_12_ = v19_5_
                local v19_13_ = v19_6_
                local v19_14_ = v19_7_
                local v19_15_ = "Selected"
                v19_11_[1] = v19_12_
                v19_11_[2] = v19_13_
                v19_11_[3] = v19_14_
                v19_11_[4] = v19_15_
                v19_12_ = a3
                v19_9_(v19_10_, v19_11_, v19_12_)
                v19_10_ = v0_0_
                v19_9_ = v19_10_.modify
                v19_10_ = a1
                v19_11_ = table.create(4)
                v19_12_ = v19_5_
                v19_13_ = v19_6_
                v19_14_ = v19_7_
                v19_15_ = "Viewing"
                v19_11_[1] = v19_12_
                v19_11_[2] = v19_13_
                v19_11_[3] = v19_14_
                v19_11_[4] = v19_15_
                v19_12_ = a3
                v19_9_(v19_10_, v19_11_, v19_12_)
            end
            local v19_10_ = v0_1_
            local v19_9_ = v19_10_.formatStateName
            v19_10_ = v19_8_ or "Deselected"
            v19_9_ = v19_9_(v19_10_)
            v19_10_ = a1
            local v19_12_ = v19_9_
            v19_10_ = v19_10_:getStateGroup(v19_12_)
            local v19_11_ = function()
                local v20_0_ = v19_9_
                local v20_2_ = a1
                local v20_1_ = v20_2_.activeState
                if v20_0_ == v20_1_ then
                    v20_1_ = v0_0_
                    v20_0_ = v20_1_.apply
                    v20_1_ = a1
                    v20_2_ = v19_5_
                    local v20_3_ = v19_6_
                    local v20_4_ = v19_7_
                    v20_0_(v20_1_, v20_2_, v20_3_, v20_4_)
                end
            end
            v19_12_ = function()
                local v21_0_ = pairs
                local v21_1_ = v19_10_
                local v21_0_, v21_1_, v21_2_ = v21_0_(v21_1_)
                for v21_3_, v21_4_ in v21_0_, v21_1_, v21_2_ do
                    local v21_6_ = v0_0_
                    local v21_5_ = v21_6_.merge
                    v21_6_ = v21_4_
                    local v21_7_ = v19_4_
                    local v21_8_ = function(a1)
                        local v22_1_ = a3
                        a1[3] = v22_1_
                        v22_1_ = v19_9_
                        local v22_3_ = a1
                        local v22_2_ = v22_3_.activeState
                        if v22_1_ == v22_2_ then
                            v22_2_ = v0_0_
                            v22_1_ = v22_2_.apply
                            v22_2_ = a1
                            v22_3_ = v19_5_
                            local v22_4_ = v19_6_
                            local v22_5_ = v19_7_
                            v22_1_(v22_2_, v22_3_, v22_4_, v22_5_)
                        end
                    end
                    v21_5_ = v21_5_(v21_6_, v21_7_, v21_8_)
                    if v21_5_ then
                        return
                    end
                end
                v21_0_ = table.create(5)
                v21_1_ = v19_5_
                v21_2_ = v19_6_
                local v21_3_ = v19_7_
                local v21_4_ = v19_9_
                local v21_5_ = a3
                v21_0_[1] = v21_1_
                v21_0_[2] = v21_2_
                v21_0_[3] = v21_3_
                v21_0_[4] = v21_4_
                v21_0_[5] = v21_5_
                v21_2_ = v19_10_
                v21_3_ = v21_0_
                local insert = table.insert
                insert(v21_2_, v21_3_)
                v21_1_ = v19_9_
                v21_3_ = a1
                v21_2_ = v21_3_.activeState
                if v21_1_ == v21_2_ then
                    v21_2_ = v0_0_
                    v21_1_ = v21_2_.apply
                    v21_2_ = a1
                    v21_3_ = v19_5_
                    v21_4_ = v19_6_
                    v21_5_ = v19_7_
                    v21_1_(v21_2_, v21_3_, v21_4_, v21_5_)
                end
            end
            local v19_13_ = v19_12_
        end
    end
    spawn(v18_4_)
    return a3
end
v0_0_.modify = v0_3_
v0_3_ = function(a1, a2)
    local v23_2_ = pairs
    local v23_3_ = a1.appearance
    local v23_2_, v23_3_, v23_4_ = v23_2_(v23_3_)
    for v23_5_, v23_6_ in v23_2_, v23_3_, v23_4_ do
        local v23_9_ = #v23_6_
        local v23_7_ = 1
        local v23_8_ = -1
        for v23_9_ = v23_9_, v23_7_, v23_8_ do
            local v23_10_ = v23_6_[v23_9_]
            local v23_11_ = v23_10_[3]
            if v23_11_ == a2 then
                local remove = table.remove
                local v23_13_ = v23_6_
                local v23_14_ = v23_9_
                remove(v23_13_, v23_14_)
            end
        end
    end
    v23_3_ = v0_0_
    v23_2_ = v23_3_.rebuild
    v23_3_ = a1
    v23_2_(v23_3_)
end
v0_0_.remove = v0_3_
v0_3_ = function(a1, a2, a3, a4)
    local v24_4_ = pairs
    local v24_5_ = a1.appearance
    local v24_4_, v24_5_, v24_6_ = v24_4_(v24_5_)
    for v24_7_, v24_8_ in v24_4_, v24_5_, v24_6_ do
        if a4 ~= v24_7_ then
            if not a4 then
                local v24_11_ = #v24_8_
                local v24_9_ = 1
                local v24_10_ = -1
                for v24_11_ = v24_11_, v24_9_, v24_10_ do
                    local v24_12_ = v24_8_[v24_11_]
                    local v24_13_ = v24_12_[-1]
                    local v24_14_ = v24_12_[0]
                    if v24_13_ == a2 then
                        if v24_14_ == a3 then
                            local remove = table.remove
                            local v24_16_ = v24_8_
                            local v24_17_ = v24_11_
                            remove(v24_16_, v24_17_)
                        end
                    end
                end
            end
        end
        local v24_11_ = #v24_8_
        local v24_9_ = 1
        local v24_10_ = -1
        for v24_11_ = v24_11_, v24_9_, v24_10_ do
            local v24_12_ = v24_8_[v24_11_]
            local v24_13_ = v24_12_[-1]
            local v24_14_ = v24_12_[0]
            if v24_13_ == a2 then
                if v24_14_ == a3 then
                    local remove = table.remove
                    local v24_16_ = v24_8_
                    local v24_17_ = v24_11_
                    remove(v24_16_, v24_17_)
                end
            end
        end
    end
    v24_5_ = v0_0_
    v24_4_ = v24_5_.rebuild
    v24_5_ = a1
    v24_4_(v24_5_)
end
v0_0_.removeWith = v0_3_
v0_3_ = function(a1)
    local v25_1_ = a1:getStateGroup()
    local v25_2_ = pairs
    local v25_3_ = v25_1_
    local v25_2_, v25_3_, v25_4_ = v25_2_(v25_3_)
    for v25_5_, v25_6_ in v25_2_, v25_3_, v25_4_ do
        local v25_8_ = v25_6_
        local v25_7_ = unpack
        local v25_7_, v25_8_, v25_9_ = v25_7_(v25_8_)
        local v25_11_ = v0_0_
        local v25_10_ = v25_11_.apply
        v25_11_ = a1
        local v25_12_ = v25_7_
        local v25_13_ = v25_8_
        local v25_14_ = v25_9_
    end
end
v0_0_.change = v0_3_
v0_3_ = function(a1, a2)
    local v26_2_ = a1.themesJanitor
    v26_2_:clean()
    local v26_5_ = a1.stateChanged
    local v26_7_ = function()
        local v27_1_ = v0_0_
        local v27_0_ = v27_1_.change
        v27_1_ = a1
        v27_0_(v27_1_)
    end
    v26_2_:add(v26_5_:Connect(v26_7_))
    local v26_4_ = a2
    local v26_3_ = typeof
    v26_3_ = v26_3_(v26_4_)
    if v26_3_ == "Instance" then
        v26_5_ = "ModuleScript"
        v26_3_ = a2:IsA(v26_5_)
        if v26_3_ then
            v26_3_ = require
            v26_4_ = a2
            v26_3_ = v26_3_(v26_4_)
            v26_1_ = v26_3_
        end
    end
    a1.appliedTheme = a2
    v26_4_ = v0_0_
    v26_3_ = v26_4_.rebuild
    v26_4_ = a1
    v26_3_(v26_4_)
end
v0_0_.set = v0_3_
v0_3_ = function(a1, a2)
    local v28_2_ = a1
    if v28_2_ then
        local lower = string.lower
        local v28_3_ = a1
        v28_2_ = lower(v28_3_)
    end
    local v28_3_ = a2
    if v28_3_ then
        local lower = string.lower
        local v28_4_ = a2
        v28_3_ = lower(v28_4_)
    end
    local v28_4_ = true
    if v28_2_ ~= v28_3_ then
        v28_4_ = not a1
        if not v28_4_ then
            v28_4_ = not a2
        end
    end
    return v28_4_
end
v0_0_.statesMatch = v0_3_
v0_3_ = function(a1)
    local v29_1_ = a1.appliedTheme
    local v29_2_ = table.create(3)
    local v29_3_ = "Deselected"
    local v29_4_ = "Selected"
    local v29_5_ = "Viewing"
    v29_2_[1] = v29_3_
    v29_2_[2] = v29_4_
    v29_2_[3] = v29_5_
    v29_3_ = function()
        local v30_0_ = pairs
        local v30_1_ = v29_2_
        local v30_0_, v30_1_, v30_2_ = v30_0_(v30_1_)
        for v30_3_, v30_4_ in v30_0_, v30_1_, v30_2_ do
            local v30_5_ = {}
            local v30_6_ = function(a1, a2)
                if not a1 then
                    return
                end
                local v31_2_ = pairs
                local v31_3_ = a1
                local v31_2_, v31_3_, v31_4_ = v31_2_(v31_3_)
                for v31_5_, v31_6_ in v31_2_, v31_3_, v31_4_ do
                    local v31_7_ = v31_6_[3]
                    local v31_8_ = v31_6_[2]
                    local v31_10_ = v0_0_
                    local v31_9_ = v31_10_.statesMatch
                    v31_10_ = a2
                    local v31_11_ = v31_8_
                    v31_9_ = v31_9_(v31_10_, v31_11_)
                    if v31_9_ then
                        v31_10_ = v31_6_[-1]
                        v31_11_ = "-"
                        local v31_12_ = v31_6_[0]
                        v31_9_ = v31_10_ .. v31_11_
                        v31_11_ = v0_1_
                        v31_10_ = v31_11_.copyTable
                        v31_11_ = v31_6_
                        v31_10_ = v31_10_(v31_11_)
                        v31_10_[3] = v31_7_
                        v31_11_ = v30_5_
                        v31_11_[v31_9_] = v31_10_
                    end
                end
            end
            if v30_4_ == "Selected" then
                local v30_7_ = v30_6_
                local v30_8_ = v0_2_
                local v30_9_ = "Deselected"
                v30_7_(v30_8_, v30_9_)
            end
            local v30_7_ = v30_6_
            local v30_8_ = v0_2_
            local v30_9_ = "Empty"
            v30_7_(v30_8_, v30_9_)
            v30_7_ = v30_6_
            v30_8_ = v0_2_
            v30_9_ = v30_4_
            v30_7_(v30_8_, v30_9_)
            v30_7_ = v29_1_
            v30_8_ = v0_2_
            if v30_7_ ~= v30_8_ then
                if v30_4_ == "Selected" then
                    v30_7_ = v30_6_
                    v30_8_ = v29_1_
                    v30_9_ = "Deselected"
                    v30_7_(v30_8_, v30_9_)
                end
                v30_7_ = v30_6_
                v30_8_ = v0_2_
                v30_9_ = "Empty"
                v30_7_(v30_8_, v30_9_)
                v30_7_ = v30_6_
                v30_8_ = v29_1_
                v30_9_ = v30_4_
                v30_7_(v30_8_, v30_9_)
            end
            v30_7_ = {}
            local v30_10_ = a1
            v30_9_ = v30_10_.appearance
            v30_8_ = v30_9_[v30_4_]
            if v30_8_ then
                v30_9_ = pairs
                v30_10_ = v30_8_
                local v30_9_, v30_10_, v30_11_ = v30_9_(v30_10_)
                for v30_12_, v30_13_ in v30_9_, v30_10_, v30_11_ do
                    local v30_14_ = v30_13_[3]
                    if v30_14_ ~= nil then
                        local v30_15_ = table.create(5)
                        local v30_16_ = v30_13_[-1]
                        local v30_17_ = v30_13_[0]
                        local v30_18_ = v30_13_[1]
                        local v30_19_ = v30_4_
                        local v30_20_ = v30_14_
                        v30_15_[1] = v30_16_
                        v30_15_[2] = v30_17_
                        v30_15_[3] = v30_18_
                        v30_15_[4] = v30_19_
                        v30_15_[5] = v30_20_
                        v30_17_ = v30_7_
                        v30_18_ = v30_15_
                        local insert = table.insert
                        insert(v30_17_, v30_18_)
                    end
                end
            end
            v30_9_ = v30_6_
            v30_10_ = v30_7_
            local v30_11_ = v30_4_
            v30_9_(v30_10_, v30_11_)
            v30_9_ = {}
            v30_10_ = pairs
            v30_11_ = v30_5_
            local v30_10_, v30_11_, v30_12_ = v30_10_(v30_11_)
            for v30_13_, v30_14_ in v30_10_, v30_11_, v30_12_ do
                local v30_16_ = v30_9_
                local v30_17_ = v30_14_
                local insert = table.insert
            end
            v30_11_ = a1
            v30_10_ = v30_11_.appearance
        end
        v30_1_ = v0_0_
        v30_0_ = v30_1_.change
        v30_1_ = a1
        v30_0_(v30_1_)
    end
    v29_4_ = v29_3_
    v29_4_()
end
v0_0_.rebuild = v0_3_
return v0_0_
