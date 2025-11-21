local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera
local song = script.Parent.Parent.Song --example, you can change this
local thres = 145 -- sensitivity threshold
local shakeMagnitude = 15 -- magnitude of the camera shake
local shakeDuration = 0.5 -- duration of each shake

while true do
	if song.PlaybackLoudness > thres then
		for i, shockwave in ipairs(script.Parent:GetDescendants()) do
			if shockwave:IsA("ParticleEmitter") and shockwave.Name == "LayerShockwave2" then
				shockwave:Emit(7)
			end
		end

		local startTime = tick()
		local function shakeCamera()
			if tick() - startTime < shakeDuration then
				local offsetX = math.random(-shakeMagnitude, shakeMagnitude) / 10
				local offsetY = math.random(-shakeMagnitude, shakeMagnitude) / 10
				local offsetZ = math.random(-shakeMagnitude, shakeMagnitude) / 10
				Camera.CFrame = Camera.CFrame * CFrame.new(offsetX, offsetY, offsetZ)
			else
				RunService:UnbindFromRenderStep("CameraShake")
				Camera.CFrame = Camera.CFrame
			end
		end
		RunService:BindToRenderStep("CameraShake", Enum.RenderPriority.Camera.Value, shakeCamera)
	end
	task.wait()
end
