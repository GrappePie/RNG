-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMYCFBvc2l0aW9uBFVuaXQBeAF6BG1hdGgFYXRhbjIDZGVnB1ZlY3RvcjMDbmV3C09yaWVudGF0aW9uEWxvb2tBdENvb3JkaW5hdGVzCG9uVXBkYXRlBnNjcmlwdAZQYXJlbnQJQXVyYU1vZGVsDFdhaXRGb3JDaGlsZApCb3R0b21QYXJ0EkJvdHRvbU1vZGVsc05GbG9vcgtDb21wYXNzU3RhcgRnYW1lClJ1blNlcnZpY2UKR2V0U2VydmljZQlIZWFydGJlYXQHQ29ubmVjdAADCQIAAAAAHU0CADsAAAAAJgQBAk0DBAcBAAAATQYDmQIAAABNBwObAwAAAJ4FBgMHAAAApAUGAAAUQICfBQMCuwoFAqQECAAAHECAnwQCAowGAACMCAAANDYGBAQIAABSBwQApAULAAAokICfBQQCMAUAXAwAAACCAAEADQMBAwIDAwMEAwUDBgQAFECAAwcEABxAgAMIAwkEACiQgAMKAAMLARgAAAEAAAMAAAAAAAAAAAAAAAADAAAAAAAAAAAAAQQAAAAAAgABAAAABfsAAABvAQAAMAEAXAEAAACCAAEAAgcAAAAAAAA0QwAAAAAAAAAAAwoADwwBGAAAAAABEgAAAAAHAAABAgApowAAAKQDAQAAAABATQIDJAIAAABNAQIkAgAAAE0AASQCAAAAbwIDALwAANMEAAAAnwADAm8CBQC8AADTBAAAAJ8AAwJvAgYAvAAA0wQAAACfAAMCbwIHALwAANMEAAAAnwADAsABCADAAgkAEgAAAKQECwAAAKBAbwYMALwEBBYNAAAAnwQDAk0DBP0OAAAAUgUCALwDA8cPAAAAnwMDAYIAAQAQAw0EAAAAQAMOAw8DEAMRAxIDEwYABgEDFAQAAKBAAxUDFgMXAxgCAAEBAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIMAAcAAAAAAAAAAAAAAAEBAAAAAAI=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_3_ = script
local v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
v0_2_ = "AuraModel"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "BottomPart"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "BottomModelsNFloor"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "CompassStar"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_1_ = function(a1, a2)
    local v1_2_ = a1.Position
    local v1_4_ = a2 - v1_2_
    local v1_3_ = v1_4_.Unit
    local v1_6_ = v1_3_.x
    local v1_7_ = v1_3_.z
    local atan2 = math.atan2
    local v1_5_ = atan2(v1_6_, v1_7_)
    local deg = math.deg
    v1_4_ = deg(v1_5_)
    v1_6_ = 0
    local v1_8_ = 0
    v1_7_ = v1_4_
    local new = Vector3.new
    v1_5_ = new(v1_6_, v1_7_, v1_8_)
    a1.Orientation = v1_5_
end
v0_2_ = function()
    local v2_0_ = v0_0_
    local v2_1_ = Vector3.new(0.000000, 180.000000, 0.000000)
    v2_0_.Orientation = v2_1_
end
local v0_4_ = game
local v0_6_ = "RunService"
v0_4_ = v0_4_:GetService(v0_6_)
v0_3_ = v0_4_.Heartbeat
local v0_5_ = v0_2_
v0_3_:Connect(v0_5_)
