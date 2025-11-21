-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = v0_0_.Heartbeat
v0_2_ = function()
    local v1_0_ = v0_0_
    v1_0_ = v1_0_:IsRunning()
    if v1_0_ then
        v1_0_ = require
        local v1_2_ = game
        local v1_4_ = "ReplicatedStorage"
        v1_2_ = v1_2_:GetService(v1_4_)
        local v1_1_ = v1_2_.Framework
        v1_0_ = v1_0_(v1_1_)
        v1_2_ = v1_0_.modules
        v1_1_ = v1_2_.Promise
        return v1_1_
    end
end
local v0_3_ = newproxy
local v0_4_ = true
v0_3_ = v0_3_(v0_4_)
local v0_5_ = v0_3_
v0_4_ = getmetatable
v0_4_ = v0_4_(v0_5_)
v0_5_ = function()
    local v2_0_ = "IndicesReference"
    return v2_0_
end
v0_4_.__tostring = v0_5_
v0_4_ = newproxy
v0_5_ = true
v0_4_ = v0_4_(v0_5_)
local v0_6_ = v0_4_
v0_5_ = getmetatable
v0_5_ = v0_5_(v0_6_)
v0_6_ = function()
    local v3_0_ = "LinkToInstanceIndex"
    return v3_0_
end
v0_5_.__tostring = v0_6_
v0_5_ = {}
v0_6_ = true
v0_5_.IGNORE_MEMORY_DEBUG = v0_6_
v0_6_ = "Janitor"
v0_5_.ClassName = v0_6_
v0_6_ = {}
local v0_7_ = true
v0_6_.CurrentlyCleaning = v0_7_
v0_7_ = nil
v0_6_[v0_3_] = v0_7_
v0_5_.__index = v0_6_
v0_6_ = {}
v0_7_ = true
v0_6_.function = v0_7_
v0_7_ = "cancel"
v0_6_.Promise = v0_7_
v0_7_ = "Disconnect"
v0_6_.RBXScriptConnection = v0_7_
v0_7_ = function()
    local v4_1_ = {}
    local v4_2_ = false
    v4_1_.CurrentlyCleaning = v4_2_
    v4_2_ = v0_3_
    local v4_3_ = nil
    v4_1_[v4_2_] = v4_3_
    v4_2_ = v0_5_
    local v4_0_ = setmetatable
    v4_0_ = v4_0_(v4_1_, v4_2_)
    return v4_0_
end
v0_5_.new = v0_7_
v0_7_ = function(a1)
    local v5_1_ = false
    local v5_3_ = a1
    local v5_2_ = type
    v5_2_ = v5_2_(v5_3_)
    if v5_2_ == "table" then
        v5_3_ = a1
        v5_2_ = getmetatable
        v5_2_ = v5_2_(v5_3_)
        v5_3_ = v0_5_
        if v5_2_ ~= v5_3_ then
            v5_1_ = false
        end
        v5_1_ = true
    end
    return v5_1_
end
v0_5_.Is = v0_7_
v0_7_ = v0_5_.Is
v0_5_.is = v0_7_
v0_7_ = function(a1, a2, a3, a4)
    if a4 then
        local v6_6_ = a4
        a1:Remove(v6_6_)
        local v6_5_ = v0_3_
        local v6_4_ = a1[v6_5_]
        if not v6_4_ then
            v6_4_ = {}
            v6_5_ = v0_3_
            a1[v6_5_] = v6_4_
        end
        v6_4_[a4] = a2
    end
    local v6_5_ = a2
    local v6_4_ = typeof
    v6_4_ = v6_4_(v6_5_)
    if v6_4_ == "table" then
        local match = string.match
        local v6_7_ = a2
        local v6_6_ = tostring
        v6_6_ = v6_6_(v6_7_)
        v6_7_ = "Promise"
        v6_5_ = match(v6_6_, v6_7_)
        if v6_5_ then
            v6_4_ = "Promise"
        end
    end
    v6_5_ = a3
    if not v6_5_ then
        local v6_6_ = v0_6_
        v6_5_ = v6_6_[v6_4_]
        if not v6_5_ then
            v6_5_ = "Destroy"
        end
    end
    v6_2_ = v6_5_
    local v6_6_ = a2
    v6_5_ = type
    v6_5_ = v6_5_(v6_6_)
    if v6_5_ ~= "function" then
        v6_5_ = a2[v6_2_]
        if not v6_5_ then
            v6_5_ = warn
            local format = string.format
            local v6_7_ = "Object %s doesn't have method %s, are you sure you want to add it? Traceback: %s"
            local v6_9_ = a2
            local v6_8_ = tostring
            v6_8_ = v6_8_(v6_9_)
            local v6_10_ = v6_2_
            v6_9_ = tostring
            v6_9_ = v6_9_(v6_10_)
            local traceback = debug.traceback
            local v6_11_ = nil
            local v6_12_ = 2
            v6_5_(format(traceback(v6_11_, v6_12_)))
        end
    end
    local traceback = debug.traceback
    v6_6_ = ""
    v6_5_ = traceback(v6_6_)
    v6_6_ = table.create(2)
    local v6_7_ = v6_2_
    local v6_8_ = v6_5_
    v6_6_[1] = v6_7_
    v6_6_[2] = v6_8_
    a1[a2] = v6_6_
    return a2
