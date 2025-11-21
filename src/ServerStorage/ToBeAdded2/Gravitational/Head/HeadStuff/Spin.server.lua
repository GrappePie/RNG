-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMLBnNjcmlwdAZQYXJlbnQQSHVtYW5vaWRSb290UGFydAxXYWl0Rm9yQ2hpbGQEQ29yZQVNdXNpYwRQbGF5BHRhc2sEd2FpdAZDRnJhbWUGQW5nbGVzAAEHAAABAAAtowAAAKQBAQAAAABATQABJAIAAACkBAEAAAAAQE0DBCQCAAAATQIDJAIAAABNAQIkAgAAAG8DAwC8AQHTBAAAAJ8BAwJvAwUAvAEB0wQAAACfAQMCbwMGALwBAdMEAAAAnwEDArwBAe4HAAAAnwECAaQBCgAAJICAnwEBAg4BDABNAgCFCwAAAKQDDQAAMLCAjAQAAG8FDgCMBgAAnwMEAgkBAgMwAQCFCwAAAEgA8P+CAAEADwMBBAAAAEADAgMDAwQDBQMGAwcDCAMJBAAkgIADCgMLBAAwsIACexSuR+F6hD8AAQABGAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAAAAD/BAEAAAAAAA==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_4_ = script
local v0_3_ = v0_4_.Parent
local v0_2_ = v0_3_.Parent
v0_1_ = v0_2_.Parent
v0_3_ = "HumanoidRootPart"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = "Core"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = "Music"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_1_:Play()
local wait = task.wait
v0_1_ = wait()
while v0_1_ do
    v0_2_ = v0_0_.CFrame
    local Angles = CFrame.Angles
    v0_4_ = 0
    local v0_5_ = 0.010000
    local v0_6_ = 0
    v0_3_ = Angles(v0_4_, v0_5_, v0_6_)
    v0_1_ = v0_2_ * v0_3_
    v0_0_.CFrame = v0_1_
end
