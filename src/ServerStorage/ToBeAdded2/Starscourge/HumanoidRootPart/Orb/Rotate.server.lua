-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMTBGdhbWUMVHdlZW5TZXJ2aWNlCkdldFNlcnZpY2UGc2NyaXB0BlBhcmVudAlUd2VlbkluZm8DbmV3BEVudW0LRWFzaW5nU3R5bGUGTGluZWFyD0Vhc2luZ0RpcmVjdGlvbgJJbgJDMAZDRnJhbWUGQW5nbGVzBkNyZWF0ZQRQbGF5CUNvbXBsZXRlZARXYWl0AAEOAAABAAAxowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQCBQAAAEBATQECJAYAAACkAgkAACBwgG8DCgCkBA4ADTCwwKQFEQAQPLDAjAYAAKkHAACMCAAAnwIHAlIFAQBSBgIA4gcTAE0JAe0SAAAApAoWAABUQIGMCwAAbwwXAIwNAACfCgQCCQgJCjAIB+0SAAAAvAMAlhgAAACfAwUCvAQD7hkAAACfBAIBTQQDGBoAAAC8BAT3GwAAAJ8EAgFIAOb/ggABABwDAQQAAABAAwIDAwMEBAAAQEADBQMGAwcEACBwgAKamZmZmZnpPwMIAwkDCgQNMLDAAwsDDAQQPLDAAw0FARIDDgMPBABUQIECGC1EVPsh+T8DEAMRAxIDEwABAAEYAAAAAAAAAAEAAAABAAEBAAEAAQEB+gkAAAAAAAAAAAAAAAAAAAAAAQAAAQAAAAD9BAEAAAAAAA==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
local new = Tween0o.new
local v0_3_ = 0.800000
local Linear = Enum.EasingStyle.Linear
local In = Enum.EasingDirection.In
local v0_6_ = 0
local v0_7_ = false
local v0_8_ = 0
v0_2_ = new(v0_3_, Linear, In, v0_6_, v0_7_, v0_8_)
local v0_5_ = v0_1_
v0_6_ = v0_2_
v0_7_ = {}
local v0_9_ = v0_1_.C0
local Angles = CFrame.Angles
local v0_11_ = 0
local v0_12_ = 1.570796
local v0_13_ = 0
local v0_10_ = Angles(v0_11_, v0_12_, v0_13_)
v0_8_ = v0_9_ * v0_10_
v0_7_.C0 = v0_8_
v0_3_ = v0_0_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
local v0_4_ = v0_3_.Completed
v0_4_:Wait()
