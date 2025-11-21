if script:IsDescendantOf(workspace) then
	local hrp = script.Parent
	if hrp == nil then
		return
	end
	local head = script.Parent.Parent:WaitForChild("Head")
	local rightarm = script.Parent.Parent:WaitForChild("Right Arm")
	local torso = script.Parent.Parent:WaitForChild("HumanoidRootPart")
	hrp.FloorParticles.Weld.Part0 = hrp
	hrp.FloorParticles.VisualizerWeld.Part0 = hrp
	local Visualizer = script.Parent:WaitForChild("Visualizer")
	--Visualizer:PivotTo(Visualizer:GetPivot().Rotation + Vector3.new(hrp.Position))
	task.delay(1, function()
		Visualizer:PivotTo(hrp.CFrame)
		for _, child in Visualizer:GetChildren() do
			local w = Instance.new("WeldConstraint")
			if child:IsA("BasePart") then
				child.Anchored = false
				w.Parent = child
				w.Part0 = hrp
				w.Part1 = child
			end
		end
		script:Destroy()
	end)
end