end
local v0_8_ = v0_5_.__index
v0_8_.Add = v0_7_
v0_7_ = v0_5_.__index
local v0_9_ = v0_5_.__index
v0_8_ = v0_9_.Add
v0_7_.Give = v0_8_
v0_7_ = function(a1, a2)
    local v7_3_ = v0_0_
    v7_3_ = v7_3_:IsRunning()
    if v7_3_ then
        v7_3_ = require
        local v7_5_ = game
        local v7_7_ = "ReplicatedStorage"
        v7_5_ = v7_5_:GetService(v7_7_)
        local v7_4_ = v7_5_.Framework
        v7_3_ = v7_3_(v7_4_)
        v7_4_ = v7_3_.modules
        local v7_2_ = v7_4_.Promise
    else
        local v7_2_ = nil
    end
    if nil then
        v7_3_ = nil.is
        local v7_4_ = a2
        v7_3_ = v7_3_(v7_4_)
        if not v7_3_ then
            v7_3_ = error
            local format = string.format
            local v7_5_ = "Invalid argument #1 to 'Janitor:AddPromise' (Promise expected, got %s (%s))"
            local v7_7_ = a2
            local v7_6_ = typeof
            v7_6_ = v7_6_(v7_7_)
            local v7_8_ = a2
            v7_7_ = tostring
            v7_7_ = v7_7_(v7_8_)
            v7_3_(format(v7_5_, v7_6_, v7_7_))
        end
        v7_3_ = a2:getStatus()
        local v7_5_ = nil.Status
        v7_4_ = v7_5_.Started
        if v7_3_ == v7_4_ then
            v7_3_ = newproxy
            v7_4_ = false
            v7_3_ = v7_3_(v7_4_)
            local v7_6_ = nil.new
            local v7_7_ = function(a1, a2, a3)
                local v8_3_ = a3
                local v8_4_ = function()
                    local v9_0_ = a2
                    v9_0_:cancel()
                end
                v8_3_ = v8_3_(v8_4_)
                if v8_3_ then
                    return
                end
                v8_3_ = a1
                v8_4_ = a2
                v8_3_(v8_4_)
            end
            v7_6_ = v7_6_(v7_7_)
            v7_7_ = "cancel"
            local v7_8_ = v7_3_
            v7_4_ = a1:Add(v7_6_, v7_7_, v7_8_)
            v7_7_ = a1.Remove
            v7_8_ = a1
            local v7_9_ = v7_3_
            v7_4_:finallyCall(v7_7_, v7_8_, v7_9_)
            return v7_4_
        end
        return a2
    end
    return a2
