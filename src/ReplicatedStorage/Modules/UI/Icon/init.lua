-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "LocalizationService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "UserInputService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "TextService"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = game
local v0_6_ = "StarterGui"
v0_4_ = v0_4_:GetService(v0_6_)
v0_5_ = game
local v0_7_ = "GuiService"
v0_5_ = v0_5_:GetService(v0_7_)
v0_6_ = game
local v0_8_ = "Players"
v0_6_ = v0_6_:GetService(v0_8_)
v0_7_ = script
v0_8_ = require
local v0_9_ = v0_7_.Reference
v0_8_ = v0_8_(v0_9_)
v0_9_ = v0_8_.getObject
v0_9_ = v0_9_()
local v0_10_ = v0_9_
if v0_10_ then
    v0_10_ = v0_9_.Value
end
if v0_10_ then
    if v0_10_ ~= v0_7_ then
        local v0_11_ = require
        local v0_12_ = v0_10_
        return v0_11_(v0_12_)
    end
end
if not v0_9_ then
    local v0_11_ = v0_8_.addToReplicatedStorage
    v0_11_()
end
local v0_11_ = require
local v0_13_ = v0_7_.Packages
local v0_12_ = v0_13_.GoodSignal
v0_11_ = v0_11_(v0_12_)
v0_12_ = require
local v0_14_ = v0_7_.Packages
v0_13_ = v0_14_.Janitor
v0_12_ = v0_12_(v0_13_)
v0_13_ = require
v0_14_ = v0_7_.Utility
v0_13_ = v0_13_(v0_14_)
v0_14_ = require
local v0_15_ = v0_7_.Attribute
v0_14_ = v0_14_(v0_15_)
v0_15_ = require
local v0_17_ = v0_7_.Features
local v0_16_ = v0_17_.Themes
v0_15_ = v0_15_(v0_16_)
v0_16_ = require
local v0_18_ = v0_7_.Features
v0_17_ = v0_18_.Gamepad
v0_16_ = v0_16_(v0_17_)
v0_17_ = require
local v0_19_ = v0_7_.Features
v0_18_ = v0_19_.Overflow
v0_17_ = v0_17_(v0_18_)
v0_18_ = {}
v0_18_.__index = v0_18_
v0_19_ = v0_6_.LocalPlayer
local v0_21_ = v0_7_.Features
local v0_20_ = v0_21_.Themes
local v0_23_ = "PlayerGui"
v0_21_ = v0_19_:WaitForChild(v0_23_)
local v0_22_ = {}
v0_23_ = v0_11_.new
v0_23_ = v0_23_()
local v0_24_ = v0_7_.Elements
local v0_25_ = 0
local v0_27_ = v0_5_.TopbarInset
local v0_26_ = v0_27_.Height
if v0_26_ == 0.000000 then
    local v0_28_ = "TopbarInset"
    v0_26_ = v0_5_:GetPropertyChangedSignal(v0_28_)
    v0_26_:Wait()
end
v0_26_ = v0_11_.new
v0_26_ = v0_26_()
v0_18_.baseDisplayOrderChanged = v0_26_
v0_26_ = 10
v0_18_.baseDisplayOrder = v0_26_
v0_26_ = require
v0_27_ = v0_20_.Default
v0_26_ = v0_26_(v0_27_)
v0_18_.baseTheme = v0_26_
local v0_28_ = v0_5_.TopbarInset
v0_27_ = v0_28_.Height
if v0_27_ ~= 36.000000 then
    v0_26_ = false
end
v0_26_ = true
v0_18_.isOldTopbar = v0_26_
v0_18_.iconsDictionary = v0_22_
v0_26_ = require
v0_27_ = v0_24_.Container
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_18_
v0_26_ = v0_26_(v0_27_)
v0_18_.container = v0_26_
v0_26_ = true
v0_18_.topbarEnabled = v0_26_
v0_26_ = v0_11_.new
v0_26_ = v0_26_()
v0_18_.iconAdded = v0_26_
v0_26_ = v0_11_.new
v0_26_ = v0_26_()
v0_18_.iconRemoved = v0_26_
v0_26_ = v0_11_.new
v0_26_ = v0_26_()
v0_18_.iconChanged = v0_26_
v0_26_ = function()
    local v1_1_ = v0_18_
    local v1_0_ = v1_1_.iconsDictionary
    return v1_0_
end
v0_18_.getIcons = v0_26_
v0_26_ = function(a1)
    local v2_3_ = v0_18_
    local v2_2_ = v2_3_.iconsDictionary
    local v2_1_ = v2_2_[a1]
    if v2_1_ then
        return v2_1_
    end
end
v0_18_.getIconByUID = v0_26_
v0_26_ = function(a1)
    local v3_2_ = v0_18_
    local v3_1_ = v3_2_.getIconByUID
    v3_2_ = a1
    v3_1_ = v3_1_(v3_2_)
    if v3_1_ then
        return v3_1_
    end
    v3_2_ = pairs
    local v3_3_ = v0_22_
    local v3_2_, v3_3_, v3_4_ = v3_2_(v3_3_)
    for v3_5_, v3_6_ in v3_2_, v3_3_, v3_4_ do
        local v3_7_ = v3_6_.name
        if v3_7_ == a1 then
            return v3_6_
        end
    end
end
v0_18_.getIcon = v0_26_
v0_26_ = function(a1, a2)
    local v4_3_ = a1
    local v4_2_ = typeof
    v4_2_ = v4_2_(v4_3_)
    if v4_2_ ~= "boolean" then
        v4_2_ = v0_18_
        v4_0_ = v4_2_.topbarEnabled
    end
    if not a2 then
        v4_2_ = v0_18_
        v4_2_.topbarEnabled = a1
    end
    v4_2_ = pairs
    local v4_5_ = v0_18_
    v4_3_ = v4_5_.container
    local v4_2_, v4_3_, v4_4_ = v4_2_(v4_3_)
    for v4_5_, v4_6_ in v4_2_, v4_3_, v4_4_ do
        v4_6_.Enabled = a1
    end
end
v0_18_.setTopbarEnabled = v0_26_
v0_26_ = function(a1)
    local v5_2_ = v0_15_
    local v5_1_ = v5_2_.getModifications
    v5_2_ = a1
    v5_1_ = v5_1_(v5_2_)
    v5_0_ = v5_1_
    v5_1_ = pairs
    v5_2_ = v5_0_
    local v5_1_, v5_2_, v5_3_ = v5_1_(v5_2_)
    for v5_4_, v5_5_ in v5_1_, v5_2_, v5_3_ do
        local v5_6_ = pairs
        local v5_9_ = v0_18_
        local v5_7_ = v5_9_.baseTheme
        local v5_6_, v5_7_, v5_8_ = v5_6_(v5_7_)
        for v5_9_, v5_10_ in v5_6_, v5_7_, v5_8_ do
            local v5_12_ = v0_15_
            local v5_11_ = v5_12_.merge
            v5_12_ = v5_10_
            local v5_13_ = v5_5_
        end
    end
    v5_1_ = pairs
    v5_2_ = v0_22_
    v5_1_, v5_2_, v5_3_ = v5_1_(v5_2_)
    for v5_4_, v5_5_ in v5_1_, v5_2_, v5_3_ do
        local v5_9_ = v0_18_
        local v5_8_ = v5_9_.baseTheme
    end
end
v0_18_.modifyBaseTheme = v0_26_
v0_26_ = function(a1)
    local v6_1_ = v0_18_
    v6_1_.baseDisplayOrder = a1
    local v6_2_ = v0_18_
    v6_1_ = v6_2_.baseDisplayOrderChanged
    local v6_3_ = a1
    v6_1_:Fire(v6_3_)
end
v0_18_.setDisplayOrder = v0_26_
local defer = task.defer
v0_27_ = v0_16_.start
v0_28_ = v0_18_
defer(v0_27_, v0_28_)
local defer_0 = task.defer
v0_27_ = v0_17_.start
v0_28_ = v0_18_
defer_0(v0_27_, v0_28_)
v0_26_ = pairs
v0_27_ = v0_18_.container
v0_26_, v0_27_, v0_28_ = v0_26_(v0_27_)
for v0_29_, v0_30_ in v0_26_, v0_27_, v0_28_ do
    v0_30_.Parent = v0_21_
end
v0_26_ = v0_18_.isOldTopbar
if v0_26_ then
    v0_26_ = v0_18_.modifyBaseTheme
    v0_27_ = require
    v0_28_ = v0_20_.Classic
    v0_26_(v0_27_(v0_28_))
