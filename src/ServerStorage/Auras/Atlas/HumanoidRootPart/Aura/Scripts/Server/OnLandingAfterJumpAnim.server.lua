-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- BgMPCEdldFN0YXRlBEVudW0RSHVtYW5vaWRTdGF0ZVR5cGUIRnJlZWZhbGwEUGxheQ1vblN0YXRlQ2hhbmdlBnNjcmlwdAZQYXJlbnQISHVtYW5vaWQMV2FpdEZvckNoaWxkCkFuaW1hdGlvbnMHTGFuZGluZw1Mb2FkQW5pbWF0aW9uDFN0YXRlQ2hhbmdlZAdDb25uZWN0AAIDAAMAAAAT+wAAALwAAHYAAAAAnwACAvsBAQCkAgQAAwgQwJoBCQACAAAApAEEAAMIEMDxAAUAAQAAAPsBAgC8AQHuBQAAAJ8BAgHeAAEAggABAAYDAQMCAwMDBAQDCBDAAwUABgYBGAAAAAADAAAAAAAAAAACAAAABAEHAAAAAAkAAAECAC+jAAAApAUBAAAAAEBNBAUkAgAAAE0DBCQCAAAATQIDJAIAAABNAQIkAgAAAE0AASQCAAAAbwIDALwAANMEAAAAnwADAqQIAQAAAABATQcIJAIAAABNBgckAgAAAE0FBiQCAAAATQQFRAUAAABNAwS8BgAAALwBAJQHAAAAnwEDArwCAHYIAAAAnwICAtkDAAASAAAAEgEC/xIAAQBNBADvCQAAAFIGAwC8BATHCgAAAJ8EAwHBAgAAggABAAsDBwQAAABAAwgDCQMKAwsDDAMNAwEDDgMPAQABAAEYAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAACAAACAAAADgAAAAAAAQABAAAAAAE=

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_5_ = script
local v0_4_ = v0_5_.Parent
local v0_3_ = v0_4_.Parent
local v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
v0_2_ = "Humanoid"
v0_0_ = v0_0_:WaitForChild(v0_2_)
local v0_8_ = script
local v0_7_ = v0_8_.Parent
local v0_6_ = v0_7_.Parent
v0_5_ = v0_6_.Parent
v0_4_ = v0_5_.Animations
v0_3_ = v0_4_.Landing
v0_1_ = v0_0_:LoadAnimation(v0_3_)
v0_2_ = v0_0_:GetState()
v0_3_ = function()
    local v1_0_ = v0_0_
    v1_0_ = v1_0_:GetState()
    local v1_1_ = v0_2_
    local Freefall = Enum.HumanoidStateType.Freefall
    if v1_1_ == Freefall then
        local Freefall_0 = Enum.HumanoidStateType.Freefall
        if v1_0_ ~= Freefall_0 then
            v1_1_ = v0_1_
            v1_1_:Play()
        end
    end
    v0_2_ = v1_1_
end
v0_4_ = v0_0_.StateChanged
v0_6_ = v0_3_
v0_4_:Connect(v0_6_)
