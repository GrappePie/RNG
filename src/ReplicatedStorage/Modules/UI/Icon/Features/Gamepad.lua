-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "GamepadService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "UserInputService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "GuiService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = {}
v0_4_ = nil
local v0_5_ = function(a1)
    v0_4_ = a1
    local v1_1_ = v0_4_
    local DPadUp = Enum.KeyCode.DPadUp
    v1_1_.highlightKey = DPadUp
    v1_1_ = v0_4_
    local v1_2_ = false
    v1_1_.highlightIcon = v1_2_
    local delay = task.delay
    v1_2_ = 1
    local v1_3_ = function()
        local v2_1_ = v0_4_
        local v2_0_ = v2_1_.iconsDictionary
        v2_1_ = function()
            local v3_1_ = v0_2_
            local v3_0_ = v3_1_.SelectedObject
            v3_1_ = v3_0_
            if v3_1_ then
                local v3_3_ = "CorrespondingIconUID"
                v3_1_ = v3_0_:GetAttribute(v3_3_)
            end
            local v3_2_ = v3_1_
            if v3_2_ then
                local v3_3_ = v2_0_
                v3_2_ = v3_3_[v3_1_]
            end
            return v3_2_
        end
        local v2_2_ = nil
        local v2_3_ = false
        local v2_4_ = false
        local v2_5_ = require
        local v2_9_ = script
        local v2_8_ = v2_9_.Parent
        local v2_7_ = v2_8_.Parent
        local v2_6_ = v2_7_.Utility
        v2_5_ = v2_5_(v2_6_)
        v2_6_ = require
        local v2_11_ = script
        local v2_10_ = v2_11_.Parent
        v2_9_ = v2_10_.Parent
        v2_8_ = v2_9_.Elements
        v2_7_ = v2_8_.Selection
        v2_6_ = v2_6_(v2_7_)
        v2_7_ = function()
            local v4_2_ = v0_2_
            local v4_1_ = v4_2_.SelectedObject
            v4_2_ = v4_1_
            if v4_2_ then
                local v4_4_ = "CorrespondingIconUID"
                v4_2_ = v4_1_:GetAttribute(v4_4_)
            end
            local v4_3_ = v4_2_
            if v4_3_ then
                local v4_4_ = v2_0_
                v4_3_ = v4_4_[v4_2_]
            end
            local v4_0_ = v4_3_
            v4_2_ = v0_1_
            v4_1_ = v4_2_.GamepadEnabled
            if v4_0_ then
                if v4_1_ then
                    local v4_4_ = "ClickRegion"
                    v4_2_ = v4_0_:getInstance(v4_4_)
                    v4_3_ = v4_0_.selection
                    if not v4_3_ then
                        v4_4_ = v4_0_.janitor
                        local v4_6_ = v2_6_
                        local v4_7_ = v0_4_
                        v4_4_ = v4_4_:add(v4_6_(v4_7_))
                        v4_3_ = v4_4_
                        v4_6_ = "IgnoreVisibilityUpdater"
                        v4_7_ = true
                        v4_3_:SetAttribute(v4_6_, v4_7_)
                        v4_4_ = v4_0_.widget
                        v4_3_.Parent = v4_4_
                        v4_0_.selection = v4_3_
                        v4_6_ = v4_3_
                        v4_0_:refreshAppearance(v4_6_)
                    end
                    v4_4_ = v4_3_.Selection
                    v4_2_.SelectionImageObject = v4_4_
                end
                v4_2_ = v2_2_
                if v4_2_ then
                    v4_2_ = v2_2_
                    if v4_2_ ~= v4_0_ then
                        v4_2_ = v2_2_
                        v4_2_:setIndicator()
                    end
                end
                if v4_1_ then
                    v4_3_ = v2_4_
                    if not v4_3_ then
                        v4_3_ = v4_0_.parentIconUID
                        if not v4_3_ then
                            local ButtonB = Enum.KeyCode.ButtonB
                        else
                            v4_2_ = nil
                        end
                    else
                        v4_2_ = nil
                    end
                else
                    v4_2_ = nil
                end
                v2_2_ = nil
                v4_3_ = v0_4_
                v4_3_.lastHighlightedIcon = v4_0_
                local v4_5_ = v4_2_
                v4_0_:setIndicator(v4_5_)
                return
            end
            if v4_1_ then
                v4_3_ = v2_3_
                if not v4_3_ then
                    v4_3_ = v0_4_
                    v4_2_ = v4_3_.highlightKey
                else
                    v4_2_ = nil
                end
            else
                v4_2_ = nil
            end
            v4_3_ = v2_2_
            if not v4_3_ then
                local v4_4_ = v0_3_
                v4_3_ = v4_4_.getIconToHighlight
                v4_3_ = v4_3_()
                v2_2_ = nil
            end
            local v4_4_ = v0_4_
            v4_3_ = v4_4_.highlightKey
            if v4_2_ == v4_3_ then
                v4_3_ = true
                v2_3_ = nil
            else
            end
            v4_3_ = v2_2_
            if v4_3_ then
                v4_3_ = v2_2_
                local v4_5_ = v4_2_
                v4_3_:setIndicator(v4_5_)
            end
        end
        v2_8_ = v0_2_
        v2_10_ = "SelectedObject"
        v2_8_ = v2_8_:GetPropertyChangedSignal(v2_10_)
        v2_10_ = v2_7_
        v2_8_:Connect(v2_10_)
        v2_8_ = function()
            local v5_1_ = v0_1_
            local v5_0_ = v5_1_.GamepadEnabled
            if not v5_0_ then
                v5_1_ = false
                v2_3_ = v5_1_
                v5_1_ = false
                v2_4_ = nil
            end
            v5_1_ = v2_7_
            v5_1_()
        end
        v2_9_ = v0_1_
        v2_11_ = "GamepadEnabled"
        v2_9_ = v2_9_:GetPropertyChangedSignal(v2_11_)
        v2_11_ = v2_8_
        v2_9_:Connect(v2_11_)
        v2_10_ = v0_1_
        v2_9_ = v2_10_.GamepadEnabled
        if not v2_9_ then
            v2_3_ = false
            v2_4_ = false
        end
        v2_10_ = v2_7_
        v2_10_()
        v2_10_ = v0_1_
        v2_9_ = v2_10_.InputBegan
        v2_11_ = function(a1, a2)
            local v6_2_ = a1.UserInputType
            local MouseButton1 = Enum.UserInputType.MouseButton1
            if v6_2_ == MouseButton1 then
                local v6_4_ = v0_2_
                local v6_3_ = v6_4_.SelectedObject
                v6_4_ = v6_3_
                if v6_4_ then
                    local v6_6_ = "CorrespondingIconUID"
                    v6_4_ = v6_3_:GetAttribute(v6_6_)
                end
                local v6_5_ = v6_4_
                if v6_5_ then
                    local v6_6_ = v2_0_
                    v6_5_ = v6_6_[v6_4_]
                end
                v6_2_ = v6_5_
                if v6_2_ then
                    v6_3_ = v0_2_
                    v6_4_ = nil
                    v6_3_.SelectedObject = v6_4_
                end
                return
            end
            v6_2_ = a1.KeyCode
            local v6_4_ = v0_4_
            local v6_3_ = v6_4_.highlightKey
            if v6_2_ ~= v6_3_ then
                return
            end
            v6_3_ = v0_3_
            v6_2_ = v6_3_.getIconToHighlight
            v6_2_ = v6_2_()
            if v6_2_ then
                v6_4_ = v0_0_
                v6_3_ = v6_4_.GamepadCursorEnabled
                if v6_3_ then
                    local wait = task.wait
                    v6_4_ = 0.200000
                    wait(v6_4_)
                    v6_3_ = v0_0_
                    v6_3_:DisableGamepadCursor()
                end
                local v6_5_ = "ClickRegion"
                v6_3_ = v6_2_:getInstance(v6_5_)
                v6_4_ = v0_2_
                v6_4_.SelectedObject = v6_3_
            end
        end
        v2_9_:Connect(v2_11_)
    end
    delay(v1_2_, v1_3_)
