-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMbBnNjcmlwdAZQYXJlbnQGQ0ZyYW1lEmZyb21FdWxlckFuZ2xlc1hZWgVWYWx1ZQNydW4EdGFzawR3YWl0BVNwZWVkCVR3ZWVuSW5mbwNuZXcERW51bQtFYXNpbmdTdHlsZQRTaW5lD0Vhc2luZ0RpcmVjdGlvbgVJbk91dARnYW1lDFR3ZWVuU2VydmljZQZDcmVhdGUEUGxheQExATIBMwE0C1J1biBTZXJ2aWNlCUhlYXJ0YmVhdAdDb25uZWN0AAIGAAEAAAASpAEBAAAAAEBNAAEkAgAAAE0BAIUDAAAApAIFAAAQMICMAwAA+wUAAE0EBewGAAAAjAUAAJ8CBAIJAQECMAEAhQMAAACCAAEABwMBBAAAAEADAgMDAwQEABAwgAMFAB8GARgAAAAAAAAAAAAAAAAAAAAAAAEgAAAAAAwAAAEAAKEBowAAAKQAAgAABACAnwABAaQCBAAAADBATQECJAUAAABNAAEkBQAAACsAAQBIAPX/pAEEAAAAMEBNAAEsBgAAAMYBAACkAgkAACBwgIwDBQCkBA0ADCygwKQFEAAPOKDAjAb//6kHAQCfAgYCpAQSAAAAEEFNAwQ7EwAAAFIFAABSBgIA4gcVAG8IFgAwCAfsFAAAALwDA5YXAAAAnwMFArwDA+4YAAAAnwMCAaQEEgAAABBBTQMEOxMAAACkBwQAAAAwQE0GByQFAAAATQUGUBkAAABSBgIA4gcbAKQIHAAAIKCBjAkHAIwKAACMCwAAnwgEAjAIB4UaAAAAvAMDlhcAAACfAwUCvAMD7hgAAACfAwIBpAQSAAAAEEFNAwQ7EwAAAKQHBAAAADBATQYHJAUAAABNBQZTHQAAAFIGAgDiBxsApAgcAAAgoIGMCfn/jAoAAIwLAACfCAQCMAgHhRoAAAC8AwOWFwAAAJ8DBQK8AwPuGAAAAJ8DAgGkBBIAAAAQQU0DBDsTAAAApAcEAAAAMEBNBgckBQAAAE0FBlIeAAAAUgYCAOIHGwCkCBwAACCggYwJAACMCgAAjAsHAJ8IBAIwCAeFGgAAALwDA5YXAAAAnwMFArwDA+4YAAAAnwMCAaQEEgAAABBBTQMEOxMAAACkBwQAAAAwQE0GByQFAAAATQUGVR8AAABSBgIA4gcbAKQIHAAAIKCBjAkAAIwKAACMC/n/nwgEAjAIB4UaAAAAvAMDlhcAAACfAwUCvAMD7hgAAACfAwIBwAMgABIAAACkBhIAAAAQQU0FBs8hAAAATQQF/SIAAABSBgMAvAQExyMAAACfBAMCUgEEAIIAAQAkAwcDCAQABACAAwEEAAAwQAMCAwkDCgMLBAAgcIADDAMNAw4EDCygwAMPAxAEDzigwAMRBAAAEEEDEgMFBQEUApqZmZmZmZk/AxMDFAMVAwMFARoEACCggQMWAxcDGAYAAxkDGgMbAQABAAEYAAAAAAAAAAAAAAAAAQAAAAEDAAEBAAEAAQH7CAAAAAAAAAEAAP8AAAIAAAIAAAAAAAAAAAAAAAEAAAAAAAAA/wAAAgAAAQAAAAAAAAAAAAAAAQAAAAAAAAD/AAACAAABAAAAAAAAAAAAAAABAAAAAAAAAP8AAAIAAAEAAAAAAAAAAAAAAAEAAAAAAAAA/wAAAgAAAgAEAAAAAAAAAAAAAAABAAAAAAE=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local wait = task.wait
wait()
local v0_2_ = script
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
while not v0_0_ do
end
v0_1_ = script
v0_0_ = v0_1_.Speed
v0_1_ = nil
local new = Tween0o.new
local v0_3_ = 5
local Sine = Enum.EasingStyle.Sine
local InOut = Enum.EasingDirection.InOut
local v0_6_ = -1
local v0_7_ = true
v0_2_ = new(v0_3_, Sine, InOut, v0_6_, v0_7_)
local v0_4_ = game
v0_3_ = v0_4_.TweenService
local v0_5_ = v0_0_
v0_6_ = v0_2_
v0_7_ = {}
local v0_8_ = 0.025000
v0_7_.Value = v0_8_
v0_3_ = v0_3_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
v0_4_ = game
v0_3_ = v0_4_.TweenService
v0_7_ = script
v0_6_ = v0_7_.Parent
v0_5_ = v0_6_["1"]
v0_6_ = v0_2_
v0_7_ = {}
local new = CFrame.new
local v0_9_ = 7
local v0_10_ = 0
local v0_11_ = 0
v0_8_ = new(v0_9_, v0_10_, v0_11_)
v0_7_.CFrame = v0_8_
v0_3_ = v0_3_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
v0_4_ = game
v0_3_ = v0_4_.TweenService
v0_7_ = script
v0_6_ = v0_7_.Parent
v0_5_ = v0_6_["2"]
v0_6_ = v0_2_
v0_7_ = {}
local new = CFrame.new
v0_9_ = -7
v0_10_ = 0
v0_11_ = 0
v0_8_ = new(v0_9_, v0_10_, v0_11_)
v0_7_.CFrame = v0_8_
v0_3_ = v0_3_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
v0_4_ = game
v0_3_ = v0_4_.TweenService
v0_7_ = script
v0_6_ = v0_7_.Parent
v0_5_ = v0_6_["3"]
v0_6_ = v0_2_
v0_7_ = {}
local new = CFrame.new
v0_9_ = 0
v0_10_ = 0
v0_11_ = 7
v0_8_ = new(v0_9_, v0_10_, v0_11_)
v0_7_.CFrame = v0_8_
v0_3_ = v0_3_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
v0_4_ = game
v0_3_ = v0_4_.TweenService
v0_7_ = script
v0_6_ = v0_7_.Parent
v0_5_ = v0_6_["4"]
v0_6_ = v0_2_
v0_7_ = {}
local new = CFrame.new
v0_9_ = 0
v0_10_ = 0
v0_11_ = -7
v0_8_ = new(v0_9_, v0_10_, v0_11_)
v0_7_.CFrame = v0_8_
v0_3_ = v0_3_:Create(v0_5_, v0_6_, v0_7_)
v0_3_:Play()
v0_3_ = function()
    local v1_1_ = script
    local v1_0_ = v1_1_.Parent
    v1_1_ = v1_0_.CFrame
    local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
    local v1_3_ = 0
    local v1_5_ = v0_0_
    local v1_4_ = v1_5_.Value
    v1_5_ = 0
    local v1_2_ = fromEulerAnglesXYZ(v1_3_, v1_4_, v1_5_)
    v1_1_ *= v1_2_
    v1_0_.CFrame = v1_1_
end
v0_6_ = game
v0_5_ = v0_6_["Run Service"]
v0_4_ = v0_5_.Heartbeat
v0_6_ = v0_3_
v0_4_ = v0_4_:Connect(v0_6_)
v0_1_ = v0_4_
