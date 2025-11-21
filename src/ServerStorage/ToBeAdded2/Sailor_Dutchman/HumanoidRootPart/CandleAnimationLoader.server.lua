-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPBFN0b3AGc2NyaXB0DFdhaXRGb3JDaGlsZAhBbmltYXRvcg1Mb2FkQW5pbWF0aW9uBFBsYXkSRGVzY2VuZGFudFJlbW92aW5nBE9uY2UNUGxheUFuaW1hdGlvbgZQYXJlbnQISHVtYW5vaWQKQW5pbWF0aW9uMQpBbmltYXRpb24yCkFuaW1hdGlvbjMKQW5pbWF0aW9uNAADAgABAAAABfsAAAC8AAD6AAAAAJ8AAgGCAAEAAQMBAAcAARgAAAAAAQgAAAAABgEBAAAAGqQBAQAAAABAUgMAALwBAdMCAAAAnwEDAvsDAABNAgOMAwAAAFIEAQC8AgKUBAAAAJ8CAwK8AwLuBQAAAJ8DAgGkBAEAAAAAQE0DBLMGAAAA2QUAABIAAgC8AwM9BwAAAJ8DAwGCAAEACAMCBAAAAEADAwMEAwUDBgMHAwgBAAMJARgAAAAAAAABAAAAAAAAAQAAAQAAAAAAAAAAAwQAAAAABAAAAQIAGqMAAACkAgEAAAAAQE0BAiQCAAAATQABJAIAAABvAgMAvAAA0wQAAACfAAMCwAEFABIAAABSAgEAbwMGAJ8CAgFSAgEAbwMHAJ8CAgFSAgEAbwMIAJ8CAgFSAgEAbwMJAJ8CAgGCAAEACgMCBAAAAEADCgMLAwMGAQMMAw0DDgMPAQEBAAEYAAAAAAAAAAAAAAACAAkAAAEAAAEAAAEAAAABAAAAAAI=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_2_ = script
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
v0_2_ = "Humanoid"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_1_ = function(a1)
    local v1_1_ = script
    local v1_3_ = a1
    v1_1_ = v1_1_:WaitForChild(v1_3_)
    v1_3_ = v0_0_
    local v1_2_ = v1_3_.Animator
    local v1_4_ = v1_1_
    v1_2_ = v1_2_:LoadAnimation(v1_4_)
    v1_2_:Play()
    v1_4_ = script
    v1_3_ = v1_4_.DescendantRemoving
    local v1_5_ = function()
        local v2_0_ = v1_2_
        v2_0_:Stop()
    end
    v1_3_:Once(v1_5_)
end
v0_2_ = v0_1_
local v0_3_ = "Animation1"
v0_2_(v0_3_)
v0_2_ = v0_1_
v0_3_ = "Animation2"
v0_2_(v0_3_)
v0_2_ = v0_1_
v0_3_ = "Animation3"
v0_2_(v0_3_)
v0_2_ = v0_1_
v0_3_ = "Animation4"
v0_2_(v0_3_)
