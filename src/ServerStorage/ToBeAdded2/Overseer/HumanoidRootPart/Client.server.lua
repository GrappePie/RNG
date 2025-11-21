-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMkBVBhcnQwBVBhcnQxBFdlbGQORmluZEZpcnN0Q2hpbGQOT3JpZ2luYWxDRnJhbWUMR2V0QXR0cmlidXRlAkMwDFNldEF0dHJpYnV0ZQZDRnJhbWUDbmV3BG1hdGgDc2luBkFuZ2xlcwNyYWQHVmVjdG9yMwhQb3NpdGlvbgpEaXNjb25uZWN0BGdhbWUKUnVuU2VydmljZQpHZXRTZXJ2aWNlBnNjcmlwdAZQYXJlbnQFRmxvb3IMV2FpdEZvckNoaWxkA0V5ZQZTd29yZDEGU3dvcmQyBlN3b3JkMwZTd29yZDQJRmxvb3JXZWxkA0JHTQRQbGF5CUhlYXJ0YmVhdAdDb25uZWN0D0FuY2VzdHJ5Q2hhbmdlZARPbmNlAAQDAwAAAAAFMAEAPAAAAAAwAgCxAQAAAIIAAQACAwEDAgAZAwEYAAABAAEaAAAAABEBAwAAAFP7AQAAjAMyAAkCAwBDAQEC3gEAAPsBAQDGAgAAxgMAAGQBNwBvCAAAvAYFAwEAAACfBgMCDgYyAG8JAgC8BwYSAwAAAJ8HAwIrBwgAbwoCAE0LBu0EAAAAvAgGLgUAAACfCAQBTQcG7QQAAACkCggAABxggIwLAAD7DgAAPg0OCbsYDQKkDAwAACyggJ8MAgL7EAAAlQ8QDT4ODwm7GA4CpA0MAAAsoICfDQICnwoEAgkJBwqkCg8AADhggPsPAAA+Dg8RuxgOAqQNDAAALKCAnw0CAlsMDRC7FgwCpAsTAABIoICfCwICjAwAAIwNAACfCgQCCQgJCjAIBu0EAAAAbgHI/wIAAAD7AQIAjAMAAPsHAAA+BgcVuxgGAqQFDAAALKCAnwUCApUEBRSMBQAATDYAAqQCFwAAHGCBnwIEAjACATsYAAAAggABABkDAwMEAwUDBgMHAwgDCQMKBAAcYIACAAAAAAAATkADCwMMBAAsoIACAAAAAAAANEADDQQAOGCAAgAAAAAAABRAAgAAAAAAAElAAw4EAEiggAIAAAAAAAAiQAIAAAAAAIBRQAMPBAAcYIEDEAAkAAEYAAAAAAACAAAAAQAAAAEBAAAAAQEAAAAAAAEAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgADAAAAAAAAAAAAAAAAAAAAAElAAAAAAIAAgAAAAn7AAAAvAAAGgAAAACfAAIB+wABALwAABoAAAAAnwACAYIAAQABAxEANgABGAAAAAABAAAAATcAAAAADAAAAQIAUaMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAgUAAABAQE0BAiQGAAAAbwQHALwCAdMIAAAAnwIDAm8FCQC8AwHTCAAAAJ8DAwL/BAAABAAAAG8HCgC8BQLTCAAAAJ8FAwJvCAsAvAYC0wgAAACfBgMCbwkMALwHAtMIAAAAnwcDAm8KDQC8CALTCAAAAJ8IAwDFBAUAAQAAAIwFAADGBgAAxgcAAMAIDgBvCw8AvAkB0wgAAACfCQMCMAEJPBAAAAAwAgmxEQAAAG8LEgC8CQHTCAAAAJ8JAwK8CQnuEwAAAJ8JAgFNCQD9FAAAANkLAQASAQX/EgAEABIAAwC8CQnHFQAAAJ8JAwJSBgkApAoFAAAAQEBNCQqLFgAAANkLAgASAQb/EgEH/7wJCT0XAAAAnwkDAlIHCQDBBQAAggABABgDEgQAAABAAxMDFAMVBAAAQEADFgMXAxgDGQMaAxsDHAMdBgADHgMBAwIDHwMgAyEDIgMjAyQDAAECAQABGAACAAAAAAAEAAAAAQAAAAEAAAABAAEAAAABAAAAAQAAAAEAAAAAAAUEAAIHAAAA+gABAAcAAAAAAAACAAAAAAAAAAAAEgAAAAAAAAAAAAADAAEAAAAAAw==

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_2_ = script
local v0_1_ = v0_2_.Parent
local v0_4_ = "Floor"
v0_2_ = v0_1_:WaitForChild(v0_4_)
local v0_5_ = "Eye"
local v0_3_ = v0_1_:WaitForChild(v0_5_)
v0_4_ = table.create(4)
local v0_7_ = "Sword1"
v0_5_ = v0_2_:WaitForChild(v0_7_)
local v0_8_ = "Sword2"
local v0_6_ = v0_2_:WaitForChild(v0_8_)
local v0_9_ = "Sword3"
v0_7_ = v0_2_:WaitForChild(v0_9_)
local v0_10_ = "Sword4"
-- WARNING: SETLIST_C0, output may be wrong!
v0_4_ = {v0_5_, v0_2_:WaitForChild(v0_10_)}
v0_5_ = 0
v0_6_ = nil
v0_7_ = nil
v0_8_ = function(a1, a2, a3)
    a1.Part0 = a2
    a1.Part1 = a3