end
v0_8_ = v0_5_.__index
v0_8_.AddPromise = v0_7_
v0_7_ = v0_5_.__index
v0_9_ = v0_5_.__index
v0_8_ = v0_9_.AddPromise
v0_7_.GivePromise = v0_8_
v0_7_ = function(a1, a2)
    local v10_2_ = newproxy
    local v10_3_ = false
    v10_2_ = v10_2_(v10_3_)
    local v10_4_ = v0_0_
    v10_4_ = v10_4_:IsRunning()
    if v10_4_ then
        v10_4_ = require
        local v10_6_ = game
        local v10_8_ = "ReplicatedStorage"
        v10_6_ = v10_6_:GetService(v10_8_)
        local v10_5_ = v10_6_.Framework
        v10_4_ = v10_4_(v10_5_)
        v10_5_ = v10_4_.modules
        v10_3_ = v10_5_.Promise
    else
        v10_3_ = nil
    end
    if v10_3_ then
        v10_4_ = v10_3_.is
        local v10_5_ = a2
        v10_4_ = v10_4_(v10_5_)
        if v10_4_ then
            v10_4_ = a2:getStatus()
            local v10_6_ = v10_3_.Status
            v10_5_ = v10_6_.Started
            if v10_4_ == v10_5_ then
                v10_6_ = v10_3_.resolve
                local v10_7_ = a2
                v10_6_ = v10_6_(v10_7_)
                v10_7_ = "cancel"
                local v10_8_ = v10_2_
                v10_4_ = a1:Add(v10_6_, v10_7_, v10_8_)
                v10_7_ = a1.Remove
                v10_8_ = a1
                local v10_9_ = v10_2_
                v10_4_:finallyCall(v10_7_, v10_8_, v10_9_)
                v10_5_ = v10_4_
                v10_6_ = v10_2_
                return v10_5_, v10_6_
            end
            return a2
        end
    end
    local v10_6_ = a2
    local v10_7_ = false
    local v10_8_ = v10_2_
    v10_4_ = a1:Add(v10_6_, v10_7_, v10_8_)
    local v10_5_ = v10_2_
    return v10_4_, v10_5_
end
v0_8_ = v0_5_.__index
v0_8_.AddObject = v0_7_
v0_7_ = v0_5_.__index
v0_9_ = v0_5_.__index
v0_8_ = v0_9_.AddObject
v0_7_.GiveObject = v0_8_
v0_7_ = function(a1, a2)
    local v11_3_ = v0_3_
    local v11_2_ = a1[v11_3_]
    if v11_2_ then
        v11_3_ = v11_2_[a2]
        if v11_3_ then
            local v11_4_ = a1[v11_3_]
            local v11_5_ = v11_4_
            if v11_5_ then
                v11_5_ = v11_4_[-1]
            end
            if v11_5_ then
                if v11_5_ == true then
                    local v11_6_ = v11_3_
                    v11_6_()
                else
                    local v11_6_ = v11_3_[v11_5_]
                    if v11_6_ then
                        local v11_7_ = v11_6_
                        local v11_8_ = v11_3_
                        v11_7_(v11_8_)
                    end
                end
                local v11_6_ = nil
                a1[v11_3_] = v11_6_
            end
            local v11_6_ = nil
            v11_2_[a2] = v11_6_
        end
    end
    return a1
end
v0_8_ = v0_5_.__index
v0_8_.Remove = v0_7_
v0_7_ = function(a1, a2)
    local v12_3_ = v0_3_
    local v12_2_ = a1[v12_3_]
    if v12_2_ then
        v12_3_ = v12_2_[a2]
        return v12_3_
    end