end
v0_26_ = function()
    local v7_0_ = {}
    local v7_3_ = v0_18_
    local v7_2_ = v7_0_
    local v7_1_ = setmetatable
    v7_1_(v7_2_, v7_3_)
    v7_2_ = v0_12_
    v7_1_ = v7_2_.new
    v7_1_ = v7_1_()
    v7_0_.janitor = v7_1_
    local v7_5_ = v0_12_
    local v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.themesJanitor = v7_2_
    v7_5_ = v0_12_
    v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.singleClickJanitor = v7_2_
    v7_5_ = v0_12_
    v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.captionJanitor = v7_2_
    v7_5_ = v0_12_
    v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.joinJanitor = v7_2_
    v7_5_ = v0_12_
    v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.menuJanitor = v7_2_
    v7_5_ = v0_12_
    v7_4_ = v7_5_.new
    v7_2_ = v7_1_:add(v7_4_())
    v7_0_.dropdownJanitor = v7_2_
    v7_3_ = v0_13_
    v7_2_ = v7_3_.generateUID
    v7_2_ = v7_2_()
    v7_3_ = v0_22_
    v7_3_[v7_2_] = v7_0_
    v7_5_ = function()
        local v8_0_ = v0_22_
        local v8_1_ = v7_2_
        local v8_2_ = nil
        v8_0_[v8_1_] = v8_2_
    end
    v7_1_:add(v7_5_)
    local v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.selected = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.deselected = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.toggled = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.viewingStarted = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.viewingEnded = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.stateChanged = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.notified = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.noticeStarted = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.noticeChanged = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.endNotices = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.toggleKeyAdded = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.fakeToggleKeyChanged = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.alignmentChanged = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.updateSize = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.resizingComplete = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.joinedParent = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.menuSet = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.dropdownSet = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.updateMenu = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.startMenuUpdate = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.childThemeModified = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.indicatorSet = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.dropdownChildAdded = v7_3_
    v7_6_ = v0_11_
    v7_5_ = v7_6_.new
    v7_3_ = v7_1_:add(v7_5_())
    v7_0_.menuChildAdded = v7_3_
    v7_3_ = v0_7_
    v7_0_.iconModule = v7_3_
    v7_0_.UID = v7_2_
    v7_3_ = true
    v7_0_.isEnabled = v7_3_
    v7_3_ = false
    v7_0_.isSelected = v7_3_
    v7_3_ = false
    v7_0_.isViewing = v7_3_
    v7_3_ = false
    v7_0_.joinedFrame = v7_3_
    v7_3_ = false
    v7_0_.parentIconUID = v7_3_
    v7_3_ = true
    v7_0_.deselectWhenOtherIconSelected = v7_3_
    v7_3_ = 0
    v7_0_.totalNotices = v7_3_
    v7_3_ = "Deselected"
    v7_0_.activeState = v7_3_
    v7_3_ = ""
    v7_0_.alignment = v7_3_
    v7_3_ = ""
    v7_0_.originalAlignment = v7_3_
    v7_3_ = {}
    v7_0_.appliedTheme = v7_3_
    v7_3_ = {}
    v7_0_.appearance = v7_3_
    v7_3_ = {}
    v7_0_.cachedInstances = v7_3_
    v7_3_ = {}
    v7_0_.cachedNamesToInstances = v7_3_
    v7_3_ = {}
    v7_0_.cachedCollectives = v7_3_
    v7_3_ = {}
    v7_0_.bindedToggleKeys = v7_3_
    v7_3_ = {}
    v7_0_.customBehaviours = v7_3_
    v7_3_ = {}
    v7_0_.toggleItems = v7_3_
    v7_3_ = {}
    v7_0_.bindedEvents = v7_3_
    v7_3_ = {}
    v7_0_.notices = v7_3_
    v7_3_ = {}
    v7_0_.menuIcons = v7_3_
    v7_3_ = {}
    v7_0_.dropdownIcons = v7_3_
    v7_3_ = {}
    v7_0_.childIconsDict = v7_3_
    v7_4_ = v0_18_
    v7_3_ = v7_4_.isOldTopbar
    v7_0_.isOldTopbar = v7_3_
    local clock = os.clock
    v7_3_ = clock()
    v7_0_.creationTime = v7_3_
    v7_5_ = require
    local v7_7_ = v0_24_
    v7_6_ = v7_7_.Widget
    v7_5_ = v7_5_(v7_6_)
    v7_6_ = v7_0_
    v7_7_ = v0_18_
    v7_3_ = v7_1_:add(v7_5_(v7_6_, v7_7_))
    v7_0_.widget = v7_3_
    v7_0_:setAlignment()
    v7_4_ = v0_25_
    v7_4_ += 1.000000
    v0_25_ = v7_7_
    v7_4_ = v0_25_
    v7_7_ = v7_4_
    v7_0_:setOrder(v7_7_)
    local v7_8_ = v0_18_
    v7_7_ = v7_8_.baseTheme
    v7_0_:setTheme(v7_7_)
    v7_7_ = "ClickRegion"
    v7_5_ = v7_0_:getInstance(v7_7_)
    v7_6_ = function()
        local v9_1_ = v7_0_
        local v9_0_ = v9_1_.locked
        if v9_0_ then
            return
        end
        v9_1_ = v7_0_
        v9_0_ = v9_1_.isSelected
        if v9_0_ then
            v9_0_ = v7_0_
            local v9_2_ = "User"
            local v9_3_ = v7_0_
            v9_0_:deselect(v9_2_, v9_3_)
            return
        end
        v9_0_ = v7_0_
        local v9_2_ = "User"
        local v9_3_ = v7_0_
        v9_0_:select(v9_2_, v9_3_)
    end
    v7_7_ = false
    v7_8_ = false
    local v7_9_ = v7_5_.MouseButton1Click
    local v7_11_ = function()
        local v10_0_ = v7_7_
        if v10_0_ then
            return
        end
        v10_0_ = true
        v7_8_ = nil
        local delay = task.delay
        local v10_1_ = 0.010000
        local v10_2_ = function()
            local v11_0_ = false
            v7_8_ = v11_0_
        end
        delay(v10_1_, v10_2_)
        v10_1_ = v7_0_
        v10_0_ = v10_1_.locked
        if v10_0_ then
            return
        end
        v10_1_ = v7_0_
        v10_0_ = v10_1_.isSelected
        if v10_0_ then
            v10_0_ = v7_0_
            v10_2_ = "User"
            local v10_3_ = v7_0_
            v10_0_:deselect(v10_2_, v10_3_)
            return
        end
        v10_0_ = v7_0_
        v10_2_ = "User"
        local v10_3_ = v7_0_
        v10_0_:select(v10_2_, v10_3_)
    end
    v7_9_:Connect(v7_11_)
    v7_9_ = v7_5_.TouchTap
    v7_11_ = function()
        local v12_0_ = v7_8_
        if v12_0_ then
            return
        end
        v12_0_ = true
        v7_7_ = nil
        local delay = task.delay
        local v12_1_ = 0.010000
        local v12_2_ = function()
            local v13_0_ = false
            v7_7_ = v13_0_
        end
        delay(v12_1_, v12_2_)
        v12_1_ = v7_0_
        v12_0_ = v12_1_.locked
        if v12_0_ then
            return
        end
        v12_1_ = v7_0_
        v12_0_ = v12_1_.isSelected
        if v12_0_ then
            v12_0_ = v7_0_
            v12_2_ = "User"
            local v12_3_ = v7_0_
            v12_0_:deselect(v12_2_, v12_3_)
            return
        end
        v12_0_ = v7_0_
        v12_2_ = "User"
        local v12_3_ = v7_0_
        v12_0_:select(v12_2_, v12_3_)
    end
    v7_9_:Connect(v7_11_)
    local v7_12_ = v0_1_
    v7_11_ = v7_12_.InputBegan
    local v7_13_ = function(a1, a2)
        local v14_3_ = v7_0_
        local v14_2_ = v14_3_.locked
        if v14_2_ then
            return
        end
        local v14_4_ = v7_0_
        v14_3_ = v14_4_.bindedToggleKeys
        v14_4_ = a1.KeyCode
        v14_2_ = v14_3_[v14_4_]
        if v14_2_ then
            if not a2 then
                v14_3_ = v7_0_
                v14_2_ = v14_3_.locked
                if v14_2_ then
                    return
                end
                v14_3_ = v7_0_
                v14_2_ = v14_3_.isSelected
                if v14_2_ then
                    v14_2_ = v7_0_
                    v14_4_ = "User"
                    local v14_5_ = v7_0_
                    v14_2_:deselect(v14_4_, v14_5_)
                    return
                end
                v14_2_ = v7_0_
                v14_4_ = "User"
                local v14_5_ = v7_0_
                v14_2_:select(v14_4_, v14_5_)
            end
        end
    end
    v7_1_:add(v7_11_:Connect(v7_13_))
    v7_9_ = function(a1)
        local v15_2_ = v7_0_
        local v15_1_ = v15_2_.locked
        if v15_1_ then
            return
        end
        v15_1_ = v7_0_
        v15_2_ = true
        v15_1_.isViewing = v15_2_
        v15_2_ = v7_0_
        v15_1_ = v15_2_.viewingStarted
        local v15_3_ = true
        v15_1_:Fire(v15_3_)
        if not a1 then
            v15_1_ = v7_0_
            v15_3_ = "Viewing"
            local v15_4_ = "User"
            local v15_5_ = v7_0_
            v15_1_:setState(v15_3_, v15_4_, v15_5_)
        end
    end
    local v7_10_ = function()
        local v16_1_ = v7_0_
        local v16_0_ = v16_1_.locked
        if v16_0_ then
            return
        end
        v16_0_ = v7_0_
        v16_1_ = false
        v16_0_.isViewing = v16_1_
        v16_1_ = v7_0_
        v16_0_ = v16_1_.viewingEnded
        local v16_2_ = true
        v16_0_:Fire(v16_2_)
        v16_0_ = v7_0_
        v16_2_ = nil
        local v16_3_ = "User"
        local v16_4_ = v7_0_
        v16_0_:setState(v16_2_, v16_3_, v16_4_)
    end
    v7_11_ = v7_0_.joinedParent
    v7_13_ = function()
        local v17_1_ = v7_0_
        local v17_0_ = v17_1_.isViewing
        if v17_0_ then
            v17_1_ = v7_0_
            v17_0_ = v17_1_.locked
            if v17_0_ then
                return
            end
            v17_0_ = v7_0_
            v17_1_ = false
            v17_0_.isViewing = v17_1_
            v17_1_ = v7_0_
            v17_0_ = v17_1_.viewingEnded
            local v17_2_ = true
            v17_0_:Fire(v17_2_)
            v17_0_ = v7_0_
            v17_2_ = nil
            local v17_3_ = "User"
            local v17_4_ = v7_0_
            v17_0_:setState(v17_2_, v17_3_, v17_4_)
        end
    end
    v7_11_:Connect(v7_13_)
    v7_11_ = v7_5_.MouseEnter
    v7_13_ = function()
        local v18_2_ = v0_1_
        local v18_1_ = v18_2_.KeyboardEnabled
        local v18_0_ = not v18_1_
        v18_2_ = v7_0_
        v18_1_ = v18_2_.locked
        if v18_1_ then
            return
        end
        v18_1_ = v7_0_
        v18_2_ = true
        v18_1_.isViewing = v18_2_
        v18_2_ = v7_0_
        v18_1_ = v18_2_.viewingStarted
        local v18_3_ = true
        v18_1_:Fire(v18_3_)
        if not v18_0_ then
            v18_1_ = v7_0_
            v18_3_ = "Viewing"
            local v18_4_ = "User"
            local v18_5_ = v7_0_
            v18_1_:setState(v18_3_, v18_4_, v18_5_)
        end
    end
    v7_11_:Connect(v7_13_)
    v7_11_ = 0
    local v7_15_ = v0_1_
    local v7_14_ = v7_15_.TouchEnded
    local v7_16_ = v7_10_
    v7_1_:add(v7_14_:Connect(v7_16_))
    v7_12_ = v7_5_.MouseLeave
    v7_14_ = v7_10_
    v7_12_:Connect(v7_14_)
    v7_12_ = v7_5_.SelectionGained
    v7_14_ = v7_9_
    v7_12_:Connect(v7_14_)
    v7_12_ = v7_5_.SelectionLost
    v7_14_ = v7_10_
    v7_12_:Connect(v7_14_)
    v7_12_ = v7_5_.MouseButton1Down
    v7_14_ = function()
        local v19_1_ = v7_0_
        local v19_0_ = v19_1_.locked
        if not v19_0_ then
            v19_1_ = v0_1_
            v19_0_ = v19_1_.TouchEnabled
            if v19_0_ then
                v19_0_ = v7_11_
                v19_0_ += 1.000000
                v7_11_ = nil
                v19_0_ = v7_11_
                local delay = task.delay
                local v19_2_ = 0.200000
                local v19_3_ = function()
                    local v20_0_ = v19_0_
                    local v20_1_ = v7_11_
                    if v20_0_ == v20_1_ then
                        v20_1_ = v7_0_
                        v20_0_ = v20_1_.locked
                        if v20_0_ then
                            return
                        end
                        v20_0_ = v7_0_
                        v20_1_ = true
                        v20_0_.isViewing = v20_1_
                        v20_1_ = v7_0_
                        v20_0_ = v20_1_.viewingStarted
                        local v20_2_ = true
                        v20_0_:Fire(v20_2_)
                        v20_0_ = v7_0_
                        v20_2_ = "Viewing"
                        local v20_3_ = "User"
                        local v20_4_ = v7_0_
                        v20_0_:setState(v20_2_, v20_3_, v20_4_)
                    end
                end
                delay(v19_2_, v19_3_)
            end
        end
    end
    v7_12_:Connect(v7_14_)
    v7_12_ = v7_5_.MouseButton1Up
    v7_14_ = function()
        local v21_0_ = v7_11_
        v21_0_ += 1.000000
        v7_11_ = v21_0_
    end
    v7_12_:Connect(v7_14_)
    v7_14_ = "IconOverlay"
    v7_12_ = v7_0_:getInstance(v7_14_)
    v7_13_ = v7_0_.viewingStarted
    v7_15_ = function()
        local v22_0_ = v7_12_
        local v22_3_ = v7_0_
        local v22_2_ = v22_3_.overlayDisabled
        local v22_1_ = not v22_2_
        v22_0_.Visible = v22_1_
    end
    v7_13_:Connect(v7_15_)
    v7_13_ = v7_0_.viewingEnded
    v7_15_ = function()
        local v23_0_ = v7_12_
        local v23_1_ = false
        v23_0_.Visible = v23_1_
    end
    v7_13_:Connect(v7_15_)
    v7_15_ = v0_23_
    local v7_17_ = function(a1)
        local v24_1_ = v7_0_
        if a1 ~= v24_1_ then
            local v24_2_ = v7_0_
            v24_1_ = v24_2_.deselectWhenOtherIconSelected
            if v24_1_ then
                v24_1_ = a1.deselectWhenOtherIconSelected
                if v24_1_ then
                    v24_1_ = v7_0_
                    local v24_3_ = "AutoDeselect"
                    local v24_4_ = a1
                    v24_1_:deselect(v24_3_, v24_4_)
                end
            end
        end
    end
    v7_1_:add(v7_15_:Connect(v7_17_))
    local info = debug.info
    v7_14_ = 2
    v7_15_ = "s"
    v7_13_ = info(v7_14_, v7_15_)
    local split = string.split
    v7_15_ = v7_13_
    v7_16_ = "."
    v7_14_ = split(v7_15_, v7_16_)
    v7_15_ = game
    v7_16_ = nil
    v7_17_ = pairs
    local v7_18_ = v7_14_
    local v7_17_, v7_18_, v7_19_ = v7_17_(v7_18_)
    for v7_20_, v7_21_ in v7_17_, v7_18_, v7_19_ do
        local v7_24_ = v7_21_
        local v7_22_ = v7_15_:FindFirstChild(v7_24_)
        v7_15_ = v7_22_
        if v7_15_ then
            v7_24_ = "ScreenGui"
            v7_22_ = v7_15_:IsA(v7_24_)
            if v7_22_ then
                v7_16_ = v7_15_
            end
        end
    end
    if v7_15_ then
        if v7_16_ then
            v7_17_ = v7_16_.ResetOnSpawn
            if v7_17_ == true then
                v7_18_ = v0_13_
                v7_17_ = v7_18_.localPlayerRespawned
                v7_18_ = function()
                    local v25_0_ = v7_0_
                    v25_0_:destroy()
                end
                v7_17_(v7_18_)
            end
        end
    end
    v7_19_ = "NoticeLabel"
    v7_17_ = v7_0_:getInstance(v7_19_)
    v7_18_ = v7_0_.toggled
    local v7_20_ = function(a1)
        local v26_2_ = v7_0_
        local v26_1_ = v26_2_.noticeChanged
        local v26_4_ = v7_0_
        local v26_3_ = v26_4_.totalNotices
        v26_1_:Fire(v26_3_)
        v26_1_ = pairs
        v26_4_ = v7_0_
        v26_2_ = v26_4_.childIconsDict
        v26_1_, v26_2_, v26_3_ = v26_1_(v26_2_)
        for v26_4_, v26_5_ in v26_1_, v26_2_, v26_3_ do
            local v26_7_ = v0_18_
            local v26_6_ = v26_7_.getIconByUID
            v26_7_ = v26_4_
            v26_6_ = v26_6_(v26_7_)
            v26_7_ = v26_6_.noticeChanged
            local v26_9_ = v26_6_.totalNotices
            v26_7_:Fire(v26_9_)
            if not a1 then
                v26_7_ = v26_6_.isSelected
                if v26_7_ then
                    v26_7_ = pairs
                    local v26_8_ = v26_6_.childIconsDict
                    v26_7_, v26_8_, v26_9_ = v26_7_(v26_8_)
                    for v26_10_, v26_11_ in v26_7_, v26_8_, v26_9_ do
                        local v26_14_ = "HideParentFeature"
                        local v26_15_ = v7_0_
                    end
                end
            end
        end
    end
    v7_18_:Connect(v7_20_)
    v7_18_ = v7_0_.selected
    v7_20_ = function()
        local v27_3_ = v7_0_
        local v27_2_ = v27_3_.dropdownIcons
        local v27_1_ = #v27_2_
        v27_2_ = 0
        if v27_2_ >= v27_1_ then
            local v27_0_ = false
        end
        local v27_0_ = true
        if v27_0_ then
            v27_1_ = v0_4_
            v27_3_ = "ChatActive"
            v27_1_ = v27_1_:GetCore(v27_3_)
            if v27_1_ then
                v27_2_ = v7_0_
                v27_1_ = v27_2_.alignment
                if v27_1_ ~= "Right" then
                    v27_1_ = v7_0_
                    v27_2_ = true
                    v27_1_.chatWasPreviouslyActive = v27_2_
                    v27_1_ = v0_4_
                    v27_3_ = "ChatActive"
                    local v27_4_ = false
                    v27_1_:SetCore(v27_3_, v27_4_)
                end
            end
            v27_1_ = v0_4_
            v27_3_ = "PlayerList"
            v27_1_ = v27_1_:GetCoreGuiEnabled(v27_3_)
            if v27_1_ then
                v27_2_ = v7_0_
                v27_1_ = v27_2_.alignment
                if v27_1_ ~= "Left" then
                    v27_1_ = v7_0_
                    v27_2_ = true
                    v27_1_.playerlistWasPreviouslyActive = v27_2_
                    v27_1_ = v0_4_
                    local PlayerList = Enum.CoreGuiType.PlayerList
                    local v27_4_ = false
                    v27_1_:SetCoreGuiEnabled(PlayerList, v27_4_)
                end
            end
        end
    end
    v7_18_:Connect(v7_20_)
    v7_18_ = v7_0_.deselected
    v7_20_ = function()
        local v28_1_ = v7_0_
        local v28_0_ = v28_1_.chatWasPreviouslyActive
        if v28_0_ then
            v28_0_ = v7_0_
            v28_1_ = nil
            v28_0_.chatWasPreviouslyActive = v28_1_
            v28_0_ = v0_4_
            local v28_2_ = "ChatActive"
            local v28_3_ = true
            v28_0_:SetCore(v28_2_, v28_3_)
        end
        v28_1_ = v7_0_
        v28_0_ = v28_1_.playerlistWasPreviouslyActive
        if v28_0_ then
            v28_0_ = v7_0_
            v28_1_ = nil
            v28_0_.playerlistWasPreviouslyActive = v28_1_
            v28_0_ = v0_4_
            local PlayerList = Enum.CoreGuiType.PlayerList
            local v28_3_ = true
            v28_0_:SetCoreGuiEnabled(PlayerList, v28_3_)
        end
    end
    v7_18_:Connect(v7_20_)
    local delay = task.delay
    v7_19_ = 0.100000
    v7_20_ = function()
        local v29_1_ = v7_0_
        local v29_0_ = v29_1_.activeState
        if v29_0_ == "Deselected" then
            v29_1_ = v7_0_
            v29_0_ = v29_1_.stateChanged
            local v29_2_ = "Deselected"
            v29_0_:Fire(v29_2_)
            v29_0_ = v7_0_
            v29_0_:refresh()
        end
    end
    delay(v7_19_, v7_20_)
    v7_19_ = v0_18_
    v7_18_ = v7_19_.iconAdded
    v7_20_ = v7_0_
    v7_18_:Fire(v7_20_)
    return v7_0_
