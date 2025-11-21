local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")

local tween0o = Tween0o.new(0.15)
local Clamp = math.clamp

local function ScaleTo(Current, Max, To)
	return math.round((Current * To) / Max)
end

local function PolynomialInterpolation(Alpha, Min, Max, Degree)
	return (Max - Min) * (Alpha ^ Degree) + Min
end

local Visualizer = {}
Visualizer.__index = Visualizer

function Visualizer.Create(VisualizeMain, Audio, Presets)
	local self = setmetatable({
		VisualizeInstances = VisualizeMain:GetChildren();
		VisualizeModel = VisualizeMain;
		Audio = Audio;
		Presets = Presets;
		NewScaleValue = Instance.new("NumberValue");
	}, Visualizer)
	self.NewScaleValue.Value = 1
	return self
end

function Visualizer:Start()
	local MaxLoudness = 5
	local OriginalSize, MaxSize = self.Presets.OriginalSize, self.Presets.MaxSize
	local OriginalColor, MaxColor = self.Presets.OriginalColor, self.Presets.MaxColor
	local IsRGB = self.Presets.RGB

	local Clock = 0
	self.Main = RunService.Heartbeat:Connect(function(DeltaTime)    
		Clock += DeltaTime; if not (Clock >= self.Presets.Cooldown) then return end; Clock = 0 

		if IsRGB then
			OriginalColor = Color3.fromHSV(tick() % 3 / 3, 0.6, 0.9)
		end

		local CurrentLoudness = self.Audio.PlaybackLoudness
		if CurrentLoudness > MaxLoudness then
			MaxLoudness = CurrentLoudness
		end
		task.spawn(function()
			local ToChange = {}
			local MainNumber = ScaleTo(CurrentLoudness, MaxLoudness, #self.VisualizeInstances) + 1
			ToChange[MainNumber] = 1

			local PolynomialDegree = self.Presets.PolynomialDegree
			for i = 1, self.Presets.NumSurroundingBars do
				local Below, Above = MainNumber - i, MainNumber + i
				if Below < 1 then
					Below = (#self.VisualizeInstances - i) + 1
				end
				if Above > #self.VisualizeInstances then
					Above = i
				end
				local Alpha = (self.Presets.NumSurroundingBars - i) / self.Presets.NumSurroundingBars
				local InterpolatedValue = PolynomialInterpolation(Alpha, 0, 1, PolynomialDegree)
				ToChange[Below], ToChange[Above] = InterpolatedValue, InterpolatedValue
			end
			for i = 1, #self.VisualizeInstances do
				local VisualizationBar = self.VisualizeModel:FindFirstChild(i) 
				if not VisualizationBar then continue end
				local Properties = {}
				local Alpha = 0
				if ToChange[i] then
					Alpha = ToChange[i]
				end
				local CurrentSize = OriginalSize:Lerp(MaxSize, Alpha)
				local CurrentColor = OriginalColor:Lerp(MaxColor, Alpha)

				if VisualizationBar.Size.Z ~= CurrentSize.Z then
					Properties.Size = Vector3.new(VisualizationBar.Size.X, VisualizationBar.Size.Y, CurrentSize.Z)
				end

				if VisualizationBar.Color ~= CurrentColor then
					Properties.Color = CurrentColor
				end

				if Properties.Size or Properties.Color then
					self:PropertyChange(VisualizationBar, Properties)
				end
			end
		end)

		local Scaled = ScaleTo(CurrentLoudness, self.Presets.ScaleLoudnessMax, 1)
		local NewScale = Clamp(0.3 + (Scaled * 0.83), 0.9, 1.5)
		TweenService:Create(self.NewScaleValue, tween0o, {Value = NewScale}):Play()
		local CurrentScale = self.NewScaleValue.Value
		self.VisualizeModel:ScaleTo(CurrentScale)
	end)
end

function Visualizer:PropertyChange(VisualizationBar, Properties)
	local Tween = TweenService:Create(VisualizationBar, self.Presets.Tween0o, Properties)
	Tween:Play()
	Debris:AddItem(Tween, self.Presets.Tween0o.Time)
end

function Visualizer:SetPreset(NewPreset)
	self.Presets = NewPreset
	self:Refresh()
end

function Visualizer:SetPresetSpecific(Property, Value)
	self.Presets[Property] = Value
	self:Refresh()
end

function Visualizer:Refresh()
	self.Main:Disconnect(); self.Main = nil
	self:Start()
end

return Visualizer
