-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMcBG1hdGgDY29zA3NpbghQb3NpdGlvbgdWZWN0b3IzA25ldwlUd2VlbkluZm8ERW51bQtFYXNpbmdTdHlsZQZMaW5lYXIPRWFzaW5nRGlyZWN0aW9uBUluT3V0BkNyZWF0ZQRQbGF5CUNvbXBsZXRlZARXYWl0BHRhc2sFc3Bhd24TY3JlYXRlQ2lyY3VsYXJUd2VlbgZzY3JpcHQGUGFyZW50BGdhbWUMVHdlZW5TZXJ2aWNlCkdldFNlcnZpY2UFcGFpcnMLR2V0Q2hpbGRyZW4ITWVzaFBhcnQDSXNBAAMLAAcAAABE+wEAAJUAAQDeAAAA+wEBAPsDAAC7CQMCpAIDAAAIEICfAgICCQABAvsCAQD7BAAAuxgEAqQDBQAAEBCAnwMCAgkBAgP7AwIA+wYAAD4FBga7GAUCpAQFAAAQEICfBAICCQIDBPsFAwBNBAU7BwAAADQ2AAYCAQAAUgYAAFIHAgBSCAEApAUKAAAkgICfBQQCQwMEBaQEDAAAJLCA+wYEAD4FBg2kBhEAEDzgwKQHFAATSODAjAgAAKkJAACMCgAAnwQHAvsFBQD7BwYAUggEAOIJFQAwAwk7BwAAALwFBZYWAAAAnwUFArwGBe4XAAAAnwYCAU0GBRgYAAAAvAYG9xkAAACfBgIBSAC9/4IAAQAaAhonF5K/FbA/AwEDAgQACBCAAwMEABAQgAIAAAAAAAAAQAMEAwUDBgQAJICAAwcEACSwgAIAAAAAAABZQAMIAwkDCgQQPODAAwsDDAQTSODABQEHAw0DDgMPAxAACAABGAEAAAEAAAAAAAABAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAAABAAEAAQABAAEBAfoIAAAAAAAAAAABAAABAAAAAO8TCQAAAAAHBAIAAAAOjAQAAKQFAgAABACA2QYAABIBBP8SAAEAEgACABICAAASAAMAEgIBABIAAACfBQIBwQQAAIIAAQADAxEDEgQABACAAQAEEwEYAAMAAAAAAAAAAAAAFQAFAAAAAA4AAAEAADGjAAAApAEBAAAAAEBNAAEkAgAAAKQBBAAAADBAbwMFALwBARYGAAAAnwEDAsACBwASAAAAEgABAKQDCQAAAIBApAUBAAAAAEBNBAUkAgAAALwEBGgKAAAAnwQCAJ8DAAQXAxUAbwoLALwIB/4MAAAAnwgDAg4IEACMCAAApAkPAAA40IBvCxAAjAwCAIwNBQDZCgEAEgEI/xIACwASAAwAEgAAABIADQASAAEAEgAHAJ8JAgHBCAAAbgPq/wIAAACCAAEAEQMUBAAAAEADFQMWBAAAMEADFwMYBgEDGQQAAIBAAxoDGwMcAxEDEgQAONCAAgAAAAAAAOC/AgEAAQABGAAAAAAAAQAAAAAAAgAAIAAAAAAAAAAAAAABAAAAAOADAAAAAAAAAAAAAAAAAAAcAAQBAAAAAAI=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_2_ = function(a1, a2, a3, a4)
    local v1_4_ = 0
    local spawn = task.spawn
    local v1_6_ = function()
        local v2_1_ = v1_4_
        local v2_0_ = v2_1_ + 0.062832
        v1_4_ = v2_0_
        v2_1_ = a2
        local v2_3_ = v1_4_
        local cos = math.cos
        local v2_2_ = cos(v2_3_)
        v2_0_ = v2_1_ * v2_2_
        v2_2_ = a2
        local v2_4_ = v1_4_
        local sin = math.sin
        v2_3_ = sin(v2_4_)
        v2_1_ = v2_2_ * v2_3_
        v2_3_ = a3
        local v2_6_ = v1_4_
        local v2_5_ = v2_6_ / 2.000000
        local sin = math.sin
        v2_4_ = sin(v2_5_)
        v2_2_ = v2_3_ * v2_4_
        v2_5_ = v0_0_
        v2_4_ = v2_5_.Position
        v2_6_ = v2_0_
        local v2_7_ = v2_2_
        local v2_8_ = v2_1_
        local new = Vector3.new
        v2_5_ = new(v2_6_, v2_7_, v2_8_)
        v2_3_ = v2_4_ + v2_5_
        local new = Tween0o.new
        v2_6_ = a4
        v2_5_ = v2_6_ / 100.000000
        local Linear = Enum.EasingStyle.Linear
        local InOut = Enum.EasingDirection.InOut
        v2_8_ = 0
        local v2_9_ = false
        local v2_10_ = 0
        v2_4_ = new(v2_5_, Linear, InOut, v2_8_, v2_9_, v2_10_)
        v2_5_ = v0_1_
        v2_7_ = a1
        v2_8_ = v2_4_
        v2_9_ = {}
        v2_9_.Position = v2_3_
        v2_5_ = v2_5_:Create(v2_7_, v2_8_, v2_9_)
        v2_5_:Play()
        v2_6_ = v2_5_.Completed
        v2_6_:Wait()
    end
    spawn(v1_6_)