end
v0_18_.new = v0_26_
v0_26_ = function(a1, a2)
    local v30_2_ = a1.widget
    v30_2_.Name = a2
    a1.name = a2
    return a1
end
v0_18_.setName = v0_26_
v0_26_ = function(a1, a2, a3, a4)
    if not a2 then
        local v31_5_ = a1.isSelected
        if v31_5_ then
            local v31_4_ = "Selected"
        else
            local v31_4_ = "Deselected"
        end
        v31_1_ = nil
    end
    local v31_5_ = v0_13_
    local v31_4_ = v31_5_.formatStateName
    v31_5_ = a2
    v31_4_ = v31_4_(v31_5_)
    v31_5_ = a1.activeState
    if v31_5_ == v31_4_ then
        return
    end
    local v31_6_ = a1.isSelected
    a1.activeState = v31_4_
    if v31_4_ == "Deselected" then
        local v31_7_ = false
        a1.isSelected = v31_7_
        if v31_6_ then
            v31_7_ = a1.toggled
            local v31_9_ = false
            local v31_10_ = a3
            local v31_11_ = a4
            v31_7_:Fire(v31_9_, v31_10_, v31_11_)
            v31_7_ = a1.deselected
            v31_9_ = a3
            v31_10_ = a4
            v31_7_:Fire(v31_9_, v31_10_)
        end
        local v31_9_ = false
        local v31_10_ = a3
        local v31_11_ = a4
        a1:_setToggleItemsVisible(v31_9_, v31_10_, v31_11_)
    else
        if v31_4_ == "Selected" then
            local v31_7_ = true
            a1.isSelected = v31_7_
            if not v31_6_ then
                v31_7_ = a1.toggled
                local v31_9_ = true
                local v31_10_ = a3
                local v31_11_ = a4
                v31_7_:Fire(v31_9_, v31_10_, v31_11_)
                v31_7_ = a1.selected
                v31_9_ = a3
                v31_10_ = a4
                v31_7_:Fire(v31_9_, v31_10_)
                v31_7_ = v0_23_
                v31_9_ = a1
                v31_10_ = a3
                v31_11_ = a4
                v31_7_:Fire(v31_9_, v31_10_, v31_11_)
            end
            local v31_9_ = true
            local v31_10_ = a3
            local v31_11_ = a4
            a1:_setToggleItemsVisible(v31_9_, v31_10_, v31_11_)
        end
    end
    local v31_7_ = a1.stateChanged
    local v31_9_ = v31_4_
    local v31_10_ = a3
    local v31_11_ = a4
    v31_7_:Fire(v31_9_, v31_10_, v31_11_)
