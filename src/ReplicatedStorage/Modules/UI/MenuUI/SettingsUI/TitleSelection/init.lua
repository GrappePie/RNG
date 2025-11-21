-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "ReplicatedStorage"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = "Modules"
v0_2_ = v0_1_:WaitForChild(v0_4_)
v0_3_ = require
local v0_6_ = "Utility"
v0_3_ = v0_3_(v0_2_:WaitForChild(v0_6_))
v0_6_ = "Storage"
v0_4_ = v0_1_:WaitForChild(v0_6_)
local v0_5_ = require
local v0_8_ = "TagData"
v0_5_ = v0_5_(v0_4_:WaitForChild(v0_8_))
v0_8_ = "Packets"
v0_6_ = v0_1_:WaitForChild(v0_8_)
local v0_7_ = require
local v0_10_ = "Global"
v0_7_ = v0_7_(v0_6_:WaitForChild(v0_10_))
v0_10_ = "UI"
v0_8_ = v0_2_:WaitForChild(v0_10_)
local v0_11_ = "Components"
local v0_9_ = v0_8_:WaitForChild(v0_11_)
v0_10_ = require
local v0_13_ = "Quad"
v0_10_ = v0_10_(v0_8_:WaitForChild(v0_13_))
local v0_12_ = v0_3_.Replica
v0_11_ = v0_12_.WaitForReplica
v0_12_ = v0_0_.LocalPlayer
v0_11_ = v0_11_(v0_12_)
v0_12_ = v0_10_.Lang
v0_13_ = v0_10_.Round
local v0_14_ = v0_10_.Class
local v0_15_ = v0_10_.Mount
local v0_16_ = v0_10_.Store
local v0_17_ = v0_10_.Event
local v0_18_ = v0_10_.Tween
local v0_19_ = v0_10_.Signal
local v0_20_ = v0_14_
local v0_21_ = "ImageLabel"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_14_
local v0_22_ = "TextLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_14_
local v0_23_ = "ImageButton"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_14_
local v0_24_ = "CanvasGroup"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_14_
local v0_25_ = "TextButton"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_14_
local v0_26_ = "UIStroke"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_14_
local v0_27_ = "Frame"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_14_
local v0_28_ = "ScrollingFrame"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_14_
local v0_29_ = "UIListLayout"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_14_
local v0_30_ = "UIAspectRatioConstraint"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_14_
local v0_31_ = "UIGradient"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_14_
local v0_32_ = "UITextSizeConstraint"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_14_
local v0_33_ = "TextBox"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_16_.GetStore
local v0_34_ = "Search"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_14_
local v0_37_ = "Corner"
v0_34_ = v0_34_(v0_9_:WaitForChild(v0_37_))
local v0_35_ = v0_14_
local v0_38_ = "Shadow"
v0_35_ = v0_35_(v0_9_:WaitForChild(v0_38_))
local v0_36_ = v0_14_
v0_37_ = script
local v0_39_ = "Item"
v0_36_ = v0_36_(v0_37_:WaitForChild(v0_39_))
v0_37_ = v0_10_.FontBold
v0_38_ = v0_10_.FontDefault
v0_39_ = ""
v0_33_.TitleSearch = v0_39_
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_28_.SortOrder = LayoutOrder
local new = Color3.new
v0_39_ = new()
v0_26_.BackgroundColor3 = v0_39_
v0_39_ = 0
v0_26_.BorderSizePixel = v0_39_
v0_39_ = 0
v0_23_.BorderSizePixel = v0_39_
local new = Color3.new
local v0_40_ = 1
local v0_41_ = 1
local v0_42_ = 1
v0_39_ = new(v0_40_, v0_41_, v0_42_)
v0_25_.Color = v0_39_
local Border = Enum.ApplyStrokeMode.Border
v0_25_.ApplyStrokeMode = Border
v0_39_ = 1.500000
v0_25_.Thickness = v0_39_
v0_39_ = 0.500000
v0_25_.Transparency = v0_39_
local new = Color3.new
v0_40_ = 1
v0_41_ = 1
v0_42_ = 1
v0_39_ = new(v0_40_, v0_41_, v0_42_)
v0_21_.TextColor3 = v0_39_
v0_39_ = v0_10_.FontBold
v0_21_.FontFace = v0_39_
v0_39_ = 0
v0_21_.BorderSizePixel = v0_39_
local new = Color3.new
v0_39_ = new()
v0_21_.BackgroundColor3 = v0_39_
local new = Color3.new
v0_40_ = 1
v0_41_ = 1
v0_42_ = 1
v0_39_ = new(v0_40_, v0_41_, v0_42_)
v0_32_.TextColor3 = v0_39_
v0_39_ = v0_10_.FontDefault
v0_32_.FontFace = v0_39_
v0_39_ = 0
v0_32_.BorderSizePixel = v0_39_
local new = Color3.new
v0_39_ = new()
v0_32_.BackgroundColor3 = v0_39_
local new = Color3.new
v0_40_ = 1
v0_41_ = 1
v0_42_ = 1
v0_39_ = new(v0_40_, v0_41_, v0_42_)
v0_24_.TextColor3 = v0_39_
v0_39_ = v0_10_.FontBold
v0_24_.FontFace = v0_39_
v0_39_ = 0
v0_24_.BorderSizePixel = v0_39_
local new = Color3.new
v0_39_ = new()
v0_24_.BackgroundColor3 = v0_39_
local new = NumberSequence.new
v0_40_ = table.create(5)
local new_0 = NumberSequenceKeypoint.new
v0_42_ = 0
local v0_43_ = 1
v0_41_ = new_0(v0_42_, v0_43_)
local new_0 = NumberSequenceKeypoint.new
v0_43_ = 0.200000
local v0_44_ = 0.100000
v0_42_ = new_0(v0_43_, v0_44_)
local new_0 = NumberSequenceKeypoint.new
v0_44_ = 0.500000
local v0_45_ = 0
v0_43_ = new_0(v0_44_, v0_45_)
local new_0 = NumberSequenceKeypoint.new
v0_45_ = 0.800000
local v0_46_ = 0.100000
v0_44_ = new_0(v0_45_, v0_46_)
local new_0 = NumberSequenceKeypoint.new
v0_46_ = 1
local v0_47_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_40_ = {v0_41_, new_0(v0_46_, v0_47_)}
v0_39_ = new(v0_40_)
v0_40_ = nil
v0_41_ = nil
v0_42_ = nil
v0_43_ = nil
v0_44_ = nil
v0_45_ = nil
v0_46_ = v0_26_
v0_47_ = table.create(6)
local new = Vector2.new
local v0_55_ = 0.500000
local v0_56_ = 0.500000
local v0_54_ = new(v0_55_, v0_56_)
v0_47_.AnchorPoint = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.500000
v0_56_ = 0.500000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_47_.Position = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.500000
v0_56_ = 0.550000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_47_.Size = v0_54_
local new = Color3.new
v0_54_ = new()
v0_47_.BackgroundColor3 = v0_54_
v0_54_ = 0.400000
v0_47_.BackgroundTransparency = v0_54_
v0_54_ = false
v0_47_.Visible = v0_54_
local v0_48_ = v0_21_
local v0_49_ = table.create(2)
local new = Color3.new
local v0_53_ = 1
v0_54_ = 1
v0_55_ = 1
local v0_52_ = new(v0_53_, v0_54_, v0_55_)
v0_49_.TextColor3 = v0_52_
v0_52_ = "Title Selection"
v0_49_.Text = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 1
v0_54_ = 0.080000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_49_.Size = v0_52_
v0_52_ = true
v0_49_.TextScaled = v0_52_
local new = Color3.new
v0_52_ = new()
v0_49_.BackgroundColor3 = v0_52_
v0_52_ = 0.650000
v0_49_.BackgroundTransparency = v0_52_
local v0_50_ = v0_22_
local v0_51_ = table.create(1)
v0_53_ = 1
v0_51_.BackgroundTransparency = v0_53_
local fromScale = UDim2.fromScale
v0_54_ = 0.950000
v0_55_ = 0
v0_53_ = fromScale(v0_54_, v0_55_)
v0_51_.Position = v0_53_
local fromScale = UDim2.fromScale
v0_54_ = 1
v0_55_ = 1
v0_53_ = fromScale(v0_54_, v0_55_)
v0_51_.Size = v0_53_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_51_.SizeConstraint = RelativeYY
v0_52_ = v0_20_
v0_53_ = {}
local new = Vector2.new
v0_55_ = 0.500000
v0_56_ = 0.500000
v0_54_ = new(v0_55_, v0_56_)
v0_53_.AnchorPoint = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.500000
v0_56_ = 0.500000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_53_.Position = v0_54_
v0_54_ = "http://www.roblox.com/asset/?id=6031094678"
v0_53_.Image = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.800000
v0_56_ = 0.800000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_53_.Size = v0_54_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_53_.SizeConstraint = RelativeYY
v0_54_ = 1
v0_53_.BackgroundTransparency = v0_54_
v0_52_ = v0_52_(v0_53_)
v0_51_[1] = v0_52_
v0_53_ = v0_17_
v0_54_ = "MouseButton1Down"
v0_53_ = v0_53_(v0_54_)
v0_54_ = function()
    local v1_1_ = v0_3_
    local v1_0_ = v1_1_.PlaySFX
    v1_1_ = "Click"
    local v1_2_ = "UISounds"
    v1_0_(v1_1_, v1_2_)
    v1_0_ = v0_40_
    v1_1_ = false
    v1_0_.Visible = v1_1_
