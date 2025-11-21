-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = {}
v0_2_ = "TopbarPlusReference"
v0_1_.objectName = v0_2_
v0_2_ = function()
    local v1_0_ = v0_0_
    local v1_3_ = v0_1_
    local v1_2_ = v1_3_.objectName
    v1_0_ = v1_0_:FindFirstChild(v1_2_)
    if v1_0_ then
        local v1_1_ = false
        return v1_1_
    end
    local new = Instance.new
    v1_2_ = "ObjectValue"
    local v1_1_ = new(v1_2_)
    v1_3_ = v0_1_
    v1_2_ = v1_3_.objectName
    v1_1_.Name = v1_2_
    v1_3_ = script
    v1_2_ = v1_3_.Parent
    v1_1_.Value = v1_2_
    v1_2_ = v0_0_
    v1_1_.Parent = v1_2_
    return v1_1_
end
v0_1_.addToReplicatedStorage = v0_2_
v0_2_ = function()
    local v2_0_ = v0_0_
    local v2_3_ = v0_1_
    local v2_2_ = v2_3_.objectName
    v2_0_ = v2_0_:FindFirstChild(v2_2_)
    if v2_0_ then
        return v2_0_
    end
    local v2_1_ = false
    return v2_1_
end
v0_1_.getObject = v0_2_
return v0_1_
