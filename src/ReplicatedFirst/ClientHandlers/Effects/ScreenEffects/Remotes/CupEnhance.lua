repeat
	task.wait()
until game:IsLoaded()
local TweenService_upvr = game:GetService("TweenService")
local module = {}
local tbl_upvr = {}
local var6_upvw
local tbl_upvr_3 = {
	Corruption = {
		Luck = 10;
		Speed = 5;
	};
	Hell = {
		Luck = 5;
		Speed = 2.5;
	};
	Null = {
		Luck = 10;
		Speed = 5;
	};
	Rainy = {
		Luck = 2;
		Speed = 1;
	};
	Snowy = {
		Luck = 2;
		Speed = 1;
	};
	Starfall = {
		Luck = 5;
		Speed = 2.5;
	};
	Windy = {
		Luck = 2;
		Speed = 1;
	};
	SandStorm = {
		Luck = 3;
		Speed = 1.5;
	};
}
local tbl_upvr_2 = {
	SandStorm = "Sand Storm";
}
local module_2_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility"))
local Union_upvr = script:WaitForChild("Union")
local BillboardGui_upvr = Union_upvr:WaitForChild("List"):WaitForChild("BillboardGui")
Union_upvr.Parent = workspace
local Debris_upvr = game:GetService("Debris")
local function RemoveLabel_upvr(arg1, arg2) -- Line 42, Named "RemoveLabel"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local var21
	if not var21 then
	else
		if arg2 then
			var21 = 0.1
		else
			var21 = 2
		end
		TweenService_upvr:Create(arg1, Tween0o.new(var21, Enum.EasingStyle.Quart), {
			TextTransparency = 1;
		}):Play()
		Debris_upvr:AddItem(arg1, var21)
	end
end
local TextLabel_upvr = script:WaitForChild("TextLabel")
local function CreateLabel_upvr(arg1, arg2) -- Line 50, Named "CreateLabel"
	--[[ Upvalues[5]:
		[1]: TextLabel_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: BillboardGui_upvr (readonly)
		[5]: RemoveLabel_upvr (readonly)
	]]
	local clone = TextLabel_upvr:Clone()
	clone.Text = ("<font color='#%s'>[%s]: </font> (Luck +%.1f%%, Roll Speed +%.1f%%)"):format(arg2:ToHex(), tbl_upvr_2[arg1] or arg1, tbl_upvr_3[arg1].Luck, tbl_upvr_3[arg1].Speed)
	clone.Parent = BillboardGui_upvr
	task.delay(10, RemoveLabel_upvr, clone)
end
local function Emit(...) -- Line 59
	--[[ Upvalues[8]:
		[1]: var6_upvw (read and write)
		[2]: BillboardGui_upvr (readonly)
		[3]: RemoveLabel_upvr (readonly)
		[4]: Union_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: TweenService_upvr (readonly)
		[7]: CreateLabel_upvr (readonly)
		[8]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if var6_upvw and var6_upvw ~= coroutine.running() then
		task.cancel(var6_upvw)
	end
	for _, v in BillboardGui_upvr:GetChildren() do
		if v:IsA("TextLabel") then
			RemoveLabel_upvr(v, true)
		end
	end
	local args_list = {...}
	local unpacked_value_1_2, unpacked_value_2 = table.unpack(table.remove(args_list, 1))
	for _, v_2 in Union_upvr:GetDescendants() do
		if v_2:IsA("ParticleEmitter") then
			v_2.Color = ColorSequence.new(unpacked_value_1_2)
			v_2:Emit(30)
		end
	end
	for i_3, v_3 in tbl_upvr do
		i_3.Width0 = v_3[1]
		i_3.Width1 = v_3[2]
		i_3.Color = ColorSequence.new(unpacked_value_1_2)
		i_3.Enabled = true
		TweenService_upvr:Create(i_3, Tween0o.new(1.5, Enum.EasingStyle.Quart), {
			Width0 = 0;
			Width1 = 0;
		}):Play()
	end
	local var91 = nil
	CreateLabel_upvr(unpacked_value_2, var91)
	task.wait(0.75)
	for _, v_4 in ipairs(args_list) do
		local unpacked_value_1, unpacked_value_2_2 = table.unpack(v_4)
		for _, v_5 in Union_upvr:GetDescendants() do
			if v_5:IsA("ParticleEmitter") then
				v_5.Color = ColorSequence.new(unpacked_value_1)
				v_5:Emit(15)
			end
		end
		for i_6, v_6 in tbl_upvr do
			i_6.Width0 = v_6[1]
			i_6.Width1 = v_6[2]
			i_6.Color = ColorSequence.new(unpacked_value_1)
			i_6.Enabled = true
			TweenService_upvr:Create(i_6, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
				Width0 = 0;
				Width1 = 0;
			}):Play()
		end
		module_2_upvr.PlaySFX("Enhanced", "UISounds", Random.new():NextNumber(0.9, 1.1))
		CreateLabel_upvr(unpacked_value_2_2, unpacked_value_1)
		task.wait(0.5)
	end
	for _, v_7 in Union_upvr:GetDescendants() do
		if v_7:IsA("Beam") then
			v_7.Enabled = false
		end
	end
end
function module.Emit(...) -- Line 123
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: Emit (readonly)
	]]
	var6_upvw = task.defer(Emit, ...)
end
for _, v_8 in Union_upvr:GetDescendants() do
	if v_8:IsA("Beam") then
		tbl_upvr[v_8] = {v_8.Width0, v_8.Width1}
	end
end
return module