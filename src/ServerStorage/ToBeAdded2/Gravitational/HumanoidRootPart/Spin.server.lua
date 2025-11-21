-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMcAkMwBkNGcmFtZQZBbmdsZXMKRGlzY29ubmVjdAZzY3JpcHQJd29ya3NwYWNlDklzRGVzY2VuZGFudE9mBlBhcmVudAhtYWlucGFydAxXYWl0Rm9yQ2hpbGQHTW90b3I2RAVQYXJ0MQpDb25zdHJhaW50BVdlbGRzBVBhcnQyBlVuaW9uMQZVbmlvbjIGVW5pb24zBGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlBENvcmUFTXVzaWMEUGxheQ1SZW5kZXJTdGVwcGVkB0Nvbm5lY3QPQW5jZXN0cnlDaGFuZ2VkBE9uY2UAAwcBBAAAADX7AQAATQIB7QAAAACkAwMAAAgQgIwEAABvBgQACQUGAIwGAACfAwQCCQICAzACAe0AAAAA+wEBAE0CAe0AAAAApAMDAAAIEICMBAAAbwYFAAkFBgCMBgAAnwMEAgkCAgMwAgHtAAAAAPsBAgBNAgHtAAAAAKQDAwAACBCAjAQAAG8GBgAJBQYAjAYAAJ8DBAIJAgIDMAIB7QAAAAD7AQMATQIB7QAAAACkAwMAAAgQgIwEAABvBgcACQUGAIwGAACfAwQCCQICAzACAe0AAAAAggABAAgDAQMCAwMEAAgQgAJlcy04UsHwPwLg8Jx2LxvkPwLW63vz6c7qPwLg8Jx2Lxv0PwARAAEYAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAESAAAAAAIAAgAAAAn7AAAAvAAAGgAAAACfAAIB+wABALwAABoAAAAAnwACAYIAAQABAwQAGAABGAAAAAABAAAAARkAAAAACwAAAQIAeaMAAACkAAEAAAAAQKQCAwAAACBAvAAArQQAAACfAAMCKwABAIIAAQCkAQEAAAAAQE0AASQFAAAAbwIGALwAANMHAAAAnwADAm8CCAC8AADTBwAAAJ8AAwKkAgEAAAAAQE0BAiQFAAAAMAEAsQkAAACkAQEAAAAAQE0AASQFAAAAbwIKALwAANMHAAAAnwADAm8CCAC8AADTBwAAAJ8AAwKkAgEAAAAAQE0BAiQFAAAAMAEAsQkAAACkAQEAAAAAQE0AASQFAAAAbwIKALwAANMHAAAAnwADAm8CCwC8AADTBwAAAJ8AAwJvAwwAvAEA0wcAAACfAQMCbwQNALwCANMHAAAAnwIDAm8FDgC8AwDTBwAAAJ8DAwJvBg8AvAQA0wcAAACfBAMCpAURAAAAAEFvBxIAvAUFFhMAAACfBQMCxgYAAMYHAACkCQEAAAAAQE0ICSQFAAAAbwoUALwICNMHAAAAnwgDAm8KFQC8CAjTBwAAAJ8IAwK8CAjuFgAAAJ8IAgFNCAXPFwAAAMAKGAASAAEAEgACABIAAwASAAQAvAgIxxkAAACfCAMCUgYIAKQJAQAAAABATQgJixoAAADZCgEAEgEG/xIBB/+8CAg9GwAAAJ8IAwJSBwgAwQYAAIIAAQAcAwUEAAAAQAMGBAAAIEADBwMIAwkDCgMLAwwDDQMOAw8DEAMRAxIDEwQAAABBAxQDFQMWAxcDGAMZBgADGgMbAxwCAAEBAAEYAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAEAAAABAAAAAQAAAAEAAAACAAAAAAABAAIAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAABwAAAAAAAAAAAAADAAEAAAAAAg==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = script
local v0_2_ = workspace
v0_0_ = v0_0_:IsDescendantOf(v0_2_)
if not v0_0_ then
    return
end
local v0_1_ = script
v0_0_ = v0_1_.Parent
v0_2_ = "mainpart"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "Motor6D"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = script
v0_1_ = v0_2_.Parent
v0_0_.Part1 = v0_1_
v0_1_ = script
v0_0_ = v0_1_.Parent
v0_2_ = "Constraint"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "Motor6D"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = script
v0_1_ = v0_2_.Parent
v0_0_.Part1 = v0_1_
v0_1_ = script
v0_0_ = v0_1_.Parent
v0_2_ = "Constraint"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "Welds"
v0_0_ = v0_0_:WaitForChild(v0_2_)
local v0_3_ = "Part2"
v0_1_ = v0_0_:WaitForChild(v0_3_)
local v0_4_ = "Union1"
v0_2_ = v0_0_:WaitForChild(v0_4_)
local v0_5_ = "Union2"
v0_3_ = v0_0_:WaitForChild(v0_5_)
local v0_6_ = "Union3"
v0_4_ = v0_0_:WaitForChild(v0_6_)
v0_5_ = game
local v0_7_ = "RunService"
v0_5_ = v0_5_:GetService(v0_7_)
v0_6_ = nil
v0_7_ = nil
local v0_9_ = script
local v0_8_ = v0_9_.Parent
local v0_10_ = "Core"
v0_8_ = v0_8_:WaitForChild(v0_10_)
v0_10_ = "Music"
v0_8_ = v0_8_:WaitForChild(v0_10_)
v0_8_:Play()
v0_8_ = v0_5_.RenderStepped
v0_10_ = function(a1)
    local v1_1_ = v0_1_
    local v1_2_ = v1_1_.C0
    local Angles = CFrame.Angles
    local v1_4_ = 0
    local v1_6_ = 1.047198
    local v1_5_ = v1_6_ * a1
    v1_6_ = 0
    local v1_3_ = Angles(v1_4_, v1_5_, v1_6_)
    v1_2_ *= v1_3_
    v1_1_.C0 = v1_2_
    v1_1_ = v0_2_
    v1_2_ = v1_1_.C0
    local Angles = CFrame.Angles
    v1_4_ = 0
    v1_6_ = 0.628319
    v1_5_ = v1_6_ * a1
    v1_6_ = 0
    v1_3_ = Angles(v1_4_, v1_5_, v1_6_)
    v1_2_ *= v1_3_
    v1_1_.C0 = v1_2_
    v1_1_ = v0_3_
    v1_2_ = v1_1_.C0
    local Angles = CFrame.Angles
    v1_4_ = 0
    v1_6_ = 0.837758
    v1_5_ = v1_6_ * a1
    v1_6_ = 0
    v1_3_ = Angles(v1_4_, v1_5_, v1_6_)
    v1_2_ *= v1_3_
    v1_1_.C0 = v1_2_
    v1_1_ = v0_4_
    v1_2_ = v1_1_.C0
    local Angles = CFrame.Angles
    v1_4_ = 0
    v1_6_ = 1.256637
    v1_5_ = v1_6_ * a1
    v1_6_ = 0
    v1_3_ = Angles(v1_4_, v1_5_, v1_6_)
    v1_2_ *= v1_3_
    v1_1_.C0 = v1_2_
end
v0_8_ = v0_8_:Connect(v0_10_)
v0_6_ = v0_8_
v0_9_ = script
v0_8_ = v0_9_.AncestryChanged
v0_10_ = function()
    local v2_0_ = v0_6_
    v2_0_:Disconnect()
    v2_0_ = v0_7_
    v2_0_:Disconnect()
end
v0_8_ = v0_8_:Once(v0_10_)
v0_7_ = v0_8_
