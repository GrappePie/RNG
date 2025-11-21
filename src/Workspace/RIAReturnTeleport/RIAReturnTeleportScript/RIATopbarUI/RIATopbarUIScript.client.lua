-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "GuiService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = script
v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.TopBar
v0_3_ = game
v0_2_ = v0_3_.ReplicatedStorage
local v0_4_ = "RIATeleportRequest"
v0_2_ = v0_2_:WaitForChild(v0_4_)
v0_3_ = function()
    local v1_1_ = v0_0_
    local v1_0_ = v1_1_.TopbarInset
    local v1_3_ = v1_0_.Height
    local v1_4_ = 40.000000
    local max = math.max
    local v1_2_ = max(v1_3_, v1_4_)
    v1_3_ = v1_0_.Height
    v1_1_ = v1_2_ - v1_3_
    v1_2_ = v0_1_
    local new = UDim2.new
    v1_4_ = 0
    local v1_5_ = v1_0_.Width
    local v1_6_ = 0
    local v1_8_ = v1_0_.Height
    local v1_9_ = 40.000000
    local max = math.max
    local v1_7_ = max(v1_8_, v1_9_)
    v1_3_ = new(v1_4_, v1_5_, v1_6_, v1_7_)
    v1_2_.Size = v1_3_
    v1_2_ = v0_1_
    local new = UDim2.new
    v1_4_ = 0
    v1_6_ = v1_0_.Min
    v1_5_ = v1_6_.X
    v1_6_ = 0
    v1_9_ = v1_0_.Min
    v1_8_ = v1_9_.Y
    local v1_10_ = v1_1_ / 2.000000
    local floor = math.floor
    v1_9_ = floor(v1_10_)
    v1_7_ = v1_8_ - v1_9_
    v1_3_ = new(v1_4_, v1_5_, v1_6_, v1_7_)
    v1_2_.Position = v1_3_
end
updateInset = v0_3_
v0_3_ = v0_1_.Teleport
v0_4_ = v0_3_.Activated
local v0_6_ = function()
    local v2_0_ = v0_2_
    v2_0_:FireServer()
end
v0_4_:Connect(v0_6_)
v0_6_ = "TopbarInset"
v0_4_ = v0_0_:GetPropertyChangedSignal(v0_6_)
v0_6_ = updateInset
v0_4_:Connect(v0_6_)
v0_4_ = updateInset
v0_4_()
