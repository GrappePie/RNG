-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMMBG1hdGgDc2luBnNjcmlwdAZQYXJlbnQGQ0ZyYW1lBkFuZ2xlcw5GaW5kRmlyc3RDaGlsZARnYW1lClJ1blNlcnZpY2UKR2V0U2VydmljZQ1SZW5kZXJTdGVwcGVkB0Nvbm5lY3QAAggBAgAAACv7AQAAQwEBAN4BAAD7AgAAuxgCAqQBAgAABACAnwECAowDAQBbBAEDQwIDBN4CAQCkAwUAAABAQE0CAyQGAAAATQMChQcAAACkBAkAACBwgIwFAAD7BwEACQYAB4wHAACfBAQCCQMDBDADAoUHAAAAjAQBAIwCBACMAwEAqAIKAKQGBQAAAEBATQUGJAYAAABSBwQAvAUFAwoAAACfBQMCDgUAAIsC9v+CAAEACwMBAwIEAAQAgAIAAAAAAADgPwMDBAAAQEADBAMFAwYEACBwgAMHAAQAARgAAAABAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAAf4FBQAAAAAGAAABAgATowAAAIwAAQCMAQAApAMBAAAAAEBvBQIAvAMDFgMAAACfAwMCTQIDzwQAAADZBAAAEgEB/xIBAP+8AgLHBQAAAJ8CAwHBAAAAggABAAYDCAQAAABAAwkDCgMLAwwBAAEAARgAAAECAAAAAAAAAAAAAAAAAAoAAQAAAAAB

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = 1
local v0_1_ = 0
local v0_3_ = game
local v0_5_ = "RunService"
v0_3_ = v0_3_:GetService(v0_5_)
local v0_2_ = v0_3_.RenderStepped
local v0_4_ = function(a1)
    local v1_1_ = v0_1_
    v1_1_ += a1
    v0_1_ = a1
    local v1_2_ = v0_1_
    local sin = math.sin
    v1_1_ = sin(v1_2_)
    local v1_3_ = 1
    local v1_4_ = v1_1_ * 0.500000
    v1_2_ = v1_3_ + v1_4_
    v0_0_ = v1_1_
    v1_3_ = script
    v1_2_ = v1_3_.Parent
    v1_3_ = v1_2_.CFrame
    local Angles = CFrame.Angles
    local v1_5_ = 0
    local v1_7_ = v0_0_
    local v1_6_ = a1 * v1_7_
    v1_7_ = 0
    v1_4_ = Angles(v1_5_, v1_6_, v1_7_)
    v1_3_ *= v1_4_
    v1_2_.CFrame = v1_3_
    v1_4_ = 1
    v1_2_ = 4
    v1_3_ = 1
    for v1_4_ = v1_4_, v1_2_, v1_3_ do
        v1_6_ = script
        v1_5_ = v1_6_.Parent
        v1_7_ = v1_4_
        v1_5_ = v1_5_:FindFirstChild(v1_7_)
        if v1_5_ then
        end
    end
end
v0_2_:Connect(v0_4_)
