-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_3_ = "Fire1Start"
v0_1_ = v0_0_:WaitForChild(v0_3_)
local v0_4_ = "Fire2Start"
local v0_2_ = v0_0_:WaitForChild(v0_4_)
local v0_5_ = "Fire1Emit"
v0_3_ = v0_0_:WaitForChild(v0_5_)
local v0_6_ = "Fire2Emit"
v0_4_ = v0_0_:WaitForChild(v0_6_)
v0_5_ = function(a1)
    local v1_1_ = pairs
    local v1_1_, v1_2_, v1_3_ = v1_1_(a1:GetChildren())
    for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
        local v1_8_ = 140
    end
end
v0_6_ = v0_0_.Parent
while v0_6_ do
    local random = math.random
    local v0_7_ = 1
    local v0_8_ = 2
    v0_6_ = random(v0_7_, v0_8_)
    if v0_6_ == 1.000000 then
        v0_7_ = pairs
        local v0_7_, v0_8_, v0_9_ = v0_7_(v0_1_:GetChildren())
        for v0_10_, v0_11_ in v0_7_, v0_8_, v0_9_ do
            local v0_14_ = 140
        end
        local wait = task.wait
        v0_8_ = 0.500000
        wait(v0_8_)
        v0_7_ = pairs
        v0_7_, v0_8_, v0_9_ = v0_7_(v0_3_:GetChildren())
        for v0_10_, v0_11_ in v0_7_, v0_8_, v0_9_ do
            local v0_14_ = 140
        end
    else
        if v0_6_ == 2.000000 then
            v0_7_ = pairs
            local v0_7_, v0_8_, v0_9_ = v0_7_(v0_2_:GetChildren())
            for v0_10_, v0_11_ in v0_7_, v0_8_, v0_9_ do
                local v0_14_ = 140
            end
            local wait = task.wait
            v0_8_ = 0.500000
            wait(v0_8_)
            v0_7_ = pairs
            v0_7_, v0_8_, v0_9_ = v0_7_(v0_4_:GetChildren())
            for v0_10_, v0_11_ in v0_7_, v0_8_, v0_9_ do
                local v0_14_ = 140
            end
        end
    end
    local wait = task.wait
    local new = Random.new
    v0_8_ = new()
    local v0_10_ = 1
    local v0_11_ = 10
    wait(v0_8_:NextNumber(v0_10_, v0_11_))
end
