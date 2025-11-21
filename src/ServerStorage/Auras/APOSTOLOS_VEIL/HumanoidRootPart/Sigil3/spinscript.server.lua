-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPBlBhcmVudApEaXNjb25uZWN0BkNGcmFtZQZBbmdsZXMEbWF0aANyYWQBWAFZAVoGc2NyaXB0BGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlCUhlYXJ0YmVhdAdDb25uZWN0AAILAQIAAAAy+wIAAE0BAiQAAAAAKwEFAPsBAQC8AQEaAQAAAJ8BAgGCAAEA+wEAAPsEAABNAwSFAgAAAKQEBAAADCCAjAgeAAkHCAC7FgcCpAYHAAAYUICfBgICbwgIAE0HCHkJAAAACQUGB4wJHgAJCAkAuxYIAqQHBwAAGFCAnwcCAm8JCABNCAl4CgAAAAkGBwiMCh4ACQkKALsWCQKkCAcAABhQgJ8IAgJvCggATQkKewsAAAAJBwgJnwQEAgkCAwQwAgGFAgAAAIIAAQAMAwEDAgMDAwQEAAwggAMFAwYEABhQgAcAAAAAAAAAvwAAAAAAAAAAAwcDCAMJAAwAARgAAAAAAQAAAAECAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQ0AAAAABgAAAQIAF6MAAACkAQEAAAAAQE0AASQCAAAAxgEAAKQDBAAAADBAbwUFALwDAxYGAAAAnwMDAk0CA/0HAAAA2QQAABIAAAASAQH/vAICxwgAAACfAgMCUgECAMEBAACCAAEACQMKBAAAAEADAQMLBAAAMEADDAMNAw4DDwEAAQABGAABAAAACQEAAAAAAAAAAAAAAAAAAAcAAQAAAAAB

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = nil
local v0_3_ = game
local v0_5_ = "RunService"
v0_3_ = v0_3_:GetService(v0_5_)
local v0_2_ = v0_3_.Heartbeat
local v0_4_ = function(a1)
    local v1_2_ = v0_0_
    local v1_1_ = v1_2_.Parent
    if not v1_1_ then
        v1_1_ = v0_1_
        v1_1_:Disconnect()
        return
    end
    v1_1_ = v0_0_
    local v1_4_ = v0_0_
    local v1_3_ = v1_4_.CFrame
    local Angles = CFrame.Angles
    local v1_8_ = 30
    local v1_7_ = v1_8_ * a1
    local rad = math.rad
    local v1_6_ = rad(v1_7_)
    v1_8_ = Vector3.new(0.000000, -0.500000, 0.000000)
    v1_7_ = v1_8_.X
    local v1_5_ = v1_6_ * v1_7_
    local v1_9_ = 30
    v1_8_ = v1_9_ * a1
    local rad = math.rad
    v1_7_ = rad(v1_8_)
    v1_9_ = Vector3.new(0.000000, -0.500000, 0.000000)
    v1_8_ = v1_9_.Y
    v1_6_ = v1_7_ * v1_8_
    local v1_10_ = 30
    v1_9_ = v1_10_ * a1
    local rad = math.rad
    v1_8_ = rad(v1_9_)
    v1_10_ = Vector3.new(0.000000, -0.500000, 0.000000)
    v1_9_ = v1_10_.Z
    v1_7_ = v1_8_ * v1_9_
    v1_4_ = Angles(v1_5_, v1_6_, v1_7_)
    v1_2_ = v1_3_ * v1_4_
    v1_1_.CFrame = v1_2_
end
v0_2_ = v0_2_:Connect(v0_4_)
v0_1_ = v0_2_
