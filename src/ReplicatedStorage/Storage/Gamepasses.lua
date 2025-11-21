-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = table.create(8)
local v0_1_ = {}
local v0_2_ = "QuickRoll"
v0_1_.Id = v0_2_
v0_2_ = 673353863.000000
v0_1_.PassId = v0_2_
v0_2_ = 1815197991.000000
v0_1_.GamepassGiftProductId = v0_2_
v0_2_ = {}
local v0_3_ = "VIP"
v0_2_.Id = v0_3_
v0_3_ = 705238616.000000
v0_2_.PassId = v0_3_
v0_3_ = 1815198387.000000
v0_2_.GamepassGiftProductId = v0_3_
v0_3_ = {}
local v0_4_ = "Invisible_Gear"
v0_3_.Id = v0_4_
v0_4_ = "Invisible Gear"
v0_3_.DisplayName = v0_4_
v0_4_ = 792728808.000000
v0_3_.PassId = v0_4_
v0_4_ = 1817922747.000000
v0_3_.GamepassGiftProductId = v0_4_
v0_4_ = {}
local v0_5_ = "VIP_Plus"
v0_4_.Id = v0_5_
v0_5_ = "VIP+"
v0_4_.DisplayName = v0_5_
v0_5_ = 952898058.000000
v0_4_.PassId = v0_5_
v0_5_ = 2459574572.000000
v0_4_.GamepassGiftProductId = v0_5_
v0_5_ = {}
local v0_6_ = "Merchant_Teleporter"
v0_5_.Id = v0_6_
v0_6_ = "Merchant Teleporter"
v0_5_.DisplayName = v0_6_
v0_6_ = 879770191.000000
v0_5_.PassId = v0_6_
v0_6_ = 1895377452.000000
v0_5_.GamepassGiftProductId = v0_6_
v0_6_ = {}
local v0_7_ = "Innovator_pack_Vol1"
v0_6_.Id = v0_7_
v0_7_ = "Innovator pack Vol1"
v0_6_.DisplayName = v0_7_
v0_7_ = 2659990669.000000
v0_6_.ProductId = v0_7_
v0_7_ = 2653333608.000000
v0_6_.GamepassGiftProductId = v0_7_
v0_7_ = 1732849199.000000
v0_6_.LimitedTime = v0_7_
v0_7_ = 2
v0_6_.PurchaseLimit = v0_7_
v0_7_ = {}
local v0_8_ = "RIA Points"
v0_7_.Name = v0_8_
v0_8_ = "Robux"
v0_7_.Price = v0_8_
local new = Color3.new
local v0_9_ = 0.384314
local v0_10_ = 1
local v0_11_ = 1
v0_8_ = new(v0_9_, v0_10_, v0_11_)
v0_7_.Color = v0_8_
v0_6_.Alternatives = v0_7_
v0_7_ = {}
v0_8_ = "Innovator_pack_Vol2"
v0_7_.Id = v0_8_
v0_8_ = " Innovator pack Vol2"
v0_7_.DisplayName = v0_8_
v0_8_ = 2659990840.000000
v0_7_.ProductId = v0_8_
v0_8_ = 2653333609.000000
v0_7_.GamepassGiftProductId = v0_8_
v0_8_ = 1732849199.000000
v0_7_.LimitedTime = v0_8_
v0_8_ = 2
v0_7_.PurchaseLimit = v0_8_
v0_8_ = {}
v0_9_ = "RIA Points"
v0_8_.Name = v0_9_
v0_9_ = "Robux"
v0_8_.Price = v0_9_
local new = Color3.new
v0_10_ = 0.384314
v0_11_ = 1
local v0_12_ = 1
v0_9_ = new(v0_10_, v0_11_, v0_12_)
v0_8_.Color = v0_9_
v0_7_.Alternatives = v0_8_
v0_8_ = {}
v0_9_ = "Innovator_pack_Vol3"
v0_8_.Id = v0_9_
v0_9_ = "Innovator pack V﻿ol3"
v0_8_.DisplayName = v0_9_
v0_9_ = 2659990920.000000
v0_8_.ProductId = v0_9_
v0_9_ = 2653333607.000000
v0_8_.GamepassGiftProductId = v0_9_
v0_9_ = 1732849199.000000
v0_8_.LimitedTime = v0_9_
v0_9_ = 2
v0_8_.PurchaseLimit = v0_9_
v0_9_ = {}
v0_10_ = "RIA Points"
v0_9_.Name = v0_10_
v0_10_ = "Robux"
v0_9_.Price = v0_10_
local new = Color3.new
v0_11_ = 0.384314
v0_12_ = 1
local v0_13_ = 1
v0_10_ = new(v0_11_, v0_12_, v0_13_)
v0_9_.Color = v0_10_
v0_8_.Alternatives = v0_9_
v0_0_[1] = v0_1_
v0_0_[2] = v0_2_
v0_0_[3] = v0_3_
v0_0_[4] = v0_4_
v0_0_[5] = v0_5_
v0_0_[6] = v0_6_
v0_0_[7] = v0_7_
v0_0_[8] = v0_8_
v0_1_ = {}
v0_2_ = ipairs
v0_3_ = v0_0_
v0_2_, v0_3_, v0_4_ = v0_2_(v0_3_)
for v0_5_, v0_6_ in v0_2_, v0_3_, v0_4_ do
    v0_7_ = v0_6_.Id
    v0_1_[v0_7_] = v0_6_
