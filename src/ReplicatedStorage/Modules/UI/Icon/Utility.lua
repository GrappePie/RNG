-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = {}
local v0_1_ = game
local v0_3_ = "Players"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_2_ = v0_1_.LocalPlayer
v0_3_ = function(a1, a2, a3)
    local v1_3_ = false
    local v1_4_ = false
    if a1 then
        if a1 == 0.000000 then
            v1_0_ = 0.010000
        end
    end
    v1_0_ = 0.010000
    local v1_5_ = function(...)
        local v2_0_ = v1_3_
        if v2_0_ then
            v2_0_ = true
            v1_4_ = nil
            return
        end
        local pack = table.pack
        v2_0_ = pack(...)
        local v2_1_ = true
        v1_3_ = v2_0_
        v2_1_ = false
        v1_4_ = v2_1_
        local spawn = task.spawn
        local v2_2_ = function()
            local v3_0_ = a3
            if v3_0_ then
                local wait = task.wait
                local v3_1_ = v1_0_
                wait(v3_1_)
            end
            v3_0_ = a2
            local v3_2_ = v2_0_
            local unpack = table.unpack
            v3_0_(unpack(v3_2_))
        end
        spawn(v2_2_)
        local delay = task.delay
        v2_2_ = v1_0_
        local v2_3_ = function()
            local v4_0_ = false
            v1_3_ = v4_0_
            v4_0_ = v1_4_
            if v4_0_ then
                v4_0_ = nil
                local v4_2_ = v2_0_
                local unpack = table.unpack
                v4_0_(unpack(v4_2_))
            end
        end
        delay(v2_2_, v2_3_)
    end
    return v1_5_
end
v0_0_.createStagger = v0_3_
v0_3_ = function(a1)
    local v5_2_ = a1 + 0.500000
    local floor = math.floor
    local v5_1_ = floor(v5_2_)
    return v5_1_
end
v0_0_.round = v0_3_
v0_3_ = function(a1)
    local v6_3_ = 1
    local v6_6_ = #a1
    local v6_5_ = v6_6_ / 2.000000
    local floor = math.floor
    local v6_4_ = floor(v6_5_)
    local v6_1_ = v6_4_
    local v6_2_ = 1
    for v6_3_ = v6_3_, v6_1_, v6_2_ do
        v6_6_ = #a1
        v6_5_ = v6_6_ - v6_3_
        v6_4_ = v6_5_ + 1.000000
        v6_5_ = a1[v6_4_]
        v6_6_ = a1[v6_3_]
        a1[v6_3_] = v6_5_
        a1[v6_4_] = v6_6_
    end
end
v0_0_.reverseTable = v0_3_
v0_3_ = function(a1)
    local v7_4_ = a1
    local v7_3_ = type
    v7_3_ = v7_3_(v7_4_)
    if v7_3_ ~= "table" then
        local v7_2_ = false
    end
    local v7_2_ = true
    v7_3_ = "First argument must be a table"
    local v7_1_ = assert
    v7_1_(v7_2_, v7_3_)
    local create = table.create
    v7_2_ = #a1
    v7_1_ = create(v7_2_)
    v7_2_ = pairs
    v7_3_ = a1
    v7_2_, v7_3_, v7_4_ = v7_2_(v7_3_)
    for v7_5_, v7_6_ in v7_2_, v7_3_, v7_4_ do
        local v7_8_ = v7_6_
        local v7_7_ = type
        v7_7_ = v7_7_(v7_8_)
        if v7_7_ == "table" then
            v7_8_ = v0_0_
            v7_7_ = v7_8_.copyTable
            v7_8_ = v7_6_
            v7_7_ = v7_7_(v7_8_)
            v7_1_[v7_5_] = v7_7_
        else
            v7_1_[v7_5_] = v7_6_
        end
    end
    return v7_1_