end
v0_51_[v0_53_] = v0_54_
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_34_
v0_52_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_49_ = {v0_50_, v0_51_(v0_52_)}
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_26_
v0_50_ = table.create(1)
v0_52_ = 1
v0_50_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.005000
v0_54_ = 0.090000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Position = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.290000
v0_54_ = 0.900000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Size = v0_52_
v0_51_ = v0_26_
v0_52_ = table.create(5)
local new = Color3.new
local v0_58_ = new()
v0_52_.BackgroundColor3 = v0_58_
v0_58_ = 0.650000
v0_52_.BackgroundTransparency = v0_58_
local fromScale = UDim2.fromScale
local v0_59_ = 1
local v0_60_ = 1
v0_58_ = fromScale(v0_59_, v0_60_)
v0_52_.Size = v0_58_
v0_53_ = v0_24_
v0_54_ = table.create(3)
local new = Vector2.new
v0_59_ = 0.500000
v0_60_ = 0
v0_58_ = new(v0_59_, v0_60_)
v0_54_.AnchorPoint = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.500000
v0_60_ = 0.890000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_54_.Position = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.950000
v0_60_ = 0.090000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_54_.Size = v0_58_
v0_58_ = 0.650000
v0_54_.BackgroundTransparency = v0_58_
local new = Color3.new
v0_58_ = new()
v0_54_.BackgroundColor3 = v0_58_
v0_58_ = "Equip"
v0_54_.Text = v0_58_
v0_58_ = true
v0_54_.TextScaled = v0_58_
v0_58_ = v0_10_.FontBold
v0_54_.FontFace = v0_58_
v0_58_ = v0_17_.Created
v0_59_ = function(a1)
    v0_41_ = a1
