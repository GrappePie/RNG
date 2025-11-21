-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMYAkMwBkNGcmFtZQZBbmdsZXMEbWF0aANyYWQKRGlzY29ubmVjdAZzY3JpcHQGUGFyZW50BGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlBXNwYWNlDFdhaXRGb3JDaGlsZARzcGluCXNwYWNlV2VsZAhzcGluV2VsZAVQYXJ0MAVQYXJ0MQNCR00EUGxheQ1SZW5kZXJTdGVwcGVkB0Nvbm5lY3QPQW5jZXN0cnlDaGFuZ2VkBE9uY2UAAwcBAQAAABH7AQAATQIB7QAAAACkAwMAAAgQgIwEAABbBgAEuxYGAqQFBwAAGFCAnwUCAowGAACfAwQCCQICAzACAe0AAAAAggABAAgDAQMCAwMEAAgQgAIAAAAAAABOQAMEAwUEABhQgAATAAEYAAAAAAAAAAAAAAAAAAAAAAEUAAAAAAIAAgAAAAn7AAAAvAAAGgAAAACfAAIB+wABALwAABoAAAAAnwACAYIAAQABAwYAFwABGAAAAAABAAAAARgAAAAACwAAAQIARaMAAACkAQEAAAAAQE0AASQCAAAApAEEAAAAMEBvAwUAvAEBFgYAAACfAQMCbwQHALwCANMIAAAAnwIDAm8FCQC8AwDTCAAAAJ8DAwJvBgoAvAQA0wgAAACfBAMCbwcLALwFANMIAAAAnwUDAjAABDwMAAAAMAIEsQ0AAAAwAAU8DAAAADADBbENAAAApAcBAAAAAEBNBgckAgAAAG8IDgC8BgbTCAAAAJ8GAwK8BgbuDwAAAJ8GAgHGBgAAxgcAAE0IAc8QAAAAwAoRABIABQC8CAjHEgAAAJ8IAwJSBggApAkBAAAAAEBNCAmLEwAAANkKAQASAQb/EgEH/7wICD0UAAAAnwgDAlIHCADBBgAAggABABUDBwQAAABAAwgDCQQAADBAAwoDCwMMAw0DDgMPAxADEQMSAxMDFAMVBgADFgMXAxgCAAEBAAEYAAAAAAACAAAAAAACAAAAAQAAAAEAAAABAAAAAgABAAEAAQACAAAAAAAAAAAAAAIAAgAAAAAAAAAEAAAAAAAAAAAAAAMAAQAAAAAC

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = game
local v0_3_ = "RunService"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = "space"
local v0_2_ = v0_0_:WaitForChild(v0_4_)
local v0_5_ = "spin"
v0_3_ = v0_0_:WaitForChild(v0_5_)
local v0_6_ = "spaceWeld"
v0_4_ = v0_0_:WaitForChild(v0_6_)
local v0_7_ = "spinWeld"
v0_5_ = v0_0_:WaitForChild(v0_7_)
v0_4_.Part0 = v0_0_
v0_4_.Part1 = v0_2_
v0_5_.Part0 = v0_0_
v0_5_.Part1 = v0_3_
v0_7_ = script
v0_6_ = v0_7_.Parent
local v0_8_ = "BGM"
v0_6_ = v0_6_:WaitForChild(v0_8_)
v0_6_:Play()
v0_6_ = nil
v0_7_ = nil
v0_8_ = v0_1_.RenderStepped
local v0_10_ = function(a1)
    local v1_1_ = v0_5_
    local v1_2_ = v1_1_.C0
    local Angles = CFrame.Angles
    local v1_4_ = 0
    local v1_6_ = a1 * 60.000000
    local rad = math.rad
    local v1_5_ = rad(v1_6_)
    v1_6_ = 0
    local v1_3_ = Angles(v1_4_, v1_5_, v1_6_)
    v1_2_ *= v1_3_
    v1_1_.C0 = v1_2_
end
v0_8_ = v0_8_:Connect(v0_10_)
v0_6_ = v0_8_
local v0_9_ = script
v0_8_ = v0_9_.AncestryChanged
v0_10_ = function()
    local v2_0_ = v0_6_
    v2_0_:Disconnect()
    v2_0_ = v0_7_
    v2_0_:Disconnect()
end
v0_8_ = v0_8_:Once(v0_10_)
v0_7_ = v0_8_
