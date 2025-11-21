-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_1_ = v0_2_.RenderStepped
v0_1_:Wait()
v0_1_ = script
v0_1_:Destroy()
local wait = task.wait
wait()
v0_1_ = game
v0_1_ = v0_1_:IsLoaded()
while not v0_1_ do
end
v0_1_ = function()
    local v1_0_ = ""
    local v1_3_ = 1
    local v1_1_ = 20
    local v1_2_ = 1
    for v1_3_ = v1_3_, v1_1_, v1_2_ do
        local v1_4_ = v1_0_
        local random = math.random
        local v1_7_ = 1
        local v1_8_ = 120
        local char = string.char
        local v1_5_ = char(random(v1_7_, v1_8_))
        v1_0_ = v1_4_
    end
    return v1_0_
end
v0_2_ = ipairs
local v0_2_, v0_3_, v0_4_ = v0_2_(v0_0_:GetChildren())
for v0_5_, v0_6_ in v0_2_, v0_3_, v0_4_ do
    local v0_9_ = "Model"
    local v0_7_ = v0_6_:IsA(v0_9_)
    if v0_7_ then
        local defer = task.defer
        local v0_8_ = function()
            local v2_1_ = workspace
            local v2_0_ = v2_1_.Map
            v2_0_ = v2_0_:GetChildren()
            v2_1_ = v0_6_
            local v2_2_ = v0_1_
            v2_2_ = v2_2_()
            v2_1_.Name = v2_2_
            v2_1_ = v0_6_
            local random = math.random
            local v2_4_ = 1
            local v2_5_ = #v2_0_
            local v2_3_ = random(v2_4_, v2_5_)
            v2_2_ = v2_0_[v2_3_]
            v2_1_.Parent = v2_2_
        end
        defer(v0_8_)
    end
end