end
v0_8_ = v0_5_.__index
v0_8_.Get = v0_7_
v0_7_ = function(a1)
    local v13_1_ = a1.CurrentlyCleaning
    if not v13_1_ then
        v13_1_ = nil
        a1.CurrentlyCleaning = v13_1_
        v13_1_ = next
        local v13_2_ = a1
        local v13_3_ = nil
        for v13_4_, v13_5_ in v13_1_, v13_2_, v13_3_ do
            local v13_6_ = v0_3_
            if v13_4_ ~= v13_6_ then
                local v13_7_ = v13_4_
                v13_6_ = type
                v13_6_ = v13_6_(v13_7_)
                if v13_6_ ~= "string" then
                    if v13_6_ == "number" then
                        v13_7_ = nil
                        a1[v13_4_] = v13_7_
                    else
                        v13_7_ = v13_5_[-1]
                        local v13_8_ = v13_5_[0]
                        local v13_9_ = function(a1)
                            local traceback = debug.traceback
                            local v14_2_ = ""
                            local v14_3_ = 3
                            local v14_1_ = traceback(v14_2_, v14_3_)
                            v14_2_ = v13_8_
                            v14_3_ = warn
                            local v14_5_ = "-------- Janitor Error --------"
                            local v14_6_ = "\n"
                            local v14_13_ = a1
                            local v14_12_ = tostring
                            v14_12_ = v14_12_(v14_13_)
                            local v14_7_ = v14_12_
                            local v14_8_ = "\n"
                            local v14_9_ = v14_1_
                            local v14_10_ = ""
                            local v14_11_ = v14_2_
                            local v14_4_ = v14_5_ .. v14_6_ .. v14_7_ .. v14_8_ .. v14_9_ .. v14_10_
                            v14_3_(v14_4_)
                        end
                        if v13_7_ == true then
                            local v13_10_ = pcall
                            local v13_11_ = v13_4_
                            v13_10_, v13_11_ = v13_10_(v13_11_)
                            if not v13_10_ then
                                local traceback = debug.traceback
                                local v13_13_ = ""
                                local v13_14_ = 3
                                local v13_12_ = traceback(v13_13_, v13_14_)
                                v13_13_ = warn
                                local v13_15_ = "-------- Janitor Error --------"
                                local v13_16_ = "\n"
                                local v13_23_ = v13_11_
                                local v13_22_ = tostring
                                v13_22_ = v13_22_(v13_23_)
                                local v13_17_ = v13_22_
                                local v13_18_ = "\n"
                                local v13_19_ = v13_12_
                                local v13_20_ = ""
                                local v13_21_ = v13_8_
                                v13_14_ = v13_15_ .. v13_16_ .. v13_17_ .. v13_18_ .. v13_19_ .. v13_20_
                                v13_13_(v13_14_)
                                v13_10_ = v13_4_[v13_7_]
                                if v13_10_ then
                                    v13_11_ = pcall
                                    v13_12_ = v13_10_
                                    v13_13_ = v13_4_
                                    v13_11_, v13_12_ = v13_11_(v13_12_, v13_13_)
                                    v13_13_ = false
                                    v13_15_ = v13_4_
                                    v13_14_ = typeof
                                    v13_14_ = v13_14_(v13_15_)
                                    if v13_14_ == "Instance" then
                                        if v13_10_ ~= "Destroy" then
                                            v13_13_ = false
                                        end
                                        v13_13_ = true
                                    end
                                    if not v13_11_ then
                                        if not v13_13_ then
                                            local traceback = debug.traceback
                                            v13_15_ = ""
                                            v13_16_ = 3
                                            v13_14_ = traceback(v13_15_, v13_16_)
                                            v13_15_ = warn
                                            v13_17_ = "-------- Janitor Error --------"
                                            v13_18_ = "\n"
                                            local v13_25_ = v13_12_
                                            local v13_24_ = tostring
                                            v13_24_ = v13_24_(v13_25_)
                                            v13_19_ = v13_24_
                                            v13_20_ = "\n"
                                            v13_21_ = v13_14_
                                            v13_22_ = ""
                                            v13_23_ = v13_8_
                                            v13_16_ = v13_17_ .. v13_18_ .. v13_19_ .. v13_20_ .. v13_21_ .. v13_22_
                                            v13_15_(v13_16_)
                                        end
                                    end
                                end
                            end
                        else
                            local v13_10_ = v13_4_[v13_7_]
                            if v13_10_ then
                                local v13_11_ = pcall
                                local v13_12_ = v13_10_
                                local v13_13_ = v13_4_
                                v13_11_, v13_12_ = v13_11_(v13_12_, v13_13_)
                                v13_13_ = false
                                local v13_15_ = v13_4_
                                local v13_14_ = typeof
                                v13_14_ = v13_14_(v13_15_)
                                if v13_14_ == "Instance" then
                                    if v13_10_ ~= "Destroy" then
                                        v13_13_ = false
                                    end
                                    v13_13_ = true
                                end
                                if not v13_11_ then
                                    if not v13_13_ then
                                        local traceback = debug.traceback
                                        v13_15_ = ""
                                        local v13_16_ = 3
                                        v13_14_ = traceback(v13_15_, v13_16_)
                                        v13_15_ = warn
                                        local v13_17_ = "-------- Janitor Error --------"
                                        local v13_18_ = "\n"
                                        local v13_25_ = v13_12_
                                        local v13_24_ = tostring
                                        v13_24_ = v13_24_(v13_25_)
                                        local v13_19_ = v13_24_
                                        local v13_20_ = "\n"
                                        local v13_21_ = v13_14_
                                        local v13_22_ = ""
                                        local v13_23_ = v13_8_
                                        v13_16_ = v13_17_ .. v13_18_ .. v13_19_ .. v13_20_ .. v13_21_ .. v13_22_
                                        v13_15_(v13_16_)
                                    end
                                end
                            end
                        end
                        local v13_10_ = nil
                        a1[v13_4_] = v13_10_
                    end
                end
                v13_7_ = nil
                a1[v13_4_] = v13_7_
                v13_7_ = v13_5_[-1]
                local v13_8_ = v13_5_[0]
                local v13_9_ = function(a1)
                    local traceback = debug.traceback
                    local v15_2_ = ""
                    local v15_3_ = 3
                    local v15_1_ = traceback(v15_2_, v15_3_)
                    v15_2_ = v13_8_
                    v15_3_ = warn
                    local v15_5_ = "-------- Janitor Error --------"
                    local v15_6_ = "\n"
                    local v15_13_ = a1
                    local v15_12_ = tostring
                    v15_12_ = v15_12_(v15_13_)
                    local v15_7_ = v15_12_
                    local v15_8_ = "\n"
                    local v15_9_ = v15_1_
                    local v15_10_ = ""
                    local v15_11_ = v15_2_
                    local v15_4_ = v15_5_ .. v15_6_ .. v15_7_ .. v15_8_ .. v15_9_ .. v15_10_
                    v15_3_(v15_4_)
                end
                if v13_7_ == true then
                    local v13_10_ = pcall
                    local v13_11_ = v13_4_
                    v13_10_, v13_11_ = v13_10_(v13_11_)
                    if not v13_10_ then
                        local traceback = debug.traceback
                        local v13_13_ = ""
                        local v13_14_ = 3
                        local v13_12_ = traceback(v13_13_, v13_14_)
                        v13_13_ = warn
                        local v13_15_ = "-------- Janitor Error --------"
                        local v13_16_ = "\n"
                        local v13_23_ = v13_11_
                        local v13_22_ = tostring
                        v13_22_ = v13_22_(v13_23_)
                        local v13_17_ = v13_22_
                        local v13_18_ = "\n"
                        local v13_19_ = v13_12_
                        local v13_20_ = ""
                        local v13_21_ = v13_8_
                        v13_14_ = v13_15_ .. v13_16_ .. v13_17_ .. v13_18_ .. v13_19_ .. v13_20_
                        v13_13_(v13_14_)
                        v13_10_ = v13_4_[v13_7_]
                        if v13_10_ then
                            v13_11_ = pcall
                            v13_12_ = v13_10_
                            v13_13_ = v13_4_
                            v13_11_, v13_12_ = v13_11_(v13_12_, v13_13_)
                            v13_13_ = false
                            v13_15_ = v13_4_
                            v13_14_ = typeof
                            v13_14_ = v13_14_(v13_15_)
                            if v13_14_ == "Instance" then
                                if v13_10_ ~= "Destroy" then
                                    v13_13_ = false
                                end
                                v13_13_ = true
                            end
                            if not v13_11_ then
                                if not v13_13_ then
                                    local traceback = debug.traceback
                                    v13_15_ = ""
                                    v13_16_ = 3
                                    v13_14_ = traceback(v13_15_, v13_16_)
                                    v13_15_ = warn
                                    v13_17_ = "-------- Janitor Error --------"
                                    v13_18_ = "\n"
                                    local v13_25_ = v13_12_
                                    local v13_24_ = tostring
                                    v13_24_ = v13_24_(v13_25_)
                                    v13_19_ = v13_24_
                                    v13_20_ = "\n"
                                    v13_21_ = v13_14_
                                    v13_22_ = ""
                                    v13_23_ = v13_8_
                                    v13_16_ = v13_17_ .. v13_18_ .. v13_19_ .. v13_20_ .. v13_21_ .. v13_22_
                                    v13_15_(v13_16_)
                                end
                            end
                        end
                    end
                else
                    local v13_10_ = v13_4_[v13_7_]
                    if v13_10_ then
                        local v13_11_ = pcall
                        local v13_12_ = v13_10_
                        local v13_13_ = v13_4_
                        v13_11_, v13_12_ = v13_11_(v13_12_, v13_13_)
                        v13_13_ = false
                        local v13_15_ = v13_4_
                        local v13_14_ = typeof
                        v13_14_ = v13_14_(v13_15_)
                        if v13_14_ == "Instance" then
                            if v13_10_ ~= "Destroy" then
                                v13_13_ = false
                            end
                            v13_13_ = true
                        end
                        if not v13_11_ then
                            if not v13_13_ then
                                local traceback = debug.traceback
                                v13_15_ = ""
                                local v13_16_ = 3
                                v13_14_ = traceback(v13_15_, v13_16_)
                                v13_15_ = warn
                                local v13_17_ = "-------- Janitor Error --------"
                                local v13_18_ = "\n"
                                local v13_25_ = v13_12_
                                local v13_24_ = tostring
                                v13_24_ = v13_24_(v13_25_)
                                local v13_19_ = v13_24_
                                local v13_20_ = "\n"
                                local v13_21_ = v13_14_
                                local v13_22_ = ""
                                local v13_23_ = v13_8_
                                v13_16_ = v13_17_ .. v13_18_ .. v13_19_ .. v13_20_ .. v13_21_ .. v13_22_
                                v13_15_(v13_16_)
                            end
                        end
                    end
                end
                local v13_10_ = nil
                a1[v13_4_] = v13_10_
            end
        end
        v13_2_ = v0_3_
        v13_1_ = a1[v13_2_]
        if v13_1_ then
            v13_2_ = next
            v13_3_ = v13_1_
            local v13_4_ = nil
            for v13_5_, v13_6_ in v13_2_, v13_3_, v13_4_ do
                local v13_7_ = nil
            end
            v13_2_ = v0_3_
            v13_3_ = {}
            a1[v13_2_] = v13_3_
        end
        v13_2_ = false
        a1.CurrentlyCleaning = v13_2_
    end
