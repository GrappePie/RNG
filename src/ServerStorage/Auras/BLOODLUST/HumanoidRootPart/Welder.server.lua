local hrp = script.Parent
if hrp == nil then
	return
end
local rightarm = script.Parent.Parent:WaitForChild("Right Arm")
rightarm.BlackScythe.Weld.Part0 = rightarm
hrp.box.Weld.Part0 = hrp
hrp.debris.Weld.Part0 = hrp
hrp.shard1.Weld.Part0 = hrp
hrp.shard2.Weld.Part0 = hrp
hrp.shardgoto.Weld.Part0 = hrp
hrp.shardgoto2.Weld.Part0 = hrp