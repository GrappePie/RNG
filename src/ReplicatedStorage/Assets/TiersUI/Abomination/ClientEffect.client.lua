-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = table.create(1)
local v0_2_ = script
local v0_1_ = v0_2_.Parent
v0_0_[1] = v0_1_
v0_2_ = script
v0_1_ = v0_2_.Parent
local v0_3_ = "Rarity"
local v0_4_ = 2
v0_1_ = v0_1_:WaitForChild(v0_3_, v0_4_)
if v0_1_ then
    v0_3_ = v0_0_
    v0_4_ = v0_1_
    local insert = table.insert
    insert(v0_3_, v0_4_)
end
v0_2_ = game
v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = 0
v0_4_ = table.create(3)
local fromRGB = Color3.fromRGB
local v0_6_ = 255
local v0_7_ = 0
local v0_8_ = 4
local v0_5_ = fromRGB(v0_6_, v0_7_, v0_8_)
local fromRGB = Color3.fromRGB
v0_7_ = 255
v0_8_ = 0
local v0_9_ = 234
v0_6_ = fromRGB(v0_7_, v0_8_, v0_9_)
local fromRGB = Color3.fromRGB
v0_8_ = 0
v0_9_ = 0
local v0_10_ = 0
-- WARNING: SETLIST_C0, output may be wrong!
v0_4_ = {v0_5_, fromRGB(v0_8_, v0_9_, v0_10_)}
local FontWeight = Enum.FontWeight
v0_5_ = FontWeight:GetEnumItems()
local FontStyle = Enum.FontStyle
v0_6_ = FontStyle:GetEnumItems()
local Font = Enum.Font
v0_7_ = Font:GetEnumItems()
v0_8_ = table.create(5)
v0_9_ = "!"
v0_10_ = "@"
local v0_11_ = "#"
local v0_12_ = "%"
local v0_13_ = "&"
v0_8_[1] = v0_9_
v0_8_[2] = v0_10_
v0_8_[3] = v0_11_
v0_8_[4] = v0_12_
v0_8_[5] = v0_13_
v0_9_ = function(a1)
    local v1_1_ = ""
    local split = string.split
    local v1_3_ = a1
    local v1_4_ = ""
    local v1_2_ = split(v1_3_, v1_4_)
    local v1_5_ = 1
    v1_3_ = #a1
    v1_4_ = 1
    for v1_5_ = v1_5_, v1_3_, v1_4_ do
        local random = math.random
        local v1_7_ = 1
        local v1_8_ = 3
        local v1_6_ = random(v1_7_, v1_8_)
        if v1_6_ ~= 1.000000 then
            v1_6_ = v1_1_
            local random = math.random
            local v1_9_ = 1
            local v1_10_ = 2
            v1_8_ = random(v1_9_, v1_10_)
            if v1_8_ == 1.000000 then
                local lower = string.lower
                v1_8_ = v1_2_[v1_5_]
                v1_7_ = lower(v1_8_)
                if not v1_7_ then
                    local upper = string.upper
                    v1_8_ = v1_2_[v1_5_]
                    v1_7_ = upper(v1_8_)
                end
            end
            local upper = string.upper
            v1_8_ = v1_2_[v1_5_]
            v1_7_ = upper(v1_8_)
            v1_1_ = v1_6_
        else
            v1_6_ = v1_1_
            v1_8_ = v0_8_
            local random = math.random
            local v1_10_ = 1
            local v1_12_ = v0_8_
            local v1_11_ = #v1_12_
            local v1_9_ = random(v1_10_, v1_11_)
            v1_7_ = v1_8_[v1_9_]
            v1_1_ = v1_6_
        end
    end
    return v1_1_
end
v0_10_ = function(a1)
    local v2_1_ = ""
    local split = string.split
    local v2_3_ = a1
    local v2_4_ = ""
    local v2_2_ = split(v2_3_, v2_4_)
    local v2_5_ = 1
    v2_3_ = #a1
    v2_4_ = 1
    for v2_5_ = v2_5_, v2_3_, v2_4_ do
        local v2_6_ = v2_1_
        local v2_7_ = v2_2_[v2_5_]
        v2_1_ = v2_6_
        v2_6_ = #a1
        if v2_5_ ~= v2_6_ then
            v2_6_ = v2_1_
            v2_7_ = " "
            v2_1_ = v2_6_
        end
    end
    return v2_1_
end
v0_11_ = v0_2_.RenderStepped
v0_13_ = function(a1)
    local v3_2_ = script
    local v3_1_ = v3_2_.Parent
    if v3_1_ then
        v3_1_ = script
        local v3_3_ = game
        v3_1_ = v3_1_:IsDescendantOf(v3_3_)
        if not v3_1_ then
            return
        end
    end
    return
end
v0_11_:Connect(v0_13_)