end
v0_8_ = v0_5_.__index
v0_8_.Cleanup = v0_7_
v0_7_ = v0_5_.__index
v0_9_ = v0_5_.__index
v0_8_ = v0_9_.Cleanup
v0_7_.Clean = v0_8_
v0_7_ = function(a1)
    a1:Cleanup()
end
v0_8_ = v0_5_.__index
v0_8_.Destroy = v0_7_
v0_8_ = v0_5_.__index
v0_7_ = v0_8_.Cleanup
v0_5_.__call = v0_7_
v0_7_ = {}
v0_8_ = true
v0_7_.Connected = v0_8_
v0_7_.__index = v0_7_
v0_8_ = function(a1)
    local v17_1_ = a1.Connected
    if v17_1_ then
        v17_1_ = false
        a1.Connected = v17_1_
        v17_1_ = a1.Connection
        v17_1_:Disconnect()
    end
end
v0_7_.Disconnect = v0_8_
v0_8_ = function(a1)
    local v18_2_ = "Disconnect<"
    local v18_6_ = a1.Connected
    local v18_5_ = tostring
    v18_5_ = v18_5_(v18_6_)
    local v18_3_ = v18_5_
    local v18_4_ = ">"
    local v18_1_ = v18_2_ .. v18_3_
    return v18_1_
