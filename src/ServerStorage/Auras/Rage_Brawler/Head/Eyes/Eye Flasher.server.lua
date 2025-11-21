--!strict
local Eyes = script.Parent:WaitForChild("Eyes")
while task.wait(0.2) do
	local LEye = Eyes:WaitForChild("LEye")
	local REye = Eyes:WaitForChild("REye")

	local LE1 = LEye:WaitForChild("E1")
	local RE1 = REye:WaitForChild("E1")
	local LE2 = LEye:WaitForChild("E2")
	local RE2 = REye:WaitForChild("E2")

	--LE1:Emit(2)
	--RE1:Emit(2)
	LE2:Emit(3)
	RE2:Emit(3)
end