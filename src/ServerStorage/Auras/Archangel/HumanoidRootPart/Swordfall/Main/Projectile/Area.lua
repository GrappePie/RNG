-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMKCFBvc2l0aW9uBG1hdGgGcmFuZG9tBFNpemUBWAFZAVoHVmVjdG9yMwNuZXcOUmFuZG9tUG9zaXRpb24AAgsBAAAAADJNAgA7AAAAAKQEAwAACBCATQgALwUAAABNBwh5BgAAAD4GBwQ5BQYATQgALwUAAABNBwh5BgAAAD4GBwSfBAMCpAUDAAAIEIBNCQAvBQAAAE0ICXgHAAAAPgcIBDkGBwBNCQAvBQAAAE0ICXgHAAAAPgcIBJ8FAwKkBgMAAAgQgE0KAC8FAAAATQkKewgAAAA+CAkEOQcIAE0KAC8FAAAATQkKewgAAAA+CAkEnwYDAEw2AAKkAwsAACiQgJ8DAAJDAQIDggECAAwDAQMCAwMEAAgQgAIAAAAAAAAAQAMEAwUDBgMHAwgDCQQAKJCAAAMKARgAAAEAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAP0AAAAAAAQAAAAAAgAAAQIAB6MAAAD/AAEAAAAAAMABAAAwAQCuAQAAAIIAAgACBgADCgEAAQABGAAAAAIAAAgBAAAAAAE=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = {}
local v0_1_ = function(a1)
    local v1_2_ = a1.Position
    local random = math.random
    local v1_8_ = a1.Size
    local v1_7_ = v1_8_.X
    local v1_6_ = v1_7_ / 2.000000
    local v1_5_ = -v1_6_
    v1_8_ = a1.Size
    v1_7_ = v1_8_.X
    v1_6_ = v1_7_ / 2.000000
    local v1_4_ = random(v1_5_, v1_6_)
    local random = math.random
    local v1_9_ = a1.Size
    v1_8_ = v1_9_.Y
    v1_7_ = v1_8_ / 2.000000
    v1_6_ = -v1_7_
    v1_9_ = a1.Size
    v1_8_ = v1_9_.Y
    v1_7_ = v1_8_ / 2.000000
    v1_5_ = random(v1_6_, v1_7_)
    local random = math.random
    local v1_10_ = a1.Size
    v1_9_ = v1_10_.Z
    v1_8_ = v1_9_ / 2.000000
    v1_7_ = -v1_8_
    v1_10_ = a1.Size
    v1_9_ = v1_10_.Z
    v1_8_ = v1_9_ / 2.000000
    local new = Vector3.new
    local v1_3_ = new(random(v1_7_, v1_8_))
    local v1_1_ = v1_2_ + v1_3_
    return v1_1_
end
v0_0_.RandomPosition = v0_1_
return v0_0_
