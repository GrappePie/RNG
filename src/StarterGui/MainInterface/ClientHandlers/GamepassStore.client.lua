-- What the sigma?

local v_u_1 = game:GetService("MarketplaceService")
local v_u_2 = game:GetService("Players")
local v_u_3 = v_u_2.LocalPlayer
local v4 = game:GetService("ReplicatedStorage")
local v5 = v4:WaitForChild("Modules")
local v_u_6 = require(v5:WaitForChild("ClientFunctions"))
require(v5:WaitForChild("Utility"))
local v7 = require(v5:WaitForChild("RemoteFunction"))
local v_u_8 = require(v5:WaitForChild("DB"):WaitForChild("Gamepasses"))
local v_u_9 = v4:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_10 = v7.new("GiftGamepass\n" .. v_u_3.UserId)
local v11 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_12 = require(v11:WaitForChild("Notification"):WaitForChild("Core"))
local v13 = v11:WaitForChild("Misc"):WaitForChild("Menu"):WaitForChild("Gamepass")
local v_u_14 = v11:WaitForChild("GamepassStore")
local v15 = v_u_14:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close")
local v16 = v_u_14:WaitForChild("ScrollingFrame"):GetChildren()
local v_u_17 = v_u_14:WaitForChild("PlayerSelect")
local v_u_18 = v_u_17:WaitForChild("Holder"):WaitForChild("UserNameInput")
v_u_18:WaitForChild("TextBox")
local v19 = v_u_18:WaitForChild("GiftButton")
local v_u_20 = v_u_17:WaitForChild("Holder"):WaitForChild("ScrollingFrame"):WaitForChild("Player")
local v_u_21 = nil
local v_u_22 = nil
local v_u_23 = false
local v_u_24 = false
local function v33(p_u_25)
	-- upvalues: (copy) v_u_20, (copy) v_u_2, (ref) v_u_24, (copy) v_u_18, (copy) v_u_10, (ref) v_u_21, (copy) v_u_12, (copy) v_u_1, (copy) v_u_3, (ref) v_u_22, (copy) v_u_17, (copy) v_u_6
	local v26 = v_u_20:Clone()
	v26.Name = ("Player\n%*"):format(p_u_25.UserId)
	local v27 = v_u_2:GetUserThumbnailAsync(p_u_25.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
	v26:WaitForChild("PlayerProfilePictureHolder"):WaitForChild("ImageLabel").Image = v27
	v26.PlayerName.Text = ("%* (@%*)"):format(p_u_25.DisplayName, p_u_25.Name)
	local v28 = v26:WaitForChild("ButtonHolder"):WaitForChild("Button")
	v28.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_24, (ref) v_u_18, (ref) v_u_10, (copy) p_u_25, (ref) v_u_21, (ref) v_u_12, (ref) v_u_1, (ref) v_u_3, (ref) v_u_22
		if v_u_24 then
			return
		else
			v_u_24 = true
			v_u_18.Loading.Visible = true
			local v29 = v_u_10:Fire(p_u_25.Name, v_u_21)
			v_u_18.Loading.Visible = false
			if v29 == true then
				v_u_1:PromptProductPurchase(v_u_3, v_u_22)
				local v_u_30 = nil
				v_u_30 = v_u_1.PromptProductPurchaseFinished:Connect(function(p31, p32, _)
					-- upvalues: (ref) v_u_3, (ref) v_u_22, (ref) v_u_30, (ref) v_u_24
					if v_u_3.UserId == p31 then
						if p32 == v_u_22 then
							v_u_30:Disconnect()
							v_u_24 = false
						end
					else
						return
					end
				end)
			else
				v_u_12.Create("Failed to purchase", v29 or "Something went wrong. please try again.", 5, "Warn")
				v_u_24 = false
			end
		end
	end)
	v26.Parent = v_u_17.Holder.ScrollingFrame
	v26.Visible = true
	v_u_6.LoadButtonEffects(v28, 1)
end
local function v36(p34)
	-- upvalues: (copy) v_u_17
	local v35 = v_u_17.Holder.ScrollingFrame:FindFirstChild((("Player\n%*"):format(p34.UserId)))
	if v35 then
		v35:Destroy()
	end
end
for _, v37 in v_u_2:GetPlayers() do
	if v37 ~= v_u_3 then
		v33(v37)
	end
end
v_u_2.PlayerAdded:Connect(v33)
v_u_2.PlayerRemoving:Connect(v36)
v_u_17.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_9, (copy) v_u_17, (ref) v_u_23
	v_u_9.Click:Play()
	v_u_17.Visible = false
	v_u_23 = false
end)
for _, v_u_38 in v16 do
	if v_u_38:IsA("Frame") then
		local v39 = v_u_38:WaitForChild("Buttons")
		local v40 = v39:WaitForChild("PurchaseButton")
		local v41 = v39:WaitForChild("GiftButton")
		v40.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_23, (copy) v_u_1, (copy) v_u_3, (copy) v_u_8, (copy) v_u_38
			if not v_u_23 then
				v_u_1:PromptGamePassPurchase(v_u_3, v_u_8[v_u_38.Name])
			end
		end)
		v41.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_23, (ref) v_u_21, (copy) v_u_38, (ref) v_u_22, (copy) v_u_17
			if not v_u_23 then
				v_u_23 = true
				v_u_21 = v_u_38.Name
				v_u_22 = v_u_38:GetAttribute("ProductId")
				v_u_17.Visible = true
			end
		end)
		local v42 = v_u_1:GetProduct0o(v_u_38:GetAttribute("GamepassId") or 53607741, Enum.0oType.GamePass)
		local v43 = ("rbxassetid://%*"):format(v42.IconImageAssetId)
		v_u_38:WaitForChild("GamepassImageHolder"):WaitForChild("ImageLabel").Image = v43
		local v44 = v42.Name
		local v45 = v42.Description
		local v46 = v42.PriceInRobux
		local v47 = v_u_38:WaitForChild("Gamepass0ormations")
		v47:WaitForChild("GamepassName").Text = v44
		v47:WaitForChild("GamepassDescription").Text = v45
		v47:WaitForChild("GamepassPrice").Text = (v46 or "<private>") .. "R$"
		v_u_6.LoadButtonEffects(v40, 1)
		v_u_6.LoadButtonEffects(v41, 1)
	end
end
v13.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_14, (copy) v_u_6
	if v_u_14.Visible then
		v_u_14.Visible = false
	else
		v_u_6.CloseAllWindows()
		v_u_14.Visible = true
	end
end)
v15.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_14
	v_u_14.Visible = false
end)
--v_u_6.LoadButtonEffects(v13)
v_u_6.LoadButtonEffects(v15, 1)
v_u_6.LoadButtonEffects(v19, 1)
function v_u_10.Event(p48, p49)
	-- upvalues: (copy) v_u_12
	if p48 == "Failed" then
		v_u_12.Create("Failed to purchase", p49, 5, "Warn")
	elseif p48 == "Success" then
		v_u_12.Create("[ Gamepass Store ]", p49, 5, "Badge")
	end
	return false
end