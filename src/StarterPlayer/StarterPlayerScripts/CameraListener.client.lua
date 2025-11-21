-- What the sigma?

local v1 = Instance.new("AudioListener", workspace.Camera)
local v2 = Instance.new("Wire", v1)
local v3 = Instance.new("AudioDeviceOutput", v2)
v2.SourceInstance = v1
v2.TargetInstance = v3