end
v0_54_[v0_58_] = v0_59_
v0_55_ = v0_25_
v0_56_ = {}
v0_55_ = v0_55_(v0_56_)
v0_56_ = v0_34_
local v0_57_ = {}
v0_56_ = v0_56_(v0_57_)
v0_57_ = v0_35_
v0_58_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_54_ = {v0_55_, v0_57_(v0_58_)}
v0_53_ = v0_53_(v0_54_)
v0_54_ = v0_21_
v0_55_ = table.create(1)
v0_55_.FontFace = v0_38_
v0_57_ = 1
v0_55_.BackgroundTransparency = v0_57_
local new = Vector2.new
v0_58_ = 0.500000
v0_59_ = 0
v0_57_ = new(v0_58_, v0_59_)
v0_55_.AnchorPoint = v0_57_
local fromScale = UDim2.fromScale
v0_58_ = 0.500000
v0_59_ = 0.230000
v0_57_ = fromScale(v0_58_, v0_59_)
v0_55_.Position = v0_57_
local fromScale = UDim2.fromScale
v0_58_ = 0.900000
v0_59_ = 0.350000
v0_57_ = fromScale(v0_58_, v0_59_)
v0_55_.Size = v0_57_
v0_57_ = "이것은 엄청난 설명입니다 왜냐하면 이것은 뭔지 모르겠는 암튼 뱃지의 설명인데 얼마나 길게 적어야 이게 글자가 넘칠까요"
v0_55_.Text = v0_57_
v0_57_ = true
v0_55_.TextScaled = v0_57_
local Left = Enum.TextXAlignment.Left
v0_55_.TextXAlignment = Left
local Top = Enum.TextYAlignment.Top
v0_55_.TextYAlignment = Top
v0_56_ = v0_31_
v0_57_ = {}
v0_58_ = 14
v0_57_.MaxTextSize = v0_58_
v0_58_ = 1
v0_57_.MinTextSize = v0_58_
v0_56_ = v0_56_(v0_57_)
v0_55_[1] = v0_56_
v0_57_ = v0_17_.CreatedAsync
v0_58_ = function(a1)
    v0_42_ = a1
end
v0_55_[v0_57_] = v0_58_
v0_54_ = v0_54_(v0_55_)
v0_55_ = v0_26_
v0_56_ = table.create(5)
local new = Vector2.new
local v0_63_ = 0.500000
local v0_64_ = 0
local v0_62_ = new(v0_63_, v0_64_)
v0_56_.AnchorPoint = v0_62_
local new = Color3.new
v0_62_ = new()
v0_56_.BackgroundColor3 = v0_62_
v0_62_ = 0.650000
v0_56_.BackgroundTransparency = v0_62_
local fromScale = UDim2.fromScale
v0_63_ = 0.500000
v0_64_ = 0.040000
v0_62_ = fromScale(v0_63_, v0_64_)
v0_56_.Position = v0_62_
local fromScale = UDim2.fromScale
v0_63_ = 0.950000
v0_64_ = 0.150000
v0_62_ = fromScale(v0_63_, v0_64_)
v0_56_.Size = v0_62_
v0_57_ = v0_21_
v0_58_ = {}
v0_59_ = "Gaejook found"
v0_58_.Text = v0_59_
v0_59_ = true
v0_58_.TextScaled = v0_59_
v0_59_ = 1
v0_58_.BackgroundTransparency = v0_59_
local new = Vector2.new
v0_60_ = 0.500000
local v0_61_ = 0.500000
v0_59_ = new(v0_60_, v0_61_)
v0_58_.AnchorPoint = v0_59_
local fromScale = UDim2.fromScale
v0_60_ = 0.500000
v0_61_ = 0.500000
v0_59_ = fromScale(v0_60_, v0_61_)
v0_58_.Position = v0_59_
local fromScale = UDim2.fromScale
v0_60_ = 1
v0_61_ = 0.800000
v0_59_ = fromScale(v0_60_, v0_61_)
v0_58_.Size = v0_59_
v0_59_ = v0_17_.CreatedAsync
v0_60_ = function(a1)
    v0_43_ = a1
