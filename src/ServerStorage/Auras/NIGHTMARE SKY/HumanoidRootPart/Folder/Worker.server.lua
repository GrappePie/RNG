-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "RunService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = script
local v0_4_ = "Model"
v0_2_ = v0_2_:FindFirstAncestorOfClass(v0_4_)
local v0_5_ = "HumanoidRootPart"
v0_3_ = v0_2_:WaitForChild(v0_5_)
v0_5_ = script
v0_4_ = v0_5_.Parent
v0_5_ = function(a1)
    local v1_3_ = "Circle.023"
    local v1_1_ = a1:WaitForChild(v1_3_)
    local v1_4_ = "Weld"
    local v1_2_ = v1_1_:WaitForChild(v1_4_)
    v1_3_ = v1_2_.C1
    local v1_6_ = v0_3_
    local v1_5_ = v1_6_.CFrame
    v1_4_ = v1_5_ * v1_3_
    v1_2_:Destroy()
    v1_5_ = nil
    local v1_7_ = 50
    local random = math.random
    local v1_10_ = 1
    local v1_11_ = 2
    local v1_9_ = random(v1_10_, v1_11_)
    if v1_9_ == 1.000000 then
        local v1_8_ = -1
    else
        local v1_8_ = 1
    end
    v1_6_ = v1_7_ * nil
    local v1_8_ = v0_1_
    v1_7_ = v1_8_.RenderStepped
    v1_9_ = function(a1)
        local v2_2_ = a1
        local v2_1_ = v2_2_.Parent
        if not v2_1_ then
            v2_1_ = v1_5_
            v2_1_:Disconnect()
            return
        end
        local clock = os.clock
        v2_1_ = clock()
        local v2_3_ = 0.250000
        local v2_5_ = v2_1_
        local cos = math.cos
        local v2_4_ = cos(v2_5_)
        v2_2_ = v2_3_ * v2_4_
        v2_4_ = -1.250000
        local v2_6_ = v2_1_
        local sin = math.sin
        v2_5_ = sin(v2_6_)
        v2_3_ = v2_4_ * v2_5_
        v2_5_ = 0.250000
        local v2_7_ = v2_1_
        local sin = math.sin
        v2_6_ = sin(v2_7_)
        v2_4_ = v2_5_ * v2_6_
        v2_5_ = v1_4_
        local v2_9_ = v0_3_
        local v2_8_ = v2_9_.CFrame
        v2_9_ = v1_3_
        v2_7_ = v2_8_ * v2_9_
        v2_8_ = a1 * 10.000000
        v2_5_ = v2_5_:Lerp(v2_7_, v2_8_)
        v1_4_ = v2_2_
        v2_5_ = v1_1_
        local new = CFrame.new
        local v2_10_ = v1_4_
        v2_9_ = v2_10_.Position
        local v2_11_ = v2_2_
        local v2_12_ = v2_3_
        local v2_13_ = v2_4_
        local new_0 = Vector3.new
        v2_10_ = new_0(v2_11_, v2_12_, v2_13_)
        v2_8_ = v2_9_ + v2_10_
        v2_7_ = new(v2_8_)
        v2_9_ = v1_4_
        v2_8_ = v2_9_.Rotation
        v2_6_ = v2_7_ * v2_8_
        v2_5_.CFrame = v2_6_
    end
    v1_7_ = v1_7_:Connect(v1_9_)
    v1_5_ = v1_7_
end
local v0_6_ = function(a1)
    local v3_1_ = a1.PrimaryPart
    local v3_4_ = "Weld"
    local v3_2_ = v3_1_:WaitForChild(v3_4_)
    local v3_3_ = v3_2_.C1
    local v3_6_ = v0_3_
    local v3_5_ = v3_6_.CFrame
    v3_4_ = v3_5_ * v3_3_
    v3_2_:Destroy()
    v3_5_ = nil
    local v3_7_ = v0_1_
    v3_6_ = v3_7_.RenderStepped
    local v3_8_ = function(a1)
        local v4_1_ = v3_4_
        local v4_5_ = v0_3_
        local v4_4_ = v4_5_.CFrame
        v4_5_ = v3_3_
        local v4_3_ = v4_4_ * v4_5_
        v4_4_ = a1 * 5.000000
        v4_1_ = v4_1_:Lerp(v4_3_, v4_4_)
        v3_4_ = a1
        v4_1_ = v3_1_
        local v4_2_ = v3_4_
        v4_1_.CFrame = v4_2_
    end
    v3_6_ = v3_6_:Connect(v3_8_)
    v3_5_ = v3_6_
