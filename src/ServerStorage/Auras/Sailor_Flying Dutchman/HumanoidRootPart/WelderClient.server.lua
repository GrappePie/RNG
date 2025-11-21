local hrp = script.Parent
if hrp == nil then
	return
end
local shipWeld = hrp.shipWeld
shipWeld.Part0 = hrp.Parent:WaitForChild("Torso")
shipWeld.Part1 = hrp.ship
local Candle11Weld = hrp.Candle11Weld
Candle11Weld.Part0 = hrp
Candle11Weld.Part1 = hrp.candle11
local Candle1Weld = hrp.Candle1Weld
Candle1Weld.Part0 = hrp
Candle1Weld.Part1 = hrp.candle
local Candle22Weld = hrp.Candle22Weld
Candle22Weld.Part0 = hrp
Candle22Weld.Part1 = hrp.candle22
local Candle2Weld = hrp.Candle2Weld
Candle2Weld.Part0 = hrp
Candle2Weld.Part1 = hrp.candle
local PartWeld = hrp.PartWeld
PartWeld.Part0 = hrp
PartWeld.Part1 = hrp.Part
local Part2Weld = hrp.Part2Weld
Part2Weld.Part0 = hrp
Part2Weld.Part1 = hrp.Part2
local Part3Weld = hrp.Part3Weld
Part3Weld.Part0 = hrp
Part3Weld.Part1 = hrp.Part3