end
v0_18_.setState = v0_26_
v0_26_ = function(a1, a2)
    local v32_3_ = a1.cachedNamesToInstances
    local v32_2_ = v32_3_[a2]
    if v32_2_ then
        return v32_2_
    end
    v32_3_ = function(a1, a2)
        local v33_4_ = a1
        local v33_3_ = v33_4_.cachedInstances
        local v33_2_ = v33_3_[a2]
        if not v33_2_ then
            local v33_5_ = "Collective"
            v33_3_ = a2:GetAttribute(v33_5_)
            v33_4_ = v33_3_
            if v33_4_ then
                local v33_6_ = a1
                v33_5_ = v33_6_.cachedCollectives
                v33_4_ = v33_5_[v33_3_]
            end
            if v33_4_ then
                local v33_6_ = v33_4_
                local v33_7_ = a2
                local insert = table.insert
                insert(v33_6_, v33_7_)
            end
            local v33_6_ = a1
            v33_5_ = v33_6_.cachedNamesToInstances
            v33_5_[a1] = a2
            v33_6_ = a1
            v33_5_ = v33_6_.cachedInstances
            v33_6_ = true
            v33_5_[a2] = v33_6_
            v33_5_ = a2.Destroying
            local v33_7_ = function()
                local v34_1_ = a1
                local v34_0_ = v34_1_.cachedNamesToInstances
                v34_1_ = a1
                local v34_2_ = nil
                v34_0_[v34_1_] = v34_2_
                v34_1_ = a1
                v34_0_ = v34_1_.cachedInstances
                v34_1_ = a2
                v34_2_ = nil
                v34_0_[v34_1_] = v34_2_
            end
            v33_5_:Once(v33_7_)
        end
    end
    local v32_4_ = a1.widget
    local v32_5_ = v32_3_
    local v32_6_ = "Widget"
    local v32_7_ = v32_4_
    v32_5_(v32_6_, v32_7_)
    if a2 == "Widget" then
        return v32_4_
    end
    v32_5_ = nil
    v32_6_ = function(a1)
        local v35_1_ = pairs
        local v35_1_, v35_2_, v35_3_ = v35_1_(a1:GetChildren())
        for v35_4_, v35_5_ in v35_1_, v35_2_, v35_3_ do
            local v35_8_ = "WidgetUID"
            local v35_6_ = v35_5_:GetAttribute(v35_8_)
            if v35_6_ then
                v35_8_ = a1
                local v35_7_ = v35_8_.UID
                if v35_6_ == v35_7_ then
                    v35_7_ = v35_5_
                    local v35_9_ = v0_15_
                    v35_8_ = v35_9_.getRealInstance
                    v35_9_ = v35_5_
                    v35_8_ = v35_8_(v35_9_)
                    if v35_8_ then
                        local v35_5_ = v35_8_
                    end
                    v35_9_ = v32_6_
                    local v35_10_ = v35_5_
                    v35_9_(v35_10_)
                    local v35_11_ = "GuiBase"
                    v35_9_ = v35_5_:IsA(v35_11_)
                    if not v35_9_ then
                        v35_11_ = "UIBase"
                        v35_9_ = v35_5_:IsA(v35_11_)
                        if not v35_9_ then
                            v35_11_ = "ValueBase"
                            v35_9_ = v35_5_:IsA(v35_11_)
                            if v35_9_ then
                                v35_9_ = v35_5_.Name
                                v35_10_ = v32_3_
                                v35_11_ = v35_9_
                                local v35_12_ = v35_5_
                                v35_10_(v35_11_, v35_12_)
                                v35_10_ = a2
                                if v35_9_ == v35_10_ then
                                    v32_5_ = v35_5_
                                end
                            end
                        end
                    end
                    v35_9_ = v35_5_.Name
                    v35_10_ = v32_3_
                    v35_11_ = v35_9_
                    local v35_12_ = v35_5_
                    v35_10_(v35_11_, v35_12_)
                    v35_10_ = a2
                    if v35_9_ == v35_10_ then
                        v32_5_ = v35_5_
                    end
                end
            end
            local v35_7_ = v35_5_
            local v35_9_ = v0_15_
            v35_8_ = v35_9_.getRealInstance
            v35_9_ = v35_5_
            v35_8_ = v35_8_(v35_9_)
            if v35_8_ then
                local v35_5_ = v35_8_
            end
            v35_9_ = v32_6_
            local v35_10_ = v35_5_
            v35_9_(v35_10_)
            local v35_11_ = "GuiBase"
            v35_9_ = v35_5_:IsA(v35_11_)
            if not v35_9_ then
                v35_11_ = "UIBase"
                v35_9_ = v35_5_:IsA(v35_11_)
                if not v35_9_ then
                    v35_11_ = "ValueBase"
                    v35_9_ = v35_5_:IsA(v35_11_)
                    if v35_9_ then
                        v35_9_ = v35_5_.Name
                        v35_10_ = v32_3_
                        v35_11_ = v35_9_
                        local v35_12_ = v35_5_
                        v35_10_(v35_11_, v35_12_)
                        v35_10_ = a2
                        if v35_9_ == v35_10_ then
                            v32_5_ = v35_5_
                        end
                    end
                end
            end
            v35_9_ = v35_5_.Name
            v35_10_ = v32_3_
            v35_11_ = v35_9_
            local v35_12_ = v35_5_
            v35_10_(v35_11_, v35_12_)
            v35_10_ = a2
            if v35_9_ == v35_10_ then
                v32_5_ = v35_5_
            end
        end
    end
    v32_7_ = v32_6_
    local v32_8_ = v32_4_
    v32_7_(v32_8_)
    return v32_5_