end
v0_3_ = pairs
local v0_5_ = script
local v0_4_ = v0_5_.Parent
v0_3_, v0_4_, v0_5_ = v0_3_(v0_4_:GetChildren())
for v0_6_, v0_7_ in v0_3_, v0_4_, v0_5_ do
    local v0_10_ = "MeshPart"
    local v0_8_ = v0_7_:IsA(v0_10_)
    if v0_8_ then
        v0_8_ = 0
        local spawn = task.spawn
        local v0_11_ = -0.500000
        local v0_12_ = 2
        local v0_13_ = 5
        v0_10_ = function()
            local v3_1_ = v0_8_
            local v3_0_ = v3_1_ + 0.062832
            v0_8_ = v3_0_
            v3_1_ = v0_11_
            local v3_3_ = v0_8_
            local cos = math.cos
            local v3_2_ = cos(v3_3_)
            v3_0_ = v3_1_ * v3_2_
            v3_2_ = v0_11_
            local v3_4_ = v0_8_
            local sin = math.sin
            v3_3_ = sin(v3_4_)
            v3_1_ = v3_2_ * v3_3_
            v3_3_ = v0_12_
            local v3_6_ = v0_8_
            local v3_5_ = v3_6_ / 2.000000
            local sin = math.sin
            v3_4_ = sin(v3_5_)
            v3_2_ = v3_3_ * v3_4_
            v3_5_ = v0_0_
            v3_4_ = v3_5_.Position
            v3_6_ = v3_0_
            local v3_7_ = v3_2_
            local v3_8_ = v3_1_
            local new = Vector3.new
            v3_5_ = new(v3_6_, v3_7_, v3_8_)
            v3_3_ = v3_4_ + v3_5_
            local new = Tween0o.new
            v3_6_ = v0_13_
            v3_5_ = v3_6_ / 100.000000
            local Linear = Enum.EasingStyle.Linear
            local InOut = Enum.EasingDirection.InOut
            v3_8_ = 0
            local v3_9_ = false
            local v3_10_ = 0
            v3_4_ = new(v3_5_, Linear, InOut, v3_8_, v3_9_, v3_10_)
            v3_5_ = v0_1_
            v3_7_ = v0_7_
            v3_8_ = v3_4_
            v3_9_ = {}
            v3_9_.Position = v3_3_
            v3_5_ = v3_5_:Create(v3_7_, v3_8_, v3_9_)
            v3_5_:Play()
            v3_6_ = v3_5_.Completed
            v3_6_:Wait()
        end
        spawn(v0_10_)
    end
end
