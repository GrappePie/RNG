-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMWCVR3ZWVuSW5mbwNuZXcCQzEHVmVjdG9yMwZDcmVhdGUEUGxheQlDb21wbGV0ZWQEV2FpdAxjaGFuZ2VIZWlnaHQGQ0ZyYW1lBkFuZ2xlcwRtYXRoA3JhZBxjaGFuZ2VQb3NpdGlvbkFuZE9yaWVudGF0aW9uBGdhbWUMVHdlZW5TZXJ2aWNlCkdldFNlcnZpY2UERW51bQtFYXNpbmdTdHlsZQRRdWFkD0Vhc2luZ0RpcmVjdGlvbgVJbk91dAADDwQDAAAARqQEAgAABACAUgUBAPsGAAD7BwEAnwQEAuIFBABNBwDMAwAAAIwJAACMCgAAJgsDAkw2AAKkCAYAAARQgJ8IBAJDBgcIMAYFzAMAAAD7BgIAUggAAFIJBABSCgUAvAYGlgcAAACfBgUCvAcG7ggAAACfBwIBTQcGGAkAAAC8Bwf3CgAAAJ8HAgGkBwIAAAQAgFIIAQD7CQAA+woBAJ8HBALiCAQATQoAzAMAAACMDAAAjA0AACYOAwJMNgACpAsGAAAEUICfCwQCJgkKCzAJCMwDAAAA+wkCAFILAABSDAcAUg0IALwJCZYHAAAAnwkFArwKCe4IAAAAnwoCAU0KCRgJAAAAvAoK9woAAACfCgIBSAC7/4IAAQALAwEDAgQABACAAwMFAQMDBAQABFCAAwUDBgMHAwgACQkBGAIAAAAAAAEAAAAAAAAAAAAAAAABAAAAAAAAAQAAAQAAAAADAAAAAAABAAAAAAAAAAAAAAAAAQAAAAAAAAEAAAEAAAAA8w8KAAAAAAwDAwAAAFakBAIAAAQAgDkFAgCMBgAAjAcAAJ8EBAKkBQQAAAwAgIwGAAA5CQIAWwgJBbsWCAKkBwgAABxggJ8HAgI5CgIAWwkKBbsWCQKkCAgAABxggJ8IAgKfBQQCCQMEBaQFAgAABACAUgYCAIwHAACMCAAAnwUEAqQGBAAADACAjAcAAFsJAgW7FgkCpAgIAAAcYICfCAICWwoCBbsWCgKkCQgAABxggJ8JAgKfBgQCCQQFBqQFCgAABJCAUgYBAPsHAAD7CAEAnwUEAvsGAgBSCAAAUgkFAOIKDAAwAwrMCwAAALwGBpYNAAAAnwYFArwHBu4OAAAAnwcCAU0HBhgPAAAAvAcH9xAAAACfBwIB+wcCAFIJAABSCgUA4gsMADAEC8wLAAAAvAcHlg0AAACfBwUCvAgH7g4AAACfCAIBTQgHGA8AAAC8CAj3EAAAAJ8IAgFIAKv/ggABABEDCgMCBAAEAIADCwQADACAAgAAAAAAAABAAwwDDQQAHGCAAwEEAASQgAMDBQELAwUDBgMHAwgAHA4BGAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAgAAAAEA/wAAAwAAAQAAAAACAAAAAQD/AAADAAABAAAAAO4VHQAAAAAFAAABAgAaowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBwAGFEDApAIKAAkgQMD/AwIAAAAAAMAECwASAAEAEgACABIAAAAwBAMWDAAAAMAEDQASAAEAEgACABIAAAAwBAOKDgAAAIIDAgAPAw8EAAAAQAMQAxEDEgMTAxQEBhRAwAMVAxYECSBAwAYAAwkGAQMOAgABAQABGAABAAAAAAABAAEAAgADAAAAAAATAAAAAAAYAQAAAAAC

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local Quad = Enum.EasingStyle.Quad
local InOut = Enum.EasingDirection.InOut
local v0_3_ = {}
local v0_4_ = function(a1, a2, a3, a4)
    local new = Tween0o.new
    local v1_5_ = a2
    local v1_6_ = Quad
    local v1_7_ = InOut
    local v1_4_ = new(v1_5_, v1_6_, v1_7_)
    v1_5_ = {}
    v1_7_ = a1.C1
    local v1_9_ = 0
    local v1_10_ = 0
    local v1_11_ = a4 - a3
    local new = Vector3.new
    local v1_8_ = new(v1_9_, v1_10_, v1_11_)
    v1_6_ = v1_7_ + v1_8_
    v1_5_.C1 = v1_6_
    v1_6_ = v0_0_
    v1_8_ = a1
    v1_9_ = v1_4_
    v1_10_ = v1_5_
    v1_6_ = v1_6_:Create(v1_8_, v1_9_, v1_10_)
    v1_6_:Play()
    v1_7_ = v1_6_.Completed
    v1_7_:Wait()
    local new = Tween0o.new
    v1_8_ = a2
    v1_9_ = Quad
    v1_10_ = InOut
    v1_7_ = new(v1_8_, v1_9_, v1_10_)
    v1_8_ = {}
    v1_10_ = a1.C1
    local v1_12_ = 0
    local v1_13_ = 0
    local v1_14_ = a4 - a3
    local new = Vector3.new
    v1_11_ = new(v1_12_, v1_13_, v1_14_)
    v1_9_ = v1_10_ - v1_11_
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
v0_3_.changeHeight = v0_4_
v0_4_ = function(a1, a2, a3)
    local new = CFrame.new
    local v2_5_ = -a3
    local v2_6_ = 0
    local v2_7_ = 0
    local v2_4_ = new(v2_5_, v2_6_, v2_7_)
    local Angles = CFrame.Angles
    v2_6_ = 0
    local v2_9_ = -a3
    local v2_8_ = v2_9_ * 2.000000
    local rad = math.rad
    v2_7_ = rad(v2_8_)
    local v2_10_ = -a3
    v2_9_ = v2_10_ * 2.000000
    local rad = math.rad
    v2_8_ = rad(v2_9_)
    v2_5_ = Angles(v2_6_, v2_7_, v2_8_)
    local v2_3_ = v2_4_ * v2_5_
    local new = CFrame.new
    v2_6_ = a3
    v2_7_ = 0
    v2_8_ = 0
    v2_5_ = new(v2_6_, v2_7_, v2_8_)
    local Angles = CFrame.Angles
    v2_7_ = 0
    v2_9_ = a3 * 2.000000
    local rad = math.rad
    v2_8_ = rad(v2_9_)
    v2_10_ = a3 * 2.000000
    local rad = math.rad
    v2_9_ = rad(v2_10_)
    v2_6_ = Angles(v2_7_, v2_8_, v2_9_)
    v2_4_ = v2_5_ * v2_6_
    local new = Tween0o.new
    v2_6_ = a2
    v2_7_ = Quad
    v2_8_ = InOut
    v2_5_ = new(v2_6_, v2_7_, v2_8_)
    v2_6_ = v0_0_
    v2_8_ = a1
    v2_9_ = v2_5_
    v2_10_ = {}
    v2_10_.C1 = v2_3_
    v2_6_ = v2_6_:Create(v2_8_, v2_9_, v2_10_)
    v2_6_:Play()
    v2_7_ = v2_6_.Completed
    v2_7_:Wait()
    v2_7_ = v0_0_
    v2_9_ = a1
    v2_10_ = v2_5_
    local v2_11_ = {}
    v2_11_.C1 = v2_4_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    v2_8_ = v2_7_.Completed
    v2_8_:Wait()
end
v0_3_.changePositio0dOrientation = v0_4_
return v0_3_
