-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
v0_2_ = table.create(4)
local v0_5_ = "Attachment1"
local v0_3_ = v0_1_:WaitForChild(v0_5_)
local v0_6_ = "Attachment2"
local v0_4_ = v0_1_:WaitForChild(v0_6_)
local v0_7_ = "Attachment3"
v0_5_ = v0_1_:WaitForChild(v0_7_)
local v0_8_ = "Attachment4"
-- WARNING: SETLIST_C0, output may be wrong!
v0_2_ = {v0_3_, v0_1_:WaitForChild(v0_8_)}
v0_3_ = function(a1)
    local v1_1_ = nil
    local v1_3_ = v0_0_
    local v1_2_ = v1_3_.RenderStepped
    local v1_4_ = function(a1)
        local v2_2_ = a1
        local v2_1_ = v2_2_.Parent
        if not v2_1_ then
            v2_1_ = v1_1_
            v2_1_:Disconnect()
            return
        end
        v2_1_ = a1 * 33.000000
        local Angles = CFrame.Angles
        local v2_4_ = 0
        local v2_7_ = 2
        local v2_6_ = v2_7_ * v2_1_
        local rad = math.rad
        local v2_5_ = rad(v2_6_)
        v2_6_ = 0
        local v2_3_ = Angles(v2_4_, v2_5_, v2_6_)
        local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
        v2_7_ = 0.500000
        v2_6_ = v2_7_ * v2_1_
        local rad = math.rad
        v2_5_ = rad(v2_6_)
        local v2_8_ = 0.500000
        v2_7_ = v2_8_ * v2_1_
        local rad = math.rad
        v2_6_ = rad(v2_7_)
        local v2_9_ = 0.500000
        v2_8_ = v2_9_ * v2_1_
        local rad = math.rad
        v2_7_ = rad(v2_8_)
        v2_4_ = fromEulerAnglesXYZ(v2_5_, v2_6_, v2_7_)
        v2_2_ = v2_3_ * v2_4_
        v2_3_ = a1
        v2_4_ = v2_3_.CFrame
        v2_4_ *= v2_2_
        v2_3_.CFrame = v2_4_
    end
    v1_2_ = v1_2_:Connect(v1_4_)
    v1_1_ = v1_2_
end
v0_4_ = v0_2_
v0_5_ = nil
v0_6_ = nil
local v0_9_ = nil
local v0_10_ = v0_0_.RenderStepped
local v0_12_ = function(a1)
    local v3_2_ = v0_8_
    local v3_1_ = v3_2_.Parent
    if not v3_1_ then
        v3_1_ = v0_9_
        v3_1_:Disconnect()
        return
    end
    v3_1_ = a1 * 33.000000
    local Angles = CFrame.Angles
    local v3_4_ = 0
    local v3_7_ = 2
    local v3_6_ = v3_7_ * v3_1_
    local rad = math.rad
    local v3_5_ = rad(v3_6_)
    v3_6_ = 0
    local v3_3_ = Angles(v3_4_, v3_5_, v3_6_)
    local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
    v3_7_ = 0.500000
    v3_6_ = v3_7_ * v3_1_
    local rad = math.rad
    v3_5_ = rad(v3_6_)
    local v3_8_ = 0.500000
    v3_7_ = v3_8_ * v3_1_
    local rad = math.rad
    v3_6_ = rad(v3_7_)
    local v3_9_ = 0.500000
    v3_8_ = v3_9_ * v3_1_
    local rad = math.rad
    v3_7_ = rad(v3_8_)
    v3_4_ = fromEulerAnglesXYZ(v3_5_, v3_6_, v3_7_)
    v3_2_ = v3_3_ * v3_4_
    v3_3_ = v0_8_
    v3_4_ = v3_3_.CFrame
    v3_4_ *= v3_2_
    v3_3_.CFrame = v3_4_
end
v0_10_ = v0_10_:Connect(v0_12_)
v0_9_ = v0_10_
