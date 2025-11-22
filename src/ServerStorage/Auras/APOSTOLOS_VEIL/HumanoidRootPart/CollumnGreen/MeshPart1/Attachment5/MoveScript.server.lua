-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMbBnNjcmlwdAZQYXJlbnQEZ2FtZQxUd2VlblNlcnZpY2UKR2V0U2VydmljZRJNb3ZlbWVudFRyYWplY3RvcnkFVmFsdWUJVHdlZW5JbmZvA25ldxBNb3ZlbWVudER1cmF0aW9uBEVudW0LRWFzaW5nU3R5bGUGTGluZWFyEFR3ZWVuRWFzaW5nU3R5bGUPRWFzaW5nRGlyZWN0aW9uBUluT3V0FFR3ZWVuRWFzaW5nRGlyZWN0aW9uFFJldmVyc2VUd2Vlbk9uRmluaXNoCEJhc2VQYXJ0A0lzQQ5BdHRhY2htZW50TW9kZQpBdHRhY2htZW50CFBvc2l0aW9uBkNyZWF0ZQRQbGF5BU1vZGVsDkdldERlc2NlbmRhbnRzAAEQAAABAACjAaMAAACkAQEAAAAAQE0AASQCAAAApAEEAAAAMEBvAwUAvAEBFgYAAACfAQMCpAQBAAAAAEBNAwSjBwAAAE0CA+wIAAAApAMLAAAokICkBgEAAAAAQE0FBlAMAAAATQQF7AgAAACkBg8AADjQgKQKAQAAAABATQkKYhEAAABNCAnsCAAAAJAHCBCHBQYHpAcTAABI0ICkCwEAAAAAQE0KCykVAAAATQkK7AgAAACQCAkUhwYHCIwH//+kCgEAAAAAQE0JCjwWAAAATQgJ7AgAAACMCQAAnwMHAm8GFwC8BAD+GAAAAJ8EAwIOBAcApAYBAAAAAEBNBQaBGQAAAE0EBewIAAAADgQFAG8GGgC8BAD+GAAAAJ8EAwIOBA8AUgYAAFIHAwDiCBwATQoAOxsAAABDCQoCMAkIOxsAAAC8BAGWHQAAAJ8EBQK8BATuHgAAAJ8EAgGCAAEAbwYfALwEAP4YAAAAnwQDAisEDABvBhcAvAQA/hgAAACfBAMCDgRCAKQGAQAAAABATQUGgRkAAABNBAXsCAAAAA4EOwC8BABHIAAAAJ8EAgRkBDUAbwsXALwJCP4YAAAAnwkDAg4JFgCkCwEAAAAAQE0KC4EZAAAATQkK7AgAAAArCQ8AUgsIAFIMAwDiDRwATQ8IOxsAAABDDg8CMA4NOxsAAAC8CQGWHQAAAJ8JBQK8CQnuHgAAAJ8JAgFlABoAbwsaALwJCP4YAAAAnwkDAg4JFQCkCwEAAAAAQE0KC4EZAAAATQkK7AgAAAAOCQ4AUgsIAFIMAwDiDRwATQ8IOxsAAABDDg8CMA4NOxsAAAC8CQGWHQAAAJ8JBQK8CQnuHgAAAJ8JAgFuBMr/AgAAAIIAAQAhAwEEAAAAQAMCAwMEAAAwQAMEAwUDBgMHAwgDCQQAKJCAAwoDCwMMBAA40IADDQMOAw8EAEjQgAMQAxEDEgMTAxQDFQMWAxcFARsDGAMZAxoDGwABAAEYAAkAAAABAAAAAAABAAAAAAACAAEAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQEAAAAAAAH6CQAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAEAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAPwABwEAAAAAAA==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = script
v0_3_ = v0_4_.MovementTrajectory
local v0_2_ = v0_3_.Value
local new = TweenInfo.new
local v0_6_ = script
local v0_5_ = v0_6_.MovementDuration
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
            v0_10_ = v0_0_.Position
            v0_9_ = v0_10_ + v0_2_
            v0_8_.Position = v0_9_
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
    v0_10_ = v0_0_.Position
    v0_9_ = v0_10_ + v0_2_
    v0_8_.Position = v0_9_
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
                    local v0_15_ = v0_8_.Position
                    local v0_14_ = v0_15_ + v0_2_
                    v0_13_.Position = v0_14_
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
                            local v0_15_ = v0_8_.Position
                            local v0_14_ = v0_15_ + v0_2_
                            v0_13_.Position = v0_14_
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
                        local v0_15_ = v0_8_.Position
                        local v0_14_ = v0_15_ + v0_2_
                        v0_13_.Position = v0_14_
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
        local v0_15_ = v0_8_.Position
        local v0_14_ = v0_15_ + v0_2_
        v0_13_.Position = v0_14_
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
                local v0_15_ = v0_8_.Position
                local v0_14_ = v0_15_ + v0_2_
                v0_13_.Position = v0_14_
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
            local v0_15_ = v0_8_.Position
            local v0_14_ = v0_15_ + v0_2_
            v0_13_.Position = v0_14_
            v0_9_ = v0_1_:Create(v0_11_, v0_12_, v0_13_)
            v0_9_:Play()
        end
    end
end
