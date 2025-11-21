-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMXBGdhbWUMVHdlZW5TZXJ2aWNlCkdldFNlcnZpY2UJVHdlZW5JbmZvA25ldwRFbnVtC0Vhc2luZ1N0eWxlBVF1YXJ0D0Vhc2luZ0RpcmVjdGlvbgNPdXQGc2NyaXB0BlBhcmVudAJVcAxXYWl0Rm9yQ2hpbGQIUG9zaXRpb24FVURpbTIJZnJvbVNjYWxlBkNyZWF0ZQRQbGF5BERvd24EdGFzawR3YWl0B0VuYWJsZWQAAQoAAAECAEyjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEGAAAUQIBvAgcApAMLAAokgMCkBA4ADTCAwIwFAACpBgEAjAcAAJ8BBwKkBRAAAADwQE0EBSQRAAAAbwYSALwEBNMTAAAAnwQDAlIFAQDiBhUApAcYAABcYIGMCAAAjAkAAJ8HAwIwBwY7FAAAALwCAJYZAAAAnwIFArwCAu4aAAAAnwICAaQFEAAAAPBATQQFJBEAAABvBhsAvAQE0xMAAACfBAMCUgUBAOIGFQCkBxgAAFxggYwIAABvCRwAnwcDAjAHBjsUAAAAvAIAlhkAAACfAgUCvAIC7hoAAACfAgIBpAIfAAB40IGMAwEAnwICAaQDEAAAAPBATQIDJBEAAACpAwAAMAMC8CAAAACCAAEAIQMBBAAAAEADAgMDAwQDBQQAFECAAmZmZmZmZuY/AwYDBwMIBAokgMADCQMKBA0wgMADCwQAAPBAAwwDDQMOAw8FARQDEAMRBABcYIEDEgMTAxQCzczMzMzM7D8DFQMWBAB40IEDFwABAAEYAAAAAAAAAAEAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABAAAAAAAAAAEAAAAAAA==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local new = Tween0o.new
v0_2_ = 0.700000
local Quart = Enum.EasingStyle.Quart
local Out = Enum.EasingDirection.Out
local v0_5_ = 0
local v0_6_ = true
local v0_7_ = 0
local v0_1_ = new(v0_2_, Quart, Out, v0_5_, v0_6_, v0_7_)
v0_5_ = script
local v0_4_ = v0_5_.Parent
v0_6_ = "Up"
v0_4_ = v0_4_:WaitForChild(v0_6_)
v0_5_ = v0_1_
v0_6_ = {}
local fromScale = UDim2.fromScale
local v0_8_ = 0
local v0_9_ = 0
v0_7_ = fromScale(v0_8_, v0_9_)
v0_6_.Position = v0_7_
v0_2_ = v0_0_:Create(v0_4_, v0_5_, v0_6_)
v0_2_:Play()
v0_5_ = script
v0_4_ = v0_5_.Parent
v0_6_ = "Down"
v0_4_ = v0_4_:WaitForChild(v0_6_)
v0_5_ = v0_1_
v0_6_ = {}
local fromScale = UDim2.fromScale
v0_8_ = 0
v0_9_ = 0.900000
v0_7_ = fromScale(v0_8_, v0_9_)
v0_6_.Position = v0_7_
v0_2_ = v0_0_:Create(v0_4_, v0_5_, v0_6_)
v0_2_:Play()
local wait = task.wait
local v0_3_ = 1
wait(v0_3_)
v0_3_ = script
v0_2_ = v0_3_.Parent
v0_3_ = false
v0_2_.Enabled = v0_3_
