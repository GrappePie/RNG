-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMbBnNjcmlwdAZQYXJlbnQEZ2FtZQxUd2VlblNlcnZpY2UKR2V0U2VydmljZQ5TcGluVHJhamVjdG9yeQVWYWx1ZQlUd2VlbkluZm8DbmV3DFNwaW5EdXJhdGlvbgRFbnVtC0Vhc2luZ1N0eWxlBkxpbmVhchBUd2VlbkVhc2luZ1N0eWxlD0Vhc2luZ0RpcmVjdGlvbgVJbk91dBRUd2VlbkVhc2luZ0RpcmVjdGlvbhRSZXZlcnNlVHdlZW5PbkZpbmlzaAhCYXNlUGFydANJc0EOQXR0YWNobWVudE1vZGUKQXR0YWNobWVudAtPcmllbnRhdGlvbgZDcmVhdGUEUGxheQVNb2RlbA5HZXREZXNjZW5kYW50cwABEAAAAQAAowGjAAAApAEBAAAAAEBNAAEkAgAAAKQBBAAAADBAbwMFALwBARYGAAAAnwEDAqQEAQAAAABATQMEswcAAABNAgPsCAAAAKQDCwAAKJCApAYBAAAAAEBNBQazDAAAAE0EBewIAAAApAYPAAA40ICkCgEAAAAAQE0JCmIRAAAATQgJ7AgAAACQBwgQhwUGB6QHEwAASNCApAsBAAAAAEBNCgspFQAAAE0JCuwIAAAAkAgJFIcGBwiMB///pAoBAAAAAEBNCQo8FgAAAE0ICewIAAAAjAkAAJ8DBwJvBhcAvAQA/hgAAACfBAMCDgQHAKQGAQAAAABATQUGgRkAAABNBAXsCAAAAA4EBQBvBhoAvAQA/hgAAACfBAMCDgQPAFIGAABSBwMA4ggcAE0KAFwbAAAAQwkKAjAJCFwbAAAAvAQBlh0AAACfBAUCvAQE7h4AAACfBAIBggABAG8GHwC8BAD+GAAAAJ8EAwIrBAwAbwYXALwEAP4YAAAAnwQDAg4EQgCkBgEAAAAAQE0FBoEZAAAATQQF7AgAAAAOBDsAvAQARyAAAACfBAIEZAQ1AG8LFwC8CQj+GAAAAJ8JAwIOCRYApAsBAAAAAEBNCguBGQAAAE0JCuwIAAAAKwkPAFILCABSDAMA4g0cAE0PCFwbAAAAQw4PAjAODVwbAAAAvAkBlh0AAACfCQUCvAkJ7h4AAACfCQIBZQAaAG8LGgC8CQj+GAAAAJ8JAwIOCRUApAsBAAAAAEBNCguBGQAAAE0JCuwIAAAADgkOAFILCABSDAMA4g0cAE0PCFwbAAAAQw4PAjAODVwbAAAAvAkBlh0AAACfCQUCvAkJ7h4AAACfCQIBbgTK/wIAAACCAAEAIQMBBAAAAEADAgMDBAAAMEADBAMFAwYDBwMIAwkEACiQgAMKAwsDDAQAONCAAw0DDgMPBABI0IADEAMRAxIDEwMUAxUDFgMXBQEbAxgDGQMaAxsAAQABGAAJAAAAAQAAAAAAAQAAAAAAAgABAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEBAAAAAAAB+gkAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAD8AAcBAAAAAAA=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = script
v0_3_ = v0_4_.SpinTrajectory
local v0_2_ = v0_3_.Value
local new = Tween0o.new
local v0_6_ = script
local v0_5_ = v0_6_.SpinDuration
v0_4_ = v0_5_.Value
local EasingStyle = Enum.EasingStyle
local v0_10_ = script
local v0_9_ = v0_10_.TweenEasingStyle
local v0_8_ = v0_9_.Value
local v0_7_ = v0_8_ or "Linear"
v0_5_ = EasingStyle[v0_7_]
local EasingDirection = Enum.EasingDirection
local v0_11_ = script
v0_10_ = v0_11_.TweenEasingDirection
v0_9_ = v0_10_.Value
v0_8_ = v0_9_ or "InOut"
v0_6_ = EasingDirection[v0_8_]
v0_7_ = -1
v0_10_ = script
v0_9_ = v0_10_.ReverseTweenOnFinish
v0_8_ = v0_9_.Value
v0_9_ = 0
v0_3_ = new(v0_4_, v0_5_, v0_6_, v0_7_, v0_8_, v0_9_)
v0_6_ = "BasePart"
v0_4_ = v0_0_:IsA(v0_6_)
if v0_4_ then
    v0_6_ = script
    v0_5_ = v0_6_.AttachmentMode
    v0_4_ = v0_5_.Value
    if v0_4_ then
        v0_6_ = "Attachment"
        v0_4_ = v0_0_:IsA(v0_6_)
        if v0_4_ then
            v0_6_ = v0_0_
            v0_7_ = v0_3_
            v0_8_ = {}
            v0_10_ = v0_0_.Orientation
            v0_9_ = v0_10_ + v0_2_
            v0_8_.Orientation = v0_9_
            v0_4_ = v0_1_:Create(v0_6_, v0_7_, v0_8_)
            v0_4_:Play()
            return
        end
    end
