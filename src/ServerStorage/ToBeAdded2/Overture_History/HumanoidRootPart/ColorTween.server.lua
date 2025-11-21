-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUBHRhc2sEd2FpdARnYW1lDFR3ZWVuU2VydmljZQpHZXRTZXJ2aWNlBnNjcmlwdAZQYXJlbnQJTWFpbkNvbG9yCVR3ZWVuSW5mbwNuZXcERW51bQtFYXNpbmdTdHlsZQRTaW5lD0Vhc2luZ0RpcmVjdGlvbgVJbk91dAVWYWx1ZQZDb2xvcjMHZnJvbVJHQgZDcmVhdGUEUGxheQABCgAAAQIAK6MAAACkAAIAAAQAgIwBAQCfAAIBpAAEAAAAMEBvAgUAvAAAFgYAAACfAAMCpAUIAAAAcEBNBAUkCQAAAE0DBPAKAAAApAQNAAAwsICMBQcApAYRABA84MCkBxQAE0jgwIwI//+pCQEAnwQGAuIFFgCkBhkAAGBwgYwHfQCMCNIAjAmOAJ8GBAIwBgXsFQAAALwBAJYaAAAAnwEFArwBAe4bAAAAnwECAYIAAQAcAwEDAgQABACAAwMEAAAwQAMEAwUDBgQAAHBAAwcDCAMJAwoEADCwgAMLAwwDDQQQPODAAw4DDwQTSODAAxAFARUDEQMSBABgcIEDEwMUAAEAARgAAAAAAAIAAAAAAAQAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAD9AAAEAAAAAQAAAAAA

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local wait = task.wait
local v0_1_ = 1
wait(v0_1_)
local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_5_ = script
local v0_4_ = v0_5_.Parent
local v0_3_ = v0_4_.MainColor
local new = Tween0o.new
v0_5_ = 7
local Sine = Enum.EasingStyle.Sine
local InOut = Enum.EasingDirection.InOut
local v0_8_ = -1
local v0_9_ = true
v0_4_ = new(v0_5_, Sine, InOut, v0_8_, v0_9_)
v0_5_ = {}
local fromRGB = Color3.fromRGB
local v0_7_ = 125
v0_8_ = 210
v0_9_ = 142
local v0_6_ = fromRGB(v0_7_, v0_8_, v0_9_)
v0_5_.Value = v0_6_
v0_1_ = v0_0_:Create(v0_3_, v0_4_, v0_5_)
v0_1_:Play()