end
v0_18_.getInstance = v0_26_
v0_26_ = function(a1, a2)
    local v36_3_ = a1.cachedCollectives
    local v36_2_ = v36_3_[a2]
    if v36_2_ then
        return v36_2_
    end
    v36_2_ = {}
    v36_3_ = pairs
    local v36_4_ = a1.cachedInstances
    local v36_3_, v36_4_, v36_5_ = v36_3_(v36_4_)
    for v36_6_, v36_7_ in v36_3_, v36_4_, v36_5_ do
        local v36_10_ = "Collective"
        local v36_8_ = v36_6_:GetAttribute(v36_10_)
        if v36_8_ == a2 then
            local v36_9_ = v36_2_
            v36_10_ = v36_6_
            local insert = table.insert
            insert(v36_9_, v36_10_)
        end
    end
    v36_3_ = a1.cachedCollectives
    v36_3_[a2] = v36_2_
    return v36_2_
end
v0_18_.getCollective = v0_26_
v0_26_ = function(a1, a2)
    local v37_2_ = {}
    local v37_5_ = a2
    local v37_3_ = a1:getInstance(v37_5_)
    if v37_3_ then
        v37_5_ = v37_2_
        local v37_6_ = v37_3_
        local insert = table.insert
        insert(v37_5_, v37_6_)
    end
    local v37_4_ = #v37_2_
    if v37_4_ == 0.000000 then
        local v37_6_ = a2
        v37_4_ = a1:getCollective(v37_6_)
        v37_2_ = v37_4_
    end
    return v37_2_
end
v0_18_.getInstanceOrCollective = v0_26_
v0_26_ = function(a1, a2)
    local v38_2_ = a2
    if not v38_2_ then
        v38_2_ = a1.activeState
    end
    local v38_4_ = a1.appearance
    local v38_3_ = v38_4_[v38_2_]
    if not v38_3_ then
        v38_3_ = {}
        v38_4_ = a1.appearance
        v38_4_[v38_2_] = v38_3_
    end
    return v38_3_
end
v0_18_.getStateGroup = v0_26_
v0_26_ = function(a1, a2, a3)
    local v39_4_ = v0_15_
    local v39_3_ = v39_4_.refresh
    v39_4_ = a1
    local v39_5_ = a2
    local v39_6_ = a3
    v39_3_(v39_4_, v39_5_, v39_6_)
    return a1
end
v0_18_.refreshAppearance = v0_26_
v0_26_ = function(a1)
    local v40_3_ = a1.widget
    a1:refreshAppearance(v40_3_)
    local v40_1_ = a1.updateSize
    v40_1_:Fire()
    return a1
end
v0_18_.refresh = v0_26_
v0_26_ = function(a1)
    local v41_2_ = v0_18_
    local v41_1_ = v41_2_.getIconByUID
    v41_2_ = a1.parentIconUID
    v41_1_ = v41_1_(v41_2_)
    if v41_1_ then
        v41_2_ = v41_1_.updateSize
        v41_2_:Fire()
    end
end
v0_18_.updateParent = v0_26_
v0_26_ = function(a1, a2, a3, a4, a5)
    local v42_6_ = a2
    local v42_7_ = "-"
    local v42_8_ = a3
    local v42_5_ = v42_6_ .. v42_7_
    v42_6_ = a1.customBehaviours
    v42_6_[v42_5_] = a4
    if a5 then
        v42_8_ = a2
        v42_6_ = a1:getInstanceOrCollective(v42_8_)
        v42_7_ = pairs
        v42_8_ = v42_6_
        local v42_7_, v42_8_, v42_9_ = v42_7_(v42_8_)
        for v42_10_, v42_11_ in v42_7_, v42_8_, v42_9_ do
            local v42_14_ = v42_11_
            local v42_15_ = a3
        end
    end
end
v0_18_.setBehaviour = v0_26_
v0_26_ = function(a1, a2, a3)
    local v43_4_ = v0_15_
    local v43_3_ = v43_4_.modify
    v43_4_ = a1
    local v43_5_ = a2
    local v43_6_ = a3
    v43_3_ = v43_3_(v43_4_, v43_5_, v43_6_)
    v43_4_ = a1
    v43_5_ = v43_3_
    return v43_4_, v43_5_
end
v0_18_.modifyTheme = v0_26_
v0_26_ = function(a1, a2, a3)
    a1.childModifications = a2
    a1.childModificationsUID = a3
    local v44_3_ = pairs
    local v44_4_ = a1.childIconsDict
    local v44_3_, v44_4_, v44_5_ = v44_3_(v44_4_)
    for v44_6_, v44_7_ in v44_3_, v44_4_, v44_5_ do
        local v44_9_ = v0_18_
        local v44_8_ = v44_9_.getIconByUID
        v44_9_ = v44_6_
        v44_8_ = v44_8_(v44_9_)
        local v44_11_ = a2
        local v44_12_ = a3
    end
    v44_3_ = a1.childThemeModified
    v44_3_:Fire()
    return a1
end
v0_18_.modifyChildTheme = v0_26_
v0_26_ = function(a1, a2)
    local v45_3_ = v0_15_
    local v45_2_ = v45_3_.remove
    v45_3_ = a1
    local v45_4_ = a2
    v45_2_(v45_3_, v45_4_)
    return a1
end
v0_18_.removeModification = v0_26_
v0_26_ = function(a1, a2, a3, a4)
    local v46_5_ = v0_15_
    local v46_4_ = v46_5_.removeWith
    v46_5_ = a1
    local v46_6_ = a2
    local v46_7_ = a3
    local v46_8_ = a4
    v46_4_(v46_5_, v46_6_, v46_7_, v46_8_)
    return a1
end
v0_18_.removeModificationWith = v0_26_
v0_26_ = function(a1, a2)
    local v47_3_ = v0_15_
    local v47_2_ = v47_3_.set
    v47_3_ = a1
    local v47_4_ = a2
    v47_2_(v47_3_, v47_4_)
    return a1
end
v0_18_.setTheme = v0_26_
v0_26_ = function(a1, a2)
    a1.isEnabled = a2
    local v48_2_ = a1.widget
    v48_2_.Visible = a2
    a1:updateParent()
    return a1
