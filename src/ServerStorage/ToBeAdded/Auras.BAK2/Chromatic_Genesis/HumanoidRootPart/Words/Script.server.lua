local function getRandomEmitter(parent)
	local emitters = {}
	for _, child in ipairs(parent:GetChildren()) do
		if child:IsA("ParticleEmitter") then
			table.insert(emitters, child)
		end
	end
	if #emitters > 0 then
		return emitters[math.random(1, #emitters)]
	else
		return nil
	end
end

local function emitRandomParticle()
	local parent = script.Parent
	local emitter = getRandomEmitter(parent)
	if emitter then
		emitter:Emit(1)
	end
end

while true do
	local waitTime = math.random(3, 5)
	wait(waitTime)
	emitRandomParticle()
end