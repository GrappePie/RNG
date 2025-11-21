local hrp = script.Parent
if hrp == nil then
	return
end

hrp.FogPartWeld.Part0 = hrp
hrp.FogPartWeld.Part1 = hrp.FogPart

hrp.GearSpotlights1.Part0 = hrp
hrp.GearSpotlights1.Part1 = hrp.GearSpotlights["evil gear"].outline
hrp.GearSpotlights2.Part0 = hrp
hrp.GearSpotlights2.Part1 = hrp.GearSpotlights["evil gear2"].outline


hrp.GearSpotlights3.Part0 = hrp
hrp.GearSpotlights3.Part1 = hrp.GearSpotlights["evil gear"].main
hrp.GearSpotlights4.Part0 = hrp
hrp.GearSpotlights4.Part1 = hrp.GearSpotlights["evil gear2"].main

hrp.MOTOR6DCUBETURN.Part0 = hrp
hrp.MOTOR6DCUBETURN.Part1 = hrp["evil gear"].Part

hrp.Part.Part0 = hrp
hrp.Part.Part1 = hrp.ScreenPart

hrp.REWORKED.Part0 = hrp
hrp.REWORKED.Part1 = hrp.shards.REWORKED

hrp.REWORKED2.Part0 = hrp
hrp.REWORKED2.Part1 = hrp.shards.REWORKED2

hrp.RotatingShards.Part0 = hrp
hrp.RotatingShards.Part1 = hrp.LargeCube.LargeCubePart.RotatingShards

hrp.debris1.Part0 = hrp
hrp.debris1.Part1 = hrp.debris

hrp.evilsigmagears.Part0 = hrp
hrp.evilsigmagears.Part1 = hrp.EVILSIGMAGEAR.Part2

hrp.evilsigmagears2.Part0 = hrp
hrp.evilsigmagears2.Part1 = hrp.EVILSIGMAGEAR.Part

hrp.largeCubePart.Part0 = hrp
hrp.largeCubePart.Part1 = hrp.LargeCube.LargeCubePart

hrp.tower.Part0 = hrp
hrp.tower.Part1 = hrp["the towers"].tower3

hrp.tower2.Part0 = hrp
hrp.tower2.Part1 = hrp["the towers"].tower2

hrp.tower3.Part0 = hrp
hrp.tower3.Part1 = hrp["the towers"].tower

hrp.tower4.Part0 = hrp
hrp.tower4.Part1 = hrp["the towers"].tower4