end
v0_18_.setEnabled = v0_26_
v0_26_ = function(a1, a2, a3)
    local v49_5_ = "Selected"
    local v49_6_ = a2
    local v49_7_ = a3
    a1:setState(v49_5_, v49_6_, v49_7_)
    return a1
end
v0_18_.select = v0_26_
v0_26_ = function(a1, a2, a3)
    local v50_5_ = "Deselected"
    local v50_6_ = a2
    local v50_7_ = a3
    a1:setState(v50_5_, v50_6_, v50_7_)
    return a1
end
v0_18_.deselect = v0_26_
v0_26_ = function(a1, a2, a3)
    local v51_3_ = a1.notice
    if not v51_3_ then
        local v51_4_ = require
        local v51_6_ = v0_24_
        local v51_5_ = v51_6_.Notice
        v51_4_ = v51_4_(v51_5_)
        v51_5_ = a1
        v51_6_ = v0_18_
        v51_4_ = v51_4_(v51_5_, v51_6_)
        v51_3_ = v51_4_
        a1.notice = v51_3_
    end
    local v51_4_ = a1.noticeStarted
    local v51_6_ = a2
    local v51_7_ = a3
    v51_4_:Fire(v51_6_, v51_7_)
    return a1
end
v0_18_.notify = v0_26_
v0_26_ = function(a1)
    local v52_1_ = a1.endNotices
    v52_1_:Fire()
    return a1
end
v0_18_.clearNotices = v0_26_
v0_26_ = function(a1, a2)
    a1.overlayDisabled = a2
    return a1
end
v0_18_.disableOverlay = v0_26_
v0_26_ = v0_18_.disableOverlay
v0_18_.disableStateOverlay = v0_26_
v0_26_ = function(a1, a2, a3)
    local v54_5_ = table.create(4)
    local v54_6_ = "IconImage"
    local v54_7_ = "Image"
    local v54_8_ = a2
    local v54_9_ = a3
    v54_5_[1] = v54_6_
    v54_5_[2] = v54_7_
    v54_5_[3] = v54_8_
    v54_5_[4] = v54_9_
    a1:modifyTheme(v54_5_)
    return a1
end
v0_18_.setImage = v0_26_
v0_26_ = function(a1, a2, a3)
    local v55_5_ = table.create(4)
    local v55_6_ = "IconLabel"
    local v55_7_ = "Text"
    local v55_8_ = a2
    local v55_9_ = a3
    v55_5_[1] = v55_6_
    v55_5_[2] = v55_7_
    v55_5_[3] = v55_8_
    v55_5_[4] = v55_9_
    a1:modifyTheme(v55_5_)
    return a1
end
v0_18_.setLabel = v0_26_
v0_26_ = function(a1, a2, a3)
    local v56_5_ = table.create(4)
    local v56_6_ = "Widget"
    local v56_7_ = "LayoutOrder"
    local v56_8_ = a2
    local v56_9_ = a3
    v56_5_[1] = v56_6_
    v56_5_[2] = v56_7_
    v56_5_[3] = v56_8_
    v56_5_[4] = v56_9_
    a1:modifyTheme(v56_5_)
    return a1
end
v0_18_.setOrder = v0_26_
v0_26_ = function(a1, a2, a3)
    local v57_5_ = table.create(4)
    local v57_6_ = "IconCorners"
    local v57_7_ = "CornerRadius"
    local v57_8_ = a2
    local v57_9_ = a3
    v57_5_[1] = v57_6_
    v57_5_[2] = v57_7_
    v57_5_[3] = v57_8_
    v57_5_[4] = v57_9_
    a1:modifyTheme(v57_5_)
    return a1
end
v0_18_.setCornerRadius = v0_26_
v0_26_ = function(a1, a2, a3)
    local v58_4_ = a2
    local v58_3_ = tostring
    v58_3_ = v58_3_(v58_4_)
    v58_3_ = v58_3_:lower()
    if v58_3_ ~= "mid" then
        if v58_3_ == "centre" then
            v58_3_ = "center"
        end
    end
    v58_3_ = "center"
    if v58_3_ ~= "left" then
        if v58_3_ ~= "center" then
            if v58_3_ ~= "right" then
                v58_3_ = "left"
            end
        end
    end
    if v58_3_ == "center" then
        local v58_6_ = v0_18_
        local v58_5_ = v58_6_.container
        v58_4_ = v58_5_.TopbarCentered
        if not v58_4_ then
            v58_6_ = v0_18_
            v58_5_ = v58_6_.container
            v58_4_ = v58_5_.TopbarStandard
        end
    end
    local v58_6_ = v0_18_
    local v58_5_ = v58_6_.container
    v58_4_ = v58_5_.TopbarStandard
    v58_5_ = v58_4_.Holders
    local upper = string.upper
    local v58_12_ = 1
    local v58_13_ = 1
    local v58_11_ = v58_3_
    local sub = string.sub
    local v58_10_ = sub(v58_11_, v58_12_, v58_13_)
    local v58_9_ = upper(v58_10_)
    local v58_7_ = v58_9_
    v58_9_ = v58_3_
    v58_10_ = 2.000000
    local sub = string.sub
    local v58_8_ = sub(v58_9_, v58_10_)
    v58_6_ = v58_7_
    if not a3 then
        a1.originalAlignment = v58_6_
    end
    v58_7_ = a1.joinedFrame
    v58_8_ = v58_5_[v58_6_]
    a1.screenGui = v58_4_
    a1.alignmentHolder = v58_8_
    v58_9_ = a1.isDestroyed
    if not v58_9_ then
        v58_9_ = a1.widget
        v58_10_ = v58_7_ or v58_8_
        v58_9_.Parent = v58_10_
    end
    a1.alignment = v58_6_
    v58_9_ = a1.alignmentChanged
    v58_11_ = v58_6_
    v58_9_:Fire(v58_11_)
    v58_10_ = v0_18_
    v58_9_ = v58_10_.iconChanged
    v58_11_ = a1
    v58_9_:Fire(v58_11_)
    return a1
end
v0_18_.align = v0_26_
v0_26_ = v0_18_.align
v0_18_.setAlignment = v0_26_
v0_26_ = function(a1)
    local v59_3_ = "Left"
    a1:setAlignment(v59_3_)
    return a1
end
v0_18_.setLeft = v0_26_
v0_26_ = function(a1)
    local v60_3_ = "Center"
    a1:setAlignment(v60_3_)
    return a1
end
v0_18_.setMid = v0_26_
v0_26_ = function(a1)
    local v61_3_ = "Right"
    a1:setAlignment(v61_3_)
    return a1
end
v0_18_.setRight = v0_26_
v0_26_ = function(a1, a2, a3)
    local fromOffset = UDim2.fromOffset
    local v62_4_ = a2
    local v62_8_ = a1.widget
    local v62_7_ = v62_8_.Size
    local v62_6_ = v62_7_.Y
    local v62_5_ = v62_6_.Offset
    local v62_3_ = fromOffset(v62_4_, v62_5_)
    v62_6_ = table.create(4)
    v62_7_ = "Widget"
    v62_8_ = "Size"
    local v62_9_ = v62_3_
    local v62_10_ = a3
    v62_6_[1] = v62_7_
    v62_6_[2] = v62_8_
    v62_6_[3] = v62_9_
    v62_6_[4] = v62_10_
    a1:modifyTheme(v62_6_)
    v62_6_ = table.create(4)
    v62_7_ = "Widget"
    v62_8_ = "DesiredWidth"
    v62_9_ = a2
    v62_10_ = a3
    v62_6_[1] = v62_7_
    v62_6_[2] = v62_8_
    v62_6_[3] = v62_9_
    v62_6_[4] = v62_10_
    a1:modifyTheme(v62_6_)
    return a1
end
v0_18_.setWidth = v0_26_
v0_26_ = function(a1, a2, a3)
    local v63_5_ = table.create(4)
    local v63_6_ = "IconImageScale"
    local v63_7_ = "Value"
    local v63_8_ = a2
    local v63_9_ = a3
    v63_5_[1] = v63_6_
    v63_5_[2] = v63_7_
    v63_5_[3] = v63_8_
    v63_5_[4] = v63_9_
    a1:modifyTheme(v63_5_)
    return a1
end
v0_18_.setImageScale = v0_26_
v0_26_ = function(a1, a2, a3)
    local v64_5_ = table.create(4)
    local v64_6_ = "IconImageRatio"
    local v64_7_ = "AspectRatio"
    local v64_8_ = a2
    local v64_9_ = a3
    v64_5_[1] = v64_6_
    v64_5_[2] = v64_7_
    v64_5_[3] = v64_8_
    v64_5_[4] = v64_9_
    a1:modifyTheme(v64_5_)
    return a1
end
v0_18_.setImageRatio = v0_26_
v0_26_ = function(a1, a2, a3)
    local v65_5_ = table.create(4)
    local v65_6_ = "IconLabel"
    local v65_7_ = "TextSize"
    local v65_8_ = a2
    local v65_9_ = a3
    v65_5_[1] = v65_6_
    v65_5_[2] = v65_7_
    v65_5_[3] = v65_8_
    v65_5_[4] = v65_9_
    a1:modifyTheme(v65_5_)
    return a1