end
local v0_11_ = "FloorWeld"
v0_9_ = v0_1_:WaitForChild(v0_11_)
v0_9_.Part0 = v0_1_
v0_9_.Part1 = v0_2_
v0_11_ = "BGM"
v0_9_ = v0_1_:WaitForChild(v0_11_)
v0_9_:Play()
v0_9_ = v0_0_.Heartbeat
v0_11_ = function(a1)
    local v2_1_ = v0_5_
    local v2_3_ = 50
    local v2_2_ = v2_3_ * a1
    v2_1_ += v2_2_
    v0_5_ = a1
    v2_1_ = v0_4_
    v2_2_ = nil
    v2_3_ = nil
    local v2_8_ = "Weld"
    local v2_6_ = nil:FindFirstChild(v2_8_)
    if v2_6_ then
        local v2_9_ = "OriginalCFrame"
        local v2_7_ = v2_6_:GetAttribute(v2_9_)
        if not v2_7_ then
            local v2_10_ = "OriginalCFrame"
            local v2_11_ = v2_6_.C0
            v2_6_:SetAttribute(v2_10_, v2_11_)
            v2_7_ = v2_6_.C0
        end
        local new = CFrame.new
        local v2_11_ = 0
        local v2_14_ = v0_5_
        local v2_13_ = v2_14_ / 60.000000
        local sin = math.sin
        local v2_12_ = sin(v2_13_)
        local v2_16_ = v0_5_
        local v2_15_ = v2_16_ + 20.000000
        v2_14_ = v2_15_ / 60.000000
        local sin = math.sin
        v2_13_ = sin(v2_14_)
        local v2_10_ = new(v2_11_, v2_12_, v2_13_)
        v2_9_ = v2_7_ * v2_10_
        local Angles = CFrame.Angles
        v2_15_ = v0_5_
        v2_14_ = v2_15_ / 50.000000
        local sin = math.sin
        v2_13_ = sin(v2_14_)
        v2_12_ = v2_13_ * 5.000000
        local rad = math.rad
        v2_11_ = rad(v2_12_)
        v2_12_ = 0
        v2_13_ = 0
        v2_10_ = Angles(v2_11_, v2_12_, v2_13_)
        v2_8_ = v2_9_ * v2_10_
        v2_6_.C0 = v2_8_
    end
    v2_1_ = v0_3_
    v2_3_ = 0
    local v2_7_ = v0_5_
    v2_6_ = v2_7_ / 70.000000
    local sin = math.sin
    local v2_5_ = sin(v2_6_)
    local v2_4_ = v2_5_ + 9.000000
    v2_5_ = 0
    local new = Vector3.new
    v2_2_ = new(v2_3_, v2_4_, v2_5_)
    v2_1_.Position = v2_2_
end
v0_9_ = v0_9_:Connect(v0_11_)
v0_6_ = v0_9_
v0_10_ = script
v0_9_ = v0_10_.AncestryChanged
v0_11_ = function()
    local v3_0_ = v0_6_
    v3_0_:Disconnect()
    v3_0_ = v0_7_
    v3_0_:Disconnect()
end
v0_9_ = v0_9_:Once(v0_11_)
v0_7_ = v0_9_
