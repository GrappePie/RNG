task.wait(1)

while task.wait(0.001) do
	local si = 0.8+script.Parent.Parent.Parent.HumanoidRootPart.Music.PlaybackLoudness / 1000
	local si2 = 10+script.Parent.Parent.Parent.HumanoidRootPart.Music.PlaybackLoudness / 1000
	script.Parent.Size = UDim2.new(si2, 0 , si, 0)
end