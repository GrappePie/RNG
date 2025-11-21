-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1)
    local new = Instance.new
    local v1_2_ = "Frame"
    local v1_1_ = new(v1_2_)
    v1_2_ = "SelectionContainer"
    v1_1_.Name = v1_2_
    v1_2_ = false
    v1_1_.Visible = v1_2_
    local new = Instance.new
    local v1_3_ = "Frame"
    v1_2_ = new(v1_3_)
    v1_3_ = "Selection"
    v1_2_.Name = v1_3_
    local fromRGB = Color3.fromRGB
    local v1_4_ = 255
    local v1_5_ = 255
    local v1_6_ = 255
    v1_3_ = fromRGB(v1_4_, v1_5_, v1_6_)
    v1_2_.BackgroundColor3 = v1_3_
    v1_3_ = 1
    v1_2_.BackgroundTransparency = v1_3_
    local fromRGB = Color3.fromRGB
    v1_4_ = 0
    v1_5_ = 0
    v1_6_ = 0
    v1_3_ = fromRGB(v1_4_, v1_5_, v1_6_)
    v1_2_.BorderColor3 = v1_3_
    v1_3_ = 0
    v1_2_.BorderSizePixel = v1_3_
    v1_2_.Parent = v1_1_
    local new = Instance.new
    v1_4_ = "UIStroke"
    v1_3_ = new(v1_4_)
    v1_4_ = "UIStroke"
    v1_3_.Name = v1_4_
    local Border = Enum.ApplyStrokeMode.Border
    v1_3_.ApplyStrokeMode = Border
    local fromRGB = Color3.fromRGB
    v1_5_ = 255
    v1_6_ = 255
    local v1_7_ = 255
    v1_4_ = fromRGB(v1_5_, v1_6_, v1_7_)
    v1_3_.Color = v1_4_
    v1_4_ = 3
    v1_3_.Thickness = v1_4_
    v1_3_.Parent = v1_2_
    local new = Instance.new
    v1_5_ = "UIGradient"
    v1_4_ = new(v1_5_)
    v1_5_ = "SelectionGradient"
    v1_4_.Name = v1_5_
    v1_4_.Parent = v1_3_
    local new = Instance.new
    v1_6_ = "UICorner"
    v1_5_ = new(v1_6_)
    local v1_8_ = "Collective"
    local v1_9_ = "IconCorners"
    v1_5_:SetAttribute(v1_8_, v1_9_)
    v1_6_ = "UICorner"
    v1_5_.Name = v1_6_
    local new = UDim.new
    v1_7_ = 1
    v1_8_ = 0
    v1_6_ = new(v1_7_, v1_8_)
    v1_5_.CornerRadius = v1_6_
    v1_5_.Parent = v1_2_
    v1_6_ = game
    v1_8_ = "RunService"
    v1_6_ = v1_6_:GetService(v1_8_)
    v1_7_ = game
    v1_9_ = "GuiService"
    v1_7_ = v1_7_:GetService(v1_9_)
    v1_8_ = 1
    local v1_11_ = "RotationSpeed"
    v1_9_ = v1_2_:GetAttributeChangedSignal(v1_11_)
    v1_11_ = function()
        local v2_0_ = v1_2_
        local v2_2_ = "RotationSpeed"
        v2_0_ = v2_0_:GetAttribute(v2_2_)
        v1_8_ = v2_0_
    end
    v1_9_:Connect(v1_11_)
    v1_9_ = v1_6_.Heartbeat
    v1_11_ = function()
        local v3_1_ = v1_7_
        local v3_0_ = v3_1_.SelectedObject
        if not v3_0_ then
            return
        end
        v3_0_ = v1_4_
        local clock = os.clock
        local v3_4_ = clock()
        local v3_5_ = v1_8_
        local v3_3_ = v3_4_ * v3_5_
        local v3_2_ = v3_3_ * 100.000000
        v3_1_ = v3_2_ % 360.000000
        v3_0_.Rotation = v3_1_
    end
    v1_9_:Connect(v1_11_)
    return v1_1_
end
return v0_0_
