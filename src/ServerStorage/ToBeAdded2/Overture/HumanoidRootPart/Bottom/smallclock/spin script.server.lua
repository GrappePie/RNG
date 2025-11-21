-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMJBkNGcmFtZRJmcm9tRXVsZXJBbmdsZXNYWVoGc2NyaXB0BlBhcmVudARnYW1lClJ1blNlcnZpY2UKR2V0U2VydmljZQ1SZW5kZXJTdGVwcGVkB0Nvbm5lY3QAAgcAAQAAAA77AAAA+wMAAE0CA4UAAAAApAMCAAAEAICMBAAAbwUDAIwGAACfAwQCCQECAzABAIUAAAAAggABAAQDAQMCBAAEAIACexSuR+F6dD8AAwABGAAAAAAAAAAAAAAAAAABBAAAAAAFAAABAgATowAAAKQBAQAAAABATQABJAIAAACkAgQAAAAwQG8EBQC8AgIWBgAAAJ8CAwJNAQLPBwAAAMADCAASAAAAvAEBxwkAAACfAQMBggABAAoDAwQAAABAAwQDBQQAADBAAwYDBwMIBgADCQEAAQABGAAAAAAAAgAAAAAAAAAAAAAAAAIBAAAAAAE=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_1_ = v0_2_.RenderStepped
local v0_3_ = function()
    local v1_0_ = v0_0_
    local v1_3_ = v0_0_
    local v1_2_ = v1_3_.CFrame
    local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
    local v1_4_ = 0
    local v1_5_ = 0.005000
    local v1_6_ = 0
    v1_3_ = fromEulerAnglesXYZ(v1_4_, v1_5_, v1_6_)
    local v1_1_ = v1_2_ * v1_3_
    v1_0_.CFrame = v1_1_
end
v0_1_:Connect(v0_3_)
