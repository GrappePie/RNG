local hrp = script.Parent
if hrp == nil then
	return
end
local CoreWeld = hrp.CoreWeld
CoreWeld.Part0 = hrp
CoreWeld.Part1 = hrp.Core
local FloorWeld = hrp.FloorWeld
FloorWeld.Part0 = hrp
FloorWeld.Part1 = hrp.Floor
local MainShardWeld = hrp.MainShardWeld
MainShardWeld.Part0 = hrp
MainShardWeld.Part1 = hrp.MainShard
local Shard1Weld = hrp.Shard1Weld
Shard1Weld.Part0 = hrp
Shard1Weld.Part1 = hrp.Shard1
local Shard2Weld = hrp.Shard2Weld
Shard2Weld.Part0 = hrp
Shard2Weld.Part1 = hrp.Shard2