end
v0_7_.__tostring = v0_8_
v0_8_ = function(a1, a2, a3)
    local v19_3_ = nil
    if a3 then
        local v19_4_ = newproxy
        local v19_5_ = false
        v19_4_ = v19_4_(v19_5_)
        if not v19_4_ then
            v19_4_ = v0_4_
        end
    end
    local v19_4_ = v0_4_
    local v19_6_ = a2.Parent
    if v19_6_ ~= nil then
        local v19_5_ = false
    end
    local v19_5_ = true
    local v19_7_ = {}
    local v19_8_ = v0_7_
    v19_6_ = setmetatable
    v19_6_ = v19_6_(v19_7_, v19_8_)
    v19_7_ = function(a1, a2)
        local v20_3_ = v19_6_
        local v20_2_ = v20_3_.Connected
        if v20_2_ then
            v20_0_ = nil
            if a2 ~= nil then
                v20_2_ = false
            end
            v20_2_ = true
            v19_5_ = a2
            v20_2_ = v19_5_
            if v20_2_ then
                local wrap = coroutine.wrap
                v20_3_ = function()
                    local v21_0_ = v0_1_
                    v21_0_:Wait()
                    local v21_1_ = v19_6_
                    v21_0_ = v21_1_.Connected
                    if not v21_0_ then
                        return
                    end
                    v21_1_ = v19_3_
                    v21_0_ = v21_1_.Connected
                    if not v21_0_ then
                        v21_0_ = a1
                        v21_0_:Cleanup()
                        return
                    end
                    v21_0_ = v19_5_
                    while v21_0_ do
                        v21_1_ = v19_3_
                        v21_0_ = v21_1_.Connected
                        while v21_0_ do
                            v21_1_ = v19_6_
                            v21_0_ = v21_1_.Connected
                            while v21_0_ do
                                v21_0_ = v0_1_
                                v21_0_:Wait()
                            end
                        end
                    end
                    v21_1_ = v19_6_
                    v21_0_ = v21_1_.Connected
                    if v21_0_ then
                        v21_0_ = v19_5_
                        if v21_0_ then
                            v21_0_ = a1
                            v21_0_:Cleanup()
                        end
                    end
                end
                v20_2_ = wrap(v20_3_)
                v20_2_()
            end
        end
    end
    v19_8_ = a2.AncestryChanged
    local v19_10_ = v19_7_
    v19_8_ = v19_8_:Connect(v19_10_)
    v19_3_ = v19_8_
    v19_6_.Connection = v19_3_
    if v19_5_ then
        v19_8_ = nil
        local v19_9_ = a2.Parent
        v19_10_ = v19_6_.Connected
        if v19_10_ then
            v19_8_ = nil
            if v19_9_ ~= nil then
                v19_5_ = false
            end
            v19_5_ = true
            if v19_5_ then
                local wrap = coroutine.wrap
                local v19_11_ = function()
                    local v22_0_ = v0_1_
                    v22_0_:Wait()
                    local v22_1_ = v19_6_
                    v22_0_ = v22_1_.Connected
                    if not v22_0_ then
                        return
                    end
                    v22_1_ = v19_3_
                    v22_0_ = v22_1_.Connected
                    if not v22_0_ then
                        v22_0_ = a1
                        v22_0_:Cleanup()
                        return
                    end
                    v22_0_ = v19_5_
                    while v22_0_ do
                        v22_1_ = v19_3_
                        v22_0_ = v22_1_.Connected
                        while v22_0_ do
                            v22_1_ = v19_6_
                            v22_0_ = v22_1_.Connected
                            while v22_0_ do
                                v22_0_ = v0_1_
                                v22_0_:Wait()
                            end
                        end
                    end
                    v22_1_ = v19_6_
                    v22_0_ = v22_1_.Connected
                    if v22_0_ then
                        v22_0_ = v19_5_
                        if v22_0_ then
                            v22_0_ = a1
                            v22_0_:Cleanup()
                        end
                    end
                end
                v19_10_ = wrap(v19_11_)
                v19_10_()
            end
        end
    end
    v19_1_ = nil
    v19_10_ = v19_6_
    local v19_11_ = "Disconnect"
    local v19_12_ = v19_4_
    return a1:Add(v19_10_, v19_11_, v19_12_)
