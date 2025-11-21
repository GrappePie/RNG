-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local defer = task.defer
local v0_1_ = function()
    local v1_0_ = function(a1)
        local v2_1_ = a1.Parent
        if v2_1_ then
            v2_1_ = a1.Parent
            local v2_3_ = game
            local v2_5_ = "Players"
            v2_3_ = v2_3_:GetService(v2_5_)
            local v2_2_ = v2_3_.LocalPlayer
            if v2_1_ ~= v2_2_ then
                v2_1_ = a1.Name
                if v2_1_ == "Assets" then
                    v2_3_ = "Folder"
                    v2_1_ = a1:IsA(v2_3_)
                    if v2_1_ then
                        v2_1_ = a1.Parent
                        v2_3_ = "Player"
                        v2_1_ = v2_1_:IsA(v2_3_)
                        if v2_1_ then
                            a1:Destroy()
                        end
                    end
                end
            end
        end
    end
    local v1_1_ = function(...)
        local v3_0_ = pcall
        local v3_1_ = v1_0_
        v3_0_(...)
    end
    local v1_2_ = ipairs
    local v1_3_ = game
    local v1_5_ = "Players"
    v1_3_ = v1_3_:GetService(v1_5_)
    local v1_2_, v1_3_, v1_4_ = v1_2_(v1_3_:GetDescendants())
    for v1_5_, v1_6_ in v1_2_, v1_3_, v1_4_ do
        local v1_7_ = pcall
        local v1_8_ = v1_0_
        local v1_9_ = v1_6_
        v1_7_(v1_8_, v1_9_)
    end
    v1_3_ = game
    v1_5_ = "Players"
    v1_3_ = v1_3_:GetService(v1_5_)
    v1_2_ = v1_3_.DescendantAdded
    v1_4_ = v1_1_
    v1_2_:Connect(v1_4_)
end
defer(v0_1_)
local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
v0_1_ = game
local v0_3_ = "HttpService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "ReplicatedStorage"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = v0_0_.LocalPlayer
v0_4_ = workspace
local v0_6_ = "Terrain"
v0_4_ = v0_4_:WaitForChild(v0_6_)
v0_6_ = "Assets"
v0_4_ = v0_4_:WaitForChild(v0_6_)
local v0_7_ = "Packets"
local v0_5_ = v0_2_:WaitForChild(v0_7_)
v0_6_ = require
local v0_9_ = "Replication"
v0_6_ = v0_6_(v0_5_:WaitForChild(v0_9_))
v0_7_ = {}
local v0_8_ = {}
v0_9_ = {}
local v0_10_ = {}
local v0_11_ = function(a1)
    local v4_1_ = v0_10_
    local v4_2_ = nil
    local v4_3_ = nil
    if nil == a1 then
        return nil
    end
end
local v0_12_ = function(a1, a2)
    local v5_3_ = v0_8_
    local v5_2_ = v5_3_[a2]
    if v5_2_ then
        v5_3_ = v0_8_
        v5_2_ = v5_3_[a2]
        return v5_2_
    end
    v5_3_ = v0_10_
    v5_2_ = v5_3_[a2]
    v5_3_ = v5_2_
    if not v5_3_ then
        v5_3_ = v0_1_
        local v5_5_ = false
        v5_3_ = v5_3_:GenerateGUID(v5_5_)
    end
    local v5_4_ = v0_10_
    v5_4_[a2] = v5_3_
    v5_4_ = v0_9_
    local v5_6_ = v0_9_
    local v5_5_ = v5_6_[v5_3_]
    if not v5_5_ then
        v5_5_ = {}
    end
    v5_4_[v5_3_] = v5_5_
    v5_6_ = v0_9_
    v5_5_ = v5_6_[v5_3_]
    local running = coroutine.running
    local insert = table.insert
    insert(running())
    if not v5_2_ then
        v5_6_ = v0_6_
        v5_5_ = v5_6_.RequestData
        v5_4_ = v5_5_.send
        v5_5_ = {}
        v5_5_.RayId = v5_3_
        v5_6_ = "PreviewModels"
        v5_5_.Scope = v5_6_
        v5_5_.Value = a2
        v5_4_(v5_5_)
    end
    local yield = coroutine.yield
    return yield()
end
v0_7_.GetValue = v0_12_
local v0_13_ = v0_6_.RequestData
v0_12_ = v0_13_.listen
v0_13_ = function(a1)
    local v6_1_ = a1.Scope
    if v6_1_ == "PreviewModels" then
        local v6_2_ = a1.RayId
        local v6_3_ = v0_10_
        local v6_4_ = nil
        local v6_5_ = nil
        if nil == v6_2_ then
            v6_1_ = nil
        else
            v6_1_ = nil
        end
        if v6_1_ then
            v6_1_ = v0_4_
            v6_3_ = a1.Value
            v6_1_ = v6_1_:WaitForChild(v6_3_)
            if v6_1_ then
                v6_3_ = a1.RayId
                v6_4_ = v0_10_
                v6_5_ = nil
                local v6_6_ = nil
                if nil == v6_3_ then
                    v6_2_ = nil
                else
                    v6_2_ = nil
                end
                if v6_2_ then
                    v6_3_ = v0_8_
                    v6_4_ = v6_1_:Clone()
                    v6_3_[v6_2_] = v6_4_
                    v6_3_ = v0_10_
                    v6_4_ = nil
                    v6_3_[v6_2_] = v6_4_
                    v6_5_ = v0_8_
                    v6_4_ = v6_5_[v6_2_]
                    v6_4_ = v6_4_:GetChildren()
                    v6_3_ = v6_4_[-1]
                    v6_5_ = v0_8_
                    v6_4_ = v6_5_[v6_2_]
                    v6_5_ = v6_3_:GetPivot()
                    v6_4_.WorldPivot = v6_5_
                    local v6_7_ = v0_9_
                    local v6_8_ = a1.RayId
                    v6_4_ = v6_7_[v6_8_]
                    v6_5_ = nil
                    v6_6_ = nil
                    local defer = task.defer
                    local v6_10_ = v6_8_
                    local v6_12_ = v0_8_
                    local v6_11_ = v6_12_[v6_2_]
                    defer(v6_10_, v6_11_)
                end
                v6_1_:Destroy()
            end
        end
    end
end
v0_12_(v0_13_)
return v0_7_
