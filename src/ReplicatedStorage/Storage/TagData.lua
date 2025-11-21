-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "HttpService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "ReplicatedStorage"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = "Packets"
v0_2_ = v0_1_:WaitForChild(v0_4_)
v0_3_ = require
local v0_6_ = "Replication"
v0_3_ = v0_3_(v0_2_:WaitForChild(v0_6_))
v0_6_ = "Modules"
v0_4_ = v0_1_:WaitForChild(v0_6_)
local v0_5_ = require
local v0_8_ = "GoodSignal"
v0_5_ = v0_5_(v0_4_:WaitForChild(v0_8_))
v0_6_ = require
local v0_9_ = "Serializer"
v0_6_ = v0_6_(v0_4_:WaitForChild(v0_9_))
local v0_7_ = {}
v0_8_ = v0_5_.new
v0_8_ = v0_8_()
v0_7_.ListCreated = v0_8_
v0_8_ = v0_5_.new
v0_8_ = v0_8_()
v0_7_.ListUpdated = v0_8_
v0_8_ = {}
v0_9_ = {}
local v0_10_ = nil
local v0_11_ = nil
local v0_12_ = function(a1)
    local v1_1_ = a1.Scope
    local v1_3_ = script
    local v1_2_ = v1_3_.Name
    if v1_1_ == v1_2_ then
        v1_1_ = pairs
        v1_3_ = v0_6_
        v1_2_ = v1_3_.Decode
        v1_3_ = a1.ValuesToAdd
        v1_1_, v1_2_, v1_3_ = v1_1_(v1_2_(v1_3_))
        for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
            local v1_6_ = v0_8_
            local v1_7_ = v1_5_.UID
            v1_6_[v1_7_] = v1_5_
            v1_7_ = v0_9_
            local v1_8_ = v1_5_.UID
            v1_6_ = v1_7_[v1_8_]
            if v1_6_ then
                v1_6_ = ipairs
                local v1_9_ = v0_9_
                local v1_10_ = v1_5_.UID
                v1_7_ = v1_9_[v1_10_]
                v1_6_, v1_7_, v1_8_ = v1_6_(v1_7_)
                for v1_9_, v1_10_ in v1_6_, v1_7_, v1_8_ do
                    local defer = task.defer
                    local v1_12_ = v1_10_
                    local v1_13_ = v1_5_
                    defer(v1_12_, v1_13_)
                end
                local clear = table.clear
                v1_8_ = v0_9_
                v1_9_ = v1_5_.UID
                v1_7_ = v1_8_[v1_9_]
                clear(v1_7_)
                v1_6_ = v0_9_
                v1_7_ = v1_5_.UID
                v1_8_ = nil
                v1_6_[v1_7_] = v1_8_
            end
            v1_6_ = v0_11_
            if v1_6_ then
                v1_6_ = v0_11_
                v1_7_ = v1_5_.Index
                v1_8_ = v1_5_.UID
                v1_6_[v1_7_] = v1_8_
                v1_7_ = v0_7_
                v1_6_ = v1_7_.ListUpdated
                v1_8_ = v1_5_.Index
                v1_6_:Fire(v1_8_)
            end
        end
    end
end
local v0_13_ = function(a1)
    local v2_1_ = a1.RayId
    local v2_2_ = v0_10_
    if v2_1_ == v2_2_ then
        v2_2_ = v0_6_
        v2_1_ = v2_2_.Decode
        v2_2_ = a1.Value
        v2_1_ = v2_1_(v2_2_)
        v0_11_ = v2_1_
        v2_2_ = v0_7_
        v2_1_ = v2_2_.ListCreated
        local v2_3_ = v0_11_
        v2_1_:Fire(v2_3_)
    end
end
local v0_14_ = function(a1, a2)
    local v3_3_ = v0_8_
    local v3_2_ = v3_3_[a2]
    if v3_2_ then
        v3_3_ = v0_8_
        v3_2_ = v3_3_[a2]
        return v3_2_
    end
    v3_3_ = v0_9_
    v3_2_ = v3_3_[a2]
    if v3_2_ then
        local v3_4_ = v0_9_
        v3_3_ = v3_4_[a2]
        local running = coroutine.running
        local insert = table.insert
        insert(running())
        local yield = coroutine.yield
        return yield()
    end
    v3_2_ = v0_9_
    v3_3_ = {}
    v3_2_[a2] = v3_3_
    local v3_4_ = v0_9_
    v3_3_ = v3_4_[a2]
    local running = coroutine.running
    local insert = table.insert
    insert(running())
    v3_4_ = v0_3_
    v3_3_ = v3_4_.RequestData
    v3_2_ = v3_3_.send
    v3_3_ = {}
    v3_4_ = ""
    v3_3_.RayId = v3_4_
    local v3_5_ = script
    v3_4_ = v3_5_.Name
    v3_3_.Scope = v3_4_
    v3_3_.Value = a2
    v3_2_(v3_3_)
    local yield = coroutine.yield
    return yield()
end
v0_7_.GetValue = v0_14_
v0_14_ = function(a1)
    local v4_1_ = v0_11_
    if not v4_1_ then
        v4_1_ = v0_10_
        if not v4_1_ then
            v4_1_ = v0_0_
            local v4_3_ = false
            v4_1_ = v4_1_:GenerateGUID(v4_3_)
            v0_10_ = v4_1_
            v4_3_ = v0_3_
            local v4_2_ = v4_3_.RequestData
            v4_1_ = v4_2_.send
            v4_2_ = {}
            v4_3_ = v0_10_
            v4_2_.RayId = v4_3_
            local v4_4_ = script
            v4_3_ = v4_4_.Name
            v4_2_.Scope = v4_3_
            v4_3_ = "List"
            v4_2_.Value = v4_3_
            v4_1_(v4_2_)
        end
    end
    v4_1_ = v0_11_
    if not v4_1_ then
        local v4_2_ = v0_7_
        v4_1_ = v4_2_.ListCreated
        v4_1_ = v4_1_:Wait()
    end
    return v4_1_
end
v0_7_.GetList = v0_14_
v0_14_ = function(a1, a2)
    local find = table.find
    local v5_3_ = v0_11_
    local v5_4_ = a2
    return find(v5_3_, v5_4_)
end
v0_7_.PlayerHas = v0_14_
local v0_15_ = v0_3_.RequestData
v0_14_ = v0_15_.listen
v0_15_ = v0_13_
v0_14_(v0_15_)
v0_15_ = v0_3_.UpdateListValue
v0_14_ = v0_15_.listen
v0_15_ = v0_12_
v0_14_(v0_15_)
return v0_7_
