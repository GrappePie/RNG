-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = {}
local band = bit32.band
local bor = bit32.bor
local create = buffer.create
local len = buffer.len
local copy = buffer.copy
local readstring = buffer.readstring
local writestring = buffer.writestring
local readu8 = buffer.readu8
local readi8 = buffer.readi8
local writeu8 = buffer.writeu8
local writei8 = buffer.writei8
local lshift = bit32.lshift
local extract = bit32.extract
local ldexp = math.ldexp
local frexp = math.frexp
local floor = math.floor
local modf = math.modf
local sign = math.sign
local sub = string.sub
local char = string.char
local byte = string.byte
local concat = table.concat
local create_0 = table.create
local v0_24_ = function(a1, a2, a3)
    local v1_5_ = 1
    local v1_3_ = a3 // 2.000000
    local v1_4_ = 1
    for v1_5_ = v1_5_, v1_3_, v1_4_ do
        local v1_9_ = a2 + v1_5_
        local v1_8_ = v1_9_ - 1.000000
        local v1_7_ = a1
        local v1_6_ = readu8
        v1_6_ = v1_6_(v1_7_, v1_8_)
        v1_7_ = copy
        v1_8_ = a1
        local v1_10_ = a2 + v1_5_
        v1_9_ = v1_10_ - 1.000000
        v1_10_ = a1
        local v1_12_ = a2 + a3
        local v1_11_ = v1_12_ - v1_5_
        v1_12_ = 1
        v1_7_(v1_8_, v1_9_, v1_10_, v1_11_, v1_12_)
        v1_10_ = a2 + a3
        v1_9_ = v1_10_ - v1_5_
        v1_8_ = a1
        v1_10_ = v1_6_
        v1_7_ = writeu8
        v1_7_(v1_8_, v1_9_, v1_10_)
    end
end
local v0_25_ = function(a1, a2, a3)
    local v2_4_ = a1
    local v2_5_ = a2
    local v2_6_ = a3
    local writeu16 = buffer.writeu16
    writeu16(v2_4_, v2_5_, v2_6_)
    local v2_3_ = v0_24_
    v2_4_ = a1
    v2_5_ = a2
    v2_6_ = 2
    v2_3_(v2_4_, v2_5_, v2_6_)
end
local v0_26_ = function(a1, a2, a3)
    local v3_4_ = a1
    local v3_5_ = a2
    local v3_6_ = a3
    local writei16 = buffer.writei16
    writei16(v3_4_, v3_5_, v3_6_)
    local v3_3_ = v0_24_
    v3_4_ = a1
    v3_5_ = a2
    v3_6_ = 2
    v3_3_(v3_4_, v3_5_, v3_6_)
end
local v0_27_ = function(a1, a2, a3)
    local v4_4_ = a1
    local v4_5_ = a2
    local v4_6_ = a3
    local writeu32 = buffer.writeu32
    writeu32(v4_4_, v4_5_, v4_6_)
    local v4_3_ = v0_24_
    v4_4_ = a1
    v4_5_ = a2
    v4_6_ = 4
    v4_3_(v4_4_, v4_5_, v4_6_)
end
local v0_28_ = function(a1, a2, a3)
    local v5_4_ = a1
    local v5_5_ = a2
    local v5_6_ = a3
    local writei32 = buffer.writei32
    writei32(v5_4_, v5_5_, v5_6_)
    local v5_3_ = v0_24_
    v5_4_ = a1
    v5_5_ = a2
    v5_6_ = 4
    v5_3_(v5_4_, v5_5_, v5_6_)
end
local v0_29_ = function(a1, a2, a3)
    local v6_4_ = a1
    local v6_5_ = a2
    local v6_6_ = a3
    local writef32 = buffer.writef32
    writef32(v6_4_, v6_5_, v6_6_)
    local v6_3_ = v0_24_
    v6_4_ = a1
    v6_5_ = a2
    v6_6_ = 4
    v6_3_(v6_4_, v6_5_, v6_6_)
end
local v0_30_ = function(a1, a2, a3)
    local v7_4_ = a1
    local v7_5_ = a2
    local v7_6_ = a3
    local writef64 = buffer.writef64
    writef64(v7_4_, v7_5_, v7_6_)
    local v7_3_ = v0_24_
    v7_4_ = a1
    v7_5_ = a2
    v7_6_ = 8
    v7_3_(v7_4_, v7_5_, v7_6_)
end
local v0_31_ = function(a1, a2)
    local v8_2_ = v0_24_
    local v8_3_ = a1
    local v8_4_ = a2
    local v8_5_ = 2
    v8_2_(v8_3_, v8_4_, v8_5_)
    v8_3_ = a1
    v8_4_ = a2
    local readu16 = buffer.readu16
    v8_2_ = readu16(v8_3_, v8_4_)
    return v8_2_
end
local v0_32_ = function(a1, a2)
    local v9_2_ = v0_24_
    local v9_3_ = a1
    local v9_4_ = a2
    local v9_5_ = 2
    v9_2_(v9_3_, v9_4_, v9_5_)
    v9_3_ = a1
    v9_4_ = a2
    local readi16 = buffer.readi16
    v9_2_ = readi16(v9_3_, v9_4_)
    return v9_2_
end
local v0_33_ = function(a1, a2)
    local v10_2_ = v0_24_
    local v10_3_ = a1
    local v10_4_ = a2
    local v10_5_ = 4
    v10_2_(v10_3_, v10_4_, v10_5_)
    v10_3_ = a1
    v10_4_ = a2
    local readu32 = buffer.readu32
    v10_2_ = readu32(v10_3_, v10_4_)
    return v10_2_
end
local v0_34_ = function(a1, a2)
    local v11_2_ = v0_24_
    local v11_3_ = a1
    local v11_4_ = a2
    local v11_5_ = 4
    v11_2_(v11_3_, v11_4_, v11_5_)
    v11_3_ = a1
    v11_4_ = a2
    local readi32 = buffer.readi32
    v11_2_ = readi32(v11_3_, v11_4_)
    return v11_2_
end
local v0_35_ = function(a1, a2)
    local v12_2_ = v0_24_
    local v12_3_ = a1
    local v12_4_ = a2
    local v12_5_ = 4
    v12_2_(v12_3_, v12_4_, v12_5_)
    v12_3_ = a1
    v12_4_ = a2
    local readf32 = buffer.readf32
    v12_2_ = readf32(v12_3_, v12_4_)
    return v12_2_
end
local v0_36_ = function(a1, a2)
    local v13_2_ = v0_24_
    local v13_3_ = a1
    local v13_4_ = a2
    local v13_5_ = 8
    v13_2_(v13_3_, v13_4_, v13_5_)
    v13_3_ = a1
    v13_4_ = a2
    local readf64 = buffer.readf64
    v13_2_ = readf64(v13_3_, v13_4_)
    return v13_2_
