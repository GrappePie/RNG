-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "RunService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_3_ = script
v0_2_ = v0_3_.Parent
v0_3_ = script
local v0_5_ = "Real"
v0_3_ = v0_3_:WaitForChild(v0_5_)
local v0_4_ = nil
local one = Vector2.one
v0_5_ = one * 0.500000
v0_3_.AnchorPoint = v0_5_
local fromScale = UDim2.fromScale
local v0_6_ = 0.500000
local v0_7_ = 0.500000
v0_5_ = fromScale(v0_6_, v0_7_)
v0_3_.Position = v0_5_
local fromScale = UDim2.fromScale
v0_6_ = 1
v0_7_ = 1
v0_5_ = fromScale(v0_6_, v0_7_)
v0_3_.Size = v0_5_
v0_5_ = false
v0_3_.AutoLocalize = v0_5_
v0_5_ = function(a1)
    local v1_1_ = {}
    local graphemes = utf8.graphemes
    local v1_3_ = a1
    local v1_2_, v1_3_, v1_4_ = graphemes(v1_3_)
    local v1_9_ = nil
    local v1_10_ = nil
    local v1_7_ = a1:sub(v1_9_, v1_10_)
    if v1_7_ ~= " " then
        local random = math.random
        v1_10_ = 1
        local v1_11_ = 2
        v1_9_ = random(v1_10_, v1_11_)
        if v1_9_ == 1.000000 then
            local v1_8_ = "<font color=\"rgb(0,0,0)\">%s</font>"
        else
            local v1_8_ = "<font color=\"rgb(255,255,255)\">%s</font>"
        end
        v1_10_ = v1_1_
        local format = string.format
        local v1_12_ = nil
        local random = math.random
        local v1_15_ = 1
        local v1_16_ = 2
        local v1_14_ = random(v1_15_, v1_16_)
        if v1_14_ == 1.000000 then
            local lower = string.lower
            v1_14_ = v1_7_
            local v1_13_ = lower(v1_14_)
            if not v1_13_ then
                local upper = string.upper
                v1_14_ = v1_7_
                v1_13_ = upper(v1_14_)
            end
        end
        local upper = string.upper
        v1_14_ = v1_7_
        local v1_13_ = upper(v1_14_)
        local insert = table.insert
        insert(format(v1_12_, v1_13_))
        v1_9_ = #a1
        if nil ~= v1_9_ then
            v1_10_ = v1_1_
            v1_11_ = " "
            local insert = table.insert
            insert(v1_10_, v1_11_)
            v1_9_ = v1_1_
            v1_10_ = " "
            local insert = table.insert
            insert(v1_9_, v1_10_)
        end
    else
        v1_9_ = v1_1_
        v1_10_ = " "
        local insert = table.insert
        insert(v1_9_, v1_10_)
    end
    local concat = table.concat
    v1_3_ = v1_1_
    return concat(v1_3_)
end
v0_6_ = function()
    local v2_1_ = v0_2_
    local v2_0_ = v2_1_.Parent
    if v2_0_ then
        v2_1_ = v0_3_
        v2_0_ = v2_1_.Parent
        if v2_0_ then
            v2_0_ = v0_3_
            v2_1_ = v0_5_
            local v2_3_ = "[%*]"
            local v2_6_ = v0_2_
            local v2_5_ = v2_6_.LocalizedText
            v2_3_ = v2_3_:format(v2_5_)
            local v2_2_ = v2_3_
            v2_1_ = v2_1_(v2_2_)
            v2_0_.Text = v2_1_
            return
        end
    end
    v2_0_ = v0_4_
    v2_0_:Disconnect()
end
if v0_2_ then
    local v0_9_ = "TextLabel"
    v0_7_ = v0_2_:IsA(v0_9_)
    if v0_7_ then
        v0_7_ = script
        v0_9_ = v0_0_
        v0_7_ = v0_7_:IsDescendantOf(v0_9_)
        if not v0_7_ then
            return
        end
    end
end
return