end
v0_3_.start = v0_5_
v0_5_ = function()
    local v7_1_ = v0_4_
    local v7_0_ = v7_1_.iconsDictionary
    local v7_2_ = v0_4_
    v7_1_ = v7_2_.highlightIcon
    if not v7_1_ then
        v7_2_ = v0_4_
        v7_1_ = v7_2_.lastHighlightedIcon
    end
    if not v7_1_ then
        v7_2_ = nil
        local v7_3_ = pairs
        local v7_4_ = v7_0_
        local v7_3_, v7_4_, v7_5_ = v7_3_(v7_4_)
        for v7_6_, v7_7_ in v7_3_, v7_4_, v7_5_ do
            local v7_8_ = v7_7_.parentIconUID
            if not v7_8_ then
                local v7_10_ = v7_7_.widget
                local v7_9_ = v7_10_.AbsolutePosition
                v7_8_ = v7_9_.X
                if v7_2_ then
                    if v7_8_ < v7_2_ then
                        v7_1_ = v7_7_
                        v7_10_ = v7_1_.widget
                        v7_9_ = v7_10_.AbsolutePosition
                        v7_2_ = v7_9_.X
                    end
                end
                v7_1_ = v7_7_
                v7_10_ = v7_1_.widget
                v7_9_ = v7_10_.AbsolutePosition
                v7_2_ = v7_9_.X
            end
        end
    end
    return v7_1_