end
v0_18_.setTextSize = v0_26_
v0_26_ = function(a1, a2, a3, a4, a5)
    local v66_5_ = a3
    if not v66_5_ then
        local Regular = Enum.FontWeight.Regular
    end
    v66_2_ = v66_5_
    v66_5_ = a4
    if not v66_5_ then
        local Normal = Enum.FontStyle.Normal
    end
    v66_3_ = v66_5_
    v66_5_ = nil
    local v66_7_ = a2
    local v66_6_ = typeof
    v66_6_ = v66_6_(v66_7_)
    if v66_6_ == "number" then
        local fromId = Font.fromId
        local v66_8_ = a2
        local v66_9_ = v66_2_
        local v66_10_ = v66_3_
        v66_7_ = fromId(v66_8_, v66_9_, v66_10_)
        v66_5_ = v66_7_
    else
        if v66_6_ == "EnumItem" then
            local fromEnum = Font.fromEnum
            local v66_8_ = a2
            v66_7_ = fromEnum(v66_8_)
            v66_5_ = v66_7_
        else
            if v66_6_ == "string" then
                local v66_9_ = "rbxasset"
                v66_7_ = a2:match(v66_9_)
                if not v66_7_ then
                    local fromName = Font.fromName
                    local v66_8_ = a2
                    v66_9_ = v66_2_
                    local v66_10_ = v66_3_
                    v66_7_ = fromName(v66_8_, v66_9_, v66_10_)
                    v66_5_ = v66_7_
                end
            end
        end
    end
    if not v66_5_ then
        local new = Font.new
        local v66_8_ = a2
        local v66_9_ = v66_2_
        local v66_10_ = v66_3_
        v66_7_ = new(v66_8_, v66_9_, v66_10_)
        v66_5_ = v66_7_
    end
    local v66_9_ = table.create(4)
    local v66_10_ = "IconLabel"
    local v66_11_ = "FontFace"
    local v66_12_ = v66_5_
    local v66_13_ = a5
    v66_9_[1] = v66_10_
    v66_9_[2] = v66_11_
    v66_9_[3] = v66_12_
    v66_9_[4] = v66_13_
    a1:modifyTheme(v66_9_)
    return a1
end
v0_18_.setTextFont = v0_26_
v0_26_ = function(a1, a2)
    local v67_4_ = "GuiObject"
    local v67_2_ = a2:IsA(v67_4_)
    if not v67_2_ then
        v67_4_ = "LayerCollector"
        v67_2_ = a2:IsA(v67_4_)
        if not v67_2_ then
            v67_2_ = error
            local v67_3_ = "Toggle item must be a GuiObject or LayerCollector!"
            v67_2_(v67_3_)
        end
    end
    v67_2_ = a1.toggleItems
    local v67_3_ = true
    v67_2_[a2] = v67_3_
    a1:_updateSelectionInstances()
    return a1
end
v0_18_.bindToggleItem = v0_26_
v0_26_ = function(a1, a2)
    local v68_2_ = a1.toggleItems
    local v68_3_ = nil
    v68_2_[a2] = v68_3_
    a1:_updateSelectionInstances()
    return a1
end
v0_18_.unbindToggleItem = v0_26_
v0_26_ = function(a1)
    local v69_1_ = pairs
    local v69_2_ = a1.toggleItems
    local v69_1_, v69_2_, v69_3_ = v69_1_(v69_2_)
    for v69_4_, v69_5_ in v69_1_, v69_2_, v69_3_ do
        local v69_6_ = {}
        local v69_7_ = pairs
        local v69_7_, v69_8_, v69_9_ = v69_7_(v69_4_:GetDescendants())
        for v69_10_, v69_11_ in v69_7_, v69_8_, v69_9_ do
            local v69_14_ = "TextButton"
            local v69_12_ = v69_11_:IsA(v69_14_)
            if not v69_12_ then
                v69_14_ = "ImageButton"
                v69_12_ = v69_11_:IsA(v69_14_)
                if v69_12_ then
                    v69_12_ = v69_11_.Active
                    if v69_12_ then
                        local v69_13_ = v69_6_
                        v69_14_ = v69_11_
                        local insert = table.insert
                        insert(v69_13_, v69_14_)
                    end
                end
            end
            v69_12_ = v69_11_.Active
            if v69_12_ then
                local v69_13_ = v69_6_
                v69_14_ = v69_11_
                local insert = table.insert
                insert(v69_13_, v69_14_)
            end
        end
        v69_7_ = a1.toggleItems
    end
end
v0_18_._updateSelectionInstances = v0_26_
v0_26_ = function(a1, a2, a3, a4)
    local v70_4_ = pairs
    local v70_5_ = a1.toggleItems
    local v70_4_, v70_5_, v70_6_ = v70_4_(v70_5_)
    for v70_7_, v70_8_ in v70_4_, v70_5_, v70_6_ do
        if a4 then
            if a4 ~= a1 then
                local v70_10_ = a4.toggleItems
                local v70_9_ = v70_10_[v70_7_]
                if v70_9_ == nil then
                    v70_9_ = "Visible"
                    local v70_12_ = "LayerCollector"
                    v70_10_ = v70_7_:IsA(v70_12_)
                    if v70_10_ then
                        v70_9_ = "Enabled"
                    end
                    v70_7_[v70_9_] = a2
                end
            end
        end
        local v70_9_ = "Visible"
        local v70_12_ = "LayerCollector"
        local v70_10_ = v70_7_:IsA(v70_12_)
        if v70_10_ then
            v70_9_ = "Enabled"
        end
    end
end
v0_18_._setToggleItemsVisible = v0_26_
v0_26_ = function(a1, a2, a3)
    local v71_3_ = a1[a2]
    local v71_5_ = v71_3_
    if v71_5_ then
        v71_5_ = false
        local v71_7_ = v71_3_
        local v71_6_ = typeof
        v71_6_ = v71_6_(v71_7_)
        if v71_6_ == "table" then
            v71_5_ = v71_3_.Connect
        end
    end
    local v71_6_ = "argument[1] must be a valid topbarplus icon event name!"
    local v71_4_ = assert
    v71_4_(v71_5_, v71_6_)
    local v71_7_ = a3
    v71_6_ = typeof
    v71_6_ = v71_6_(v71_7_)
    if v71_6_ ~= "function" then
        v71_5_ = false
    end
    v71_5_ = true
    v71_6_ = "argument[2] must be a function!"
    v71_4_ = assert
    v71_4_(v71_5_, v71_6_)
    v71_4_ = a1.bindedEvents
    v71_7_ = function(...)
        local v72_0_ = a3
        local v72_1_ = a1
        v72_0_(...)
    end
    v71_5_ = v71_3_:Connect(v71_7_)
    v71_4_[a2] = v71_5_
    return a1
end
v0_18_.bindEvent = v0_26_
v0_26_ = function(a1, a2)
    local v73_3_ = a1.bindedEvents
    local v73_2_ = v73_3_[a2]
    if v73_2_ then
        v73_2_:Disconnect()
        v73_3_ = a1.bindedEvents
        local v73_4_ = nil
        v73_3_[a2] = v73_4_
    end
    return a1
end
v0_18_.unbindEvent = v0_26_
v0_26_ = function(a1, a2)
    local v74_5_ = a2
    local v74_4_ = typeof
    v74_4_ = v74_4_(v74_5_)
    if v74_4_ ~= "EnumItem" then
        local v74_3_ = false
    end
    local v74_3_ = true
    v74_4_ = "argument[1] must be a KeyCode EnumItem!"
    local v74_2_ = assert
    v74_2_(v74_3_, v74_4_)
    v74_2_ = a1.bindedToggleKeys
    v74_3_ = true
    v74_2_[a2] = v74_3_
    v74_2_ = a1.toggleKeyAdded
    v74_4_ = a2
    v74_2_:Fire(v74_4_)
    v74_4_ = "_hotkey_"
    a1:setCaption(v74_4_)
    return a1
end
v0_18_.bindToggleKey = v0_26_
v0_26_ = function(a1, a2)
    local v75_5_ = a2
    local v75_4_ = typeof
    v75_4_ = v75_4_(v75_5_)
    if v75_4_ ~= "EnumItem" then
        local v75_3_ = false
    end
    local v75_3_ = true
    v75_4_ = "argument[1] must be a KeyCode EnumItem!"
    local v75_2_ = assert
    v75_2_(v75_3_, v75_4_)
    v75_2_ = a1.bindedToggleKeys
    v75_3_ = nil
    v75_2_[a2] = v75_3_
    return a1
end
v0_18_.unbindToggleKey = v0_26_
v0_26_ = function(a1, a2, ...)
    local pack = table.pack
    local v76_2_ = pack(...)
    local spawn = task.spawn
    local v76_4_ = function()
        local v77_0_ = a2
        local v77_1_ = a1
        local v77_3_ = v76_2_
        local unpack = table.unpack
        v77_0_(unpack(v77_3_))
    end
    spawn(v76_4_)
    return a1