end
local v0_7_ = function(a1)
    local v5_3_ = "Union"
    local v5_1_ = a1:WaitForChild(v5_3_)
    local v5_4_ = "Weld"
    local v5_2_ = v5_1_:WaitForChild(v5_4_)
    v5_3_ = v5_2_.C1
    local v5_6_ = v0_3_
    local v5_5_ = v5_6_.CFrame
    v5_4_ = v5_5_ * v5_3_
    v5_6_ = a1.Name
    v5_5_ = tonumber
    v5_5_ = v5_5_(v5_6_)
    v5_2_:Destroy()
    v5_6_ = nil
    local v5_8_ = v0_1_
    local v5_7_ = v5_8_.RenderStepped
    local v5_9_ = function(a1)
        local v6_2_ = a1
        local v6_1_ = v6_2_.Parent
        if not v6_1_ then
            v6_1_ = v5_6_
            v6_1_:Disconnect()
            return
        end
        local clock = os.clock
        v6_1_ = clock()
        local v6_3_ = 0.250000
        local v6_5_ = v6_1_
        local cos = math.cos
        local v6_4_ = cos(v6_5_)
        v6_2_ = v6_3_ * v6_4_
        v6_4_ = v5_5_
        local v6_6_ = v6_1_
        local sin = math.sin
        v6_5_ = sin(v6_6_)
        v6_3_ = v6_4_ * v6_5_
        v6_5_ = 0.250000
        local v6_7_ = v6_1_
        local sin = math.sin
        v6_6_ = sin(v6_7_)
        v6_4_ = v6_5_ * v6_6_
        v6_7_ = v0_3_
        v6_6_ = v6_7_.CFrame
        v6_7_ = v5_3_
        v6_5_ = v6_6_ * v6_7_
        v5_4_ = v6_3_
        v6_5_ = v5_1_
        local new = CFrame.new
        local v6_11_ = v5_4_
        local v6_10_ = v6_11_.Position
        local v6_12_ = v6_2_
        local v6_13_ = v6_3_
        local v6_14_ = v6_4_
        local new_0 = Vector3.new
        v6_11_ = new_0(v6_12_, v6_13_, v6_14_)
        local v6_9_ = v6_10_ + v6_11_
        local v6_8_ = new(v6_9_)
        v6_10_ = v5_4_
        v6_9_ = v6_10_.Rotation
        v6_7_ = v6_8_ * v6_9_
        local Angles = CFrame.Angles
        v6_9_ = 0
        v6_10_ = 0
        v6_11_ = 3.141593
        v6_8_ = Angles(v6_9_, v6_10_, v6_11_)
        v6_6_ = v6_7_ * v6_8_
        v6_5_.CFrame = v6_6_
    end
    v5_7_ = v5_7_:Connect(v5_9_)
    v5_6_ = v5_7_
end
local v0_8_ = function(a1)
    local v7_3_ = "Weld"
    local v7_1_ = a1:WaitForChild(v7_3_)
    local v7_2_ = v7_1_.C1
    v7_3_ = v7_1_.C0
    v7_3_ = v7_3_:Inverse()
    local v7_6_ = v0_3_
    local v7_5_ = v7_6_.CFrame
    local v7_4_ = v7_5_ * v7_2_
    v7_6_ = a1.Name
    v7_5_ = tonumber
    v7_5_ = v7_5_(v7_6_)
    v7_1_:Destroy()
    v7_6_ = nil
    local v7_8_ = v0_1_
    local v7_7_ = v7_8_.RenderStepped
    local v7_9_ = function(a1)
        local v8_2_ = a1
        local v8_1_ = v8_2_.Parent
        if not v8_1_ then
            v8_1_ = v7_6_
            v8_1_:Disconnect()
            return
        end
        local clock = os.clock
        v8_1_ = clock()
        local v8_3_ = 0.250000
        local v8_5_ = v8_1_
        local cos = math.cos
        local v8_4_ = cos(v8_5_)
        v8_2_ = v8_3_ * v8_4_
        v8_4_ = v7_5_
        local v8_6_ = v8_1_
        local sin = math.sin
        v8_5_ = sin(v8_6_)
        v8_3_ = v8_4_ * v8_5_
        v8_5_ = 0.250000
        local v8_7_ = v8_1_
        local sin = math.sin
        v8_6_ = sin(v8_7_)
        v8_4_ = v8_5_ * v8_6_
        v8_5_ = v7_4_
        local v8_10_ = v0_3_
        local v8_9_ = v8_10_.CFrame
        v8_10_ = v7_2_
        local v8_8_ = v8_9_ * v8_10_
        v8_9_ = v7_3_
        v8_7_ = v8_8_ * v8_9_
        v8_8_ = a1 * 3.000000
        v8_5_ = v8_5_:Lerp(v8_7_, v8_8_)
        v7_4_ = v8_3_
        v8_5_ = a1
        local new = CFrame.new
        v8_10_ = v7_4_
        v8_9_ = v8_10_.Position
        local v8_11_ = v8_2_
        local v8_12_ = v8_3_
        local v8_13_ = v8_4_
        local new_0 = Vector3.new
        v8_10_ = new_0(v8_11_, v8_12_, v8_13_)
        v8_8_ = v8_9_ + v8_10_
        v8_7_ = new(v8_8_)
        v8_9_ = v7_4_
        v8_8_ = v8_9_.Rotation
        v8_6_ = v8_7_ * v8_8_
        v8_5_.CFrame = v8_6_
    end
    v7_7_ = v7_7_:Connect(v7_9_)
    v7_6_ = v7_7_
end
local wait = task.wait
local v0_11_ = v0_0_.LocalPlayer
v0_11_ = v0_11_:GetNetworkPing()
local v0_10_ = v0_11_ + 0.100000
wait(v0_10_)
v0_11_ = "Lanterns"
local v0_9_ = v0_4_:WaitForChild(v0_11_)
v0_9_, v0_10_, v0_11_ = v0_9_:GetChildren()
local v0_14_ = v0_5_
local v0_15_ = nil
v0_14_(v0_15_)
v0_11_ = "Castles"
v0_9_ = v0_4_:WaitForChild(v0_11_)
v0_9_, v0_10_, v0_11_ = v0_9_:GetChildren()
v0_14_ = v0_6_
v0_15_ = nil
v0_14_(v0_15_)
v0_11_ = "Candles"
v0_9_ = v0_4_:WaitForChild(v0_11_)
v0_9_, v0_10_, v0_11_ = v0_9_:GetChildren()
v0_14_ = v0_7_
v0_15_ = nil
v0_14_(v0_15_)
v0_11_ = "Books"
v0_9_ = v0_4_:WaitForChild(v0_11_)
v0_9_, v0_10_, v0_11_ = v0_9_:GetChildren()
v0_14_ = v0_8_
v0_15_ = nil
v0_14_(v0_15_)
