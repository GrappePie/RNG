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
local v0_4_ = "PrivateServer"
v0_5_ = function()
    local v1_0_ = {}
    local v1_2_ = v0_2_
    local v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    local v1_4_ = v0_2_
    local v1_3_ = v1_4_.uint32
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.KickPlayer = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.ServerBan = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.ToggleMute = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.nothing
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.ToggleLock = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.nothing
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.Shutdown = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.nothing
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.Refresh = v1_1_
    v1_2_ = v0_2_
    v1_1_ = v1_2_.definePacket
    v1_2_ = {}
    v1_4_ = v0_2_
    v1_3_ = v1_4_.string
    v1_2_.value = v1_3_
    v1_1_ = v1_1_(v1_2_)
    v1_0_.Announcement = v1_1_
    return v1_0_
end
return v0_3_(v0_4_, v0_5_)