end
v0_3_.getIconToHighlight = v0_5_
v0_5_ = function(a1)
    local v8_1_ = false
    local v8_2_ = a1.InputBegan
    local v8_4_ = function(a1)
        local v9_1_ = true
        v8_1_ = a1
        local wait = task.wait
        wait()
        local wait_0 = task.wait
        wait_0()
        v9_1_ = false
        v8_1_ = a1
    end
    v8_2_:Connect(v8_4_)
    local v8_3_ = v0_1_
    v8_2_ = v8_3_.InputBegan
    v8_4_ = function(a1)
        local wait = task.wait
        wait()
        local v10_1_ = a1.KeyCode
        local ButtonA = Enum.KeyCode.ButtonA
        if v10_1_ == ButtonA then
            v10_1_ = v8_1_
            if v10_1_ then
                local wait = task.wait
                local v10_2_ = 0.200000
                wait(v10_2_)
                v10_1_ = v0_0_
                v10_1_:DisableGamepadCursor()
                v10_1_ = v0_2_
                v10_2_ = a1
                v10_1_.SelectedObject = v10_2_
                return
            end
        end
        local v10_3_ = v0_2_
        local v10_2_ = v10_3_.SelectedObject
        v10_3_ = a1
        if v10_2_ ~= v10_3_ then
            v10_1_ = false
        end
        v10_1_ = true
        v10_2_ = table.create(2)
        v10_3_ = "ButtonB"
        local v10_4_ = "ButtonSelect"
        v10_2_[1] = v10_3_
        v10_2_[2] = v10_4_
        v10_4_ = a1.KeyCode
        v10_3_ = v10_4_.Name
        local find = table.find
        local v10_5_ = v10_2_
        local v10_6_ = v10_3_
        v10_4_ = find(v10_5_, v10_6_)
        if v10_4_ then
            if v10_1_ then
                if v10_3_ == "ButtonSelect" then
                    v10_5_ = v0_0_
                    v10_4_ = v10_5_.GamepadCursorEnabled
                    if v10_4_ then
                        v10_4_ = v0_2_
                        v10_5_ = nil
                        v10_4_.SelectedObject = v10_5_
                    end
                end
                v10_4_ = v0_2_
                v10_5_ = nil
                v10_4_.SelectedObject = v10_5_
            end
        end
    end
    v8_2_ = v8_2_:Connect(v8_4_)
    v8_3_ = a1.Destroying
    local v8_5_ = function()
        local v11_0_ = v8_2_
        v11_0_:Disconnect()
    end
    v8_3_:Once(v8_5_)
end
v0_3_.registerButton = v0_5_
return v0_3_
