-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMUBkNGcmFtZQZBbmdsZXMEbWF0aANyYWQCQzAKRGlzY29ubmVjdAZzY3JpcHQJd29ya3NwYWNlDklzRGVzY2VuZGFudE9mBGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlBlBhcmVudAVIb3VycwxXYWl0Rm9yQ2hpbGQHTWludXRlcwlIZWFydGJlYXQHQ29ubmVjdA9BbmNlc3RyeUNoYW5nZWQET25jZQADBwEDAAAAI/sBAABbAgAAQwEBAt4BAAD7AQEApAIDAAAIEIBvBQQA+wYAAAkEBQa7FgQCpAMHAAAYUICfAwICjAQAAIwFAACfAgQCMAIB7QgAAAD7AQIApAIDAAAIEICMBf3/+wYAAAkEBQa7FgQCpAMHAAAYUICfAwICjAQAAIwFAACfAgQCMAIB7QgAAACCAAEACQIAAAAAAABOQAMBAwIEAAgQgAIAAAAAAADQvwMDAwQEABhQgAMFAA0AARgAAAAAAQAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAQ4AAAAAAgACAAAACfsAAAC8AAAaAAAAAJ8AAgH7AAEAvAAAGgAAAACfAAIBggABAAEDBgATAAEYAAAAAAEAAAABFAAAAAALAAABAgA1owAAAKQAAQAAAABApAIDAAAAIEC8AACtBAAAAJ8AAwIrAAEAggABAKQABgAAAFBAbwIHALwAABYIAAAAnwADAqQCAQAAAABATQECJAkAAABvBAoAvAIB0wsAAACfAgMCbwUMALwDAdMLAAAAnwMDAowEAADGBQAAxgYAAE0HAP0NAAAA2QkAABIBBP8SAAIAEgADALwHB8cOAAAAnwcDAqQJAQAAAABATQgJiw8AAADZCgEAEgAHABIBBv+8CAg9EAAAAJ8IAwJSBggAwQQAAIIAAQARAwcEAAAAQAMIBAAAIEADCQMKBAAAUEADCwMMAw0DDgMPAxADEQMSAxMDFAIAAQEAARgAAAAAAAAAAAAAAgAAAAAAAQAAAAIAAAABAAAAAgIAAgAAAAAAAAAABgAAAAAAAAAAAAADAAEAAAAAAg==

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
local v0_4_ = "Hours"
v0_2_ = v0_1_:WaitForChild(v0_4_)
local v0_5_ = "Minutes"
local v0_3_ = v0_1_:WaitForChild(v0_5_)
v0_4_ = 0
v0_5_ = nil
local v0_6_ = nil
local v0_7_ = v0_0_.Heartbeat
local v0_9_ = function(a1)
    local v1_1_ = v0_4_
    local v1_2_ = a1 * 60.000000
    v1_1_ += v1_2_
    v0_4_ = a1
    v1_1_ = v0_2_
    local Angles = CFrame.Angles
    local v1_5_ = -0.250000
    local v1_6_ = v0_4_
    local v1_4_ = v1_5_ * v1_6_
    local rad = math.rad
    local v1_3_ = rad(v1_4_)
    v1_4_ = 0
    v1_5_ = 0
    v1_2_ = Angles(v1_3_, v1_4_, v1_5_)
    v1_1_.C0 = v1_2_
    v1_1_ = v0_3_
    local Angles = CFrame.Angles
    v1_5_ = -3
    v1_6_ = v0_4_
    v1_4_ = v1_5_ * v1_6_
    local rad = math.rad
    v1_3_ = rad(v1_4_)
    v1_4_ = 0
    v1_5_ = 0
    v1_2_ = Angles(v1_3_, v1_4_, v1_5_)
    v1_1_.C0 = v1_2_
end
v0_7_ = v0_7_:Connect(v0_9_)
v0_9_ = script
local v0_8_ = v0_9_.AncestryChanged
local v0_10_ = function()
    local v2_0_ = v0_7_
    v2_0_:Disconnect()
    v2_0_ = v0_6_
    v2_0_:Disconnect()
end
v0_8_ = v0_8_:Once(v0_10_)
v0_6_ = v0_8_
