-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMQBnNjcmlwdAZQYXJlbnQGUmFyaXR5DFdhaXRGb3JDaGlsZAVUaXRsZQRFbnVtBEZvbnQMR2V0RW51bUl0ZW1zA0JHTQRQbGF5BHRhc2sEd2FpdAZpcGFpcnMEbWF0aAZyYW5kb20IUm90YXRpb24AAQsAAAEAAEWjAAAA/wAAAAIAAACkAgEAAAAAQE0BAiQCAAAAbwMDALwBAdMEAAAAnwEDAqQDAQAAAABATQIDJAIAAABvBAUAvAIC0wQAAACfAgMAxQABAAEAAACkAQgAABxggLwBARYJAAAAnwECAqQFAQAAAABATQQFJAIAAABNAwQkAgAAAE0CAyQCAAAAbwQKALwCAtMEAAAAnwIDArwCAu4LAAAAnwICAaQCDgAANMCAbwMPAJ8CAgGkAhEAAAAAQVIDAACfAgIEUQIPAKQIFAAATCCBjAkBABwKAQCfCAMChwcBCDAHBjkHAAAApAcUAABMIIGMCPz/jAkEAJ8HAwIwBwY4FQAAAG4C8P8CAACASADl/4IAAQAWAwEEAAAAQAMCAwMDBAMFAwYDBwQAHGCAAwgDCQMKAwsDDAQANMCAAnsUrkfhepQ/Aw0EAAAAQQMOAw8EAEwggQMQAAEAARgAAAABAAAAAAAAAAEAAAAAAAAAAAADAAAAAAIAAAAAAAAAAAAAAAAAAAMAAAABAAAAAAEAAAAAAAAAAQAAAAAAAP4A/gYBAAAAAAA=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = table.create(2)
local v0_2_ = script
local v0_1_ = v0_2_.Parent
local v0_3_ = "Rarity"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = script
v0_2_ = v0_3_.Parent
local v0_4_ = "Title"
-- WARNING: SETLIST_C0, output may be wrong!
v0_0_ = {v0_1_, v0_2_:WaitForChild(v0_4_)}
local Font = Enum.Font
v0_1_ = Font:GetEnumItems()
local v0_5_ = script
v0_4_ = v0_5_.Parent
v0_3_ = v0_4_.Parent
v0_2_ = v0_3_.Parent
v0_4_ = "BGM"
v0_2_ = v0_2_:WaitForChild(v0_4_)
v0_2_:Play()
local wait = task.wait
v0_3_ = 0.020000
wait(v0_3_)
v0_2_ = ipairs
v0_3_ = v0_0_
v0_2_, v0_3_, v0_4_ = v0_2_(v0_3_)
for v0_5_, v0_6_ in v0_2_, v0_3_, v0_4_ do
    local random = math.random
    local v0_9_ = 1
    local v0_10_ = #v0_1_
    local v0_8_ = random(v0_9_, v0_10_)
    local v0_7_ = v0_1_[v0_8_]
    v0_6_.Font = v0_7_
    local random = math.random
    v0_8_ = -4
    v0_9_ = 4
    v0_7_ = random(v0_8_, v0_9_)
    v0_6_.Rotation = v0_7_
end
