-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMVCFZlbG9jaXR5CXdvcmtzcGFjZQZDRnJhbWUJQmxvY2tjYXN0CERpc3RhbmNlB1ZlY3RvcjMDbmV3CFBvc2l0aW9uBnNjcmlwdAZQYXJlbnQKQXR0YWNobWVudA1SYXljYXN0UGFyYW1zBEVudW0RUmF5Y2FzdEZpbHRlclR5cGUHRXhjbHVkZQpGaWx0ZXJUeXBlGkZpbHRlckRlc2NlbmRhbnRzSW5zdGFuY2VzC1J1biBTZXJ2aWNlBGdhbWUNUmVuZGVyU3RlcHBlZAdDb25uZWN0AAIHAAMAAAAe+wEAAE0AAYUAAAAADgAZAKQAAgAAABBA+wMAAE0CA4UDAAAAbwMEAG8EBQD7BQEAvAAAYgYAAACfAAYCjAEKAA4AAgBNAQBVBwAAAPsCAgCMBAAAOQUBAIwGAABMNgACpAMKAAAkgICfAwQCMAMCOwsAAACCAAEADAMBAwIEAAAQQAMDBwAAAEDNzMw9AACAPwAAAAAHAAAAAAAAIMEAAAAAAAAAAAMEAwUDBgMHBAAkgIADCAAIAAEYAAAAAAEAAAAAAAAAAAAAAQEBAAIAAAAAAAAAAAACCQAAAAAGAAABAgAkowAAAKQBAQAAAABATQABJAIAAABNAQANAwAAAKQCBgAAFECAnwIBAqQDCgAJIHDAMAMCVwsAAAD/AwAAAQAAAE0EACQCAAAAxQMEAgEAAAAwAwJ9DAAAAKQFDwAAAOBATQQFzw0AAABNAwTPEAAAAMAFEQASAAAAEgACABIAAQC8AwPHEgAAAJ8DAwGCAAEAEwMJBAAAAEADCgMLAwwDBwQAFECAAw0DDgMPBAkgcMADEAMRAxIDEwQAAOBAAxQGAAMVAQABAAEYAAAAAAABAAIAAAEAAAABAAAAAAAAAAIAAAAAAAAAAAAAAAAJAQAAAAAB

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = v0_0_.Attachment
local new = RaycastParams.new
local v0_2_ = new()
local Exclude = Enum.RaycastFilterType.Exclude
v0_2_.FilterType = Exclude
local v0_3_ = table.create(1)
local v0_4_ = v0_0_.Parent
v0_3_[1] = v0_4_
v0_2_.FilterDescendantsInstances = v0_3_
local v0_5_ = game
v0_4_ = v0_5_["Run Service"]
v0_3_ = v0_4_.RenderStepped
v0_5_ = function()
    local v1_1_ = v0_0_
    local v1_0_ = v1_1_.Velocity
    if v1_0_ then
        v1_0_ = workspace
        local v1_3_ = v0_0_
        local v1_2_ = v1_3_.CFrame
        v1_3_ = Vector3.new(2.000000, 0.100000, 1.000000)
        local v1_4_ = Vector3.new(0.000000, -10.000000, 0.000000)
        local v1_5_ = v0_2_
        v1_0_ = v1_0_:Blockcast(v1_2_, v1_3_, v1_4_, v1_5_)
        v1_1_ = 10
        if v1_0_ then
            v1_1_ = v1_0_.Distance
        end
        v1_2_ = v0_1_
        v1_4_ = 0
        v1_5_ = -v1_1_
        local v1_6_ = 0
        local new = Vector3.new
        v1_3_ = new(v1_4_, v1_5_, v1_6_)
        v1_2_.Position = v1_3_
    end
end
v0_3_:Connect(v0_5_)