end
v0_0_.copyTable = v0_3_
v0_3_ = table.create(77)
local v0_4_ = "a"
local v0_5_ = "b"
local v0_6_ = "c"
local v0_7_ = "d"
local v0_8_ = "e"
local v0_9_ = "f"
local v0_10_ = "g"
local v0_11_ = "h"
local v0_12_ = "i"
local v0_13_ = "j"
local v0_14_ = "k"
local v0_15_ = "l"
local v0_16_ = "m"
local v0_17_ = "n"
local v0_18_ = "o"
local v0_19_ = "p"
v0_3_[1] = v0_4_
v0_3_[2] = v0_5_
v0_3_[3] = v0_6_
v0_3_[4] = v0_7_
v0_3_[5] = v0_8_
v0_3_[6] = v0_9_
v0_3_[7] = v0_10_
v0_3_[8] = v0_11_
v0_3_[9] = v0_12_
v0_3_[10] = v0_13_
v0_3_[11] = v0_14_
v0_3_[12] = v0_15_
v0_3_[13] = v0_16_
v0_3_[14] = v0_17_
v0_3_[15] = v0_18_
v0_3_[16] = v0_19_
v0_4_ = "q"
v0_5_ = "r"
v0_6_ = "s"
v0_7_ = "t"
v0_8_ = "u"
v0_9_ = "v"
v0_10_ = "w"
v0_11_ = "x"
v0_12_ = "y"
v0_13_ = "z"
v0_14_ = "A"
v0_15_ = "B"
v0_16_ = "C"
v0_17_ = "D"
v0_18_ = "E"
v0_19_ = "F"
v0_3_[17] = v0_4_
v0_3_[18] = v0_5_
v0_3_[19] = v0_6_
v0_3_[20] = v0_7_
v0_3_[21] = v0_8_
v0_3_[22] = v0_9_
v0_3_[23] = v0_10_
v0_3_[24] = v0_11_
v0_3_[25] = v0_12_
v0_3_[26] = v0_13_
v0_3_[27] = v0_14_
v0_3_[28] = v0_15_
v0_3_[29] = v0_16_
v0_3_[30] = v0_17_
v0_3_[31] = v0_18_
v0_3_[32] = v0_19_
v0_4_ = "G"
v0_5_ = "H"
v0_6_ = "I"
v0_7_ = "J"
v0_8_ = "K"
v0_9_ = "L"
v0_10_ = "M"
v0_11_ = "N"
v0_12_ = "O"
v0_13_ = "P"
v0_14_ = "Q"
v0_15_ = "R"
v0_16_ = "S"
v0_17_ = "T"
v0_18_ = "U"
v0_19_ = "V"
v0_3_[33] = v0_4_
v0_3_[34] = v0_5_
v0_3_[35] = v0_6_
v0_3_[36] = v0_7_
v0_3_[37] = v0_8_
v0_3_[38] = v0_9_
v0_3_[39] = v0_10_
v0_3_[40] = v0_11_
v0_3_[41] = v0_12_
v0_3_[42] = v0_13_
v0_3_[43] = v0_14_
v0_3_[44] = v0_15_
v0_3_[45] = v0_16_
v0_3_[46] = v0_17_
v0_3_[47] = v0_18_
v0_3_[48] = v0_19_
v0_4_ = "W"
v0_5_ = "X"
v0_6_ = "Y"
v0_7_ = "Z"
v0_8_ = "1"
v0_9_ = "2"
v0_10_ = "3"
v0_11_ = "4"
v0_12_ = "5"
v0_13_ = "6"
v0_14_ = "7"
v0_15_ = "8"
v0_16_ = "9"
v0_17_ = "0"
v0_18_ = "<"
v0_19_ = ">"
v0_3_[49] = v0_4_
v0_3_[50] = v0_5_
v0_3_[51] = v0_6_
v0_3_[52] = v0_7_
v0_3_[53] = v0_8_
v0_3_[54] = v0_9_
v0_3_[55] = v0_10_
v0_3_[56] = v0_11_
v0_3_[57] = v0_12_
v0_3_[58] = v0_13_
v0_3_[59] = v0_14_
v0_3_[60] = v0_15_
v0_3_[61] = v0_16_
v0_3_[62] = v0_17_
v0_3_[63] = v0_18_
v0_3_[64] = v0_19_
v0_4_ = "?"
v0_5_ = "@"
v0_6_ = "{"
v0_7_ = "}"
v0_8_ = "["
v0_9_ = "]"
v0_10_ = "!"
v0_11_ = "("
v0_12_ = ")"
v0_13_ = "="
v0_14_ = "+"
v0_15_ = "~"
v0_16_ = "#"
v0_3_[65] = v0_4_
v0_3_[66] = v0_5_
v0_3_[67] = v0_6_
v0_3_[68] = v0_7_
v0_3_[69] = v0_8_
v0_3_[70] = v0_9_
v0_3_[71] = v0_10_
v0_3_[72] = v0_11_
v0_3_[73] = v0_12_
v0_3_[74] = v0_13_
v0_3_[75] = v0_14_
v0_3_[76] = v0_15_
v0_3_[77] = v0_16_
v0_4_ = function(a1)
    v8_0_ = a1 or 8.000000
    local v8_1_ = ""
    local v8_2_ = v0_3_
    local v8_3_ = #v8_2_
    local v8_6_ = 1
    local v8_4_ = v8_0_
    local v8_5_ = 1
    for v8_6_ = v8_6_, v8_4_, v8_5_ do
        local random = math.random
        local v8_9_ = 1
        local v8_10_ = v8_3_
        local v8_8_ = random(v8_9_, v8_10_)
        local v8_7_ = v8_2_[v8_8_]
        v8_8_ = v8_1_
        v8_9_ = v8_7_
        v8_1_ = v8_8_
    end
    return v8_1_
end
v0_0_.generateUID = v0_4_
v0_4_ = {}
v0_5_ = function(a1, a2, a3)
    local v9_4_ = v0_4_
    local v9_3_ = v9_4_[a1]
    if not v9_3_ then
        v9_3_ = {}
        v9_4_ = v0_4_
        v9_4_[a1] = v9_3_
        v9_4_ = a1.Destroying
        local v9_6_ = function()
            local v10_0_ = v0_4_
            local v10_1_ = a1
            local v10_2_ = nil
            v10_0_[v10_1_] = v10_2_
        end
        v9_4_:Once(v9_6_)
    end
    if not a2 then
        v9_4_ = true
        v9_3_[a3] = v9_4_
    else
        v9_4_ = nil
        v9_3_[a3] = v9_4_
    end
    v9_4_ = a2
    if a2 then
        local v9_5_ = pairs
        local v9_6_ = v9_3_
        local v9_5_, v9_6_, v9_7_ = v9_5_(v9_6_)
        for v9_8_, v9_9_ in v9_5_, v9_6_, v9_7_ do
            v9_4_ = false
        end
    end
    a1.Visible = v9_4_
end
v0_0_.setVisible = v0_5_
v0_5_ = function(a1)
    local upper = string.upper
    local v11_7_ = 1
    local v11_8_ = 1
    local v11_6_ = a1
    local sub = string.sub
    local v11_5_ = sub(v11_6_, v11_7_, v11_8_)
    local v11_4_ = upper(v11_5_)
    local v11_2_ = v11_4_
    local lower = string.lower
    v11_5_ = a1
    v11_6_ = 2.000000
    local sub = string.sub
    v11_4_ = sub(v11_5_, v11_6_)
    local v11_3_ = lower(v11_4_)
    local v11_1_ = v11_2_
    return v11_1_
