-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = 0
local fromHSV = Color3.fromHSV
local v0_2_ = 0
local v0_3_ = 1
local v0_4_ = 1
local v0_1_ = fromHSV(v0_2_, v0_3_, v0_4_)
v0_2_ = nil
v0_3_ = nil
v0_4_ = nil
local v0_6_ = game
local v0_8_ = "RunService"
v0_6_ = v0_6_:GetService(v0_8_)
local v0_5_ = v0_6_.Heartbeat
v0_5_ = v0_5_:Wait()
while v0_5_ do
    task.wait()
    v0_6_ = script
    v0_5_ = v0_6_.Parent
    while v0_5_ do
	task.wait()
        local v0_7_ = script
        v0_6_ = v0_7_.Parent
        v0_5_ = v0_6_.Parent
        v0_7_ = "Folder"
        v0_5_ = v0_5_:IsA(v0_7_)
	while not v0_5_ do
	    task.wait()
            v0_0_ += 1.000000
            if v0_0_ == 50.000000 then
                v0_0_ = 0
            end
            local fromHSV = Color3.fromHSV
            v0_6_ = v0_0_ / 50.000000
            v0_7_ = 1
            v0_8_ = 1
            v0_5_ = fromHSV(v0_6_, v0_7_, v0_8_)
            v0_2_ = v0_5_
            local fromRGB = Color3.fromRGB
            local v0_9_ = v0_2_.R
            v0_8_ = v0_9_ * 225.000000
            v0_7_ = v0_8_ + 125.000000
            v0_8_ = 0
            v0_9_ = 255
            local clamp = math.clamp
            v0_6_ = clamp(v0_7_, v0_8_, v0_9_)
            local v0_10_ = v0_2_.G
            v0_9_ = v0_10_ * 225.000000
            v0_8_ = v0_9_ + 125.000000
            v0_9_ = 0
            v0_10_ = 255
            local clamp = math.clamp
            v0_7_ = clamp(v0_8_, v0_9_, v0_10_)
            local v0_11_ = v0_2_.B
            v0_10_ = v0_11_ * 225.000000
            v0_9_ = v0_10_ + 125.000000
            v0_10_ = 0
            v0_11_ = 255
            local clamp = math.clamp
            v0_8_ = clamp(v0_9_, v0_10_, v0_11_)
            v0_5_ = fromRGB(v0_6_, v0_7_, v0_8_)
            v0_3_ = v0_5_
            local new = ColorSequence.new
            v0_6_ = v0_3_
            v0_7_ = v0_2_
            v0_5_ = new(v0_6_, v0_7_)
            v0_4_ = v0_5_
            v0_5_ = ipairs
            v0_7_ = script
            v0_6_ = v0_7_.Parent
            v0_5_, v0_6_, v0_7_ = v0_5_(v0_6_:GetDescendants())
	    for v0_8_, v0_9_ in v0_5_, v0_6_, v0_7_ do
                local v0_12_ = "UIGradient"
                v0_10_ = v0_9_:IsA(v0_12_)
                if v0_10_ then
                    v0_9_.Color = v0_4_
                end
            end
        end
    end
end
