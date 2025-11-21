local debounce = false  -- Flag to control cooldown

while task.wait() do
	local song = script.Parent.Parent.Parent.Parent.Parent.Song
	local thres = 512

	if song.PlaybackLoudness > thres and not debounce then
		script.Parent:Emit(1)
		debounce = true  -- Set debounce flag to true to prevent emitting for 1 second

		task.spawn(function()
			task.wait(1)  -- Wait for 1 second
			debounce = false  -- Reset debounce flag after cooldown
		end)
	end
end
