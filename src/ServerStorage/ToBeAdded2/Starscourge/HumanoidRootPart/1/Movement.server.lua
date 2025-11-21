-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPBGdhbWUMVHdlZW5TZXJ2aWNlCkdldFNlcnZpY2UJVHdlZW5JbmZvA25ldwRFbnVtC0Vhc2luZ1N0eWxlBFNpbmUPRWFzaW5nRGlyZWN0aW9uBUluT3V0BnNjcmlwdAZQYXJlbnQIUG9zaXRpb24GQ3JlYXRlBFBsYXkAAQkAAAECACajAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEGAAAUQIBvAgcApAMLAAokgMCkBA4ADTCAwIwF//+pBgEAjAcAAJ8BBwKkAxAAAADwQE0CAyQRAAAATQQCOxIAAABvBRMAQwMEBVIGAgBSBwEA4ggUADADCDsSAAAAvAQAlhUAAACfBAUCvAUE7hYAAACfBQIBggABABcDAQQAAABAAwIDAwMEAwUEABRAgAKamZmZmZn5PwMGAwcDCAQKJIDAAwkDCgQNMIDAAwsEAADwQAMMAw0HAAAAAJqZGUAAAAAAAAAAAAUBEgMOAw8AAQABGAAAAAAAAAABAAAAAAAAAAAAAAEAAAABAAAAAgAAAAAAAAADAAAAAQAAAAAA

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local new = Tween0o.new
v0_2_ = 1.600000
local Sine = Enum.EasingStyle.Sine
local InOut = Enum.EasingDirection.InOut
local v0_5_ = -1
local v0_6_ = true
local v0_7_ = 0
local v0_1_ = new(v0_2_, Sine, InOut, v0_5_, v0_6_, v0_7_)
local v0_3_ = script
v0_2_ = v0_3_.Parent
local v0_4_ = v0_2_.Position
v0_5_ = Vector3.new(0.000000, 2.400000, 0.000000)
v0_3_ = v0_4_ + v0_5_
v0_6_ = v0_2_
v0_7_ = v0_1_
local v0_8_ = {}
v0_8_.Position = v0_3_
v0_4_ = v0_0_:Create(v0_6_, v0_7_, v0_8_)
v0_4_:Play()
