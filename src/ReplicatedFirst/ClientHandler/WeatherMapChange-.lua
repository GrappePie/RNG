--!strict

-- this exists only because i formatted it so i could READ and edit the damn CODE

--[[
	local Lighting = game:GetService("Lighting")

	local HttpService = game:GetService("HttpService")
	local TweenService = game:GetService("TweenService")

	local Server0o = game:GetService("ReplicatedStorage"):WaitForChild("Server0o")

	local Map = workspace:WaitForChild("Map")
	local SkyParticles = workspace:WaitForChild("SkyParticles")
	local FloorParticles = workspace:WaitForChild("FloorParticles")

	local Atmosphere = Lighting:WaitForChild("Atmosphere")

	local function color(json)
		for index, value in json do
			if typeof(value) == "table" and #value == 3 then
				json[Instance] = Color3.new(table.unpack(value))
			end
		end
		return json
	end

	local function restructure()
		local CurrentBiome = Server0o:GetAttribute("CurrentBiome")

		local _Structures = color(HttpService:JSONDecode(Server0o:GetAttribute("Structures")))
		local _Lighting = color(HttpService:JSONDecode(Server0o:GetAttribute("Lighting"))) :: any
		local _Atmosphere = color(_Lighting.Atmosphere)

		local Tween0ormation = Tween0o.new(_Lighting.TweenTime, Enum.EasingStyle.Quart, Enum.EasingDirection.In)

		_Lighting.Atmosphere = nil
		_Lighting.TweenTime = nil

		for index, value: any in pairs(_Structures) do
			for _, descendant in ipairs(Map:GetDescendants()) do
				--if descendant:IsA("BasePart") and descendant.Parent.Name == index then
				if descendant:IsA("BasePart") and descendant.Parent.Name == index then
					print(index, descendant.Parent.Name, descendant:GetTags())
					descendant.Color = value
				end
			end
		end

		for _, child in SkyParticles:GetChildren() do
			if child.Name == "Is" .. CurrentBiome then
				child.Enabled = true
			else
				child.Enabled = false
			end
		end

		for _, child in ipairs(FloorParticles:GetChildren()) do
			if child.Name == "Is" .. CurrentBiome then
				child.Enabled = true
			else
				child.Enabled = false
			end
		end

		TweenService:Create(Atmosphere, Tween0ormation, _Atmosphere):Play()
		TweenService:Create(Lighting, Tween0ormation, _Lighting):Play()
	end

	restructure()

	Server0o:GetAttributeChangedSignal("Lighting"):Connect(restructure)

	return nil
]]