end
v0_6_ = "Attachment"
v0_4_ = v0_0_:IsA(v0_6_)
if v0_4_ then
    v0_6_ = v0_0_
    v0_7_ = v0_3_
    v0_8_ = {}
    v0_10_ = v0_0_.Orientation
    v0_9_ = v0_10_ + v0_2_
    v0_8_.Orientation = v0_9_
    v0_4_ = v0_1_:Create(v0_6_, v0_7_, v0_8_)
    v0_4_:Play()
    return
end
v0_6_ = "Model"
v0_4_ = v0_0_:IsA(v0_6_)
if not v0_4_ then
    v0_6_ = "BasePart"
    v0_4_ = v0_0_:IsA(v0_6_)
    if v0_4_ then
        v0_6_ = script
        v0_5_ = v0_6_.AttachmentMode
        v0_4_ = v0_5_.Value
        if v0_4_ then
            v0_4_, v0_5_, v0_6_ = v0_0_:GetDescendants()
            v0_11_ = "BasePart"
            v0_9_ = v0_8_:IsA(v0_11_)
            if v0_9_ then
                v0_11_ = script
                v0_10_ = v0_11_.AttachmentMode
                v0_9_ = v0_10_.Value
                if not v0_9_ then
                    v0_11_ = v0_8_
                    local v0_12_ = v0_3_
                    local v0_13_ = {}
                    local v0_15_ = v0_8_.Orientation
                    local v0_14_ = v0_15_ + v0_2_
                    v0_13_.Orientation = v0_14_
                    v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
                    v0_9_:Play()
                else
                    v0_11_ = "Attachment"
                    v0_9_ = v0_8_:IsA(v0_11_)
                    if v0_9_ then
                        v0_11_ = script
                        v0_10_ = v0_11_.AttachmentMode
                        v0_9_ = v0_10_.Value
                        if v0_9_ then
                            v0_11_ = v0_8_
                            local v0_12_ = v0_3_
                            local v0_13_ = {}
                            local v0_15_ = v0_8_.Orientation
                            local v0_14_ = v0_15_ + v0_2_
                            v0_13_.Orientation = v0_14_
                            v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
                            v0_9_:Play()
                        end
                    end
                end
            else
                v0_11_ = "Attachment"
                v0_9_ = v0_8_:IsA(v0_11_)
                if v0_9_ then
                    v0_11_ = script
                    v0_10_ = v0_11_.AttachmentMode
                    v0_9_ = v0_10_.Value
                    if v0_9_ then
                        v0_11_ = v0_8_
                        local v0_12_ = v0_3_
                        local v0_13_ = {}
                        local v0_15_ = v0_8_.Orientation
                        local v0_14_ = v0_15_ + v0_2_
                        v0_13_.Orientation = v0_14_
                        v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
                        v0_9_:Play()
                    end
                end
            end
        end
    end
end
v0_4_, v0_5_, v0_6_ = v0_0_:GetDescendants()
v0_11_ = "BasePart"
v0_9_ = v0_8_:IsA(v0_11_)
if v0_9_ then
    v0_11_ = script
    v0_10_ = v0_11_.AttachmentMode
    v0_9_ = v0_10_.Value
    if not v0_9_ then
        v0_11_ = v0_8_
        local v0_12_ = v0_3_
        local v0_13_ = {}
        local v0_15_ = v0_8_.Orientation
        local v0_14_ = v0_15_ + v0_2_
        v0_13_.Orientation = v0_14_
        v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
        v0_9_:Play()
    else
        v0_11_ = "Attachment"
        v0_9_ = v0_8_:IsA(v0_11_)
        if v0_9_ then
            v0_11_ = script
            v0_10_ = v0_11_.AttachmentMode
            v0_9_ = v0_10_.Value
            if v0_9_ then
                v0_11_ = v0_8_
                local v0_12_ = v0_3_
                local v0_13_ = {}
                local v0_15_ = v0_8_.Orientation
                local v0_14_ = v0_15_ + v0_2_
                v0_13_.Orientation = v0_14_
                v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
                v0_9_:Play()
            end
        end
    end
else
    v0_11_ = "Attachment"
    v0_9_ = v0_8_:IsA(v0_11_)
    if v0_9_ then
        v0_11_ = script
        v0_10_ = v0_11_.AttachmentMode
        v0_9_ = v0_10_.Value
        if v0_9_ then
            v0_11_ = v0_8_
            local v0_12_ = v0_3_
            local v0_13_ = {}
            local v0_15_ = v0_8_.Orientation
            local v0_14_ = v0_15_ + v0_2_
            v0_13_.Orientation = v0_14_
            v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
            v0_9_:Play()
        end
    end
end