end
v0_0_.formatStateName = v0_5_
v0_5_ = function(a1)
    local v12_2_ = v0_2_
    local v12_1_ = v12_2_.CharacterRemoving
    local v12_3_ = a1
    v12_1_:Connect(v12_3_)
end
v0_0_.localPlayerRespawned = v0_5_
v0_5_ = function(a1)
    local v13_3_ = "ClippedContainer"
    local v13_1_ = a1:FindFirstChild(v13_3_)
    if not v13_1_ then
        local new = Instance.new
        v13_3_ = "Folder"
        local v13_2_ = new(v13_3_)
        v13_1_ = v13_2_
        v13_2_ = "ClippedContainer"
        v13_1_.Name = v13_2_
        v13_1_.Parent = a1
    end
    return v13_1_
end
v0_0_.getClippedContainer = v0_5_
v0_5_ = require
v0_9_ = script
v0_8_ = v0_9_.Parent
v0_7_ = v0_8_.Packages
v0_6_ = v0_7_.Janitor
v0_5_ = v0_5_(v0_6_)
v0_6_ = game
v0_8_ = "GuiService"
v0_6_ = v0_6_:GetService(v0_8_)
v0_7_ = function(a1, a2)
    local v14_2_ = a1.janitor
    local v14_5_ = v0_5_
    local v14_4_ = v14_5_.new
    v14_2_ = v14_2_:add(v14_4_())
    local v14_3_ = a2.Destroying
    v14_5_ = function()
        local v15_0_ = v14_2_
        v15_0_:Destroy()
    end
    v14_3_:Once(v14_5_)
    v14_3_ = a1.janitor
    v14_5_ = a2
    v14_3_:add(v14_5_)
    v14_3_ = a2.Parent
    local new = Instance.new
    local v14_7_ = "Frame"
    v14_4_ = v14_2_:add(new(v14_7_))
    v14_7_ = "IsAClippedClone"
    local v14_8_ = true
    v14_4_:SetAttribute(v14_7_, v14_8_)
    v14_5_ = a2.Name
    v14_4_.Name = v14_5_
    v14_5_ = a2.AnchorPoint
    v14_4_.AnchorPoint = v14_5_
    v14_5_ = a2.Size
    v14_4_.Size = v14_5_
    v14_5_ = a2.Position
    v14_4_.Position = v14_5_
    v14_5_ = 1
    v14_4_.BackgroundTransparency = v14_5_
    v14_5_ = a2.LayoutOrder
    v14_4_.LayoutOrder = v14_5_
    v14_4_.Parent = v14_3_
    local new_0 = Instance.new
    local v14_6_ = "ObjectValue"
    v14_5_ = new_0(v14_6_)
    v14_6_ = "OriginalInstance"
    v14_5_.Name = v14_6_
    v14_5_.Value = a2
    v14_5_.Parent = v14_4_
    v14_6_ = v14_5_:Clone()
    local v14_9_ = "HasAClippedClone"
    local v14_10_ = true
    a2:SetAttribute(v14_9_, v14_10_)
    v14_7_ = "ClippedClone"
    v14_6_.Name = v14_7_
    v14_6_.Value = v14_4_
    v14_6_.Parent = a2
    v14_7_ = nil
    v14_8_ = function()
        local v16_0_ = v14_3_
        local v16_2_ = "ScreenGui"
        v16_0_ = v16_0_:FindFirstAncestorWhichIsA(v16_2_)
        local match = string.match
        local v16_3_ = v16_0_.Name
        local v16_4_ = "Clipped"
        v16_2_ = match(v16_3_, v16_4_)
        if v16_2_ then
            local v16_1_ = v16_0_
        else
            v16_2_ = v16_0_.Parent
            v16_4_ = v16_0_.Name
            local v16_5_ = "Clipped"
            v16_3_ = v16_4_
            local v16_1_ = v16_2_[v16_3_]
        end
        v14_7_ = nil
        local v16_1_ = a2
        local new = Vector2.new
        v16_3_ = 0
        v16_4_ = 0
        v16_2_ = new(v16_3_, v16_4_)
        v16_1_.AnchorPoint = v16_2_
        v16_1_ = a2
        v16_3_ = v0_0_
        v16_2_ = v16_3_.getClippedContainer
        v16_3_ = v14_7_
        v16_2_ = v16_2_(v16_3_)
        v16_1_.Parent = v16_2_
    end
    local v14_11_ = a1.alignmentChanged
    local v14_13_ = v14_8_
    v14_2_:add(v14_11_:Connect(v14_13_))
    v14_9_ = v14_8_
    v14_9_()
    v14_9_ = pairs
    v14_9_, v14_10_, v14_11_ = v14_9_(a2:GetChildren())
    for v14_12_, v14_13_ in v14_9_, v14_10_, v14_11_ do
        local v14_16_ = "UIAspectRatioConstraint"
        local v14_14_ = v14_13_:IsA(v14_16_)
        if v14_14_ then
            v14_14_ = v14_13_:Clone()
            v14_14_.Parent = v14_4_
        end
    end
    v14_9_ = a1.widget
    v14_10_ = false
    v14_13_ = "IgnoreVisibilityUpdater"
    v14_11_ = a2:GetAttribute(v14_13_)
    local v14_12_ = function()
        local v17_0_ = v14_11_
        if v17_0_ then
            return
        end
        local v17_1_ = v14_9_
        v17_0_ = v17_1_.Visible
        v17_1_ = v14_10_
        if v17_1_ then
            v17_0_ = false
        end
        local v17_2_ = v0_0_
        v17_1_ = v17_2_.setVisible
        v17_2_ = a2
        local v17_3_ = v17_0_
        local v17_4_ = "ClipHandler"
        v17_1_(v17_2_, v17_3_, v17_4_)
    end
    local v14_17_ = "Visible"
    local v14_15_ = v14_9_:GetPropertyChangedSignal(v14_17_)
    v14_17_ = v14_12_
    v14_2_:add(v14_15_:Connect(v14_17_))
    v14_13_ = nil
    local v14_14_ = require
    v14_15_ = a1.iconModule
    v14_14_ = v14_14_(v14_15_)
    v14_15_ = function()
        local defer = task.defer
        local v18_1_ = function()
            local v19_0_ = nil
            local v19_2_ = a1
            local v19_1_ = v19_2_.UID
            v19_2_ = v19_1_
            local v19_3_ = a2
            local v19_5_ = "ClipToJoinedParent"
            v19_3_ = v19_3_:GetAttribute(v19_5_)
            if v19_3_ then
                local v19_6_ = 1
                local v19_4_ = 10
                v19_5_ = 1
                for v19_6_ = v19_6_, v19_4_, v19_5_ do
                    local v19_8_ = v14_14_
                    local v19_7_ = v19_8_.getIconByUID
                    v19_8_ = v19_2_
                    v19_7_ = v19_7_(v19_8_)
                    if v19_7_ then
                        v19_8_ = v19_7_.joinedFrame
                        v19_2_ = v19_7_.parentIconUID
                        if v19_8_ then
                            v19_0_ = v19_8_
                        end
                    end
                end
            end
            if not v19_0_ then
                local v19_4_ = false
                v14_10_ = v19_3_
                v19_4_ = v14_11_
                if v19_4_ then
                    return
                end
                v19_5_ = v14_9_
                v19_4_ = v19_5_.Visible
                v19_5_ = v14_10_
                if v19_5_ then
                    v19_4_ = false
                end
                local v19_6_ = v0_0_
                v19_5_ = v19_6_.setVisible
                v19_6_ = a2
                local v19_7_ = v19_4_
                local v19_8_ = "ClipHandler"
                v19_5_(v19_6_, v19_7_, v19_8_)
                return
            end
            v19_5_ = a2
            local v19_4_ = v19_5_.AbsolutePosition
            local v19_7_ = a2
            local v19_6_ = v19_7_.AbsoluteSize
            v19_5_ = v19_6_ / 2.000000
            v19_6_ = v19_0_.AbsolutePosition
            v19_7_ = v19_0_.AbsoluteSize
            local v19_8_ = v19_4_ + v19_5_
            local v19_10_ = v19_8_.X
            local v19_11_ = v19_6_.X
            if v19_10_ >= v19_11_ then
                local v19_9_ = false
            end
            local v19_9_ = true
            v19_11_ = v19_8_.X
            local v19_13_ = v19_6_.X
            local v19_14_ = v19_7_.X
            local v19_12_ = v19_13_ + v19_14_
            if v19_12_ >= v19_11_ then
                v19_10_ = false
            end
            v19_10_ = true
            v19_12_ = v19_8_.Y
            v19_13_ = v19_6_.Y
            if v19_12_ >= v19_13_ then
                v19_11_ = false
            end
            v19_11_ = true
            v19_13_ = v19_8_.Y
            local v19_15_ = v19_6_.Y
            local v19_16_ = v19_7_.Y
            v19_14_ = v19_15_ + v19_16_
            if v19_14_ >= v19_13_ then
                v19_12_ = false
            end
            v19_12_ = true
            v19_13_ = v19_9_
            if not v19_13_ then
                v19_13_ = v19_10_
                if not v19_13_ then
                    v19_13_ = v19_11_
                    if not v19_13_ then
                        v19_13_ = v19_12_
                    end
                end
            end
            v19_14_ = v14_10_
            if v19_13_ ~= v19_14_ then
                v14_10_ = v19_3_
                v19_14_ = v14_11_
                if v19_14_ then
                else
                    v19_15_ = v14_9_
                    v19_14_ = v19_15_.Visible
                    v19_15_ = v14_10_
                    if v19_15_ then
                        v19_14_ = false
                    end
                    v19_16_ = v0_0_
                    v19_15_ = v19_16_.setVisible
                    v19_16_ = a2
                    local v19_17_ = v19_14_
                    local v19_18_ = "ClipHandler"
                    v19_15_(v19_16_, v19_17_, v19_18_)
                end
            end
            v19_16_ = "ScrollingFrame"
            v19_14_ = v19_0_:IsA(v19_16_)
            if v19_14_ then
                v19_14_ = v14_13_
                if v19_14_ ~= v19_0_ then
                    v14_13_ = v19_7_
                    v19_16_ = "AbsoluteWindowSize"
                    v19_14_ = v19_0_:GetPropertyChangedSignal(v19_16_)
                    v19_16_ = function()
                        local v20_0_ = v14_15_
                        v20_0_()
                    end
                    v19_14_ = v19_14_:Connect(v19_16_)
                    v19_15_ = v14_2_
                    local v19_17_ = v19_14_
                    local v19_18_ = "Disconnect"
                    local v19_20_ = "TrackUtilityScroller-"
                    local v19_21_ = v19_1_
                    local v19_19_ = v19_20_
                    v19_15_:add(v19_17_, v19_18_, v19_19_)
                end
            end
        end
        defer(v18_1_)
    end
    v14_17_ = workspace
    local v14_16_ = v14_17_.CurrentCamera
    local v14_20_ = "AdditionalOffsetX"
    local v14_18_ = a2:GetAttribute(v14_20_)
    v14_17_ = v14_18_ or 0.000000
    v14_18_ = function(a1)
        local v21_2_ = "Absolute"
        local v21_3_ = a1
        local v21_1_ = v21_2_
        v21_2_ = function()
            local v22_1_ = v14_4_
            local v22_2_ = v21_1_
            local v22_0_ = v22_1_[v22_2_]
            local fromOffset = UDim2.fromOffset
            v22_2_ = v22_0_.X
            local v22_3_ = v22_0_.Y
            v22_1_ = fromOffset(v22_2_, v22_3_)
            v22_2_ = a1
            if v22_2_ == "Position" then
                local v22_6_ = v14_16_
                local v22_5_ = v22_6_.ViewportSize
                local v22_4_ = v22_5_.X
                local v22_7_ = a2
                v22_6_ = v22_7_.AbsoluteSize
                v22_5_ = v22_6_.X
                v22_3_ = v22_4_ - v22_5_
                v22_2_ = v22_3_ - 4.000000
                v22_4_ = v22_1_.X
                v22_3_ = v22_4_.Offset
                v22_4_ = 4
                if v22_3_ < v22_4_ then
                    v22_3_ = 4
                else
                    if v22_2_ < v22_3_ then
                        v22_3_ = v22_2_
                    end
                end
                local fromOffset = UDim2.fromOffset
                v22_5_ = v22_3_
                v22_7_ = v22_1_.Y
                v22_6_ = v22_7_.Offset
                v22_4_ = fromOffset(v22_5_, v22_6_)
                v22_1_ = v22_4_
                v22_5_ = v0_6_
                v22_4_ = v22_5_.TopbarInset
                local v22_8_ = workspace
                v22_7_ = v22_8_.CurrentCamera
                v22_6_ = v22_7_.ViewportSize
                v22_5_ = v22_6_.X
                v22_8_ = v14_7_
                v22_7_ = v22_8_.AbsoluteSize
                v22_6_ = v22_7_.X
                local v22_9_ = v14_7_
                v22_8_ = v22_9_.AbsolutePosition
                v22_7_ = v22_8_.X
                local v22_10_ = v22_4_.Min
                v22_9_ = v22_10_.X
                v22_8_ = v22_7_ - v22_9_
                local v22_11_ = a1
                v22_10_ = v22_11_.isOldTopbar
                if v22_10_ then
                    v22_9_ = v22_7_
                else
                    v22_10_ = v22_5_ - v22_6_
                    v22_9_ = v22_10_ - 0.000000
                end
                v22_10_ = v14_17_
                v22_9_ -= v22_10_
                local fromOffset = UDim2.fromOffset
                v22_11_ = -v22_9_
                local v22_12_ = v22_4_.Height
                v22_10_ = fromOffset(v22_11_, v22_12_)
                v22_1_ += v22_10_
                local defer = task.defer
                v22_11_ = function()
                    local v23_0_ = nil
                    local v23_2_ = a1
                    local v23_1_ = v23_2_.UID
                    v23_2_ = v23_1_
                    local v23_3_ = a2
                    local v23_5_ = "ClipToJoinedParent"
                    v23_3_ = v23_3_:GetAttribute(v23_5_)
                    if v23_3_ then
                        local v23_6_ = 1
                        local v23_4_ = 10
                        v23_5_ = 1
                        for v23_6_ = v23_6_, v23_4_, v23_5_ do
                            local v23_8_ = v14_14_
                            local v23_7_ = v23_8_.getIconByUID
                            v23_8_ = v23_2_
                            v23_7_ = v23_7_(v23_8_)
                            if v23_7_ then
                                v23_8_ = v23_7_.joinedFrame
                                v23_2_ = v23_7_.parentIconUID
                                if v23_8_ then
                                    v23_0_ = v23_8_
                                end
                            end
                        end
                    end
                    if not v23_0_ then
                        local v23_4_ = false
                        v14_10_ = v23_3_
                        v23_4_ = v14_11_
                        if v23_4_ then
                            return
                        end
                        v23_5_ = v14_9_
                        v23_4_ = v23_5_.Visible
                        v23_5_ = v14_10_
                        if v23_5_ then
                            v23_4_ = false
                        end
                        local v23_6_ = v0_0_
                        v23_5_ = v23_6_.setVisible
                        v23_6_ = a2
                        local v23_7_ = v23_4_
                        local v23_8_ = "ClipHandler"
                        v23_5_(v23_6_, v23_7_, v23_8_)
                        return
                    end
                    v23_5_ = a2
                    local v23_4_ = v23_5_.AbsolutePosition
                    local v23_7_ = a2
                    local v23_6_ = v23_7_.AbsoluteSize
                    v23_5_ = v23_6_ / 2.000000
                    v23_6_ = v23_0_.AbsolutePosition
                    v23_7_ = v23_0_.AbsoluteSize
                    local v23_8_ = v23_4_ + v23_5_
                    local v23_10_ = v23_8_.X
                    local v23_11_ = v23_6_.X
                    if v23_10_ >= v23_11_ then
                        local v23_9_ = false
                    end
                    local v23_9_ = true
                    v23_11_ = v23_8_.X
                    local v23_13_ = v23_6_.X
                    local v23_14_ = v23_7_.X
                    local v23_12_ = v23_13_ + v23_14_
                    if v23_12_ >= v23_11_ then
                        v23_10_ = false
                    end
                    v23_10_ = true
                    v23_12_ = v23_8_.Y
                    v23_13_ = v23_6_.Y
                    if v23_12_ >= v23_13_ then
                        v23_11_ = false
                    end
                    v23_11_ = true
                    v23_13_ = v23_8_.Y
                    local v23_15_ = v23_6_.Y
                    local v23_16_ = v23_7_.Y
                    v23_14_ = v23_15_ + v23_16_
                    if v23_14_ >= v23_13_ then
                        v23_12_ = false
                    end
                    v23_12_ = true
                    v23_13_ = v23_9_
                    if not v23_13_ then
                        v23_13_ = v23_10_
                        if not v23_13_ then
                            v23_13_ = v23_11_
                            if not v23_13_ then
                                v23_13_ = v23_12_
                            end
                        end
                    end
                    v23_14_ = v14_10_
                    if v23_13_ ~= v23_14_ then
                        v14_10_ = v23_3_
                        v23_14_ = v14_11_
                        if v23_14_ then
                        else
                            v23_15_ = v14_9_
                            v23_14_ = v23_15_.Visible
                            v23_15_ = v14_10_
                            if v23_15_ then
                                v23_14_ = false
                            end
                            v23_16_ = v0_0_
                            v23_15_ = v23_16_.setVisible
                            v23_16_ = a2
                            local v23_17_ = v23_14_
                            local v23_18_ = "ClipHandler"
                            v23_15_(v23_16_, v23_17_, v23_18_)
                        end
                    end
                    v23_16_ = "ScrollingFrame"
                    v23_14_ = v23_0_:IsA(v23_16_)
                    if v23_14_ then
                        v23_14_ = v14_13_
                        if v23_14_ ~= v23_0_ then
                            v14_13_ = v23_7_
                            v23_16_ = "AbsoluteWindowSize"
                            v23_14_ = v23_0_:GetPropertyChangedSignal(v23_16_)
                            v23_16_ = function()
                                local v24_0_ = v14_15_
                                v24_0_()
                            end
                            v23_14_ = v23_14_:Connect(v23_16_)
                            v23_15_ = v14_2_
                            local v23_17_ = v23_14_
                            local v23_18_ = "Disconnect"
                            local v23_20_ = "TrackUtilityScroller-"
                            local v23_21_ = v23_1_
                            local v23_19_ = v23_20_
                            v23_15_:add(v23_17_, v23_18_, v23_19_)
                        end
                    end
                end
                defer(v22_11_)
            end
            v22_2_ = a2
            v22_3_ = a1
            v22_2_[v22_3_] = v22_1_
        end
        local v21_4_ = v0_0_
        v21_3_ = v21_4_.createStagger
        v21_4_ = 0.010000
        local v21_5_ = v21_2_
        v21_3_ = v21_3_(v21_4_, v21_5_)
        v21_4_ = v14_2_
        local v21_6_ = v14_4_
        local v21_8_ = v21_1_
        v21_6_ = v21_6_:GetPropertyChangedSignal(v21_8_)
        v21_8_ = v21_3_
        v21_4_:add(v21_6_:Connect(v21_8_))
        v21_5_ = v0_0_
        v21_4_ = v21_5_.createStagger
        v21_5_ = 0.500000
        v21_6_ = v21_2_
        local v21_7_ = true
        v21_4_ = v21_4_(v21_5_, v21_6_, v21_7_)
        v21_5_ = v14_2_
        v21_7_ = v14_4_
        local v21_9_ = v21_1_
        v21_7_ = v21_7_:GetPropertyChangedSignal(v21_9_)
        v21_9_ = v21_4_
        v21_5_:add(v21_7_:Connect(v21_9_))
    end
    local delay = task.delay
    v14_20_ = 0.100000
    local v14_21_ = v14_15_
    delay(v14_20_, v14_21_)
    local defer = task.defer
    v14_20_ = function()
        local v25_0_ = nil
        local v25_2_ = a1
        local v25_1_ = v25_2_.UID
        v25_2_ = v25_1_
        local v25_3_ = a2
        local v25_5_ = "ClipToJoinedParent"
        v25_3_ = v25_3_:GetAttribute(v25_5_)
        if v25_3_ then
            local v25_6_ = 1
            local v25_4_ = 10
            v25_5_ = 1
            for v25_6_ = v25_6_, v25_4_, v25_5_ do
                local v25_8_ = v14_14_
                local v25_7_ = v25_8_.getIconByUID
                v25_8_ = v25_2_
                v25_7_ = v25_7_(v25_8_)
                if v25_7_ then
                    v25_8_ = v25_7_.joinedFrame
                    v25_2_ = v25_7_.parentIconUID
                    if v25_8_ then
                        v25_0_ = v25_8_
                    end
                end
            end
        end
        if not v25_0_ then
            local v25_4_ = false
            v14_10_ = v25_3_
            v25_4_ = v14_11_
            if v25_4_ then
                return
            end
            v25_5_ = v14_9_
            v25_4_ = v25_5_.Visible
            v25_5_ = v14_10_
            if v25_5_ then
                v25_4_ = false
            end
            local v25_6_ = v0_0_
            v25_5_ = v25_6_.setVisible
            v25_6_ = a2
            local v25_7_ = v25_4_
            local v25_8_ = "ClipHandler"
            v25_5_(v25_6_, v25_7_, v25_8_)
            return
        end
        v25_5_ = a2
        local v25_4_ = v25_5_.AbsolutePosition
        local v25_7_ = a2
        local v25_6_ = v25_7_.AbsoluteSize
        v25_5_ = v25_6_ / 2.000000
        v25_6_ = v25_0_.AbsolutePosition
        v25_7_ = v25_0_.AbsoluteSize
        local v25_8_ = v25_4_ + v25_5_
        local v25_10_ = v25_8_.X
        local v25_11_ = v25_6_.X
        if v25_10_ >= v25_11_ then
            local v25_9_ = false
        end
        local v25_9_ = true
        v25_11_ = v25_8_.X
        local v25_13_ = v25_6_.X
        local v25_14_ = v25_7_.X
        local v25_12_ = v25_13_ + v25_14_
        if v25_12_ >= v25_11_ then
            v25_10_ = false
        end
        v25_10_ = true
        v25_12_ = v25_8_.Y
        v25_13_ = v25_6_.Y
        if v25_12_ >= v25_13_ then
            v25_11_ = false
        end
        v25_11_ = true
        v25_13_ = v25_8_.Y
        local v25_15_ = v25_6_.Y
        local v25_16_ = v25_7_.Y
        v25_14_ = v25_15_ + v25_16_
        if v25_14_ >= v25_13_ then
            v25_12_ = false
        end
        v25_12_ = true
        v25_13_ = v25_9_
        if not v25_13_ then
            v25_13_ = v25_10_
            if not v25_13_ then
                v25_13_ = v25_11_
                if not v25_13_ then
                    v25_13_ = v25_12_
                end
            end
        end
        v25_14_ = v14_10_
        if v25_13_ ~= v25_14_ then
            v14_10_ = v25_3_
            v25_14_ = v14_11_
            if v25_14_ then
            else
                v25_15_ = v14_9_
                v25_14_ = v25_15_.Visible
                v25_15_ = v14_10_
                if v25_15_ then
                    v25_14_ = false
                end
                v25_16_ = v0_0_
                v25_15_ = v25_16_.setVisible
                v25_16_ = a2
                local v25_17_ = v25_14_
                local v25_18_ = "ClipHandler"
                v25_15_(v25_16_, v25_17_, v25_18_)
            end
        end
        v25_16_ = "ScrollingFrame"
        v25_14_ = v25_0_:IsA(v25_16_)
        if v25_14_ then
            v25_14_ = v14_13_
            if v25_14_ ~= v25_0_ then
                v14_13_ = v25_7_
                v25_16_ = "AbsoluteWindowSize"
                v25_14_ = v25_0_:GetPropertyChangedSignal(v25_16_)
                v25_16_ = function()
                    local v26_0_ = v14_15_
                    v26_0_()
                end
                v25_14_ = v25_14_:Connect(v25_16_)
                v25_15_ = v14_2_
                local v25_17_ = v25_14_
                local v25_18_ = "Disconnect"
                local v25_20_ = "TrackUtilityScroller-"
                local v25_21_ = v25_1_
                local v25_19_ = v25_20_
                v25_15_:add(v25_17_, v25_18_, v25_19_)
            end
        end
    end
    defer(v14_20_)
    if v14_11_ then
    else
        local v14_19_ = v14_9_.Visible
        if v14_10_ then
            v14_19_ = false
        end
        v14_21_ = v0_0_
        v14_20_ = v14_21_.setVisible
        v14_21_ = a2
        local v14_22_ = v14_19_
        local v14_23_ = "ClipHandler"
        v14_20_(v14_21_, v14_22_, v14_23_)
    end
    local v14_19_ = v14_18_
    v14_20_ = "Position"
    v14_19_(v14_20_)
    local v14_23_ = "Visible"
    v14_21_ = a2:GetPropertyChangedSignal(v14_23_)
    v14_23_ = function()
    end
    v14_2_:add(v14_21_:Connect(v14_23_))
    v14_21_ = "TrackCloneSize"
    v14_19_ = a2:GetAttribute(v14_21_)
    if v14_19_ then
        v14_20_ = v14_18_
        v14_21_ = "Size"
        v14_20_(v14_21_)
    else
        local v14_24_ = "AbsoluteSize"
        local v14_22_ = a2:GetPropertyChangedSignal(v14_24_)
        v14_24_ = function()
            local v28_1_ = a2
            local v28_0_ = v28_1_.AbsoluteSize
            v28_1_ = v14_4_
            local fromOffset = UDim2.fromOffset
            local v28_3_ = v28_0_.X
            local v28_4_ = v28_0_.Y
            local v28_2_ = fromOffset(v28_3_, v28_4_)
            v28_1_.Size = v28_2_
        end
        v14_2_:add(v14_22_:Connect(v14_24_))
    end
    return v14_4_
