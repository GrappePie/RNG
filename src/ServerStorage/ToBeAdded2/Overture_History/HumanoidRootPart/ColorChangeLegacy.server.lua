-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local wait = task.wait
local v0_1_ = 1
wait(v0_1_)
local v0_0_ = function(a1, a2)
    local v1_2_ = ipairs
    local v1_3_ = a1
    local v1_2_, v1_3_, v1_4_ = v1_2_(v1_3_)
    for v1_5_, v1_6_ in v1_2_, v1_3_, v1_4_ do
        local v1_9_ = "ParticleEmitter"
        local v1_7_ = v1_6_:IsA(v1_9_)
        if not v1_7_ then
            v1_9_ = "Trail"
            v1_7_ = v1_6_:IsA(v1_9_)
            if not v1_7_ then
                v1_9_ = "Beam"
                v1_7_ = v1_6_:IsA(v1_9_)
                if v1_7_ then
                    v1_7_ = v1_6_.Brightness
                    if v1_7_ ~= 0.000000 then
                        v1_7_ = v1_6_.LightEmission
                        if v1_7_ ~= 0.000000 then
                            local new = ColorSequence.new
                            local v1_8_ = a2
                            v1_7_ = new(v1_8_)
                            v1_6_.Color = v1_7_
                            v1_9_ = "MeshPart"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_9_ = "canChangeColor"
                                v1_7_ = v1_6_:FindFirstChild(v1_9_)
                                if v1_7_ then
                                    v1_6_.Color = a2
                                else
                                    v1_9_ = "TextLabel"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_9_ = "canChangeColor"
                                        v1_7_ = v1_6_:FindFirstChild(v1_9_)
                                        if v1_7_ then
                                            v1_6_.TextColor3 = a2
                                        else
                                            v1_9_ = "PointLight"
                                            v1_7_ = v1_6_:IsA(v1_9_)
                                            if v1_7_ then
                                                v1_6_.Color = a2
                                            else
                                                v1_9_ = "Highlight"
                                                v1_7_ = v1_6_:IsA(v1_9_)
                                                if v1_7_ then
                                                    v1_6_.OutlineColor = a2
                                                    v1_6_.FillColor = a2
                                                else
                                                    v1_9_ = "UIStroke"
                                                    v1_7_ = v1_6_:IsA(v1_9_)
                                                    if v1_7_ then
                                                        v1_6_.Color = a2
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        v1_9_ = "PointLight"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.Color = a2
                                        else
                                            v1_9_ = "Highlight"
                                            v1_7_ = v1_6_:IsA(v1_9_)
                                            if v1_7_ then
                                                v1_6_.OutlineColor = a2
                                                v1_6_.FillColor = a2
                                            else
                                                v1_9_ = "UIStroke"
                                                v1_7_ = v1_6_:IsA(v1_9_)
                                                if v1_7_ then
                                                    v1_6_.Color = a2
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                v1_9_ = "TextLabel"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_9_ = "canChangeColor"
                                    v1_7_ = v1_6_:FindFirstChild(v1_9_)
                                    if v1_7_ then
                                        v1_6_.TextColor3 = a2
                                    else
                                        v1_9_ = "PointLight"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.Color = a2
                                        else
                                            v1_9_ = "Highlight"
                                            v1_7_ = v1_6_:IsA(v1_9_)
                                            if v1_7_ then
                                                v1_6_.OutlineColor = a2
                                                v1_6_.FillColor = a2
                                            else
                                                v1_9_ = "UIStroke"
                                                v1_7_ = v1_6_:IsA(v1_9_)
                                                if v1_7_ then
                                                    v1_6_.Color = a2
                                                end
                                            end
                                        end
                                    end
                                else
                                    v1_9_ = "PointLight"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.Color = a2
                                    else
                                        v1_9_ = "Highlight"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.OutlineColor = a2
                                            v1_6_.FillColor = a2
                                        else
                                            v1_9_ = "UIStroke"
                                            v1_7_ = v1_6_:IsA(v1_9_)
                                            if v1_7_ then
                                                v1_6_.Color = a2
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    v1_9_ = "MeshPart"
                    v1_7_ = v1_6_:IsA(v1_9_)
                    if v1_7_ then
                        v1_9_ = "canChangeColor"
                        v1_7_ = v1_6_:FindFirstChild(v1_9_)
                        if v1_7_ then
                            v1_6_.Color = a2
                        else
                            v1_9_ = "TextLabel"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_9_ = "canChangeColor"
                                v1_7_ = v1_6_:FindFirstChild(v1_9_)
                                if v1_7_ then
                                    v1_6_.TextColor3 = a2
                                else
                                    v1_9_ = "PointLight"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.Color = a2
                                    else
                                        v1_9_ = "Highlight"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.OutlineColor = a2
                                            v1_6_.FillColor = a2
                                        else
                                            v1_9_ = "UIStroke"
                                            v1_7_ = v1_6_:IsA(v1_9_)
                                            if v1_7_ then
                                                v1_6_.Color = a2
                                            end
                                        end
                                    end
                                end
                            else
                                v1_9_ = "PointLight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.Color = a2
                                else
                                    v1_9_ = "Highlight"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.OutlineColor = a2
                                        v1_6_.FillColor = a2
                                    else
                                        v1_9_ = "UIStroke"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.Color = a2
                                        end
                                    end
                                end
                            end
                        end
                    else
                        v1_9_ = "TextLabel"
                        v1_7_ = v1_6_:IsA(v1_9_)
                        if v1_7_ then
                            v1_9_ = "canChangeColor"
                            v1_7_ = v1_6_:FindFirstChild(v1_9_)
                            if v1_7_ then
                                v1_6_.TextColor3 = a2
                            else
                                v1_9_ = "PointLight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.Color = a2
                                else
                                    v1_9_ = "Highlight"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.OutlineColor = a2
                                        v1_6_.FillColor = a2
                                    else
                                        v1_9_ = "UIStroke"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.Color = a2
                                        end
                                    end
                                end
                            end
                        else
                            v1_9_ = "PointLight"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_6_.Color = a2
                            else
                                v1_9_ = "Highlight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.OutlineColor = a2
                                    v1_6_.FillColor = a2
                                else
                                    v1_9_ = "UIStroke"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.Color = a2
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        v1_7_ = v1_6_.Brightness
        if v1_7_ ~= 0.000000 then
            v1_7_ = v1_6_.LightEmission
            if v1_7_ ~= 0.000000 then
                local new = ColorSequence.new
                local v1_8_ = a2
                v1_7_ = new(v1_8_)
                v1_6_.Color = v1_7_
                v1_9_ = "MeshPart"
                v1_7_ = v1_6_:IsA(v1_9_)
                if v1_7_ then
                    v1_9_ = "canChangeColor"
                    v1_7_ = v1_6_:FindFirstChild(v1_9_)
                    if v1_7_ then
                        v1_6_.Color = a2
                    else
                        v1_9_ = "TextLabel"
                        v1_7_ = v1_6_:IsA(v1_9_)
                        if v1_7_ then
                            v1_9_ = "canChangeColor"
                            v1_7_ = v1_6_:FindFirstChild(v1_9_)
                            if v1_7_ then
                                v1_6_.TextColor3 = a2
                            else
                                v1_9_ = "PointLight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.Color = a2
                                else
                                    v1_9_ = "Highlight"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.OutlineColor = a2
                                        v1_6_.FillColor = a2
                                    else
                                        v1_9_ = "UIStroke"
                                        v1_7_ = v1_6_:IsA(v1_9_)
                                        if v1_7_ then
                                            v1_6_.Color = a2
                                        end
                                    end
                                end
                            end
                        else
                            v1_9_ = "PointLight"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_6_.Color = a2
                            else
                                v1_9_ = "Highlight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.OutlineColor = a2
                                    v1_6_.FillColor = a2
                                else
                                    v1_9_ = "UIStroke"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.Color = a2
                                    end
                                end
                            end
                        end
                    end
                else
                    v1_9_ = "TextLabel"
                    v1_7_ = v1_6_:IsA(v1_9_)
                    if v1_7_ then
                        v1_9_ = "canChangeColor"
                        v1_7_ = v1_6_:FindFirstChild(v1_9_)
                        if v1_7_ then
                            v1_6_.TextColor3 = a2
                        else
                            v1_9_ = "PointLight"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_6_.Color = a2
                            else
                                v1_9_ = "Highlight"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.OutlineColor = a2
                                    v1_6_.FillColor = a2
                                else
                                    v1_9_ = "UIStroke"
                                    v1_7_ = v1_6_:IsA(v1_9_)
                                    if v1_7_ then
                                        v1_6_.Color = a2
                                    end
                                end
                            end
                        end
                    else
                        v1_9_ = "PointLight"
                        v1_7_ = v1_6_:IsA(v1_9_)
                        if v1_7_ then
                            v1_6_.Color = a2
                        else
                            v1_9_ = "Highlight"
                            v1_7_ = v1_6_:IsA(v1_9_)
                            if v1_7_ then
                                v1_6_.OutlineColor = a2
                                v1_6_.FillColor = a2
                            else
                                v1_9_ = "UIStroke"
                                v1_7_ = v1_6_:IsA(v1_9_)
                                if v1_7_ then
                                    v1_6_.Color = a2
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
v0_1_ = {}
local wait = task.wait
local v0_3_ = 0.400000
wait(v0_3_)
local v0_2_ = game
v0_2_ = v0_2_:IsLoaded()
while not v0_2_ do
end
local v0_4_ = 1
v0_2_ = 5
v0_3_ = 1
for v0_4_ = v0_4_, v0_2_, v0_3_ do
    local v0_5_ = ipairs
    local v0_8_ = script
    local v0_7_ = v0_8_.Parent
    local v0_6_ = v0_7_.Parent
    v0_5_, v0_6_, v0_7_ = v0_5_(v0_6_:GetDescendants())
    for v0_8_, v0_9_ in v0_5_, v0_6_, v0_7_ do
        local v0_12_ = "ParticleEmitter"
        local v0_10_ = v0_9_:IsA(v0_12_)
        if not v0_10_ then
            v0_12_ = "Trail"
            v0_10_ = v0_9_:IsA(v0_12_)
            if not v0_10_ then
                v0_12_ = "Beam"
                v0_10_ = v0_9_:IsA(v0_12_)
                if not v0_10_ then
                    v0_12_ = "MeshPart"
                    v0_10_ = v0_9_:IsA(v0_12_)
                    if not v0_10_ then
                        v0_12_ = "TextLabel"
                        v0_10_ = v0_9_:IsA(v0_12_)
                        if not v0_10_ then
                            v0_12_ = "PointLight"
                            v0_10_ = v0_9_:IsA(v0_12_)
                            if not v0_10_ then
                                v0_12_ = "Highlight"
                                v0_10_ = v0_9_:IsA(v0_12_)
                                if not v0_10_ then
                                    v0_12_ = "UIStroke"
                                    v0_10_ = v0_9_:IsA(v0_12_)
                                    if v0_10_ then
                                        local v0_11_ = v0_1_
                                        v0_12_ = v0_9_
                                        local insert = table.insert
                                        insert(v0_11_, v0_12_)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        local v0_11_ = v0_1_
        v0_12_ = v0_9_
        local insert = table.insert
        insert(v0_11_, v0_12_)
    end
    local wait = task.wait
    v0_6_ = 0.350000
    wait(v0_6_)
end
v0_2_ = false
local v0_6_ = script
local v0_5_ = v0_6_.Parent
v0_4_ = v0_5_.MainColor
v0_3_ = v0_4_.Value
v0_4_ = v0_0_
v0_5_ = v0_1_
v0_6_ = v0_3_
v0_4_(v0_5_, v0_6_)
v0_6_ = game
v0_5_ = v0_6_["Run Service"]
v0_4_ = v0_5_.Heartbeat
v0_6_ = function()
    local v2_0_ = v0_2_
    if v2_0_ == false then
        v2_0_ = true
        v0_2_ = v2_0_
        v2_0_ = spawn
        local v2_1_ = function()
            local wait = task.wait
            local v3_1_ = 0.500000
            wait(v3_1_)
            local v3_0_ = false
            v0_2_ = v3_0_
        end
        v2_0_(v2_1_)
        local v2_3_ = script
        local v2_2_ = v2_3_.Parent
        v2_1_ = v2_2_.MainColor
        v2_0_ = v2_1_.Value
        v2_1_ = v0_0_
        v2_2_ = v0_1_
        v2_3_ = v2_0_
        v2_1_(v2_2_, v2_3_)
    end
end
v0_4_:Connect(v0_6_)
