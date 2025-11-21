-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMQBnNjcmlwdAZQYXJlbnQEZ2FtZQxUd2VlblNlcnZpY2UKR2V0U2VydmljZQlUd2VlbkluZm8DbmV3BEVudW0LRWFzaW5nU3R5bGUEU2luZQ9FYXNpbmdEaXJlY3Rpb24FSW5PdXQGQ0ZyYW1lCFVwVmVjdG9yBkNyZWF0ZQRQbGF5AAEJAAABAgArowAAAKQBAQAAAABATQABJAIAAACkAQQAAAAwQG8DBQC8AQEWBgAAAJ8BAwKkAgkAACBwgIwDBACkBA0ADCygwKQFEAAPOKDAjAb//6kHAQCMCAAAnwIHAuIDEgBNBQCFEQAAAE0IAIURAAAATQcIERQAAABbBgcTQwQFBjAEA4URAAAAUgYAAFIHAgBSCAMAvAQBlhUAAACfBAUCvAUE7hYAAACfBQIBggABABcDAQQAAABAAwIDAwQAADBAAwQDBQMGAwcEACBwgAMIAwkDCgQMLKDAAwsDDAQPOKDAAw0FARECAAAAAAAA+D8DDgMPAxAAAQABGAAAAAAAAgAAAAAAAgABAQABAAEBAfoJAQAAAAAAAAAAAAMAAAAAAAIAAAEBAAAAAAA=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local new = Tween0o.new
v0_3_ = 4
local Sine = Enum.EasingStyle.Sine
local InOut = Enum.EasingDirection.InOut
local v0_6_ = -1
local v0_7_ = true
local v0_8_ = 0
local v0_2_ = new(v0_3_, Sine, InOut, v0_6_, v0_7_, v0_8_)
v0_3_ = {}
local v0_5_ = v0_0_.CFrame
v0_8_ = v0_0_.CFrame
v0_7_ = v0_8_.UpVector
v0_6_ = v0_7_ * 1.500000
local v0_4_ = v0_5_ + v0_6_
v0_3_.CFrame = v0_4_
v0_6_ = v0_0_
v0_7_ = v0_2_
v0_8_ = v0_3_
v0_4_ = v0_1_:Create(v0_6_, v0_7_, v0_8_)
v0_4_:Play()
