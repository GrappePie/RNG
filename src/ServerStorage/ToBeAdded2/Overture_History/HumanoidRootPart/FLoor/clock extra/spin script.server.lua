-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMTBHRpY2sEbWF0aAVjbGFtcAZDRnJhbWUSZnJvbUV1bGVyQW5nbGVzWFlaA3JhZAlIZWFydGJlYXQEV2FpdA10d2VlblJvdGF0aW9uBHdhaXQEdGFzaxNtYW5hZ2VQdWxzZVJvdGF0aW9uBGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlBnNjcmlwdAZQYXJlbnQNUmVuZGVyU3RlcHBlZAdDb25uZWN0AAQRAwMAAAA8pAMBAAAAAECfAwECQwQDAqQFAQAAAABAnwUBAmAFMQAEAAAApAYBAAAAAECfBgECJgUGA+wGBQKMCQAAjAoBADQuBgQJCgAAUggGAKQHBAAADCCAnwcEAlIGBwAmCQEACQgJBkMHAAj7CAAA+wsAAE0KC4UFAAAApAsHAAAYUICMDAAAuxYHA1IPBwCkDgkAACAggJ8OAgL7EAEAuxYQAqQPCQAAICCAnw8CAiYNDg+MDgAAnwsEAgkJCgswCQiFBQAAAN4HAQD7CQIATQgJ/QoAAAC8CAj3CwAAAJ8IAgFIAMv/IQUBDN4FAQCCAAEADQMBBAAAAEADAgMDBAAMIIADBAMFBAAYUIADBgQAICCAAwcDCAIAAAAAAIB2QAAWCQEYAAAAAQIAAAAAAQAAAAEBAAAAAAAAAAABAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBAAAAAAD5CwABFwAAAAAIAAMAAAAjpAABAAAAAECMAQEAnwACAaQAAwAAACBAnwABAowBAACkAgMAAAAgQJ8CAQImAwIAQwEBA1IAAgBvBAQAfQQMAAEAAAD7BgEAlQUGBiEEBQXeBAAA+wQCAPsFAQD7BgAAbwcHAJ8EBAF4AQEESADy/yEBAQSkBAkAAACAgG8FCgCfBAIBSADm/4IAAQALAwoEAAAAQAMBBAAAIEACW2lV3If/9T8CAAAAAACAdkACAAAAAAAAIMACERERERERwT8DCwQAAICAArgehetRuJ4/ACkMARgAAAAAAgAAAQMAAAEBAQMAAAIAAAABAAAAAAH8CAMAAADuFCoAAAAABwABAAAADvsAAAD7AwAATQIDhQAAAACkAwIAAAQAgIwEAABvBQMAjAYAAJ8DBAIJAQIDMAEAhQAAAACCAAEABAMEAwUEAAQAgAJ7FK5H4XpkvwBGAAEYAAAAAAAAAAAAAAAAAAFIAAAAAAkAAAECACCjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAIFAAAAQEBNAQIkBgAAAIwCAACMAwAA2QQAABIAAQASAQL/EgAAANkFAQASAQP/EgEC/xIABABNBgDPBwAAAMAICAASAAEAvAYGxwkAAACfBgMBUgYFAJ8GAQHBAgAAggABAAoDDQQAAABAAw4DDwMQBAAAQEADEQMSBgIDEwMAAQIBAAEYAAAAAAAAAAIAAAAPAQMAAAATAAAAHQAAAAAAAAYAAQABAAAAAAM=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
v0_2_ = 0
local v0_3_ = 0
local v0_4_ = function(a1, a2, a3)
    local v1_3_ = tick
    v1_3_ = v1_3_()
    local v1_4_ = v1_3_ + a3
    local v1_5_ = tick
    v1_5_ = v1_5_()
    while v1_5_ < v1_4_ do
        local v1_6_ = tick
        v1_6_ = v1_6_()
        v1_5_ = v1_6_ - v1_3_
        v1_6_ = v1_5_ / a3
        local v1_9_ = 0
        local v1_10_ = 1
        local v1_8_ = v1_6_
        local clamp = math.clamp
        local v1_7_ = clamp(v1_8_, v1_9_, v1_10_)
        v1_6_ = v1_7_
        v1_9_ = a2 - a1
        v1_8_ = v1_9_ * v1_6_
        v1_7_ = a1 + v1_8_
        v1_8_ = v0_1_
        local v1_11_ = v0_1_
        v1_10_ = v1_11_.CFrame
        local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
        local v1_12_ = 0
        local v1_15_ = v1_7_
        local rad = math.rad
        local v1_14_ = rad(v1_15_)
        local v1_16_ = v0_2_
        local rad = math.rad
        v1_15_ = rad(v1_16_)
        local v1_13_ = v1_14_ - v1_15_
        v1_14_ = 0
        v1_11_ = fromEulerAnglesXYZ(v1_12_, v1_13_, v1_14_)
        v1_9_ = v1_10_ * v1_11_
        v1_8_.CFrame = v1_9_
        v0_2_ = a2
        v1_9_ = v0_0_
        v1_8_ = v1_9_.Heartbeat
        v1_8_:Wait()
    end
    v1_5_ = a2 % 360.000000
    v0_2_ = a2
end
local v0_5_ = function()
    local v2_0_ = wait
    local v2_1_ = 1
    v2_0_(v2_1_)
    v2_0_ = tick
    v2_0_ = v2_0_()
    v2_1_ = 0
    local v2_2_ = tick
    v2_2_ = v2_2_()
    local v2_3_ = v2_2_ - v2_0_
    v2_1_ += v2_3_
    v2_0_ = v2_2_
    local v2_4_ = 1.374885
    while v2_4_ <= v2_1_ do
        local v2_6_ = v0_2_
        local v2_5_ = v2_6_ + -8.000000
        v2_4_ = v2_5_ % 360.000000
        v0_3_ = v2_0_
        v2_4_ = v0_4_
        v2_5_ = v0_2_
        v2_6_ = v0_3_
        local v2_7_ = 0.133333
        v2_4_(v2_5_, v2_6_, v2_7_)
        v2_1_ -= 1.374885
    end
    v2_1_ %= 1.374885
    local wait = task.wait
    local v2_5_ = 0.030000
    wait(v2_5_)
end
local v0_6_ = v0_0_.RenderStepped
local v0_8_ = function()
    local v3_0_ = v0_1_
    local v3_3_ = v0_1_
    local v3_2_ = v3_3_.CFrame
    local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
    local v3_4_ = 0
    local v3_5_ = -0.002500
    local v3_6_ = 0
    v3_3_ = fromEulerAnglesXYZ(v3_4_, v3_5_, v3_6_)
    local v3_1_ = v3_2_ * v3_3_
    v3_0_.CFrame = v3_1_
end
v0_6_:Connect(v0_8_)
v0_6_ = v0_5_
v0_6_()
