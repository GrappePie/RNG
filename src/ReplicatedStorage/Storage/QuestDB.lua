-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = {}
v0_2_ = {}
local v0_3_ = {}
local v0_6_ = "Modules"
local v0_4_ = v0_0_:WaitForChild(v0_6_)
local v0_5_ = require
local v0_8_ = "Serializer"
v0_5_ = v0_5_(v0_4_:WaitForChild(v0_8_))
v0_8_ = "Storage"
v0_6_ = v0_0_:WaitForChild(v0_8_)
local v0_9_ = "Packets"
local v0_7_ = v0_0_:WaitForChild(v0_9_)
v0_8_ = require
local v0_11_ = "Replication"
v0_8_ = v0_8_(v0_7_:WaitForChild(v0_11_))
v0_9_ = function(a1)
    local v1_1_ = a1.Scope
    local v1_3_ = script
    local v1_2_ = v1_3_.Name
    if v1_1_ == v1_2_ then
        local v1_5_ = v0_5_
        local v1_4_ = v1_5_.Decode
        v1_5_ = a1.ValuesToAdd
        v1_4_ = v1_4_(v1_5_)
        v1_1_ = v1_4_
        v1_2_ = nil
        v1_3_ = nil
        local v1_6_ = v0_2_
        v1_6_[v1_4_] = v1_5_
        local v1_7_ = v0_3_
        v1_6_ = v1_7_[v1_4_]
        if v1_6_ then
            local v1_9_ = v0_3_
            v1_6_ = v1_9_[v1_4_]
            v1_7_ = nil
            local v1_8_ = nil
            local defer = task.defer
            local v1_12_ = nil
            local v1_13_ = v1_5_
            defer(v1_12_, v1_13_)
            local clear = table.clear
            v1_8_ = v0_3_
            v1_7_ = v1_8_[v1_4_]
            clear(v1_7_)
            v1_6_ = v0_3_
            v1_7_ = nil
            v1_6_[v1_4_] = v1_7_
        end
    end
end
local v0_10_ = function(a1, a2)
    local v2_3_ = v0_2_
    local v2_2_ = v2_3_[a2]
    if v2_2_ then
        v2_3_ = v0_2_
        v2_2_ = v2_3_[a2]
        return v2_2_
    end
    v2_2_ = v0_3_
    local v2_4_ = v0_3_
    v2_3_ = v2_4_[a2]
    if not v2_3_ then
        v2_3_ = {}
    end
    v2_2_[a2] = v2_3_
    v2_4_ = v0_3_
    v2_3_ = v2_4_[a2]
    local running = coroutine.running
    local insert = table.insert
    insert(running())
    v2_4_ = v0_8_
    v2_3_ = v2_4_.RequestData
    v2_2_ = v2_3_.send
    v2_3_ = {}
    v2_4_ = ""
    v2_3_.RayId = v2_4_
    v2_4_ = "QuestDB"
    v2_3_.Scope = v2_4_
    v2_3_.Value = a2
    v2_2_(v2_3_)
    local yield = coroutine.yield
    return yield()
end
v0_1_.GetValue = v0_10_
v0_11_ = v0_8_.UpdateListValue
v0_10_ = v0_11_.listen
v0_11_ = v0_9_
v0_10_(v0_11_)
return v0_1_
