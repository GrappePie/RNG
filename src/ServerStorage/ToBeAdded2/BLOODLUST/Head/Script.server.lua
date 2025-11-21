-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMZA2F0MQZDRnJhbWUDbmV3AVgEbWF0aANzaW4BWQFaA2F0MgZpcGFpcnMOR2V0RGVzY2VuZGFudHMEQmVhbQNJc0EKQ3VydmVTaXplMQZzY3JpcHQGUGFyZW50BXNjYXJmDFdhaXRGb3JDaGlsZANhdDAIUG9zaXRpb24EZ2FtZQpSdW5TZXJ2aWNlCkdldFNlcnZpY2UOUG9zdFNpbXVsYXRpb24HQ29ubmVjdAACCgAEAAAAX/sAAACVAAAA3gAAAPsBAQBNAAF5AQAAAKQBBAAADCCA+wQCAE0DBHkFAAAA+wcAAD4GBwe7GAYCpAUKAAAkgICfBQICPgQFBkMCAwT7BQIATQQFeAsAAAD7CAAAPgcIB7sYBwKkBgoAACSAgJ8GAgI+BQYMQwMEBfsFAgBNBAV7DQAAAJ8BBAIwAQCFAgAAAPsBAQBNAAEiDgAAAKQBBAAADCCA+wQDAE0DBHkFAAAA+wcAAD4GBwe7GAYCpAUKAAAkgICfBQICPgQFBkMCAwT7BQMATQQFeAsAAAD7CAAAPgcIB7sYBwKkBgoAACSAgJ8GAgI+BQYMQwMEBfsFAwBNBAV7DQAAAJ8BBAIwAQCFAgAAAKQAEAAAAPBA+wEBALwBAUcRAAAAnwECAJ8AAARRAA8AbwcSALwFBP4TAAAAnwUDAg4FCgD7CQAAPggJFbsYCAKkBwoAACSAgJ8HAgKVBgcUOQUGADAFBIQWAAAAbgDw/wIAAICCAAEAFwIAAAAAAADwPwMBAwIDAwQADCCAAwQCAAAAAAAACEACAAAAAAAAOUADBQMGBAAkgIADBwIAAAAAAAAQQAMIAwkDCgQAAPBAAwsDDAMNAgAAAAAAAABAAgAAAAAAAERAAw4ABgABGAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAQAAAAABAAAAAAAAAAAA/gAFBwAAAAAIAAABAgAoowAAAKQBAQAAAABATQABJAIAAABvAgMAvAAA0wQAAACfAAMCbwIFALwAANMEAAAAnwADAk0CAHkGAAAATQECOwcAAABNAwAiCAAAAE0CAzsHAAAAjAMBAKQFCgAAAJBAbwcLALwFBRYMAAAAnwUDAk0EBbYNAAAA2QYAABIBA/8SAAAAEgABABIAAgC8BATHDgAAAJ8EAwHBAwAAggABAA8DDwQAAABAAxADEQMSAxMDAQMUAwkDFQQAAJBAAxYDFwMYAxkBAAEAARgAAAAAAAAAAAAAAAAAAQAAAAEAAAACAQAAAAAAAAAAAAAAAAAAAAoAAQAAAAAB

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_2_ = "scarf"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "at0"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = v0_0_.at1
v0_1_ = v0_2_.Position
local v0_3_ = v0_0_.at2
v0_2_ = v0_3_.Position
v0_3_ = 1
local v0_5_ = game
local v0_7_ = "RunService"
v0_5_ = v0_5_:GetService(v0_7_)
local v0_4_ = v0_5_.PostSimulation
local v0_6_ = function()
    local v1_0_ = v0_3_
    v1_0_ += 1.000000
    v0_3_ = v1_0_
    local v1_1_ = v0_0_
    v1_0_ = v1_1_.at1
    local new = CFrame.new
    local v1_4_ = v0_1_
    local v1_3_ = v1_4_.X
    local v1_7_ = v0_3_
    local v1_6_ = v1_7_ / 25.000000
    local sin = math.sin
    local v1_5_ = sin(v1_6_)
    v1_4_ = v1_5_ / 3.000000
    local v1_2_ = v1_3_ + v1_4_
    v1_5_ = v0_1_
    v1_4_ = v1_5_.Y
    local v1_8_ = v0_3_
    v1_7_ = v1_8_ / 25.000000
    local sin = math.sin
    v1_6_ = sin(v1_7_)
    v1_5_ = v1_6_ / 4.000000
    v1_3_ = v1_4_ + v1_5_
    v1_5_ = v0_1_
    v1_4_ = v1_5_.Z
    v1_1_ = new(v1_2_, v1_3_, v1_4_)
    v1_0_.CFrame = v1_1_
    v1_1_ = v0_0_
    v1_0_ = v1_1_.at2
    local new = CFrame.new
    v1_4_ = v0_2_
    v1_3_ = v1_4_.X
    v1_7_ = v0_3_
    v1_6_ = v1_7_ / 25.000000
    local sin = math.sin
    v1_5_ = sin(v1_6_)
    v1_4_ = v1_5_ / 3.000000
    v1_2_ = v1_3_ + v1_4_
    v1_5_ = v0_2_
    v1_4_ = v1_5_.Y
    v1_8_ = v0_3_
    v1_7_ = v1_8_ / 25.000000
    local sin = math.sin
    v1_6_ = sin(v1_7_)
    v1_5_ = v1_6_ / 4.000000
    v1_3_ = v1_4_ + v1_5_
    v1_5_ = v0_2_
    v1_4_ = v1_5_.Z
    v1_1_ = new(v1_2_, v1_3_, v1_4_)
    v1_0_.CFrame = v1_1_
    v1_0_ = ipairs
    v1_1_ = v0_0_
    v1_0_, v1_1_, v1_2_ = v1_0_(v1_1_:GetDescendants())
    for v1_3_, v1_4_ in v1_0_, v1_1_, v1_2_ do
        v1_7_ = "Beam"
        v1_5_ = v1_4_:IsA(v1_7_)
        if v1_5_ then
            local v1_9_ = v0_3_
            v1_8_ = v1_9_ / 40.000000
            local sin = math.sin
            v1_7_ = sin(v1_8_)
            v1_6_ = v1_7_ + 2.000000
            v1_5_ = -v1_6_
            v1_4_.CurveSize1 = v1_5_
        end
    end
end
v0_4_:Connect(v0_6_)
