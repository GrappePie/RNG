-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "MarketplaceService"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = "Modules"
v0_2_ = v0_0_:WaitForChild(v0_4_)
v0_3_ = require
local v0_6_ = "Utility"
v0_3_ = v0_3_(v0_2_:WaitForChild(v0_6_))
v0_4_ = require
local v0_7_ = "Queue"
v0_4_ = v0_4_(v0_2_:WaitForChild(v0_7_))
v0_6_ = v0_4_.RateQueue
local v0_5_ = v0_6_.new
v0_6_ = 100
v0_7_ = "MarketGetInfo"
v0_5_ = v0_5_(v0_6_, v0_7_)
v0_7_ = v0_4_.Process
v0_6_ = v0_7_.new
local v0_9_ = "UI"
v0_7_ = v0_2_:WaitForChild(v0_9_)
local v0_10_ = "Components"
local v0_8_ = v0_7_:WaitForChild(v0_10_)
v0_9_ = require
local v0_12_ = "Quad"
v0_9_ = v0_9_(v0_7_:WaitForChild(v0_12_))
v0_10_ = v0_9_.Lang
local v0_11_ = v0_9_.Round
v0_12_ = v0_9_.Class
local v0_13_ = v0_9_.Mount
local v0_14_ = v0_9_.Store
local v0_15_ = v0_9_.Event
local v0_16_ = v0_9_.Tween
local v0_17_ = v0_9_.Signal
local v0_18_ = v0_12_
local v0_19_ = "TextLabel"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_12_
local v0_20_ = "CanvasGroup"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_12_
local v0_21_ = "UIGradient"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_12_
local v0_22_ = "ImageLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_12_
local v0_23_ = "ViewportFrame"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_12_
local v0_26_ = "TextButton"
v0_23_ = v0_23_(v0_8_:WaitForChild(v0_26_))
local v0_24_ = v0_12_
local v0_27_ = "Corner"
v0_24_ = v0_24_(v0_8_:WaitForChild(v0_27_))
local v0_25_ = v0_12_
local v0_28_ = "Shadow"
v0_25_ = v0_25_(v0_8_:WaitForChild(v0_28_))
v0_26_ = v0_12_.Extend
v0_26_ = v0_26_()
local new = Color3.new
v0_28_ = 1
local v0_29_ = 1
local v0_30_ = 1
v0_27_ = new(v0_28_, v0_29_, v0_30_)
v0_18_.TextColor3 = v0_27_
v0_27_ = v0_9_.FontBold
v0_18_.FontFace = v0_27_
v0_27_ = 0
v0_18_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_18_.BackgroundColor3 = v0_27_
local new = Color3.new
v0_27_ = new()
v0_19_.BackgroundColor3 = v0_27_
v0_27_ = 0
v0_19_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_21_.BackgroundColor3 = v0_27_
v0_27_ = 0
v0_21_.BorderSizePixel = v0_27_
v0_27_ = function(a1)
    local v1_1_ = nil
    local v1_2_ = v0_5_
    local v1_5_ = v0_1_
    local v1_4_ = v1_5_.GetProductInfo
    v1_5_ = v0_1_
    local v1_6_ = a1
    local Asset = Enum.InfoType.Asset
    v1_2_ = v1_2_:insert(v1_4_, v1_5_, v1_6_, Asset)
    v1_1_ = v1_2_
    v1_1_:await()
    v1_2_ = v1_1_:hasError()
    while v1_2_ do
    end
    return v1_1_:getResults()
end
v0_28_ = function(a1, a2)
    local v2_4_ = "Id"
    local v2_5_ = 0
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Callback"
    v2_5_ = function()
    end
    a2:Default(v2_4_, v2_5_)
