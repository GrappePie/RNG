-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPBmJvdHRvbQhSb3RhdGlvbghvblVwZGF0ZQZzY3JpcHQGUGFyZW50CUF1cmFNb2RlbAxXYWl0Rm9yQ2hpbGQKQm90dG9tUGFydBJCb3R0b21Nb2RlbHNORmxvb3IMUGFydGljbGVCYXNlBGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlCUhlYXJ0YmVhdAdDb25uZWN0AAICAAAAAAAGNQAAMwAAAABvAQEAMAEAOAIAAACCAAEAAwMBBwAAAAAAAAAAAAAAAAAAAAADAgADAwEYAAAAAAABBAAAAAAFAAABAgApowAAAKQDAQAAAABATQIDJAIAAABNAQIkAgAAAE0AASQCAAAAbwIDALwAANMEAAAAnwADAm8CBQC8AADTBAAAAJ8AAwJvAgYAvAAA0wQAAACfAAMCbwIHALwAANMEAAAAnwADAhgAADMIAAAAwAAJAKQCCwAAAKBAbwQMALwCAhYNAAAAnwIDAk0BAv0OAAAAUgMAALwBAccPAAAAnwEDAYIAAQAQAwQEAAAAQAMFAwYDBwMIAwkDCgMBBgADCwQAAKBAAwwDDQMOAw8BAAEAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACBAAAAAAAAAAAAAAAAQEAAAAAAQ==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_3_ = script
local v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
v0_2_ = "AuraModel"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "BottomPart"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "BottomModelsNFloor"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "ParticleBase"
v0_0_ = v0_0_:WaitForChild(v0_2_)
bottom = v0_0_
v0_0_ = function()
    local v1_0_ = bottom
    local v1_1_ = Vector3.new(0.000000, 0.000000, 0.000000)
    v1_0_.Rotation = v1_1_
end
v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_1_ = v0_2_.Heartbeat
v0_3_ = v0_0_
v0_1_:Connect(v0_3_)
