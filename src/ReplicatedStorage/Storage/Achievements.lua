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
local v0_8_ = "Serializer"
v0_5_ = v0_5_(v0_4_:WaitForChild(v0_8_))
v0_6_ = require
local v0_9_ = "GoodSignal"
v0_6_ = v0_6_(v0_4_:WaitForChild(v0_9_))
local v0_7_ = {}
v0_8_ = v0_6_.new
v0_8_ = v0_8_()
v0_7_.ListUpdated = v0_8_
v0_8_ = v0_6_.new
v0_8_ = v0_8_()
v0_7_.ListCreated = v0_8_
v0_8_ = {}
v0_9_ = nil
local v0_10_ = nil
local v0_11_ = function(a1)
    local v1_1_ = a1.Scope
    local v1_3_ = script
    local v1_2_ = v1_3_.Name
    if v1_1_ == v1_2_ then
        v1_1_ = pairs
        v1_3_ = v0_5_
        v1_2_ = v1_3_.Decode
        v1_3_ = a1.ValuesToAdd
        v1_1_, v1_2_, v1_3_ = v1_1_(v1_2_(v1_3_))
        for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
            local v1_7_ = v1_4_
            local v1_6_ = tonumber
            v1_6_ = v1_6_(v1_7_)
            v1_7_ = v0_8_
            v1_7_[v1_6_] = v1_5_
            v1_7_ = v0_10_
            if v1_7_ then
                v1_7_ = v0_10_
                v1_7_[v1_6_] = v1_5_
                local v1_8_ = v0_7_
                v1_7_ = v1_8_.ListUpdated
                local v1_9_ = v1_6_
                v1_7_:Fire(v1_9_)
            end
        end
    end
end
local v0_12_ = function(a1)
    local v2_1_ = v0_9_
    if v2_1_ then
        local v2_2_ = v0_9_
        v2_1_ = v2_2_[-1]
        v2_2_ = a1.RayId
        if v2_1_ == v2_2_ then
            v2_1_ = a1.Scope
            local v2_3_ = script
            v2_2_ = v2_3_.Name
            if v2_1_ == v2_2_ then
                v2_2_ = v0_9_
                v2_1_ = v2_2_[0]
                local clear = table.clear
                v2_3_ = v0_9_
                clear(v2_3_)
                local defer = task.defer
                v2_3_ = v2_1_
                local v2_5_ = v0_5_
                local v2_4_ = v2_5_.Decode
                v2_5_ = a1.Value
                defer(v2_4_(v2_5_))
            end
        end
    end
end
local v0_13_ = function(a1, a2)
    local v3_3_ = v0_8_
    local v3_2_ = v3_3_[a2]
    if v3_2_ then
        v3_3_ = v0_8_
        v3_2_ = v3_3_[a2]
        return v3_2_
    end
    local running = coroutine.running
    v3_2_ = running()
    local v3_4_ = v0_7_
    v3_3_ = v3_4_.ListUpdated
    local v3_5_ = function(a1)
        local v4_1_ = a2
        if a1 == v4_1_ then
            local defer = task.defer
            local v4_2_ = v3_2_
            defer(v4_2_)
        end
    end
    v3_3_ = v3_3_:Connect(v3_5_)
    local yield = coroutine.yield
    yield()
    v3_3_:Disconnect()
    v3_5_ = v0_8_
    v3_4_ = v3_5_[a2]
    return v3_4_
end
v0_7_.GetValue = v0_13_
v0_13_ = function(a1)
    local v5_1_ = v0_10_
    if not v5_1_ then
        v5_1_ = v0_9_
        if not v5_1_ then
            v5_1_ = v0_0_
            local v5_3_ = false
            v5_1_ = v5_1_:GenerateGUID(v5_3_)
            local v5_2_ = table.create(2)
            v5_3_ = v5_1_
            local running = coroutine.running
            -- WARNING: SETLIST_C0, output may be wrong!
            v5_2_ = {v5_3_, running()}
            v0_9_ = v5_1_
            local v5_4_ = v0_3_
            v5_3_ = v5_4_.RequestData
            v5_2_ = v5_3_.send
            v5_3_ = {}
            v5_3_.RayId = v5_1_
            local v5_5_ = script
            v5_4_ = v5_5_.Name
            v5_3_.Scope = v5_4_
            v5_4_ = "List"
            v5_3_.Value = v5_4_
            v5_2_(v5_3_)
            local yield = coroutine.yield
            v5_2_ = yield()
            v0_10_ = a1
            v5_2_ = nil
            v0_9_ = v5_1_
            v5_2_ = ipairs
            v5_3_ = v0_10_
            v5_2_, v5_3_, v5_4_ = v5_2_(v5_3_)
            for v5_5_, v5_6_ in v5_2_, v5_3_, v5_4_ do
                local v5_7_ = v0_8_
                v5_7_[v5_5_] = v5_6_
                local v5_8_ = v0_7_
                v5_7_ = v5_8_.ListUpdated
                local v5_9_ = v5_5_
                v5_7_:Fire(v5_9_)
            end
        end
    end
    v5_1_ = v0_10_
    if not v5_1_ then
        local v5_2_ = v0_7_
        v5_1_ = v5_2_.ListCreated
        v5_1_ = v5_1_:Wait()
    end
    return v5_1_
end
v0_7_.GetList = v0_13_
local v0_14_ = v0_3_.UpdateListValue
v0_13_ = v0_14_.listen
v0_14_ = v0_11_
v0_13_(v0_14_)
v0_14_ = v0_3_.RequestData
v0_13_ = v0_14_.listen
v0_14_ = v0_12_
v0_13_(v0_14_)
return v0_7_