end
v0_26_.Init = v0_28_
v0_28_ = function(a1, a2)
    local v4_2_ = v0_23_
    local v4_3_ = table.create(2)
    local fromRGB = Color3.fromRGB
    local v4_7_ = 66
    local v4_8_ = 66
    local v4_9_ = 66
    local v4_6_ = fromRGB(v4_7_, v4_8_, v4_9_)
    v4_3_.BackgroundColor3 = v4_6_
    v4_6_ = ""
    v4_3_.Text = v4_6_
    v4_6_ = 1
    v4_3_.HoverScale = v4_6_
    local new = ColorSequence.new
    local new_0 = Color3.new
    v4_8_ = 1
    v4_9_ = 1
    local v4_10_ = 1
    v4_7_ = new_0(v4_8_, v4_9_, v4_10_)
    local fromRGB = Color3.fromRGB
    v4_9_ = 200
    v4_10_ = 200
    local v4_11_ = 200
    v4_6_ = new(fromRGB(v4_9_, v4_10_, v4_11_))
    v4_3_.GlobalColor3 = v4_6_
    v4_6_ = 0.100000
    v4_3_.CornerSize = v4_6_
    local v4_4_ = v0_21_
    local v4_5_ = table.create(1)
    local fromScale = UDim2.fromScale
    v4_8_ = 1
    v4_9_ = 1
    v4_7_ = fromScale(v4_8_, v4_9_)
    v4_5_.Size = v4_7_
    v4_7_ = 1
    v4_5_.BackgroundTransparency = v4_7_
    v4_6_ = a1
    v4_7_ = "_Preview"
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_5_ = {v4_6_, v4_6_(v4_7_)}
    v4_4_ = v4_4_(v4_5_)
    v4_5_ = v0_18_
    v4_6_ = table.create(1)
    local new = Vector2.new
    v4_9_ = 0.500000
    v4_10_ = 0.500000
    v4_8_ = new(v4_9_, v4_10_)
    v4_6_.AnchorPoint = v4_8_
    v4_8_ = 1
    v4_6_.BackgroundTransparency = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.500000
    v4_10_ = 0.850000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_6_.Position = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.800000
    v4_10_ = 0.250000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_6_.Size = v4_8_
    v4_8_ = 3
    v4_6_.ZIndex = v4_8_
    v4_8_ = true
    v4_6_.TextScaled = v4_8_
    v4_7_ = a1
    v4_8_ = "_ItemName"
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_6_ = {v4_7_, v4_7_(v4_8_)}
    v4_5_ = v4_5_(v4_6_)
    v4_3_[1] = v4_4_
    v4_3_[2] = v4_5_
    v4_6_ = function()
        local v5_1_ = a2
        local v5_0_ = v5_1_.Callback
        if v5_0_ then
            v5_1_ = a2
            v5_0_ = v5_1_.Callback
            local v5_2_ = a1
            v5_1_ = v5_2_._ProductData
            v5_0_(v5_1_)
        end
    end
    v4_3_.Callback = v4_6_
    v4_7_ = v0_15_
    v4_6_ = v4_7_.CreatedAsync
    v4_7_ = function()
        local v6_0_ = v0_6_
        local v6_1_ = v0_27_
        local v6_3_ = a2
        local v6_2_ = v6_3_.Id
        v6_0_ = v6_0_(v6_1_, v6_2_)
        v6_2_ = function(a1)
            local v7_2_ = a1
            local v7_1_ = v7_2_._ItemName
            v7_2_ = a1.Name
            v7_1_.Text = v7_2_
            v7_2_ = a1
            v7_1_ = v7_2_._Preview
            local v7_3_ = "rbxthumb://type=Asset&id=%*&w=420&h=420"
            local v7_6_ = a2
            local v7_5_ = v7_6_.Id
            v7_3_ = v7_3_:format(v7_5_)
            v7_2_ = v7_3_
            v7_1_.Image = v7_2_
            v7_1_ = a1
            v7_1_._ProductData = a1
        end
        v6_0_ = v6_0_:andThen(v6_2_)
        v6_0_:execute()
    end
    v4_3_[v4_6_] = v4_7_
    return v4_2_(v4_3_)
end
v0_26_.Render = v0_28_
v0_28_ = function(a1)
    local v8_1_ = a1._ProductData
    while not v8_1_ do
        local wait = task.wait
        local v8_2_ = 0.500000
        wait(v8_2_)
        v8_1_ = a1.ProductData
        while not v8_1_ do
        end
    end
    v8_1_ = a1._ProductData
    return v8_1_
end
v0_26_.GetInfo = v0_28_
return v0_26_
