-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = "Modules"
local v0_1_ = v0_0_:WaitForChild(v0_3_)
v0_2_ = require
local v0_5_ = "ByteNet"
v0_2_ = v0_2_(v0_1_:WaitForChild(v0_5_))
v0_3_ = v0_2_.defineNamespace
local v0_4_ = "Crafting"
v0_5_ = function()
    local v1_0_ = {}
    local v1_2_ = v0_2_
    local v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    local v1_4_ = v0_2_
    local v1_3_ = v1_4_.struct
    v1_4_ = {}
    local v1_6_ = v0_2_
    local v1_5_ = v1_6_.string
    v1_4_.recipeName = v1_5_
    v1_6_ = v0_2_
    v1_5_ = v1_6_.string
    v1_4_.ingredientName = v1_5_
    v1_6_ = v0_2_
    v1_5_ = v1_6_.uint32
    v1_4_.amount = v1_5_
    v1_3_ = v1_3_(v1_4_)
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.AddIngredients = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.Craft = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.SetAutoAddTarget = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.UnlockRecipe = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.struct
    v1_4_ = {}
    v1_6_ = v0_2_
    v1_5_ = v1_6_.string
    v1_4_.recipeName = v1_5_
    v1_6_ = v0_2_
    v1_5_ = v1_6_.string
    v1_4_.ingredientName = v1_5_
    v1_6_ = v0_2_
    v1_5_ = v1_6_.uint32
    v1_4_.amount = v1_5_
    v1_3_ = v1_3_(v1_4_)
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.AutoAdded = v1_1_
    return v1_0_
end
return v0_3_(v0_4_, v0_5_)
