-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = v0_0_.Position
local v0_2_ = function(a1)
    local v1_2_ = 0.400000
    local v1_4_ = a1
    local sin = math.sin
    local v1_3_ = sin(v1_4_)
    local v1_1_ = v1_2_ * v1_3_
    v1_4_ = 0.400000
    local v1_6_ = a1
    local sin = math.sin
    local v1_5_ = sin(v1_6_)
    v1_3_ = v1_4_ * v1_5_
    v1_5_ = a1
    local cos = math.cos
    v1_4_ = cos(v1_5_)
    v1_2_ = v1_3_ * v1_4_
    local v1_7_ = 0
    v1_5_ = v1_1_
    v1_6_ = v1_2_
    local new = Vector3.new
    v1_4_ = new(v1_5_, v1_6_, v1_7_)
    v1_5_ = v0_1_
    v1_3_ = v1_4_ + v1_5_
    return v1_3_
end
local v0_3_ = nil
local v0_5_ = game
local v0_7_ = "RunService"
v0_5_ = v0_5_:GetService(v0_7_)
local v0_4_ = v0_5_.RenderStepped
local v0_6_ = function(a1)
    local v2_1_ = v0_0_
    local clock = os.clock
    local v2_4_ = clock()
    local v2_3_ = v2_4_ * 0.600000
    local v2_5_ = 0.400000
    local v2_7_ = v2_3_
    local sin = math.sin
    local v2_6_ = sin(v2_7_)
    v2_4_ = v2_5_ * v2_6_
    v2_7_ = 0.400000
    local v2_9_ = v2_3_
    local sin = math.sin
    local v2_8_ = sin(v2_9_)
    v2_6_ = v2_7_ * v2_8_
    v2_8_ = v2_3_
    local cos = math.cos
    v2_7_ = cos(v2_8_)
    v2_5_ = v2_6_ * v2_7_
    v2_9_ = 0
    v2_7_ = v2_4_
    v2_8_ = v2_5_
    local new = Vector3.new
    v2_6_ = new(v2_7_, v2_8_, v2_9_)
    v2_7_ = v0_1_
    local v2_2_ = v2_6_ + v2_7_
    v2_1_.Position = v2_2_
end
v0_4_ = v0_4_:Connect(v0_6_)
v0_3_ = v0_4_