end
v0_9_ = v0_5_.__index
v0_9_.LinkToInstance = v0_8_
v0_8_ = function(a1, ...)
    local v23_2_ = v0_5_
    local v23_1_ = v23_2_.new
    v23_1_ = v23_1_()
    v23_2_ = ipairs
    local v23_3_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v23_3_ = {nil, ...}
    local v23_2_, v23_3_, v23_4_ = v23_2_(v23_3_)
    for v23_5_, v23_6_ in v23_2_, v23_3_, v23_4_ do
        local v23_11_ = v23_6_
        local v23_12_ = true
        local v23_9_ = a1:LinkToInstance(v23_11_, v23_12_)
        local v23_10_ = "Disconnect"
        v23_1_:Add(v23_9_, v23_10_)
    end
    return v23_1_
end
v0_9_ = v0_5_.__index
v0_9_.LinkToInstances = v0_8_
v0_8_ = next
v0_9_ = v0_5_.__index
local v0_10_ = nil
for v0_11_, v0_12_ in v0_8_, v0_9_, v0_10_ do
    local lower = string.lower
    local v0_18_ = v0_11_
    local v0_17_ = lower(v0_18_)
    v0_18_ = 1
    local v0_19_ = 1
    local sub = string.sub
    local v0_16_ = sub(v0_17_, v0_18_, v0_19_)
    local v0_14_ = v0_16_
    v0_16_ = v0_11_
    v0_17_ = 2.000000
    local sub = string.sub
    local v0_15_ = sub(v0_16_, v0_17_)
    local v0_13_ = v0_14_
    v0_14_ = v0_5_.__index
end
return v0_5_
