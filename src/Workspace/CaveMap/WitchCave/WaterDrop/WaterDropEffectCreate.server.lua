-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = function()
    local random = math.random
    local v1_2_ = random()
    local v1_1_ = v1_2_ - 0.500000
    local v1_0_ = v1_1_ * 2.000000
    return v1_0_
end
local fromRGB = Color3.fromRGB
local v0_4_ = 82
local v0_5_ = 99
local v0_6_ = 113
v0_3_ = fromRGB(v0_4_, v0_5_, v0_6_)
v0_4_ = function(a1)
	if a1 == nil then return end
    local v2_3_ = "BasePart"
    local v2_1_ = a1:IsA(v2_3_)
    if v2_1_ then
        v2_1_ = a1.Name
        if v2_1_ ~= "WaterDropArea" then
            return
        end
    end
    return
end
v0_6_ = script
v0_5_ = v0_6_.Parent
local v0_5_, v0_6_, v0_7_ = v0_5_:GetChildren()
local v0_10_ = v0_4_
local v0_11_ = nil
v0_10_(v0_11_)
v0_7_ = script
v0_6_ = v0_7_.Parent
v0_5_ = v0_6_.ChildAdded
v0_7_ = v0_4_
v0_5_:Connect(v0_7_)
