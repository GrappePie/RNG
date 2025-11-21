-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "MarketplaceService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = require
local v0_5_ = "Modules"
v0_3_ = v0_0_:WaitForChild(v0_5_)
v0_5_ = "Utility"
v0_2_ = v0_2_(v0_3_:WaitForChild(v0_5_))
v0_3_ = function(a1)
    local v1_3_ = "Id"
    local v1_1_ = a1:GetAttribute(v1_3_)
    v1_3_ = v0_2_
    local v1_2_ = v1_3_.TryUntilSuccess
    local v1_4_ = v0_1_
    v1_3_ = v1_4_.GetProduct0o
    v1_4_ = v0_1_
    local v1_5_ = v1_1_
    v1_2_ = v1_2_(v1_3_, v1_4_, v1_5_)
    v1_5_ = "Sign"
    v1_3_ = a1:WaitForChild(v1_5_)
    v1_5_ = "SurfaceGui"
    v1_3_ = v1_3_:WaitForChild(v1_5_)
    v1_5_ = "TextLabel"
    v1_3_ = v1_3_:WaitForChild(v1_5_)
    v1_4_ = "%* R$"
    local v1_6_ = v1_2_.PriceInRobux
    v1_4_ = v1_4_:format(v1_6_)
    v1_3_.Text = v1_4_
end
local v0_4_ = ipairs
local v0_6_ = script
v0_5_ = v0_6_.Parent
v0_4_, v0_5_, v0_6_ = v0_4_(v0_5_:GetChildren())
for v0_7_, v0_8_ in v0_4_, v0_5_, v0_6_ do
    local v0_11_ = "Id"
    local v0_9_ = v0_8_:GetAttribute(v0_11_)
    if v0_9_ then
        v0_9_ = v0_3_
        local v0_10_ = v0_8_
        v0_9_(v0_10_)
    end
end
