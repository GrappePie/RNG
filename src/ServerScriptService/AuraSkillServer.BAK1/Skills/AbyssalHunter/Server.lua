local ModeNums = {}

local Modes = {
	"Juggernaut";
	"Destroyer";
	"Shifter";
}

local ModeAnimations = {
	["Juggernaut"] = {
		Animation1 = script.Juggernaut;
		Animation2 = script.Juggernaut;
		Ru0im = script.JuggernautRun;
		WalkAnim = script.JuggernautRun;
		JumpAnim = script.Juggernaut;
		FallAnim = script.Juggernaut;
		ClimbAnim = script.Juggernaut
	};
	["Destroyer"] = {
		Animation1 = script.Destroyer;
		Animation2 = script.Destroyer;
		Ru0im = script.DestroyerRun;
		WalkAnim = script.DestroyerRun;
		JumpAnim = script.Destroyer;
		FallAnim = script.Destroyer;
		ClimbAnim = script.Destroyer
	};
	["Shifter"] = {
		Animation1 = script.Shifter;
		Animation2 = script.Shifter;
		Ru0im = script.JuggernautRun;
		WalkAnim = script.JuggernautRun;
		JumpAnim = script.Shifter;
		FallAnim = script.Shifter;
		ClimbAnim = script.Shifter
	}
}

function ChangeAnim(Animate, Mode)
	local Anims = {
		["Animation1"] = true;
		["Animation2"] = true;
		["Ru0im"] = true;
		["WalkAnim"] = true;
		["JumpAnim"] = true;
		["FallAnim"] = true;
		["ClimbAnim"] = true;
	}
	
	for i, v in pairs(Animate:GetDescendants()) do
		if Anims[v.Name] then
			Anims[v.Name] = v
		end
	end
	
	for i, v in pairs(ModeAnimations[Modes[Mode]]) do
		Anims[tostring(i)].AnimationId = v.AnimationId
	end
	
	Animate.Enabled = false
	task.wait(.05)
	Animate.Enabled = true
end

return {
	["Ability"] = function(Player : Player)
		local Character = Player.Character or Player.CharacterAdded:Wait()
		local Humanoid = Character:WaitForChild("Humanoid")
		local RootPart = Humanoid.RootPart
		local Animate = Character:WaitForChild("Animate")
		local Modenum = ModeNums[Player]
		local mode = RootPart:WaitForChild("Title").TitleUI.Mode
		
		if not Modenum then
			ModeNums[Player] = 1
			Modenum = ModeNums[Player]
		end
		
		Modenum = ModeNums[Player] + 1
		ModeNums[Player] = Modenum
		
		if Modenum > 3 then
			Modenum = 1
			ModeNums[Player] = 1
		end
		
		local sound = script.Switch:Clone()
		sound.Parent = RootPart
		sound:Play()

		sound.Ended:Connect(function()
			sound:Destroy()
		end)
		
		mode.Text = string.upper(Modes[Modenum])
		
		if Modenum == 3 then
			Humanoid.WalkSpeed = 23
		else
			Humanoid.WalkSpeed = 16
		end
		
		ChangeAnim(Animate, Modenum)
	end;
}