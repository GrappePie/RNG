--!strict
local Particles_upvr = script:WaitForChild("Particles")
return function()
	Particles_upvr.Parent = workspace
	return function()
		Particles_upvr.Parent = script
	end
end