end
local v0_37_ = function(a1, a2)
    local v14_3_ = a1
    local v14_4_ = a2
    local v14_2_ = readu8
    v14_2_ = v14_2_(v14_3_, v14_4_)
    if v14_2_ == 192.000000 then
        v14_3_ = nil
        v14_4_ = a2 + 1.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 194.000000 then
        v14_3_ = false
        v14_4_ = a2 + 1.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 195.000000 then
        v14_3_ = true
        v14_4_ = a2 + 1.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 196.000000 then
        local v14_5_ = a2 + 1.000000
        v14_4_ = a1
        v14_3_ = readu8
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        local v14_6_ = v14_4_
        local v14_7_ = 0
        local v14_8_ = a1
        local v14_9_ = a2 + 2.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_5_ = v14_4_
        v14_7_ = a2 + 2.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 197.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        v14_6_ = v14_4_
        v14_7_ = 0
        v14_8_ = a1
        local v14_9_ = a2 + 3.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_5_ = v14_4_
        v14_7_ = a2 + 3.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 198.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        v14_6_ = v14_4_
        v14_7_ = 0
        v14_8_ = a1
        local v14_9_ = a2 + 5.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_5_ = v14_4_
        v14_7_ = a2 + 5.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 199.000000 then
        local v14_5_ = a2 + 1.000000
        v14_4_ = a1
        v14_3_ = readu8
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        local v14_6_ = v14_4_
        local v14_7_ = 0
        local v14_8_ = a1
        local v14_9_ = a2 + 3.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_7_ = v0_0_
        v14_6_ = v14_7_.Extension
        v14_5_ = v14_6_.new
        v14_8_ = a2 + 2.000000
        v14_7_ = a1
        v14_6_ = readu8
        v14_6_ = v14_6_(v14_7_, v14_8_)
        v14_7_ = v14_4_
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_7_ = a2 + 2.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 200.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        v14_6_ = v14_4_
        v14_7_ = 0
        v14_8_ = a1
        local v14_9_ = a2 + 4.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_7_ = v0_0_
        v14_6_ = v14_7_.Extension
        v14_5_ = v14_6_.new
        v14_8_ = a2 + 3.000000
        v14_7_ = a1
        v14_6_ = readu8
        v14_6_ = v14_6_(v14_7_, v14_8_)
        v14_7_ = v14_4_
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_7_ = a2 + 3.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 201.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = copy
        v14_6_ = v14_4_
        v14_7_ = 0
        v14_8_ = a1
        local v14_9_ = a2 + 6.000000
        local v14_10_ = v14_3_
        v14_5_(v14_6_, v14_7_, v14_8_, v14_9_, v14_10_)
        v14_7_ = v0_0_
        v14_6_ = v14_7_.Extension
        v14_5_ = v14_6_.new
        v14_8_ = a2 + 5.000000
        v14_7_ = a1
        v14_6_ = readu8
        v14_6_ = v14_6_(v14_7_, v14_8_)
        v14_7_ = v14_4_
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_7_ = a2 + 5.000000
        v14_6_ = v14_7_ + v14_3_
        return v14_5_, v14_6_
    end
    if v14_2_ == 202.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readf32 = buffer.readf32
        v14_5_ = readf32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 5.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 203.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 8
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readf64 = buffer.readf64
        v14_5_ = readf64(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 9.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 204.000000 then
        local v14_5_ = a2 + 1.000000
        v14_4_ = a1
        v14_3_ = readu8
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = a2 + 2.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 205.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 3.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 206.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 5.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 207.000000 then
        local v14_5_ = v0_0_
        v14_4_ = v14_5_.UInt64
        v14_3_ = v14_4_.new
        v14_5_ = a2 + 1.000000
        local v14_6_ = v0_24_
        local v14_7_ = a1
        local v14_8_ = v14_5_
        local v14_9_ = 4
        v14_6_(v14_7_, v14_8_, v14_9_)
        v14_7_ = a1
        v14_8_ = v14_5_
        local readu32 = buffer.readu32
        v14_6_ = readu32(v14_7_, v14_8_)
        v14_4_ = v14_6_
        v14_6_ = a2 + 5.000000
        v14_7_ = v0_24_
        v14_8_ = a1
        v14_9_ = v14_6_
        local v14_10_ = 4
        v14_7_(v14_8_, v14_9_, v14_10_)
        v14_8_ = a1
        v14_9_ = v14_6_
        local readu32 = buffer.readu32
        v14_7_ = readu32(v14_8_, v14_9_)
        v14_5_ = v14_7_
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = a2 + 9.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 208.000000 then
        local v14_5_ = a2 + 1.000000
        v14_4_ = a1
        v14_3_ = readi8
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = a2 + 2.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 209.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readi16 = buffer.readi16
        v14_5_ = readi16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 3.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 210.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readi32 = buffer.readi32
        v14_5_ = readi32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = a2 + 5.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 211.000000 then
        local v14_5_ = v0_0_
        v14_4_ = v14_5_.Int64
        v14_3_ = v14_4_.new
        v14_5_ = a2 + 1.000000
        local v14_6_ = v0_24_
        local v14_7_ = a1
        local v14_8_ = v14_5_
        local v14_9_ = 4
        v14_6_(v14_7_, v14_8_, v14_9_)
        v14_7_ = a1
        v14_8_ = v14_5_
        local readu32 = buffer.readu32
        v14_6_ = readu32(v14_7_, v14_8_)
        v14_4_ = v14_6_
        v14_6_ = a2 + 5.000000
        v14_7_ = v0_24_
        v14_8_ = a1
        v14_9_ = v14_6_
        local v14_10_ = 4
        v14_7_(v14_8_, v14_9_, v14_10_)
        v14_8_ = a1
        v14_9_ = v14_6_
        local readu32 = buffer.readu32
        v14_7_ = readu32(v14_8_, v14_9_)
        v14_5_ = v14_7_
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = a2 + 9.000000
        return v14_3_, v14_4_
    end
    if v14_2_ == 212.000000 then
        v14_3_ = create
        v14_4_ = 1
        v14_3_ = v14_3_(v14_4_)
        v14_4_ = copy
        local v14_5_ = v14_3_
        local v14_6_ = 0
        local v14_7_ = a1
        local v14_8_ = a2 + 2.000000
        local v14_9_ = 1
        v14_4_(v14_5_, v14_6_, v14_7_, v14_8_, v14_9_)
        v14_6_ = v0_0_
        v14_5_ = v14_6_.Extension
        v14_4_ = v14_5_.new
        v14_7_ = a2 + 1.000000
        v14_6_ = a1
        v14_5_ = readu8
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_6_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_)
        v14_5_ = a2 + 3.000000
        return v14_4_, v14_5_
    end
    if v14_2_ == 213.000000 then
        v14_3_ = create
        v14_4_ = 2
        v14_3_ = v14_3_(v14_4_)
        v14_4_ = copy
        local v14_5_ = v14_3_
        local v14_6_ = 0
        local v14_7_ = a1
        local v14_8_ = a2 + 2.000000
        local v14_9_ = 2
        v14_4_(v14_5_, v14_6_, v14_7_, v14_8_, v14_9_)
        v14_6_ = v0_0_
        v14_5_ = v14_6_.Extension
        v14_4_ = v14_5_.new
        v14_7_ = a2 + 1.000000
        v14_6_ = a1
        v14_5_ = readu8
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_6_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_)
        v14_5_ = a2 + 4.000000
        return v14_4_, v14_5_
    end
    if v14_2_ == 214.000000 then
        v14_3_ = create
        v14_4_ = 4
        v14_3_ = v14_3_(v14_4_)
        v14_4_ = copy
        local v14_5_ = v14_3_
        local v14_6_ = 0
        local v14_7_ = a1
        local v14_8_ = a2 + 2.000000
        local v14_9_ = 4
        v14_4_(v14_5_, v14_6_, v14_7_, v14_8_, v14_9_)
        v14_6_ = v0_0_
        v14_5_ = v14_6_.Extension
        v14_4_ = v14_5_.new
        v14_7_ = a2 + 1.000000
        v14_6_ = a1
        v14_5_ = readu8
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_6_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_)
        v14_5_ = a2 + 6.000000
        return v14_4_, v14_5_
    end
    if v14_2_ == 215.000000 then
        v14_3_ = create
        v14_4_ = 8
        v14_3_ = v14_3_(v14_4_)
        v14_4_ = copy
        local v14_5_ = v14_3_
        local v14_6_ = 0
        local v14_7_ = a1
        local v14_8_ = a2 + 2.000000
        local v14_9_ = 8
        v14_4_(v14_5_, v14_6_, v14_7_, v14_8_, v14_9_)
        v14_6_ = v0_0_
        v14_5_ = v14_6_.Extension
        v14_4_ = v14_5_.new
        v14_7_ = a2 + 1.000000
        v14_6_ = a1
        v14_5_ = readu8
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_6_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_)
        v14_5_ = a2 + 10.000000
        return v14_4_, v14_5_
    end
    if v14_2_ == 216.000000 then
        v14_3_ = create
        v14_4_ = 16
        v14_3_ = v14_3_(v14_4_)
        v14_4_ = copy
        local v14_5_ = v14_3_
        local v14_6_ = 0
        local v14_7_ = a1
        local v14_8_ = a2 + 2.000000
        local v14_9_ = 16
        v14_4_(v14_5_, v14_6_, v14_7_, v14_8_, v14_9_)
        v14_6_ = v0_0_
        v14_5_ = v14_6_.Extension
        v14_4_ = v14_5_.new
        v14_7_ = a2 + 1.000000
        v14_6_ = a1
        v14_5_ = readu8
        v14_5_ = v14_5_(v14_6_, v14_7_)
        v14_6_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_)
        v14_5_ = a2 + 18.000000
        return v14_4_, v14_5_
    end
    if v14_2_ == 217.000000 then
        local v14_5_ = a2 + 1.000000
        v14_4_ = a1
        v14_3_ = readu8
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = readstring
        v14_5_ = a1
        local v14_6_ = a2 + 2.000000
        local v14_7_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_, v14_7_)
        v14_6_ = a2 + 2.000000
        v14_5_ = v14_6_ + v14_3_
        return v14_4_, v14_5_
    end
    if v14_2_ == 218.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = readstring
        v14_5_ = a1
        v14_6_ = a2 + 3.000000
        v14_7_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_, v14_7_)
        v14_6_ = a2 + 3.000000
        v14_5_ = v14_6_ + v14_3_
        return v14_4_, v14_5_
    end
    if v14_2_ == 219.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = readstring
        v14_5_ = a1
        v14_6_ = a2 + 5.000000
        v14_7_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_, v14_7_)
        v14_6_ = a2 + 5.000000
        v14_5_ = v14_6_ + v14_3_
        return v14_4_, v14_5_
    end
    if v14_2_ == 220.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create_0
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = a2 + 3.000000
        v14_8_ = 1
        v14_6_ = v14_3_
        v14_7_ = 1
        for v14_8_ = v14_8_, v14_6_, v14_7_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_4_[v14_8_] = v14_10_
            v14_5_ = v14_11_
        end
        return v14_4_, v14_5_
    end
    if v14_2_ == 221.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = create_0
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = a2 + 5.000000
        v14_8_ = 1
        v14_6_ = v14_3_
        v14_7_ = 1
        for v14_8_ = v14_8_, v14_6_, v14_7_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_4_[v14_8_] = v14_10_
            v14_5_ = v14_11_
        end
        return v14_4_, v14_5_
    end
    if v14_2_ == 222.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 2
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu16 = buffer.readu16
        v14_5_ = readu16(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = {}
        v14_5_ = a2 + 3.000000
        v14_6_ = nil
        local v14_9_ = 1
        v14_7_ = v14_3_
        v14_8_ = 1
        for v14_9_ = v14_9_, v14_7_, v14_8_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_6_ = v14_10_
            v14_5_ = v14_11_
            v14_11_ = nil
            v14_12_ = a1
            local v14_13_ = v14_5_
            v14_11_, v14_12_ = v14_11_(v14_12_, v14_13_)
            v14_4_[v14_6_] = v14_11_
            v14_5_ = v14_12_
        end
        return v14_4_, v14_5_
    end
    if v14_2_ == 223.000000 then
        v14_4_ = a2 + 1.000000
        local v14_5_ = v0_24_
        local v14_6_ = a1
        local v14_7_ = v14_4_
        local v14_8_ = 4
        v14_5_(v14_6_, v14_7_, v14_8_)
        v14_6_ = a1
        v14_7_ = v14_4_
        local readu32 = buffer.readu32
        v14_5_ = readu32(v14_6_, v14_7_)
        v14_3_ = v14_5_
        v14_4_ = {}
        v14_5_ = a2 + 5.000000
        v14_6_ = nil
        local v14_9_ = 1
        v14_7_ = v14_3_
        v14_8_ = 1
        for v14_9_ = v14_9_, v14_7_, v14_8_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_6_ = v14_10_
            v14_5_ = v14_11_
            v14_11_ = nil
            v14_12_ = a1
            local v14_13_ = v14_5_
            v14_11_, v14_12_ = v14_11_(v14_12_, v14_13_)
            v14_4_[v14_6_] = v14_11_
            v14_5_ = v14_12_
        end
        return v14_4_, v14_5_
    end
    v14_3_ = 224
    if v14_3_ <= v14_2_ then
        v14_3_ = v14_2_ - 256.000000
        v14_4_ = a2 + 1.000000
        return v14_3_, v14_4_
    end
    v14_3_ = 127
    if v14_2_ <= v14_3_ then
        v14_3_ = v14_2_
        v14_4_ = a2 + 1.000000
        return v14_3_, v14_4_
    end
    v14_3_ = v14_2_ - 128.000000
    v14_4_ = 15
    if v14_3_ <= v14_4_ then
        v14_4_ = v14_2_
        local v14_5_ = 15.000000
        v14_3_ = band
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = {}
        v14_5_ = a2 + 1.000000
        local v14_6_ = nil
        local v14_9_ = 1
        local v14_7_ = v14_3_
        local v14_8_ = 1
        for v14_9_ = v14_9_, v14_7_, v14_8_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_6_ = v14_10_
            v14_5_ = v14_11_
            v14_11_ = nil
            v14_12_ = a1
            local v14_13_ = v14_5_
            v14_11_, v14_12_ = v14_11_(v14_12_, v14_13_)
            v14_4_[v14_6_] = v14_11_
            v14_5_ = v14_12_
        end
        return v14_4_, v14_5_
    end
    v14_3_ = v14_2_ - 144.000000
    v14_4_ = 15
    if v14_3_ <= v14_4_ then
        v14_4_ = v14_2_
        local v14_5_ = 15.000000
        v14_3_ = band
        v14_3_ = v14_3_(v14_4_, v14_5_)
        v14_4_ = create_0
        v14_5_ = v14_3_
        v14_4_ = v14_4_(v14_5_)
        v14_5_ = a2 + 1.000000
        local v14_8_ = 1
        local v14_6_ = v14_3_
        local v14_7_ = 1
        for v14_8_ = v14_8_, v14_6_, v14_7_ do
            local v14_10_ = nil
            local v14_11_ = a1
            local v14_12_ = v14_5_
            v14_10_, v14_11_ = v14_10_(v14_11_, v14_12_)
            v14_4_[v14_8_] = v14_10_
            v14_5_ = v14_11_
        end
        return v14_4_, v14_5_
    end
    v14_3_ = v14_2_ - 160.000000
    v14_4_ = 31
    if v14_3_ <= v14_4_ then
        v14_3_ = v14_2_ - 160.000000
        v14_4_ = readstring
        local v14_5_ = a1
        local v14_6_ = a2 + 1.000000
        local v14_7_ = v14_3_
        v14_4_ = v14_4_(v14_5_, v14_6_, v14_7_)
        v14_6_ = a2 + 1.000000
        v14_5_ = v14_6_ + v14_3_
        return v14_4_, v14_5_
    end
    v14_3_ = error
    v14_4_ = "Not all decoder cases are handled, report as bug to msgpack-luau maintainer"
    v14_3_(v14_4_)
end
local v0_38_ = function(a1, a2)
    local v15_3_ = a1
    local v15_2_ = type
    v15_2_ = v15_2_(v15_3_)
    if a1 == nil then
        v15_3_ = 1
        return v15_3_
    end
    if v15_2_ == "boolean" then
        v15_3_ = 1
        return v15_3_
    end
    if v15_2_ == "string" then
        v15_3_ = #a1
        local v15_4_ = 31
        if v15_3_ <= v15_4_ then
            local v15_5_ = 1
            v15_4_ = v15_5_ + v15_3_
            return v15_4_
        end
        v15_4_ = 255
        if v15_3_ <= v15_4_ then
            local v15_5_ = 2
            v15_4_ = v15_5_ + v15_3_
            return v15_4_
        end
        v15_4_ = 65535.000000
        if v15_3_ <= v15_4_ then
            local v15_5_ = 3
            v15_4_ = v15_5_ + v15_3_
            return v15_4_
        end
        v15_4_ = 4294967295.000000
        if v15_3_ <= v15_4_ then
            local v15_5_ = 5
            v15_4_ = v15_5_ + v15_3_
            return v15_4_
        end
        v15_4_ = error
        local v15_5_ = "Could not encode - too long string"
        v15_4_(v15_5_)
    else
        if v15_2_ == "buffer" then
            v15_3_ = len
            local v15_4_ = a1
            v15_3_ = v15_3_(v15_4_)
            v15_4_ = 255
            if v15_3_ <= v15_4_ then
                local v15_5_ = 2
                v15_4_ = v15_5_ + v15_3_
                return v15_4_
            end
            v15_4_ = 65535.000000
            if v15_3_ <= v15_4_ then
                local v15_5_ = 3
                v15_4_ = v15_5_ + v15_3_
                return v15_4_
            end
            v15_4_ = 4294967295.000000
            if v15_3_ <= v15_4_ then
                local v15_5_ = 5
                v15_4_ = v15_5_ + v15_3_
                return v15_4_
            end
            v15_4_ = error
            local v15_5_ = "Could not encode - too long binary buffer"
            v15_4_(v15_5_)
        else
            if v15_2_ == "number" then
                if a1 == 0.000000 then
                    v15_3_ = 1
                    return v15_3_
                end
                if a1 ~= a1 then
                    v15_3_ = 5
                    return v15_3_
                end
                if a1 == inf then
                    v15_3_ = 5
                    return v15_3_
                end
                if a1 == -inf then
                    v15_3_ = 5
                    return v15_3_
                end
                local v15_4_ = a1
                v15_3_ = modf
                v15_3_, v15_4_ = v15_3_(v15_4_)
                local v15_6_ = a1
                local v15_5_ = sign
                v15_5_ = v15_5_(v15_6_)
                if v15_4_ == 0.000000 then
                    v15_6_ = 4294967295.000000
                    if v15_6_ >= v15_3_ then
                        v15_6_ = -2147483648.000000
                        if v15_3_ < v15_6_ then
                            v15_6_ = 9
                            return v15_6_
                        end
                    end
                end
                v15_6_ = 9
                return v15_6_
            else
                if v15_2_ == "table" then
                    v15_3_ = a1._msgpackType
                    if v15_3_ then
                        local v15_5_ = v0_0_
                        local v15_4_ = v15_5_.Int64
                        if v15_3_ ~= v15_4_ then
                            v15_5_ = v0_0_
                            v15_4_ = v15_5_.UInt64
                            if v15_3_ == v15_4_ then
                                v15_4_ = 9
                                return v15_4_
                            end
                        end
                        v15_4_ = 9
                        return v15_4_
                    end
                    local v15_4_ = a2[a1]
                    if v15_4_ then
                        v15_4_ = error
                        local v15_5_ = "Can not serialize cyclic table"
                        v15_4_(v15_5_)
                    else
                        v15_4_ = true
                        a2[a1] = v15_4_
                    end
                    v15_4_ = #a1
                    local v15_5_ = 0
                    local v15_6_ = pairs
                    local v15_7_ = a1
                    local v15_6_, v15_7_, v15_8_ = v15_6_(v15_7_)
                    for v15_9_, v15_10_ in v15_6_, v15_7_, v15_8_ do
                    end
                    v15_6_ = nil
                    v15_7_ = 15
                    if v15_5_ <= v15_7_ then
                        v15_6_ = 1
                    else
                        v15_7_ = 65535.000000
                        if v15_5_ <= v15_7_ then
                            v15_6_ = 3
                        else
                            v15_7_ = 4294967295.000000
                            if v15_5_ <= v15_7_ then
                                v15_6_ = 5
                            else
                                if v15_4_ == v15_5_ then
                                    v15_7_ = error
                                    v15_8_ = "Could not encode - too long array"
                                    v15_7_(v15_8_)
                                else
                                    v15_7_ = error
                                    v15_8_ = "Could not encode - too long map"
                                    v15_7_(v15_8_)
                                end
                            end
                        end
                    end
                    if v15_4_ == v15_5_ then
                        v15_7_ = 0
                        v15_8_ = ipairs
                        local v15_9_ = a1
                        local v15_8_, v15_9_, v15_10_ = v15_8_(v15_9_)
                        for v15_11_, v15_12_ in v15_8_, v15_9_, v15_10_ do
                            local v15_13_ = nil
                            local v15_14_ = v15_12_
                            local v15_15_ = a2
                            v15_13_ = v15_13_(v15_14_, v15_15_)
                            v15_7_ += v15_13_
                        end
                        v15_8_ = v15_6_ + v15_7_
                        return v15_8_
                    end
                    v15_7_ = 0
                    v15_8_ = pairs
                    local v15_9_ = a1
                    local v15_8_, v15_9_, v15_10_ = v15_8_(v15_9_)
                    for v15_11_, v15_12_ in v15_8_, v15_9_, v15_10_ do
                        local v15_13_ = nil
                        local v15_14_ = v15_11_
                        local v15_15_ = a2
                        v15_13_ = v15_13_(v15_14_, v15_15_)
                        v15_7_ += v15_13_
                        v15_13_ = nil
                        v15_14_ = v15_12_
                        v15_15_ = a2
                        v15_13_ = v15_13_(v15_14_, v15_15_)
                    end
                    v15_8_ = v15_6_ + v15_7_
                    return v15_8_
                end
            end
        end
    end
    v15_3_ = error
    local format = string.format
    local v15_5_ = "Could not encode - unsupported datatype \"%s\""
    local v15_7_ = a1
    local v15_6_ = typeof
    v15_6_ = v15_6_(v15_7_)
    v15_3_(format(v15_5_, v15_6_))
end
local v0_39_ = {}
local v0_40_ = 212
v0_39_[-1] = v0_40_
v0_40_ = 213
v0_39_[0] = v0_40_
v0_40_ = 214
v0_39_[2] = v0_40_
v0_40_ = 215
v0_39_[6] = v0_40_
v0_40_ = 216
v0_39_[14] = v0_40_
v0_40_ = function(a1, a2, a3)
    local v16_4_ = a3
    local v16_3_ = type
    v16_3_ = v16_3_(v16_4_)
    if a3 == nil then
        v16_4_ = writestring
        local v16_5_ = a1
        local v16_6_ = a2
        local v16_7_ = "�"
        v16_4_(v16_5_, v16_6_, v16_7_)
        v16_4_ = a2 + 1.000000
        return v16_4_
    end
    if a3 == false then
        v16_4_ = writestring
        local v16_5_ = a1
        local v16_6_ = a2
        local v16_7_ = "�"
        v16_4_(v16_5_, v16_6_, v16_7_)
        v16_4_ = a2 + 1.000000
        return v16_4_
    end
    if a3 == true then
        v16_4_ = writestring
        local v16_5_ = a1
        local v16_6_ = a2
        local v16_7_ = "�"
        v16_4_(v16_5_, v16_6_, v16_7_)
        v16_4_ = a2 + 1.000000
        return v16_4_
    end
    if v16_3_ == "string" then
        v16_4_ = #a3
        local v16_5_ = 31
        if v16_4_ <= v16_5_ then
            local v16_9_ = 160
            local v16_10_ = v16_4_
            local v16_8_ = bor
            v16_8_ = v16_8_(v16_9_, v16_10_)
            local v16_6_ = a1
            local v16_7_ = a2
            v16_5_ = writeu8
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_5_ = writestring
            v16_6_ = a1
            v16_7_ = a2 + 1.000000
            v16_8_ = a3
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_6_ = a2 + 1.000000
            v16_5_ = v16_6_ + v16_4_
            return v16_5_
        end
        v16_5_ = 255
        if v16_4_ <= v16_5_ then
            local v16_8_ = 217
            local v16_6_ = a1
            local v16_7_ = a2
            v16_5_ = writeu8
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_7_ = a2 + 1.000000
            v16_6_ = a1
            v16_8_ = v16_4_
            v16_5_ = writeu8
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_5_ = writestring
            v16_6_ = a1
            v16_7_ = a2 + 2.000000
            v16_8_ = a3
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_6_ = a2 + 2.000000
            v16_5_ = v16_6_ + v16_4_
            return v16_5_
        end
        v16_5_ = 65535.000000
        if v16_4_ <= v16_5_ then
            local v16_8_ = 218
            local v16_6_ = a1
            local v16_7_ = a2
            v16_5_ = writeu8
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_5_ = a2 + 1.000000
            v16_7_ = a1
            v16_8_ = v16_5_
            local v16_9_ = v16_4_
            local writeu16 = buffer.writeu16
            writeu16(v16_7_, v16_8_, v16_9_)
            v16_6_ = v0_24_
            v16_7_ = a1
            v16_8_ = v16_5_
            v16_9_ = 2
            v16_6_(v16_7_, v16_8_, v16_9_)
            v16_5_ = writestring
            v16_6_ = a1
            v16_7_ = a2 + 3.000000
            v16_8_ = a3
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_6_ = a2 + 3.000000
            v16_5_ = v16_6_ + v16_4_
            return v16_5_
        end
        v16_5_ = 4294967295.000000
        if v16_4_ <= v16_5_ then
            local v16_8_ = 219
            local v16_6_ = a1
            local v16_7_ = a2
            v16_5_ = writeu8
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_5_ = a2 + 1.000000
            v16_7_ = a1
            v16_8_ = v16_5_
            local v16_9_ = v16_4_
            local writeu32 = buffer.writeu32
            writeu32(v16_7_, v16_8_, v16_9_)
            v16_6_ = v0_24_
            v16_7_ = a1
            v16_8_ = v16_5_
            v16_9_ = 4
            v16_6_(v16_7_, v16_8_, v16_9_)
            v16_5_ = writestring
            v16_6_ = a1
            v16_7_ = a2 + 5.000000
            v16_8_ = a3
            v16_5_(v16_6_, v16_7_, v16_8_)
            v16_6_ = a2 + 5.000000
            v16_5_ = v16_6_ + v16_4_
            return v16_5_
        end
        v16_5_ = error
        local v16_6_ = "Could not encode - too long string"
        v16_5_(v16_6_)
    else
        if v16_3_ == "buffer" then
            v16_4_ = len
            local v16_5_ = a3
            v16_4_ = v16_4_(v16_5_)
            v16_5_ = 255
            if v16_4_ <= v16_5_ then
                local v16_8_ = 196
                local v16_6_ = a1
                local v16_7_ = a2
                v16_5_ = writeu8
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_7_ = a2 + 1.000000
                v16_6_ = a1
                v16_8_ = v16_4_
                v16_5_ = writeu8
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_5_ = copy
                v16_6_ = a1
                v16_7_ = a2 + 2.000000
                v16_8_ = a3
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_6_ = a2 + 2.000000
                v16_5_ = v16_6_ + v16_4_
                return v16_5_
            end
            v16_5_ = 65535.000000
            if v16_4_ <= v16_5_ then
                local v16_8_ = 197
                local v16_6_ = a1
                local v16_7_ = a2
                v16_5_ = writeu8
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_5_ = a2 + 1.000000
                v16_7_ = a1
                v16_8_ = v16_5_
                local v16_9_ = v16_4_
                local writeu16 = buffer.writeu16
                writeu16(v16_7_, v16_8_, v16_9_)
                v16_6_ = v0_24_
                v16_7_ = a1
                v16_8_ = v16_5_
                v16_9_ = 2
                v16_6_(v16_7_, v16_8_, v16_9_)
                v16_5_ = copy
                v16_6_ = a1
                v16_7_ = a2 + 3.000000
                v16_8_ = a3
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_6_ = a2 + 3.000000
                v16_5_ = v16_6_ + v16_4_
                return v16_5_
            end
            v16_5_ = 4294967295.000000
            if v16_4_ <= v16_5_ then
                local v16_8_ = 198
                local v16_6_ = a1
                local v16_7_ = a2
                v16_5_ = writeu8
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_5_ = a2 + 1.000000
                v16_7_ = a1
                v16_8_ = v16_5_
                local v16_9_ = v16_4_
                local writeu32 = buffer.writeu32
                writeu32(v16_7_, v16_8_, v16_9_)
                v16_6_ = v0_24_
                v16_7_ = a1
                v16_8_ = v16_5_
                v16_9_ = 4
                v16_6_(v16_7_, v16_8_, v16_9_)
                v16_5_ = copy
                v16_6_ = a1
                v16_7_ = a2 + 5.000000
                v16_8_ = a3
                v16_5_(v16_6_, v16_7_, v16_8_)
                v16_6_ = a2 + 5.000000
                v16_5_ = v16_6_ + v16_4_
                return v16_5_
            end
            v16_5_ = error
            local v16_6_ = "Could not encode - too long binary buffer"
            v16_5_(v16_6_)
        else
            if v16_3_ == "number" then
                if a3 == 0.000000 then
                    local v16_7_ = 0
                    local v16_5_ = a1
                    local v16_6_ = a2
                    v16_4_ = writeu8
                    v16_4_(v16_5_, v16_6_, v16_7_)
                    v16_4_ = a2 + 1.000000
                    return v16_4_
                end
                if a3 ~= a3 then
                    v16_4_ = writestring
                    local v16_5_ = a1
                    local v16_6_ = a2
                    local v16_7_ = "��\0"
                    v16_4_(v16_5_, v16_6_, v16_7_)
                    v16_4_ = a2 + 5.000000
                    return v16_4_
                end
                if a3 == inf then
                    v16_4_ = writestring
                    local v16_5_ = a1
                    local v16_6_ = a2
                    local v16_7_ = "��\0\0"
                    v16_4_(v16_5_, v16_6_, v16_7_)
                    v16_4_ = a2 + 5.000000
                    return v16_4_
                end
                if a3 == -inf then
                    v16_4_ = writestring
                    local v16_5_ = a1
                    local v16_6_ = a2
                    local v16_7_ = "���\0\0"
                    v16_4_(v16_5_, v16_6_, v16_7_)
                    v16_4_ = a2 + 5.000000
                    return v16_4_
                end
                local v16_5_ = a3
                v16_4_ = modf
                v16_4_, v16_5_ = v16_4_(v16_5_)
                local v16_7_ = a3
                local v16_6_ = sign
                v16_6_ = v16_6_(v16_7_)
                if v16_5_ == 0.000000 then
                    v16_7_ = 4294967295.000000
                    if v16_7_ >= v16_4_ then
                        v16_7_ = -2147483648.000000
                        if v16_4_ < v16_7_ then
                            local v16_10_ = 203
                            local v16_8_ = a1
                            local v16_9_ = a2
                            v16_7_ = writeu8
                            v16_7_(v16_8_, v16_9_, v16_10_)
                            v16_7_ = a2 + 1.000000
                            v16_9_ = a1
                            v16_10_ = v16_7_
                            local v16_11_ = a3
                            local writef64 = buffer.writef64
                            writef64(v16_9_, v16_10_, v16_11_)
                            v16_8_ = v0_24_
                            v16_9_ = a1
                            v16_10_ = v16_7_
                            v16_11_ = 8
                            v16_8_(v16_9_, v16_10_, v16_11_)
                            v16_7_ = a2 + 9.000000
                            return v16_7_
                        end
                    end
                end
                local v16_10_ = 203
                local v16_8_ = a1
                local v16_9_ = a2
                v16_7_ = writeu8
                v16_7_(v16_8_, v16_9_, v16_10_)
                v16_7_ = a2 + 1.000000
                v16_9_ = a1
                v16_10_ = v16_7_
                local v16_11_ = a3
                local writef64 = buffer.writef64
                writef64(v16_9_, v16_10_, v16_11_)
                v16_8_ = v0_24_
                v16_9_ = a1
                v16_10_ = v16_7_
                v16_11_ = 8
                v16_8_(v16_9_, v16_10_, v16_11_)
                v16_7_ = a2 + 9.000000
                return v16_7_
            else
                if v16_3_ == "table" then
                    v16_4_ = a3._msgpackType
                    if v16_4_ then
                        local v16_6_ = v0_0_
                        local v16_5_ = v16_6_.Int64
                        if v16_4_ ~= v16_5_ then
                            v16_6_ = v0_0_
                            v16_5_ = v16_6_.UInt64
                            if v16_4_ == v16_5_ then
                                local v16_7_ = v0_0_
                                v16_6_ = v16_7_.UInt64
                                if v16_4_ == v16_6_ then
                                    v16_5_ = 207
                                else
                                    v16_5_ = 211
                                end
                                v16_7_ = a1
                                local v16_8_ = a2
                                local v16_9_ = v16_5_
                                v16_6_ = writeu8
                                v16_6_(v16_7_, v16_8_, v16_9_)
                                v16_6_ = a2 + 1.000000
                                v16_7_ = a3.mostSignificantPart
                                v16_9_ = a1
                                local v16_10_ = v16_6_
                                local v16_11_ = v16_7_
                                local writeu32 = buffer.writeu32
                                writeu32(v16_9_, v16_10_, v16_11_)
                                v16_8_ = v0_24_
                                v16_9_ = a1
                                v16_10_ = v16_6_
                                v16_11_ = 4
                                v16_8_(v16_9_, v16_10_, v16_11_)
                                v16_6_ = a2 + 5.000000
                                v16_7_ = a3.leastSignificantPart
                                v16_9_ = a1
                                v16_10_ = v16_6_
                                v16_11_ = v16_7_
                                local writeu32 = buffer.writeu32
                                writeu32(v16_9_, v16_10_, v16_11_)
                                v16_8_ = v0_24_
                                v16_9_ = a1
                                v16_10_ = v16_6_
                                v16_11_ = 4
                                v16_8_(v16_9_, v16_10_, v16_11_)
                                v16_6_ = a2 + 9.000000
                                return v16_6_
                            end
                        end
                        local v16_7_ = v0_0_
                        v16_6_ = v16_7_.UInt64
                        if v16_4_ == v16_6_ then
                            v16_5_ = 207
                        else
                            v16_5_ = 211
                        end
                        v16_7_ = a1
                        local v16_8_ = a2
                        local v16_9_ = v16_5_
                        v16_6_ = writeu8
                        v16_6_(v16_7_, v16_8_, v16_9_)
                        v16_6_ = a2 + 1.000000
                        v16_7_ = a3.mostSignificantPart
                        v16_9_ = a1
                        local v16_10_ = v16_6_
                        local v16_11_ = v16_7_
                        local writeu32 = buffer.writeu32
                        writeu32(v16_9_, v16_10_, v16_11_)
                        v16_8_ = v0_24_
                        v16_9_ = a1
                        v16_10_ = v16_6_
                        v16_11_ = 4
                        v16_8_(v16_9_, v16_10_, v16_11_)
                        v16_6_ = a2 + 5.000000
                        v16_7_ = a3.leastSignificantPart
                        v16_9_ = a1
                        v16_10_ = v16_6_
                        v16_11_ = v16_7_
                        local writeu32 = buffer.writeu32
                        writeu32(v16_9_, v16_10_, v16_11_)
                        v16_8_ = v0_24_
                        v16_9_ = a1
                        v16_10_ = v16_6_
                        v16_11_ = 4
                        v16_8_(v16_9_, v16_10_, v16_11_)
                        v16_6_ = a2 + 9.000000
                        return v16_6_
                    end
                    local v16_5_ = #a3
                    local v16_6_ = 0
                    local v16_7_ = pairs
                    local v16_8_ = a3
                    local v16_7_, v16_8_, v16_9_ = v16_7_(v16_8_)
                    for v16_10_, v16_11_ in v16_7_, v16_8_, v16_9_ do
                    end
                    if v16_5_ == v16_6_ then
                        v16_7_ = a2
                        v16_8_ = 15
                        if v16_5_ <= v16_8_ then
                            local v16_12_ = 144
                            local v16_13_ = v16_6_
                            local v16_11_ = bor
                            v16_11_ = v16_11_(v16_12_, v16_13_)
                            v16_9_ = a1
                            local v16_10_ = a2
                            v16_8_ = writeu8
                            v16_8_(v16_9_, v16_10_, v16_11_)
                            v16_7_ += 1.000000
                        else
                            v16_8_ = 65535.000000
                            if v16_5_ <= v16_8_ then
                                local v16_11_ = 220
                                v16_9_ = a1
                                local v16_10_ = a2
                                v16_8_ = writeu8
                                v16_8_(v16_9_, v16_10_, v16_11_)
                                v16_8_ = a2 + 1.000000
                                v16_10_ = a1
                                v16_11_ = v16_8_
                                local v16_12_ = v16_5_
                                local writeu16 = buffer.writeu16
                                writeu16(v16_10_, v16_11_, v16_12_)
                                v16_9_ = v0_24_
                                v16_10_ = a1
                                v16_11_ = v16_8_
                                v16_12_ = 2
                                v16_9_(v16_10_, v16_11_, v16_12_)
                                v16_7_ += 3.000000
                            else
                                v16_8_ = 4294967295.000000
                                if v16_5_ <= v16_8_ then
                                    local v16_11_ = 221
                                    v16_9_ = a1
                                    local v16_10_ = a2
                                    v16_8_ = writeu8
                                    v16_8_(v16_9_, v16_10_, v16_11_)
                                    v16_8_ = a2 + 1.000000
                                    v16_10_ = a1
                                    v16_11_ = v16_8_
                                    local v16_12_ = v16_5_
                                    local writeu32 = buffer.writeu32
                                    writeu32(v16_10_, v16_11_, v16_12_)
                                    v16_9_ = v0_24_
                                    v16_10_ = a1
                                    v16_11_ = v16_8_
                                    v16_12_ = 4
                                    v16_9_(v16_10_, v16_11_, v16_12_)
                                    v16_7_ += 5.000000
                                else
                                    v16_8_ = error
                                    v16_9_ = "Could not encode - too long array"
                                    v16_8_(v16_9_)
                                end
                            end
                        end
                        v16_8_ = ipairs
                        v16_9_ = a3
                        local v16_8_, v16_9_, v16_10_ = v16_8_(v16_9_)
                        for v16_11_, v16_12_ in v16_8_, v16_9_, v16_10_ do
                            local v16_13_ = v0_40_
                            local v16_14_ = a1
                            local v16_15_ = v16_7_
                            local v16_16_ = v16_12_
                            v16_13_ = v16_13_(v16_14_, v16_15_, v16_16_)
                            v16_7_ = v16_13_
                        end
                        return v16_7_
                    end
                    v16_7_ = a2
                    v16_8_ = 15
                    if v16_6_ <= v16_8_ then
                        local v16_12_ = 128
                        local v16_13_ = v16_6_
                        local v16_11_ = bor
                        v16_11_ = v16_11_(v16_12_, v16_13_)
                        v16_9_ = a1
                        local v16_10_ = a2
                        v16_8_ = writeu8
                        v16_8_(v16_9_, v16_10_, v16_11_)
                        v16_7_ += 1.000000
                    else
                        v16_8_ = 65535.000000
                        if v16_6_ <= v16_8_ then
                            local v16_11_ = 222
                            v16_9_ = a1
                            local v16_10_ = a2
                            v16_8_ = writeu8
                            v16_8_(v16_9_, v16_10_, v16_11_)
                            v16_8_ = a2 + 1.000000
                            v16_9_ = v16_6_
                            v16_11_ = a1
                            local v16_12_ = v16_8_
                            local v16_13_ = v16_9_
                            local writeu16 = buffer.writeu16
                            writeu16(v16_11_, v16_12_, v16_13_)
                            v16_10_ = v0_24_
                            v16_11_ = a1
                            v16_12_ = v16_8_
                            v16_13_ = 2
                            v16_10_(v16_11_, v16_12_, v16_13_)
                            v16_7_ += 3.000000
                        else
                            v16_8_ = 4294967295.000000
                            if v16_6_ <= v16_8_ then
                                local v16_11_ = 223
                                v16_9_ = a1
                                local v16_10_ = a2
                                v16_8_ = writeu8
                                v16_8_(v16_9_, v16_10_, v16_11_)
                                v16_8_ = a2 + 1.000000
                                v16_9_ = v16_6_
                                v16_11_ = a1
                                local v16_12_ = v16_8_
                                local v16_13_ = v16_9_
                                local writeu32 = buffer.writeu32
                                writeu32(v16_11_, v16_12_, v16_13_)
                                v16_10_ = v0_24_
                                v16_11_ = a1
                                v16_12_ = v16_8_
                                v16_13_ = 4
                                v16_10_(v16_11_, v16_12_, v16_13_)
                                v16_7_ += 5.000000
                            else
                                v16_8_ = error
                                v16_9_ = "Could not encode - too long map"
                                v16_8_(v16_9_)
                            end
                        end
                    end
                    v16_8_ = pairs
                    v16_9_ = a3
                    local v16_8_, v16_9_, v16_10_ = v16_8_(v16_9_)
                    for v16_11_, v16_12_ in v16_8_, v16_9_, v16_10_ do
                        local v16_13_ = v0_40_
                        local v16_14_ = a1
                        local v16_15_ = v16_7_
                        local v16_16_ = v16_11_
                        v16_13_ = v16_13_(v16_14_, v16_15_, v16_16_)
                        v16_7_ = v16_13_
                        v16_13_ = v0_40_
                        v16_14_ = a1
                        v16_15_ = v16_7_
                        v16_16_ = v16_12_
                        v16_13_ = v16_13_(v16_14_, v16_15_, v16_16_)
                    end
                    return v16_7_
                end
            end
        end
    end
    v16_4_ = error
    local format = string.format
    local v16_6_ = "Could not encode - unsupported datatype \"%s\""
    local v16_8_ = a3
    local v16_7_ = typeof
    v16_7_ = v16_7_(v16_8_)
    v16_4_(format(v16_6_, v16_7_))
end
local v0_41_ = {}
v0_0_.Int64 = v0_41_
v0_41_ = function(a1, a2)
    local v17_2_ = {}
    local v17_4_ = v0_0_
    local v17_3_ = v17_4_.Int64
    v17_2_._msgpackType = v17_3_
    v17_2_.mostSignificantPart = a1
    v17_2_.leastSignificantPart = a2
    return v17_2_
end
local v0_42_ = v0_0_.Int64
v0_42_.new = v0_41_
v0_41_ = {}
v0_0_.UInt64 = v0_41_
v0_41_ = function(a1, a2)
    local v18_2_ = {}
    local v18_4_ = v0_0_
    local v18_3_ = v18_4_.UInt64
    v18_2_._msgpackType = v18_3_
    v18_2_.mostSignificantPart = a1
    v18_2_.leastSignificantPart = a2
    return v18_2_
end
v0_42_ = v0_0_.UInt64
v0_42_.new = v0_41_
v0_41_ = {}
v0_0_.Extension = v0_41_
v0_41_ = function(a1, a2)
    local v19_2_ = {}
    local v19_4_ = v0_0_
    local v19_3_ = v19_4_.Extension
    v19_2_._msgpackType = v19_3_
    v19_2_.type = a1
    v19_2_.data = a2
    return v19_2_
end
v0_42_ = v0_0_.Extension
v0_42_.new = v0_41_
v0_41_ = function(a1)
    local v20_1_ = #a1
    local v20_3_ = v20_1_ * 1.142857
    local ceil = math.ceil
    local v20_2_ = ceil(v20_3_)
    v20_3_ = create
    local v20_4_ = v20_2_
    v20_3_ = v20_3_(v20_4_)
    v20_4_ = 0
    local v20_7_ = 1
    local v20_5_ = v20_2_
    local v20_6_ = 1
    for v20_7_ = v20_7_, v20_5_, v20_6_ do
        local v20_9_ = 1
        local v20_11_ = v20_4_ / 8.000000
        local v20_10_ = floor
        v20_10_ = v20_10_(v20_11_)
        local v20_8_ = v20_9_ + v20_10_
        v20_9_ = v20_4_ % 8.000000
        v20_11_ = a1
        local v20_12_ = v20_8_
        v20_10_ = byte
        v20_10_ = v20_10_(v20_11_, v20_12_)
        if v20_9_ == 0.000000 then
            local v20_13_ = v20_7_ - 1.000000
            local v20_15_ = v20_10_
            local v20_16_ = 1.000000
            local v20_17_ = 7.000000
            local v20_14_ = extract
            v20_14_ = v20_14_(v20_15_, v20_16_, v20_17_)
            v20_12_ = v20_3_
            v20_11_ = writeu8
            v20_11_(v20_12_, v20_13_, v20_14_)
        else
            if v20_9_ == 1.000000 then
                local v20_13_ = v20_7_ - 1.000000
                local v20_15_ = v20_10_
                local v20_16_ = 0.000000
                local v20_17_ = 7.000000
                local v20_14_ = extract
                v20_14_ = v20_14_(v20_15_, v20_16_, v20_17_)
                v20_12_ = v20_3_
                v20_11_ = writeu8
                v20_11_(v20_12_, v20_13_, v20_14_)
            else
                local v20_14_ = v20_8_ + 1.000000
                local v20_13_ = a1
                v20_12_ = byte
                v20_12_ = v20_12_(v20_13_, v20_14_)
                v20_11_ = v20_12_ or 0.000000
                v20_14_ = v20_7_ - 1.000000
                local v20_19_ = 0
                local v20_20_ = v20_4_ - 192.000000
                local v20_18_ = v20_10_
                local v20_17_ = extract
                v20_17_ = v20_17_(v20_18_, v20_19_, v20_20_)
                v20_18_ = v20_9_ - 1.000000
                local v20_16_ = lshift
                v20_16_ = v20_16_(v20_17_, v20_18_)
                v20_19_ = v20_10_ - 192.000000
                v20_20_ = v20_9_ - 1.000000
                v20_18_ = v20_11_
                v20_17_ = extract
                v20_17_ = v20_17_(v20_18_, v20_19_, v20_20_)
                local v20_15_ = bor
                v20_15_ = v20_15_(v20_16_, v20_17_)
                v20_13_ = v20_3_
                v20_12_ = writeu8
                v20_12_(v20_13_, v20_14_, v20_15_)
            end
        end
        v20_4_ += 7.000000
    end
    local tostring = buffer.tostring
    v20_6_ = v20_3_
    return tostring(v20_6_)
end
v0_0_.utf8Encode = v0_41_
v0_41_ = function(a1)
    local v21_4_ = #a1
    local v21_3_ = v21_4_ * 7.000000
    local v21_2_ = v21_3_ / 8.000000
    local v21_1_ = floor
    v21_1_ = v21_1_(v21_2_)
    v21_2_ = create
    v21_3_ = v21_1_
    v21_2_ = v21_2_(v21_3_)
    v21_3_ = 0
    local v21_6_ = 1
    v21_4_ = v21_1_
    local v21_5_ = 1
    for v21_6_ = v21_6_, v21_4_, v21_5_ do
        local v21_7_ = v21_3_ % 7.000000
        local v21_11_ = 1
        local v21_13_ = v21_3_ / 7.000000
        local v21_12_ = floor
        v21_12_ = v21_12_(v21_13_)
        local v21_10_ = v21_11_ + v21_12_
        local v21_9_ = a1
        local v21_8_ = byte
        v21_8_ = v21_8_(v21_9_, v21_10_)
        v21_12_ = 2
        local v21_14_ = v21_3_ / 7.000000
        v21_13_ = floor
        v21_13_ = v21_13_(v21_14_)
        v21_11_ = v21_12_ + v21_13_
        v21_10_ = a1
        v21_9_ = byte
        v21_9_ = v21_9_(v21_10_, v21_11_)
        v21_12_ = v21_6_ - 1.000000
        local v21_17_ = 0
        local v21_18_ = v21_1_ - nil --[[WARNING: Broken constant]]
        local v21_16_ = v21_8_
        local v21_15_ = extract
        v21_15_ = v21_15_(v21_16_, v21_17_, v21_18_)
        v21_16_ = v21_7_ + 1.000000
        v21_14_ = lshift
        v21_14_ = v21_14_(v21_15_, v21_16_)
        v21_17_ = v21_3_ - nil --[[WARNING: Broken constant]]
        local v21_19_ = 1
        v21_18_ = v21_19_ + v21_7_
        v21_16_ = v21_9_
        v21_15_ = extract
        v21_15_ = v21_15_(v21_16_, v21_17_, v21_18_)
        v21_13_ = bor
        v21_13_ = v21_13_(v21_14_, v21_15_)
        v21_11_ = v21_2_
        v21_10_ = writeu8
        v21_10_(v21_11_, v21_12_, v21_13_)
        v21_3_ += 8.000000
    end
    local tostring = buffer.tostring
    v21_5_ = v21_2_
    return tostring(v21_5_)
end
v0_0_.utf8Decode = v0_41_
v0_41_ = function(a1)
    if a1 == "" then
        local v22_1_ = error
        local v22_2_ = "Could not decode - input string is too short"
        v22_1_(v22_2_)
    end
    local fromstring = buffer.fromstring
    local v22_2_ = a1
    local v22_1_ = fromstring(v22_2_)
    v22_2_ = v0_37_
    local v22_3_ = v22_1_
    local v22_4_ = 0
    v22_2_ = v22_2_(v22_3_, v22_4_)
    return v22_2_
end
v0_0_.decode = v0_41_
v0_41_ = function(a1)
    local v23_1_ = v0_38_
    local v23_2_ = a1
    local v23_3_ = {}
    v23_1_ = v23_1_(v23_2_, v23_3_)
    v23_2_ = create
    v23_3_ = v23_1_
    v23_2_ = v23_2_(v23_3_)
    v23_3_ = v0_40_
    local v23_4_ = v23_2_
    local v23_5_ = 0
    local v23_6_ = a1
    v23_3_(v23_4_, v23_5_, v23_6_)
    local tostring = buffer.tostring
    v23_4_ = v23_2_
    return tostring(v23_4_)
end
v0_0_.encode = v0_41_
return v0_0_