end
v0_18_.call = v0_26_
v0_26_ = function(a1, a2)
    local v78_2_ = a1.janitor
    local v78_4_ = a2
    v78_2_:add(v78_4_)
    return a1
end
v0_18_.addToJanitor = v0_26_
v0_26_ = function(a1)
    local v79_3_ = "ClickRegion"
    local v79_1_ = a1:getInstance(v79_3_)
    local v79_2_ = false
    v79_1_.Visible = v79_2_
    v79_2_ = true
    a1.locked = v79_2_
    return a1
end
v0_18_.lock = v0_26_
v0_26_ = function(a1)
    local v80_3_ = "ClickRegion"
    local v80_1_ = a1:getInstance(v80_3_)
    local v80_2_ = true
    v80_1_.Visible = v80_2_
    v80_2_ = false
    a1.locked = v80_2_
    return a1
end
v0_18_.unlock = v0_26_
v0_26_ = function(a1, a2)
    a1:lock()
    local wait = task.wait
    local v81_3_ = a2
    wait(v81_3_)
    a1:unlock()
    return a1
end
v0_18_.debounce = v0_26_
v0_26_ = function(a1, a2)
    if a2 == nil then
        v82_1_ = true
    end
    a1.deselectWhenOtherIconSelected = a2
    return a1
end
v0_18_.autoDeselect = v0_26_
v0_26_ = function(a1, a2)
    local v83_2_ = a1.singleClickJanitor
    v83_2_:clean()
    if not a2 then
        if a2 == nil then
            local v83_5_ = a1.selected
            local v83_7_ = function()
                local v84_0_ = a1
                local v84_2_ = "OneClick"
                local v84_3_ = a1
                v84_0_:deselect(v84_2_, v84_3_)
            end
            v83_2_:add(v83_5_:Connect(v83_7_))
        end
    end
    local v83_5_ = a1.selected
    local v83_7_ = function()
        local v85_0_ = a1
        local v85_2_ = "OneClick"
        local v85_3_ = a1
        v85_0_:deselect(v85_2_, v85_3_)
    end
    v83_2_:add(v83_5_:Connect(v83_7_))
    local v83_3_ = true
    a1.oneClickEnabled = v83_3_
    return a1
end
v0_18_.oneClick = v0_26_
v0_26_ = function(a1, a2)
    if a2 == "_hotkey_" then
        local v86_2_ = a1.captionText
        if v86_2_ then
            return a1
        end
    end
    local v86_2_ = a1.captionJanitor
    local v86_3_ = a1.captionJanitor
    v86_3_:clean()
    if a2 then
        if a2 == "" then
            v86_3_ = nil
            a1.caption = v86_3_
            v86_3_ = nil
            a1.captionText = v86_3_
            return a1
        end
    end
    v86_3_ = nil
    a1.caption = v86_3_
    v86_3_ = nil
    a1.captionText = v86_3_
    return a1
end
v0_18_.setCaption = v0_26_
v0_26_ = function(a1, a2)
    local v87_5_ = a2
    local v87_4_ = typeof
    v87_4_ = v87_4_(v87_5_)
    if v87_4_ ~= "EnumItem" then
        local v87_3_ = false
    end
    local v87_3_ = true
    v87_4_ = "argument[1] must be a KeyCode EnumItem!"
    local v87_2_ = assert
    v87_2_(v87_3_, v87_4_)
    a1.fakeToggleKey = a2
    v87_2_ = a1.fakeToggleKeyChanged
    v87_4_ = a2
    v87_2_:Fire(v87_4_)
    v87_4_ = "_hotkey_"
    a1:setCaption(v87_4_)
    return a1
end
v0_18_.setCaptionHint = v0_26_
v0_26_ = function(a1)
    local v88_1_ = a1.joinJanitor
    v88_1_:clean()
    return a1
end
v0_18_.leave = v0_26_
v0_26_ = function(a1, a2)
    local v89_3_ = v0_13_
    local v89_2_ = v89_3_.joinFeature
    v89_3_ = a1
    local v89_4_ = a2
    local v89_5_ = a2.menuIcons
    local v89_8_ = "Menu"
    v89_2_(a2:getInstance(v89_8_))
    v89_2_ = a2.menuChildAdded
    v89_4_ = a1
    v89_2_:Fire(v89_4_)
    return a1
end
v0_18_.joinMenu = v0_26_
v0_26_ = function(a1, a2)
    local v90_2_ = a1.menuSet
    local v90_4_ = a2
    v90_2_:Fire(v90_4_)
    return a1
end
v0_18_.setMenu = v0_26_
v0_26_ = function(a1, a2)
    local v91_4_ = a2
    a1:freezeMenu(v91_4_)
    v91_4_ = a2
    a1:setMenu(v91_4_)
end
v0_18_.setFrozenMenu = v0_26_
v0_26_ = function(a1)
    local v92_3_ = "FrozenMenu"
    local v92_4_ = a1
    a1:select(v92_3_, v92_4_)
    v92_3_ = "deselected"
    v92_4_ = function(a1)
        local v93_3_ = "FrozenMenu"
        local v93_4_ = a1
        a1:select(v93_3_, v93_4_)
    end
    a1:bindEvent(v92_3_, v92_4_)
    v92_3_ = table.create(3)
    v92_4_ = "IconSpot"
    local v92_5_ = "Visible"
    local v92_6_ = false
    v92_3_[1] = v92_4_
    v92_3_[2] = v92_5_
    v92_3_[3] = v92_6_
    a1:modifyTheme(v92_3_)
end
v0_18_.freezeMenu = v0_26_
v0_26_ = function(a1, a2)
    a2:getDropdown()
    local v94_3_ = v0_13_
    local v94_2_ = v94_3_.joinFeature
    v94_3_ = a1
    local v94_4_ = a2
    local v94_5_ = a2.dropdownIcons
    local v94_8_ = "DropdownScroller"
    v94_2_(a2:getInstance(v94_8_))
    v94_2_ = a2.dropdownChildAdded
    v94_4_ = a1
    v94_2_:Fire(v94_4_)
    return a1
end
v0_18_.joinDropdown = v0_26_
v0_26_ = function(a1)
    local v95_1_ = a1.dropdown
    if not v95_1_ then
        local v95_2_ = require
        local v95_4_ = v0_24_
        local v95_3_ = v95_4_.Dropdown
        v95_2_ = v95_2_(v95_3_)
        v95_3_ = a1
        v95_2_ = v95_2_(v95_3_)
        v95_1_ = v95_2_
        a1.dropdown = v95_1_
        v95_4_ = v95_1_
        a1:clipOutside(v95_4_)
    end
    return v95_1_
end
v0_18_.getDropdown = v0_26_
v0_26_ = function(a1, a2)
    a1:getDropdown()
    local v96_2_ = a1.dropdownSet
    local v96_4_ = a2
    v96_2_:Fire(v96_4_)
    return a1
end
v0_18_.setDropdown = v0_26_
v0_26_ = function(a1, a2)
    local v97_3_ = v0_13_
    local v97_2_ = v97_3_.clipOutside
    v97_3_ = a1
    local v97_4_ = a2
    v97_2_ = v97_2_(v97_3_, v97_4_)
    local v97_5_ = a2
    a1:refreshAppearance(v97_5_)
    v97_3_ = a1
    v97_4_ = v97_2_
    return v97_3_, v97_4_
end
v0_18_.clipOutside = v0_26_
v0_26_ = function(a1, a2)
    local v98_2_ = a1.indicator
    if not v98_2_ then
        local v98_3_ = a1.janitor
        local v98_5_ = require
        local v98_7_ = v0_24_
        local v98_6_ = v98_7_.Indicator
        v98_5_ = v98_5_(v98_6_)
        v98_6_ = a1
        v98_7_ = v0_18_
        v98_3_ = v98_3_:add(v98_5_(v98_6_, v98_7_))
        v98_2_ = v98_3_
        a1.indicator = v98_2_
    end
    local v98_3_ = a1.indicatorSet
    local v98_5_ = a2
    v98_3_:Fire(v98_5_)
end
v0_18_.setIndicator = v0_26_
v0_26_ = function(a1)
    local v99_1_ = a1.isDestroyed
    if v99_1_ then
        return
    end
    a1:clearNotices()
    v99_1_ = a1.parentIconUID
    if v99_1_ then
        a1:leave()
    end
    v99_1_ = true
    a1.isDestroyed = v99_1_
    v99_1_ = a1.janitor
    v99_1_:clean()
    local v99_2_ = v0_18_
    v99_1_ = v99_2_.iconRemoved
    local v99_3_ = a1
    v99_1_:Fire(v99_3_)
end
v0_18_.destroy = v0_26_
v0_26_ = v0_18_.destroy
v0_18_.Destroy = v0_26_
return v0_18_