end
v0_4_ = {}
v0_5_ = function(a1, a2)
    if a2 == "Container" then
        local v1_2_ = v0_1_
        return v1_2_
    end
end
v0_4_.__index = v0_5_
v0_3_ = v0_0_
v0_2_ = setmetatable
v0_2_(v0_3_, v0_4_)
v0_2_ = game
v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_2_ = v0_2_:IsClient()
if v0_2_ then
    v0_2_ = game
    v0_4_ = "MarketplaceService"
    v0_2_ = v0_2_:GetService(v0_4_)
    v0_3_ = require
    v0_4_ = game
    v0_6_ = "ReplicatedStorage"
    v0_4_ = v0_4_:GetService(v0_6_)
    v0_6_ = "Modules"
    v0_4_ = v0_4_:WaitForChild(v0_6_)
    v0_6_ = "Queue"
    v0_3_ = v0_3_(v0_4_:WaitForChild(v0_6_))
    v0_5_ = v0_3_.Waitter
    v0_4_ = v0_5_.new
    v0_5_ = "Gamepass"
    v0_4_ = v0_4_(v0_5_)
    v0_5_ = pairs
    v0_6_ = v0_0_
    v0_5_, v0_6_, v0_7_ = v0_5_(v0_6_)
    for v0_8_, v0_9_ in v0_5_, v0_6_, v0_7_ do
        v0_13_ = v0_3_.Process
        v0_12_ = v0_13_.new
        v0_13_ = function()
            local v2_0_ = nil
            local v2_3_ = v0_9_
            local v2_2_ = v2_3_.ProductId
            if v2_2_ == nil then
                local v2_1_ = false
            end
            local v2_1_ = true
            local v2_4_ = v0_3_
            v2_3_ = v2_4_.Process
            v2_2_ = v2_3_.new
            v2_4_ = v0_2_
            v2_3_ = v2_4_.GetProduct0o
            v2_4_ = v0_2_
            if v2_1_ then
                local v2_6_ = v0_9_
                local v2_5_ = v2_6_.ProductId
                if not v2_5_ then
                    v2_6_ = v0_9_
                    v2_5_ = v2_6_.PassId
                end
            end
            local v2_6_ = v0_9_
            local v2_5_ = v2_6_.PassId
            if v2_1_ then
                local Product = Enum.0oType.Product
                if not Product then
                    local GamePass = Enum.0oType.GamePass
                end
            end
            local GamePass = Enum.0oType.GamePass
            v2_2_ = v2_2_(v2_3_, v2_4_, v2_5_, GamePass)
            v2_2_ = v2_2_:execute()
            v2_2_ = v2_2_:await()
            v2_0_ = v2_2_
            v2_2_ = v2_0_:hasError()
            if v2_2_ then
                local wait = task.wait
                v2_3_ = 2
                wait(v2_3_)
            end
            v2_2_ = v2_0_:hasError()
            while v2_2_ do
            end
            v2_2_ = v2_0_:getResults()
            v2_3_ = v0_9_
            v2_5_ = v0_9_
            v2_4_ = v2_5_.DisplayName
            if not v2_4_ then
                v2_4_ = v2_2_.Name
            end
            v2_3_.DisplayName = v2_4_
            v2_3_ = v0_9_
            v2_5_ = v0_9_
            v2_4_ = v2_5_.Description
            if not v2_4_ then
                v2_4_ = v2_2_.Description
            end
            v2_3_.Description = v2_4_
            v2_3_ = v0_9_
            v2_4_ = v2_2_.PriceInRobux
            v2_3_.Price = v2_4_
            v2_3_ = v0_9_
            v2_4_ = v2_2_.IsForSale
            v2_3_.IsForSale = v2_4_
            v2_3_ = v0_9_
            v2_4_ = v2_2_.IconImageAssetId
            v2_3_.ImageId = v2_4_
        end
    end
    v0_5_ = v0_4_:executeAll()
    v0_5_ = v0_5_:await()
    v0_5_:destroy()
end
return v0_0_
