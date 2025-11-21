-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMQBnNjcmlwdARnYW1lDklzRGVzY2VuZGFudE9mCkRpc2Nvbm5lY3QGQ0ZyYW1lBkFuZ2xlcwRtYXRoA3JhZAl3b3Jrc3BhY2UKUnVuU2VydmljZQpHZXRTZXJ2aWNlBlBhcmVudA1SZW5kZXJTdGVwcGVkB0Nvbm5lY3QPQW5jZXN0cnlDaGFuZ2VkBE9uY2UAAwgBAwAAACX7AQAADgEIAKQBAQAAAABApAMDAAAAIEC8AQGtBAAAAJ8BAwIrAQkA+wEBALwBARoFAAAAnwECAfsBAgC8AQEaBQAAAJ8BAgGCAAEA+wEAAE0CAYUGAAAApAMIAAAcYICMBAAAjAf6AAkGBwC7FgYCpAULAAAokICfBQICjAYAAJ8DBAIJAgIDMAIBhQYAAACCAAEADAMBBAAAAEADAgQAACBAAwMDBAMFAwYEABxggAMHAwgEACiQgAAKAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAQsAAAAAAgACAAAACfsAAAC8AAAaAAAAAJ8AAgH7AAEAvAAAGgAAAACfAAIBggABAAEDBAAPAAEYAAAAAAEAAAABEAAAAAAHAAABAgAvowAAAKQAAQAAAABApAIDAAAAIEC8AACtBAAAAJ8AAwIrAAEAggABAKQABgAAAFBAbwIHALwAABYIAAAAnwADAqQCAQAAAABATQECJAkAAAArAQEAggABAMYCAADGAwAATQQAzwoAAADZBgAAEgABABIBAv8SAQP/vAQExwsAAACfBAMCUgIEAKQFAQAAAABATQQFiwwAAADZBgEAEgEC/xIBA/+8BAQ9DQAAAJ8EAwJSAwQAwQIAAIIAAQAOAwEEAAAAQAMJBAAAIEADAwMCBAAAUEADCgMLAwwDDQMOAw8DEAIAAQEAARgAAAAAAAAAAAAAAgAAAAAAAQAAAAIAAgACAAAAAAAAAAAABQAAAAAAAAAAAAADAAEAAAAAAg==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = script
local v0_2_ = workspace
v0_0_ = v0_0_:IsDescendantOf(v0_2_)
if not v0_0_ then
    return
end
v0_0_ = game
v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
if not v0_1_ then
    return
end
v0_2_ = nil
local v0_3_ = nil
local v0_4_ = v0_0_.RenderStepped
local v0_6_ = function(a1)
    local v1_1_ = v0_1_
    if v1_1_ then
        v1_1_ = script
        local v1_3_ = game
        v1_1_ = v1_1_:IsDescendantOf(v1_3_)
        if not v1_1_ then
            v1_1_ = v0_2_
            v1_1_:Disconnect()
            v1_1_ = v0_3_
            v1_1_:Disconnect()
            return
        end
    end
    v1_1_ = v0_2_
    v1_1_:Disconnect()
    v1_1_ = v0_3_
    v1_1_:Disconnect()
    return
end
v0_4_ = v0_4_:Connect(v0_6_)
v0_2_ = v0_4_
local v0_5_ = script
v0_4_ = v0_5_.AncestryChanged
v0_6_ = function()
    local v2_0_ = v0_2_
    v2_0_:Disconnect()
    v2_0_ = v0_3_
    v2_0_:Disconnect()
end
v0_4_ = v0_4_:Once(v0_6_)
v0_3_ = v0_4_