end
v0_0_.clipOutside = v0_7_
v0_7_ = function(a1, a2, a3, a4)
    local v29_4_ = a1.joinJanitor
    v29_4_:clean()
    if not a4 then
        a1:leave()
        return
    end
    local v29_5_ = a2.UID
    a1.parentIconUID = v29_5_
    a1.joinedFrame = a4
    v29_5_ = function()
        local v30_1_ = a2
        local v30_0_ = v30_1_.alignment
        if v30_0_ == "Center" then
            v30_0_ = "Left"
        end
        v30_1_ = a1
        local v30_3_ = v30_0_
        local v30_4_ = true
        v30_1_:setAlignment(v30_3_, v30_4_)
    end
    local v29_8_ = a2.alignmentChanged
    local v29_10_ = v29_5_
    v29_4_:add(v29_8_:Connect(v29_10_))
    local v29_6_ = a2.alignment
    if v29_6_ == "Center" then
        v29_6_ = "Left"
    end
    local v29_9_ = v29_6_
    v29_10_ = true
    a1:setAlignment(v29_9_, v29_10_)
    v29_8_ = table.create(3)
    v29_9_ = "IconButton"
    v29_10_ = "BackgroundTransparency"
    local v29_11_ = 1
    v29_8_[1] = v29_9_
    v29_8_[2] = v29_10_
    v29_8_[3] = v29_11_
    v29_9_ = "JoinModification"
    a1:modifyTheme(v29_8_, v29_9_)
    v29_8_ = table.create(3)
    v29_9_ = "ClickRegion"
    v29_10_ = "Active"
    v29_11_ = false
    v29_8_[1] = v29_9_
    v29_8_[2] = v29_10_
    v29_8_[3] = v29_11_
    v29_9_ = "JoinModification"
    a1:modifyTheme(v29_8_, v29_9_)
    v29_6_ = a2.childModifications
    if v29_6_ then
        local defer = task.defer
        local v29_7_ = function()
            local v31_0_ = a1
            local v31_3_ = a2
            local v31_2_ = v31_3_.childModifications
            local v31_4_ = a2
            v31_3_ = v31_4_.childModificationsUID
            v31_0_:modifyTheme(v31_2_, v31_3_)
        end
        defer(v29_7_)
    end
    v29_8_ = "ClickRegion"
    v29_6_ = a1:getInstance(v29_8_)
    local v29_7_ = function()
        local v32_0_ = v29_6_
        local v32_2_ = a2
        local v32_1_ = v32_2_.isSelected
        v32_0_.Selectable = v32_1_
    end
    v29_10_ = a2.toggled
    local v29_12_ = v29_7_
    v29_4_:add(v29_10_:Connect(v29_12_))
    local defer = task.defer
    v29_9_ = v29_7_
    defer(v29_9_)
    v29_10_ = function()
        local v33_0_ = v29_6_
        local v33_1_ = true
        v33_0_.Selectable = v33_1_
    end
    v29_4_:add(v29_10_)
    v29_8_ = a1.UID
    v29_10_ = a3
    v29_11_ = v29_8_
    local insert = table.insert
    insert(v29_10_, v29_11_)
    v29_11_ = false
    a2:autoDeselect(v29_11_)
    v29_9_ = a2.childIconsDict
    v29_10_ = true
    v29_9_[v29_8_] = v29_10_
    v29_9_ = a2.isEnabled
    if not v29_9_ then
        v29_11_ = true
        a2:setEnabled(v29_11_)
    end
    v29_9_ = a1.joinedParent
    v29_11_ = a2
    v29_9_:Fire(v29_11_)
    v29_11_ = function()
        local v34_1_ = a1
        local v34_0_ = v34_1_.joinedFrame
        if not v34_0_ then
            return
        end
        v34_1_ = pairs
        local v34_2_ = a3
        local v34_1_, v34_2_, v34_3_ = v34_1_(v34_2_)
        for v34_4_, v34_5_ in v34_1_, v34_2_, v34_3_ do
            local v34_6_ = v29_8_
            if v34_5_ == v34_6_ then
                local remove = table.remove
                local v34_7_ = a3
                local v34_8_ = v34_4_
                remove(v34_7_, v34_8_)
            else
            end
        end
        v34_1_ = require
        v34_3_ = a1
        v34_2_ = v34_3_.iconModule
        v34_1_ = v34_1_(v34_2_)
        v34_2_ = v34_1_.getIconByUID
        local v34_4_ = a1
        v34_3_ = v34_4_.parentIconUID
        v34_2_ = v34_2_(v34_3_)
        if not v34_2_ then
            return
        end
        v34_3_ = a1
        local v34_6_ = a1
        local v34_5_ = v34_6_.originalAlignment
        v34_3_:setAlignment(v34_5_)
        v34_3_ = a1
        v34_4_ = false
        v34_3_.parentIconUID = v34_4_
        v34_3_ = a1
        v34_4_ = false
        v34_3_.joinedFrame = v34_4_
        v34_3_ = a1
        v34_5_ = "IconButton"
        v34_6_ = "BackgroundTransparency"
        local v34_7_ = nil
        local v34_8_ = true
        v34_3_:setBehaviour(v34_5_, v34_6_, v34_7_, v34_8_)
        v34_3_ = a1
        v34_5_ = "JoinModification"
        v34_3_:removeModification(v34_5_)
        v34_3_ = true
        v34_4_ = v34_2_.childIconsDict
        v34_5_ = v29_8_
        v34_6_ = nil
        v34_4_[v34_5_] = v34_6_
        v34_5_ = pairs
        v34_6_ = v34_4_
        v34_5_, v34_6_, v34_7_ = v34_5_(v34_6_)
        for v34_8_, v34_9_ in v34_5_, v34_6_, v34_7_ do
            v34_3_ = false
        end
        if v34_3_ then
            v34_5_ = v34_2_.isAnOverflow
            if not v34_5_ then
                v34_7_ = false
                v34_2_:setEnabled(v34_7_)
            end
        end
        v34_6_ = a2
        v34_5_ = v34_6_.alignment
        if v34_5_ == "Center" then
            v34_5_ = "Left"
        end
        v34_6_ = a1
        v34_8_ = v34_5_
        local v34_9_ = true
        v34_6_:setAlignment(v34_8_, v34_9_)
    end
    v29_4_:add(v29_11_)
end
v0_0_.jo0eature = v0_7_
return v0_0_
