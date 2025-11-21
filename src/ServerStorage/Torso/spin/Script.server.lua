spinning = script.Parent
supa_numba = .1

while true do
	spinning.CFrame = spinning.CFrame * CFrame.fromEulerAnglesXYZ(0,(supa_numba),0)
	wait(0.00)
end
