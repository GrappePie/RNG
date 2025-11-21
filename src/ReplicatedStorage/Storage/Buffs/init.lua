-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = "Packets"
local v0_1_ = v0_0_:WaitForChild(v0_3_)
v0_2_ = require
local v0_5_ = "Replication"
v0_2_ = v0_2_(v0_1_:WaitForChild(v0_5_))
v0_5_ = "Modules"
v0_3_ = v0_0_:WaitForChild(v0_5_)
local v0_4_ = require
local v0_7_ = "Serializer"
v0_4_ = v0_4_(v0_3_:WaitForChild(v0_7_))
v0_5_ = {}
local v0_6_ = {}
v0_7_ = {}
local v0_10_ = "BuffList"
local v0_8_ = v0_0_:WaitForChild(v0_10_)
local v0_9_ = require
v0_10_ = script
local v0_12_ = "types"
v0_9_ = v0_9_(v0_10_:WaitForChild(v0_12_))
v0_10_ = function(a1)
    local v1_1_ = a1.Scope
    local v1_3_ = script
    local v1_2_ = v1_3_.Name
    if v1_1_ == v1_2_ then
        v1_1_ = pairs
        v1_3_ = v0_4_
        v1_2_ = v1_3_.Decode
        v1_3_ = a1.ValuesToAdd
        v1_1_, v1_2_, v1_3_ = v1_1_(v1_2_(v1_3_))
        for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
            local v1_6_ = v0_6_
            v1_6_[v1_4_] = v1_5_
            local v1_7_ = v0_7_
            v1_6_ = v1_7_[v1_4_]
            if v1_6_ then
                v1_6_ = ipairs
                local v1_9_ = v0_7_
                v1_7_ = v1_9_[v1_4_]
                local v1_6_, v1_7_, v1_8_ = v1_6_(v1_7_)
                for v1_9_, v1_10_ in v1_6_, v1_7_, v1_8_ do
                    local defer = task.defer
                    local v1_12_ = v1_10_
                    local v1_13_ = v1_5_
                    defer(v1_12_, v1_13_)
                end
                local clear = table.clear
                v1_8_ = v0_7_
                v1_7_ = v1_8_[v1_4_]
                clear(v1_7_)
                v1_6_ = v0_7_
                v1_7_ = nil
                v1_6_[v1_4_] = v1_7_
            end
        end
    end
end
local v0_11_ = function(a1, a2)
    local v2_3_ = v0_6_
    local v2_2_ = v2_3_[a2]
    if v2_2_ then
        v2_3_ = v0_6_
        v2_2_ = v2_3_[a2]
        return v2_2_
    end
    v2_3_ = v0_7_
    v2_2_ = v2_3_[a2]
    if v2_2_ then
        local v2_4_ = v0_7_
        v2_3_ = v2_4_[a2]
        local running = coroutine.running
        local insert = table.insert
        insert(running())
        local yield = coroutine.yield
        return yield()
    end
    v2_2_ = v0_7_
    local v2_4_ = v0_7_
    v2_3_ = v2_4_[a2]
    if not v2_3_ then
        v2_3_ = {}
    end
    v2_2_[a2] = v2_3_
    v2_4_ = v0_2_
    v2_3_ = v2_4_.RequestData
    v2_2_ = v2_3_.send
    v2_3_ = {}
    v2_4_ = ""
    v2_3_.RayId = v2_4_
    v2_4_ = "Buffs"
    v2_3_.Scope = v2_4_
    v2_3_.Value = a2
    v2_2_(v2_3_)
    v2_4_ = v0_7_
    v2_3_ = v2_4_[a2]
    local running = coroutine.running
    local insert = table.insert
    insert(running())
    local yield = coroutine.yield
    return yield()
end
v0_5_.GetValue = v0_11_
v0_11_ = function(a1, a2)
    local v3_2_ = v0_8_
    local v3_4_ = a2
    v3_2_ = v3_2_:FindFirstChild(v3_4_)
    if v3_2_ then
        v3_2_ = v0_8_
        v3_4_ = a2
        v3_2_ = v3_2_:FindFirstChild(v3_4_)
        local v3_3_ = {}
        v3_4_ = v3_2_.Value
        v3_3_.Name = v3_4_
        local v3_6_ = "Color"
        v3_4_ = v3_2_:GetAttribute(v3_6_)
        if not v3_4_ then
            local new = Color3.new
            local v3_5_ = 1
            v3_6_ = 1
            local v3_7_ = 1
            v3_4_ = new(v3_5_, v3_6_, v3_7_)
        end
        v3_3_.Color = v3_4_
        return v3_3_
    end
    v3_2_ = {}
    v3_2_.Name = a2
    local new = Color3.new
    v3_4_ = 1
    local v3_5_ = 1
    local v3_6_ = 1
    local v3_3_ = new(v3_4_, v3_5_, v3_6_)
    v3_2_.Color = v3_3_
    return v3_2_
end
v0_5_.GetValueData = v0_11_
v0_12_ = v0_2_.UpdateListValue
v0_11_ = v0_12_.listen
v0_12_ = v0_10_
v0_11_(v0_12_)
return v0_5_
