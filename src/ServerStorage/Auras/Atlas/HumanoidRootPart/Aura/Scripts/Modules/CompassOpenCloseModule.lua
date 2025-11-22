-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUCVR3ZWVuSW5mbwNuZXcCQzEGQ0ZyYW1lBkFuZ2xlcwRtYXRoA3JhZAZDcmVhdGUEUGxheQlDb21wbGV0ZWQEV2FpdBJjaGFuZ2VYT3JpZW50YXRpb24EZ2FtZQxUd2VlblNlcnZpY2UKR2V0U2VydmljZQRFbnVtC0Vhc2luZ1N0eWxlBFF1YWQPRWFzaW5nRGlyZWN0aW9uBUluT3V0AAIPBAMAAABMpAQCAAAEAIBSBQEA+wYAAPsHAQCfBAQC4gUEAE0HAMwDAAAApAgHAAAYUIAmCgMCuxYKAqQJCgAAJICAnwkCAowKAACMCwAAnwgEAgkGBwgwBgXMAwAAAPsGAgBSCAAAUgkEAFIKBQC8BgaWCwAAAJ8GBQK8BwbuDAAAAJ8HAgFNBwYYDQAAALwHB/cOAAAAnwcCAaQHAgAABACAUggBAPsJAAD7CgEAnwcEAuIIBABNCgDMAwAAAKQLBwAAGFCAJg0CA7sWDQKkDAoAACSAgJ8MAgKMDQAAjA4AAJ8LBAIJCQoLMAkIzAMAAAD7CQIAUgsAAFIMBwBSDQgAvAkJlgsAAACfCQUCvAoJ7gwAAACfCgIBTQoJGA0AAAC8Cgr3DgAAAJ8KAgFIALX/ggABAA8DAQMCBAAEAIADAwUBAwMEAwUEABhQgAMGAwcEACSAgAMIAwkDCgMLAAkMARgCAAAAAAABAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAEAAAEAAAAAAwAAAAAAAQAAAAAAAAAAAAAAAAAAAAEAAAAAAAABAAABAAAAAPMPCgAAAAAFAAABAgAUowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBwAGFEDApAIKAAkgQMD/AwEAAAAAAMAECwASAAEAEgACABIAAAAwBAP+DAAAAIIDAgANAw0EAAAAQAMOAw8DEAMRAxIEBhRAwAMTAxQECSBAwAYAAwwBAAEAARgAAQAAAAAAAQABAAIAAwAAAAAAEgEAAAAAAQ==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local Quad = Enum.EasingStyle.Quad
local InOut = Enum.EasingDirection.InOut
local v0_3_ = {}
local v0_4_ = function(a1, a2, a3, a4)
    local new = TweenInfo.new
    local v1_5_ = a2
    local v1_6_ = Quad
    local v1_7_ = InOut
    local v1_4_ = new(v1_5_, v1_6_, v1_7_)
    v1_5_ = {}
    v1_7_ = a1.C1
    local Angles = CFrame.Angles
    local v1_10_ = a4 - a3
    local rad = math.rad
    local v1_9_ = rad(v1_10_)
    v1_10_ = 0
    local v1_11_ = 0
    local v1_8_ = Angles(v1_9_, v1_10_, v1_11_)
    v1_6_ = v1_7_ * v1_8_
    v1_5_.C1 = v1_6_
    v1_6_ = v0_0_
    v1_8_ = a1
    v1_9_ = v1_4_
    v1_10_ = v1_5_
    v1_6_ = v1_6_:Create(v1_8_, v1_9_, v1_10_)
    v1_6_:Play()
    v1_7_ = v1_6_.Completed
    v1_7_:Wait()
    local new = TweenInfo.new
    v1_8_ = a2
    v1_9_ = Quad
    v1_10_ = InOut
    v1_7_ = new(v1_8_, v1_9_, v1_10_)
    v1_8_ = {}
    v1_10_ = a1.C1
    local Angles = CFrame.Angles
    local v1_13_ = a3 - a4
    local rad = math.rad
    local v1_12_ = rad(v1_13_)
    v1_13_ = 0
    local v1_14_ = 0
    v1_11_ = Angles(v1_12_, v1_13_, v1_14_)
    v1_9_ = v1_10_ * v1_11_
    v1_8_.C1 = v1_9_
    v1_9_ = v0_0_
    v1_11_ = a1
    v1_12_ = v1_7_
    v1_13_ = v1_8_
    v1_9_ = v1_9_:Create(v1_11_, v1_12_, v1_13_)
    v1_9_:Play()
    v1_10_ = v1_9_.Completed
    v1_10_:Wait()
end
v0_3_.changeXOrientation = v0_4_
return v0_3_
