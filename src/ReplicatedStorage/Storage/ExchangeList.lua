-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = table.create(10)
local v0_1_ = {}
local v0_2_ = "Wind essence"
v0_1_.ItemName = v0_2_
v0_2_ = 1
v0_1_.EarningPoints = v0_2_
v0_2_ = {}
local v0_3_ = "Icicle"
v0_2_.ItemName = v0_3_
v0_3_ = 1
v0_2_.EarningPoints = v0_3_
v0_3_ = {}
local v0_4_ = "Rainy Bottle"
v0_3_.ItemName = v0_4_
v0_4_ = 1
v0_3_.EarningPoints = v0_4_
v0_4_ = {}
local v0_5_ = "Eternal Flame"
v0_4_.ItemName = v0_5_
v0_5_ = 13
v0_4_.EarningPoints = v0_5_
v0_5_ = {}
local v0_6_ = "Piece of Star"
v0_5_.ItemName = v0_6_
v0_6_ = 15
v0_5_.EarningPoints = v0_6_
v0_6_ = {}
local v0_7_ = "Curruptaine"
v0_6_.ItemName = v0_7_
v0_7_ = 18
v0_6_.EarningPoints = v0_7_
v0_7_ = {}
local v0_8_ = "NULL"
v0_7_.ItemName = v0_8_
v0_8_ = 27
v0_7_.EarningPoints = v0_8_
v0_8_ = {}
local v0_9_ = "Hour Glass"
v0_8_.ItemName = v0_9_
v0_9_ = 24
v0_8_.EarningPoints = v0_9_
v0_9_ = {}
local v0_10_ = "Stella Star"
v0_9_.ItemName = v0_10_
v0_10_ = 3
v0_9_.EarningPoints = v0_10_
v0_10_ = {}
local v0_11_ = "Void Coin"
v0_10_.ItemName = v0_11_
v0_11_ = 250
v0_10_.EarningPoints = v0_11_
v0_0_[1] = v0_1_
v0_0_[2] = v0_2_
v0_0_[3] = v0_3_
v0_0_[4] = v0_4_
v0_0_[5] = v0_5_
v0_0_[6] = v0_6_
v0_0_[7] = v0_7_
v0_0_[8] = v0_8_
v0_0_[9] = v0_9_
v0_0_[10] = v0_10_
v0_1_ = {}
v0_2_ = ipairs
v0_3_ = v0_0_
v0_2_, v0_3_, v0_4_ = v0_2_(v0_3_)
for v0_5_, v0_6_ in v0_2_, v0_3_, v0_4_ do
    v0_6_.Index = v0_5_
    v0_7_ = v0_6_.ItemName
    v0_1_[v0_7_] = v0_6_
end
v0_4_ = {}
v0_5_ = function(a1, a2)
    if a2 == "Container" then
        local v1_2_ = v0_1_
        return v1_2_
    end
    local v1_3_ = v0_1_
    local v1_4_ = a2
    local v1_2_ = rawget
    v1_2_ = v1_2_(v1_3_, v1_4_)
    return v1_2_
end
v0_4_.__index = v0_5_
v0_3_ = v0_0_
v0_2_ = setmetatable
v0_2_(v0_3_, v0_4_)
return v0_0_
