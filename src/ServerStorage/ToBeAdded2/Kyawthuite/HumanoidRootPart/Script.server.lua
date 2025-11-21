-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPAkMwBkNGcmFtZQZBbmdsZXMGc2NyaXB0BlBhcmVudAVTb3VuZAxXYWl0Rm9yQ2hpbGQEUGxheQRQYXJ0B01vdG9yNkQEZ2FtZQpSdW5TZXJ2aWNlCkdldFNlcnZpY2UOUG9zdFNpbXVsYXRpb24HQ29ubmVjdAACBgABAAAADfsAAABNAQDtAAAAAKQCAwAACBCAjAMAAG8EBACMBQAAnwIEAgkBAQIwAQDtAAAAAIIAAQAFAwEDAgMDBAAIEIACOZ1SokbfgT8ABwABGAAAAAAAAAAAAAAAAAEIAAAAAAcAAAECACKjAAAApAEBAAAAAEBNAAEkAgAAAG8DAwC8AQDTBAAAAJ8BAwK8AQHuBQAAAJ8BAgFvAwYAvAEA0wQAAACfAQMCbwQHALwCAdMEAAAAnwIDAqQECQAAAIBAbwYKALwEBBYLAAAAnwQDAk0DBLYMAAAAwAUNABIAAgC8AwPHDgAAAJ8DAwGCAAEADwMEBAAAAEADBQMGAwcDCAMJAwoDCwQAAIBAAwwDDQMOBgADDwEAAQABGAAAAAAAAgAAAAAAAAIAAAABAAAAAQAAAAAAAAAAAAAAAAIBAAAAAAE=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_3_ = "Sound"
v0_1_ = v0_0_:WaitForChild(v0_3_)
v0_1_:Play()
v0_3_ = "Part"
v0_1_ = v0_0_:WaitForChild(v0_3_)
local v0_4_ = "Motor6D"
local v0_2_ = v0_1_:WaitForChild(v0_4_)
v0_4_ = game
local v0_6_ = "RunService"
v0_4_ = v0_4_:GetService(v0_6_)
v0_3_ = v0_4_.PostSimulation
local v0_5_ = function()
    local v1_0_ = v0_2_
    local v1_1_ = v1_0_.C0
    local Angles = CFrame.Angles
    local v1_3_ = 0
    local v1_4_ = 0.008727
    local v1_5_ = 0
    local v1_2_ = Angles(v1_3_, v1_4_, v1_5_)
    v1_1_ *= v1_2_
    v1_0_.C0 = v1_1_
end
v0_3_:Connect(v0_5_)
