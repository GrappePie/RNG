-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
v0_2_ = table.create(3)
local v0_5_ = "Cloud"
local v0_3_ = v0_1_:WaitForChild(v0_5_)
local v0_6_ = "Flare"
local v0_4_ = v0_1_:WaitForChild(v0_6_)
local v0_7_ = "Moon"
-- WARNING: SETLIST_C0, output may be wrong!
v0_2_ = {v0_3_, v0_1_:WaitForChild(v0_7_)}
v0_3_ = script
v0_5_ = "Model"
v0_3_ = v0_3_:FindFirstAncestorOfClass(v0_5_)
v0_6_ = "HumanoidRootPart"
v0_4_ = v0_3_:WaitForChild(v0_6_)
v0_5_ = function(a1)
    local v1_1_ = a1.CFrame
    local v1_2_ = nil
    local v1_4_ = v0_0_
    local v1_3_ = v1_4_.RenderStepped
    local v1_5_ = function(a1)
        local v2_2_ = a1
        local v2_1_ = v2_2_.Parent
        if not v2_1_ then
            v2_1_ = v1_2_
            v2_1_:Disconnect()
            return
        end
        local clock = os.clock
        v2_1_ = clock()
        local v2_3_ = 0.250000
        local v2_5_ = v2_1_
        local cos = math.cos
        local v2_4_ = cos(v2_5_)
        v2_2_ = v2_3_ * v2_4_
        v2_4_ = 2.250000
        local v2_6_ = v2_1_
        local sin = math.sin
        v2_5_ = sin(v2_6_)
        v2_3_ = v2_4_ * v2_5_
        v2_5_ = 0.250000
        local v2_7_ = v2_1_
        local sin = math.sin
        v2_6_ = sin(v2_7_)
        v2_4_ = v2_5_ * v2_6_
        v2_5_ = a1
        local new = CFrame.new
        local v2_10_ = v1_1_
        local v2_9_ = v2_10_.Position
        local v2_11_ = v2_2_
        local v2_12_ = v2_3_
        local v2_13_ = v2_4_
        local new_0 = Vector3.new
        v2_10_ = new_0(v2_11_, v2_12_, v2_13_)
        local v2_8_ = v2_9_ + v2_10_
        v2_7_ = new(v2_8_)
        v2_9_ = v1_1_
        v2_8_ = v2_9_.Rotation
        v2_6_ = v2_7_ * v2_8_
        v2_5_.CFrame = v2_6_
    end
    v1_3_ = v1_3_:Connect(v1_5_)
    v1_2_ = v1_3_
end
v0_6_ = v0_2_
v0_7_ = nil
local v0_8_ = nil
local v0_11_ = nil.CFrame
local v0_12_ = nil
local v0_13_ = v0_0_.RenderStepped
local v0_15_ = function(a1)
    local v3_2_ = nil
    local v3_1_ = v3_2_.Parent
    if not v3_1_ then
        v3_1_ = v0_12_
        v3_1_:Disconnect()
        return
    end
    local clock = os.clock
    v3_1_ = clock()
    local v3_3_ = 0.250000
    local v3_5_ = v3_1_
    local cos = math.cos
    local v3_4_ = cos(v3_5_)
    v3_2_ = v3_3_ * v3_4_
    v3_4_ = 2.250000
    local v3_6_ = v3_1_
    local sin = math.sin
    v3_5_ = sin(v3_6_)
    v3_3_ = v3_4_ * v3_5_
    v3_5_ = 0.250000
    local v3_7_ = v3_1_
    local sin = math.sin
    v3_6_ = sin(v3_7_)
    v3_4_ = v3_5_ * v3_6_
    v3_5_ = nil
    local new = CFrame.new
    local v3_10_ = v0_11_
    local v3_9_ = v3_10_.Position
    local v3_11_ = v3_2_
    local v3_12_ = v3_3_
    local v3_13_ = v3_4_
    local new_0 = Vector3.new
    v3_10_ = new_0(v3_11_, v3_12_, v3_13_)
    local v3_8_ = v3_9_ + v3_10_
    v3_7_ = new(v3_8_)
    v3_9_ = v0_11_
    v3_8_ = v3_9_.Rotation
    v3_6_ = v3_7_ * v3_8_
    v3_5_.CFrame = v3_6_
end
v0_13_ = v0_13_:Connect(v0_15_)
v0_12_ = v0_13_