end
v0_58_[v0_59_] = v0_60_
v0_57_ = v0_57_(v0_58_)
v0_58_ = v0_20_
v0_59_ = {}
v0_60_ = "rbxassetid://139156179732082"
v0_59_.Image = v0_60_
local new = Vector2.new
v0_61_ = 0.500000
v0_62_ = 1
v0_60_ = new(v0_61_, v0_62_)
v0_59_.AnchorPoint = v0_60_
v0_60_ = 1
v0_59_.BackgroundTransparency = v0_60_
local fromScale = UDim2.fromScale
v0_61_ = 0.500000
v0_62_ = 0
v0_60_ = fromScale(v0_61_, v0_62_)
v0_59_.Position = v0_60_
local fromScale = UDim2.fromScale
v0_61_ = 0.300000
v0_62_ = 0.150000
v0_60_ = fromScale(v0_61_, v0_62_)
v0_59_.Size = v0_60_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_59_.SizeConstraint = RelativeYY
v0_58_ = v0_58_(v0_59_)
v0_59_ = v0_20_
v0_60_ = {}
v0_61_ = "rbxassetid://139156179732082"
v0_60_.Image = v0_61_
local new = Vector2.new
v0_62_ = 0.500000
v0_63_ = 0
v0_61_ = new(v0_62_, v0_63_)
v0_60_.AnchorPoint = v0_61_
v0_61_ = 1
v0_60_.BackgroundTransparency = v0_61_
local fromScale = UDim2.fromScale
v0_62_ = 0.500000
v0_63_ = 1
v0_61_ = fromScale(v0_62_, v0_63_)
v0_60_.Position = v0_61_
local fromScale = UDim2.fromScale
v0_62_ = 0.300000
v0_63_ = 0.150000
v0_61_ = fromScale(v0_62_, v0_63_)
v0_60_.Size = v0_61_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_60_.SizeConstraint = RelativeYY
v0_61_ = 180
v0_60_.Rotation = v0_61_
v0_59_ = v0_59_(v0_60_)
v0_60_ = v0_23_
v0_61_ = table.create(2)
local fromScale = UDim2.fromScale
local v0_65_ = 1
local v0_66_ = 1
v0_64_ = fromScale(v0_65_, v0_66_)
v0_61_.Size = v0_64_
v0_64_ = 1
v0_61_.BackgroundTransparency = v0_64_
v0_64_ = 2
v0_61_.ZIndex = v0_64_
v0_62_ = v0_26_
v0_63_ = table.create(1)
local fromOffset = UDim2.fromOffset
v0_66_ = 0
local v0_67_ = 1
v0_65_ = fromOffset(v0_66_, v0_67_)
v0_63_.Position = v0_65_
local new = UDim2.new
v0_66_ = 1
v0_67_ = 0
local v0_68_ = 0
local v0_69_ = 1
v0_65_ = new(v0_66_, v0_67_, v0_68_, v0_69_)
v0_63_.Size = v0_65_
local new = Color3.new
v0_66_ = 1
v0_67_ = 1
v0_68_ = 1
v0_65_ = new(v0_66_, v0_67_, v0_68_)
v0_63_.BackgroundColor3 = v0_65_
v0_64_ = v0_30_
v0_65_ = {}
v0_65_.Transparency = v0_39_
-- WARNING: SETLIST_C0, output may be wrong!
v0_63_ = {v0_64_, v0_64_(v0_65_)}
v0_62_ = v0_62_(v0_63_)
v0_63_ = v0_26_
v0_64_ = table.create(1)
local new = Vector2.new
v0_67_ = 0
v0_68_ = 1
v0_66_ = new(v0_67_, v0_68_)
v0_64_.AnchorPoint = v0_66_
local fromScale = UDim2.fromScale
v0_67_ = 0
v0_68_ = 1
v0_66_ = fromScale(v0_67_, v0_68_)
v0_64_.Position = v0_66_
local new = UDim2.new
v0_67_ = 1
v0_68_ = 0
v0_69_ = 0
local v0_70_ = 1
v0_66_ = new(v0_67_, v0_68_, v0_69_, v0_70_)
v0_64_.Size = v0_66_
local new = Color3.new
v0_67_ = 1
v0_68_ = 1
v0_69_ = 1
v0_66_ = new(v0_67_, v0_68_, v0_69_)
v0_64_.BackgroundColor3 = v0_66_
v0_65_ = v0_30_
v0_66_ = {}
v0_66_.Transparency = v0_39_
-- WARNING: SETLIST_C0, output may be wrong!
v0_64_ = {v0_65_, v0_65_(v0_66_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_61_ = {v0_62_, v0_63_(v0_64_)}
v0_60_ = v0_60_(v0_61_)
v0_61_ = v0_30_
v0_62_ = {}
v0_62_.Transparency = v0_39_
-- WARNING: SETLIST_C0, output may be wrong!
v0_56_ = {v0_57_, v0_61_(v0_62_)}
v0_55_ = v0_55_(v0_56_)
v0_56_ = v0_34_
v0_57_ = {}
v0_58_ = 0.025000
v0_57_.Size = v0_58_
v0_56_ = v0_56_(v0_57_)
v0_57_ = v0_25_
v0_58_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_52_ = {v0_53_, v0_57_(v0_58_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_50_ = {v0_51_, v0_51_(v0_52_)}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_26_
v0_51_ = table.create(2)
local new = Vector2.new
v0_55_ = 1
v0_56_ = 0
v0_54_ = new(v0_55_, v0_56_)
v0_51_.AnchorPoint = v0_54_
v0_54_ = 1
v0_51_.BackgroundTransparency = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.995000
v0_56_ = 0.090000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_51_.Position = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0.690000
v0_56_ = 0.900000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_51_.Size = v0_54_
v0_52_ = v0_26_
v0_53_ = table.create(5)
local new = Color3.new
v0_59_ = new()
v0_53_.BackgroundColor3 = v0_59_
v0_59_ = 0.650000
v0_53_.BackgroundTransparency = v0_59_
local fromScale = UDim2.fromScale
v0_60_ = 1
v0_61_ = 0.050000
v0_59_ = fromScale(v0_60_, v0_61_)
v0_53_.Size = v0_59_
v0_54_ = v0_20_
v0_55_ = {}
local new = Vector2.new
v0_57_ = 0
v0_58_ = 0.500000
v0_56_ = new(v0_57_, v0_58_)
v0_55_.AnchorPoint = v0_56_
local fromScale = UDim2.fromScale
v0_57_ = 0.010000
v0_58_ = 0.500000
v0_56_ = fromScale(v0_57_, v0_58_)
v0_55_.Position = v0_56_
local fromScale = UDim2.fromScale
v0_57_ = 0.900000
v0_58_ = 0.900000
v0_56_ = fromScale(v0_57_, v0_58_)
v0_55_.Size = v0_56_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_55_.SizeConstraint = RelativeYY
v0_56_ = "rbxassetid://6031154871"
v0_55_.Image = v0_56_
v0_56_ = 1
v0_55_.BackgroundTransparency = v0_56_
v0_54_ = v0_54_(v0_55_)
v0_55_ = v0_32_
v0_56_ = table.create(1)
local new = Vector2.new
v0_59_ = 0
v0_60_ = 0.500000
v0_58_ = new(v0_59_, v0_60_)
v0_56_.AnchorPoint = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.050000
v0_60_ = 0.500000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_56_.Position = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.950000
v0_60_ = 0.800000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_56_.Size = v0_58_
v0_56_.FontFace = v0_38_
local new = Color3.new
v0_59_ = 1
v0_60_ = 1
v0_61_ = 1
v0_58_ = new(v0_59_, v0_60_, v0_61_)
v0_56_.TextColor3 = v0_58_
local fromRGB = Color3.fromRGB
v0_59_ = 178
v0_60_ = 178
v0_61_ = 178
v0_58_ = fromRGB(v0_59_, v0_60_, v0_61_)
v0_56_.PlaceholderColor3 = v0_58_
v0_58_ = true
v0_56_.TextScaled = v0_58_
v0_58_ = 1
v0_56_.BackgroundTransparency = v0_58_
local Left = Enum.TextXAlignment.Left
v0_56_.TextXAlignment = Left
v0_58_ = "Search..."
v0_56_.PlaceholderText = v0_58_
v0_58_ = ""
v0_56_.Text = v0_58_
v0_57_ = v0_31_
v0_58_ = {}
v0_59_ = 20
v0_58_.MaxTextSize = v0_59_
v0_59_ = 1
v0_58_.MinTextSize = v0_59_
v0_57_ = v0_57_(v0_58_)
v0_56_[1] = v0_57_
v0_58_ = v0_17_
v0_59_ = "Changed"
v0_58_ = v0_58_(v0_59_)
v0_59_ = function(a1, a2)
    if a2 == "Text" then
        local v5_2_ = v0_33_
        local v5_3_ = a1.Text
        v5_2_.TitleSearch = v5_3_
    end
end
v0_56_[v0_58_] = v0_59_
v0_55_ = v0_55_(v0_56_)
v0_56_ = v0_35_
v0_57_ = {}
v0_56_ = v0_56_(v0_57_)
v0_57_ = v0_25_
v0_58_ = {}
v0_57_ = v0_57_(v0_58_)
v0_58_ = v0_34_
v0_59_ = {}
v0_60_ = 0.300000
v0_59_.Size = v0_60_
-- WARNING: SETLIST_C0, output may be wrong!
v0_53_ = {v0_54_, v0_58_(v0_59_)}
v0_52_ = v0_52_(v0_53_)
v0_53_ = v0_26_
v0_54_ = table.create(4)
local new = Color3.new
v0_59_ = new()
v0_54_.BackgroundColor3 = v0_59_
v0_59_ = 0.650000
v0_54_.BackgroundTransparency = v0_59_
local fromScale = UDim2.fromScale
v0_60_ = 0
v0_61_ = 0.070000
v0_59_ = fromScale(v0_60_, v0_61_)
v0_54_.Position = v0_59_
local fromScale = UDim2.fromScale
v0_60_ = 1
v0_61_ = 0.930000
v0_59_ = fromScale(v0_60_, v0_61_)
v0_54_.Size = v0_59_
v0_55_ = v0_27_
v0_56_ = table.create(1)
local new = Vector2.new
v0_59_ = 0.500000
v0_60_ = 0.500000
v0_58_ = new(v0_59_, v0_60_)
v0_56_.AnchorPoint = v0_58_
v0_58_ = 1
v0_56_.BackgroundTransparency = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.500000
v0_60_ = 0.500000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_56_.Position = v0_58_
local fromScale = UDim2.fromScale
v0_59_ = 0.960000
v0_60_ = 0.920000
v0_58_ = fromScale(v0_59_, v0_60_)
v0_56_.Size = v0_58_
local Y = Enum.AutomaticSize.Y
v0_56_.AutomaticCanvasSize = Y
local fromScale = UDim2.fromScale
v0_59_ = 0
v0_60_ = 0
v0_58_ = fromScale(v0_59_, v0_60_)
v0_56_.CanvasSize = v0_58_
v0_58_ = 0
v0_56_.ScrollBarThickness = v0_58_
v0_58_ = v0_17_.Created
v0_59_ = function(a1)
    v0_44_ = a1
    local v6_1_ = nil
    local v6_2_ = function()
        local v7_0_ = 0
        local v7_1_ = 0
        local v7_2_ = ipairs
        local v7_3_ = a1
        local v7_2_, v7_3_, v7_4_ = v7_2_(v7_3_:GetChildren())
        for v7_5_, v7_6_ in v7_2_, v7_3_, v7_4_ do
            local v7_9_ = "ImageButton"
            local v7_7_ = v7_6_:IsA(v7_9_)
            if v7_7_ then
                v7_7_ = v7_6_.Visible
                if v7_7_ then
                    v7_1_ += 1.000000
                    local v7_8_ = v7_6_.AbsoluteSize
                    v7_7_ = v7_8_.Y
                    v7_0_ += v7_7_
                end
            end
        end
        v7_2_ = a1
        local fromOffset = UDim2.fromOffset
        v7_4_ = 0
        local v7_6_ = v7_0_ + 4.000000
        local v7_11_ = a1
        local v7_10_ = v7_11_.AbsoluteSize
        local v7_9_ = v7_10_.Y
        local v7_8_ = v7_9_ * 0.030000
        v7_9_ = v7_1_ - 1.000000
        local v7_7_ = v7_8_ * v7_9_
        local v7_5_ = v7_6_ + v7_7_
        v7_3_ = fromOffset(v7_4_, v7_5_)
        v7_2_.CanvasSize = v7_3_
    end
    local v6_3_ = function()
        local v8_0_ = v6_1_
        if v8_0_ then
            v8_0_ = v6_1_
            local running = coroutine.running
            local v8_1_ = running()
            if v8_0_ ~= v8_1_ then
                local cancel = task.cancel
                v8_1_ = v6_1_
                cancel(v8_1_)
            end
        end
        local defer = task.defer
        local v8_1_ = v6_2_
        v8_0_ = defer(v8_1_)
        v6_1_ = v8_0_
    end
    v0_45_ = v6_1_
    local v6_5_ = v0_10_
    local v6_4_ = v6_5_.ScreenUpdated
    local v6_6_ = v6_3_
    v6_4_:Connect(v6_6_)
    v6_4_ = a1.ChildAdded
    v6_6_ = v6_3_
    v6_4_:Connect(v6_6_)
end
v0_56_[v0_58_] = v0_59_
v0_58_ = v0_17_
v0_59_ = "ChildAdded"
v0_58_ = v0_58_(v0_59_)
v0_59_ = function(a1, a2)
    local v9_4_ = "Frame"
    local v9_2_ = a2:IsA(v9_4_)
    if v9_2_ then
        v9_4_ = "Visible"
        v9_2_ = a2:GetPropertyChangedSignal(v9_4_)
        v9_4_ = v0_45_
        v9_2_ = v9_2_:Connect(v9_4_)
        local v9_3_ = a2.Destroying
        local v9_5_ = function()
            local v10_0_ = v9_2_
            v10_0_:Disconnect()
        end
        v9_3_:Once(v9_5_)
    end
end
v0_56_[v0_58_] = v0_59_
v0_58_ = 2
v0_56_.PaddingAllOffset = v0_58_
v0_57_ = v0_28_
v0_58_ = {}
local new = UDim.new
v0_60_ = 0.030000
v0_61_ = 0
v0_59_ = new(v0_60_, v0_61_)
v0_58_.Padding = v0_59_
-- WARNING: SETLIST_C0, output may be wrong!
v0_56_ = {v0_57_, v0_57_(v0_58_)}
v0_55_ = v0_55_(v0_56_)
v0_56_ = v0_25_
v0_57_ = {}
v0_56_ = v0_56_(v0_57_)
v0_57_ = v0_35_
v0_58_ = {}
v0_57_ = v0_57_(v0_58_)
v0_58_ = v0_34_
v0_59_ = {}
v0_60_ = 0.023000
v0_59_.Size = v0_60_
-- WARNING: SETLIST_C0, output may be wrong!
v0_54_ = {v0_55_, v0_58_(v0_59_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_51_ = {v0_52_, v0_53_(v0_54_)}
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_25_
v0_52_ = {}
v0_51_ = v0_51_(v0_52_)
v0_52_ = v0_29_
v0_53_ = {}
v0_54_ = 1.823000
v0_53_.AspectRatio = v0_54_
v0_52_ = v0_52_(v0_53_)
v0_53_ = v0_35_
v0_54_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_47_ = {v0_48_, v0_53_(v0_54_)}
v0_46_ = v0_46_(v0_47_)
v0_40_ = v0_46_
v0_46_ = v0_15_
v0_47_ = v0_10_.MainInterface
v0_48_ = v0_40_
v0_46_(v0_47_, v0_48_)
local defer = task.defer
v0_47_ = function()
    local v11_0_ = v0_5_
    v11_0_ = v11_0_:GetList()
    local v11_1_ = {}
    local v11_2_ = ""
    local v11_3_ = false
    local v11_4_ = nil
    local v11_5_ = function(a1, a2)
        if not a2 then
            local v12_3_ = v11_3_
            local v12_2_ = not v12_3_
            if v12_2_ then
                v12_2_ = false
                v12_3_ = v11_2_
                if v12_3_ ~= a1 then
                    v12_2_ = v0_5_
                    local v12_4_ = a1
                    v12_2_ = v12_2_:PlayerHas(v12_4_)
                    v12_2_ = true
                end
            end
        else
            local v12_2_ = true
        end
        if nil then
            v11_2_ = a2
            local v12_2_ = true
            v11_3_ = a1
            v12_2_ = v0_5_
            local v12_4_ = a1
            v12_2_ = v12_2_:GetValue(v12_4_)
            local v12_3_ = v0_43_
            v12_4_ = v12_2_.DisplayName
            if not v12_4_ then
                v12_4_ = v12_2_.Name
            end
            v12_3_.Text = v12_4_
            v12_3_ = v0_42_
            local v12_5_ = v12_2_.Description
            v12_4_ = v12_5_ or "Empty"
            v12_3_.Text = v12_4_
            v12_3_ = v0_41_
            local v12_6_ = v11_0_
            local v12_8_ = v11_0_
            local v12_7_ = #v12_8_
            v12_5_ = v12_6_[v12_7_]
            if a1 == v12_5_ then
                v12_4_ = false
            end
            v12_4_ = true
            v12_3_.Visible = v12_4_
            v12_3_ = v0_41_
            v12_7_ = v0_11_
            v12_6_ = v12_7_.Data
            v12_5_ = v12_6_.EquippedTag
            v12_6_ = v12_2_.Name
            if v12_5_ == v12_6_ then
                v12_4_ = "Unequip"
            else
                v12_4_ = "Equip"
            end
            v12_3_.Text = v12_4_
            v12_3_ = false
            v11_3_ = a1
        end
    end
    local v11_6_ = ipairs
    local v11_7_ = v11_0_
    local v11_6_, v11_7_, v11_8_ = v11_6_(v11_7_)
    for v11_9_, v11_10_ in v11_6_, v11_7_, v11_8_ do
        local v11_11_ = #v11_0_
        if v11_9_ == v11_11_ then
            v11_11_ = v11_5_
            local v11_12_ = v11_10_
            v11_11_(v11_12_)
        else
            v11_11_ = v0_36_
            local v11_12_ = {}
            local v11_13_ = false
            v11_12_.Visible = v11_13_
            v11_12_.Order = v11_9_
            v11_13_ = function()
                local v13_0_ = v11_5_
                local v13_2_ = v11_0_
                local v13_3_ = v11_9_
                local v13_1_ = v13_2_[v13_3_]
                v13_0_(v13_1_)
            end
            v11_12_.Callback = v11_13_
            v11_11_ = v11_11_(v11_12_)
            v11_1_[v11_9_] = v11_11_
            local defer = task.defer
            v11_12_ = function()
                local v14_0_ = v11_10_
                if v14_0_ ~= "" then
                    v14_0_ = v0_5_
                    local v14_2_ = v11_10_
                    v14_0_ = v14_0_:GetValue(v14_2_)
                    v14_2_ = v11_1_
                    local v14_3_ = v11_9_
                    local v14_1_ = v14_2_[v14_3_]
                    v14_2_ = v14_0_.DisplayName
                    if not v14_2_ then
                        v14_2_ = v14_0_.Name
                    end
                    v14_1_.Name = v14_2_
                    v14_3_ = v14_0_.SubDescription
                    v14_2_ = v14_3_ or "Empty"
                    v14_1_.Description = v14_2_
                    v14_3_ = v14_0_.ImageId
                    if v14_3_ then
                        v14_3_ = "rbxassetid://%*"
                        local v14_5_ = v14_0_.ImageId
                        v14_3_ = v14_3_:format(v14_5_)
                        v14_2_ = v14_3_
                        if not v14_2_ then
                            v14_2_ = ""
                        end
                    end
                    v14_2_ = ""
                    v14_1_.Icon = v14_2_
                    v14_2_ = true
                    v14_1_.Visible = v14_2_
                    v14_2_ = v0_33_
                    v14_3_ = "TitleSearch"
                    v14_2_ = v14_2_(v14_3_)
                    local v14_4_ = function(a1)
                        local v15_3_ = v14_1_
                        local v15_2_ = v15_3_._Title
                        local v15_1_ = v15_2_.LocalizedText
                        v15_1_ = v15_1_:lower()
                        local v15_5_ = "%["
                        local v15_6_ = "%%["
                        v15_3_ = a1:gsub(v15_5_, v15_6_)
                        v15_5_ = "%]"
                        v15_6_ = "%%]"
                        v15_3_ = v15_3_:gsub(v15_5_, v15_6_)
                        v15_1_ = v15_1_:find(v15_3_:lower())
                        if v15_1_ then
                            v15_1_ = v14_1_
                            v15_2_ = true
                            v15_1_.Visible = v15_2_
                            return
                        end
                        v15_1_ = v14_1_
                        v15_2_ = false
                        v15_1_.Visible = v15_2_
                    end
                    v14_2_:Observe(v14_4_)
                end
                v14_0_ = v0_15_
                local v14_1_ = v0_44_
                local v14_3_ = v11_1_
                local v14_4_ = v11_9_
                local v14_2_ = v14_3_[v14_4_]
                v14_0_(v14_1_, v14_2_)
            end
            defer(v11_12_)
        end
    end
    v11_7_ = v0_5_
    v11_6_ = v11_7_.ListUpdated
    v11_8_ = function(a1)
        local v16_2_ = v11_0_
        local v16_1_ = #v16_2_
        if a1 == v16_1_ then
            return
        end
        v16_2_ = v11_0_
        v16_1_ = v16_2_[a1]
        v16_2_ = v0_5_
        local v16_4_ = v16_1_
        v16_2_ = v16_2_:GetValue(v16_4_)
        v16_4_ = v11_1_
        local v16_3_ = v16_4_[a1]
        v16_4_ = v16_2_.DisplayName
        if not v16_4_ then
            v16_4_ = v16_2_.Name
        end
        v16_3_.Name = v16_4_
        local v16_5_ = v16_2_.SubDescription
        v16_4_ = v16_5_ or "Empty"
        v16_3_.Description = v16_4_
        v16_5_ = v16_2_.ImageId
        if v16_5_ then
            v16_5_ = "rbxassetid://%*"
            local v16_7_ = v16_2_.ImageId
            v16_5_ = v16_5_:format(v16_7_)
            v16_4_ = v16_5_
            if not v16_4_ then
                v16_4_ = ""
            end
        end
        v16_4_ = ""
        v16_3_.Icon = v16_4_
        v16_4_ = true
        v16_3_.Visible = v16_4_
        v16_4_ = v0_33_
        v16_5_ = "TitleSearch"
        v16_4_ = v16_4_(v16_5_)
        local v16_6_ = function(a1)
            local v17_3_ = v16_3_
            local v17_2_ = v17_3_._Title
            local v17_1_ = v17_2_.LocalizedText
            v17_1_ = v17_1_:lower()
            v17_1_ = v17_1_:find(a1:lower())
            if v17_1_ then
                v17_1_ = v16_3_
                v17_2_ = true
                v17_1_.Visible = v17_2_
                return
            end
            v17_1_ = v16_3_
            v17_2_ = false
            v17_1_.Visible = v17_2_
        end
        v16_4_:Observe(v16_6_)
    end
    v11_6_:Connect(v11_8_)
    v11_7_ = v0_41_
    v11_6_ = v11_7_.MouseButton1Down
    v11_8_ = function()
        local v18_0_ = v11_2_
        if v18_0_ ~= "" then
            v18_0_ = v11_4_
            if not v18_0_ then
                local v18_1_ = v0_3_
                v18_0_ = v18_1_.PlaySFX
                v18_1_ = "Click"
                local v18_2_ = "UISounds"
                v18_0_(v18_1_, v18_2_)
                v18_0_ = v11_2_
                v11_4_ = v18_1_
                v18_2_ = v0_7_
                v18_1_ = v18_2_.EquipTitle
                v18_0_ = v18_1_.send
                v18_1_ = v11_2_
                v18_0_(v18_1_)
            end
        end
    end
    v11_6_:Connect(v11_8_)
    v11_6_ = v0_11_
    v11_8_ = "EquippedTag"
    local v11_9_ = function(a1)
        local defer = task.defer
        local v19_2_ = v11_5_
        local v19_3_ = v11_2_
        local v19_4_ = true
        defer(v19_2_, v19_3_, v19_4_)
        local v19_1_ = nil
        v11_4_ = v19_2_
    end
    v11_6_:ListenToChange(v11_8_, v11_9_)
end
defer(v0_47_)
v0_46_ = v0_16_.AddObject
v0_47_ = "Window"
v0_48_ = v0_40_
v0_46_(v0_47_, v0_48_)
return v0_40_
