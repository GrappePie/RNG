local l_LocalPlayer_0 = game:GetService("Players").LocalPlayer;
return {
	Diaboli = {
		Void = {
			Rarity = 1 / 10, 
			CreatorId = 419860256
		}
	}, 
	Arcane = {
		Dark = {
			Rarity = 2 / 10, 
			CreatorId = 419860256, 
			Description = "This is the result of intervening <font color=\"rgb(53,1,48)\"><stroke color=\"rgb(158,13,196)\" thickness=\"1\" transparency=\"0\">darkness</stroke></font> into a <font color=\"rgb(88,210,238)\">powerful spell</font> capable of bringing destruction that could devastate civilizations in an instant. \n\nThis dreadful entity, no longer a mere spell, now is a sentient being \n\nDestined to bring down destruction and chaos upon the world according to its own will"
		}, 
		Legacy = {
			Rarity = 1 / 10, 
			CreatorId = 419860256, 
			Description = "A <font color=\"rgb(88,210,238)\">powerful spell</font> created by an ancient civilization, it was originally invented as a means of salvation in war, but instead the spell drived out of control and wiped out their entire civilization from the world. \n\nMaybe it was... too powerful."
		}
	}, 
	Aquatic = {
		Flame = {
			Rarity = 1 / 10, 
			Description = "It represents the flow of <font color=\"rgb(255,140,0)\">flame</font>", 
			CreatorId = 1390696522, 
			IsCommunityAura = true
		}
	}, 
	Rage = {
		Heated = {
			Rarity = 1 / 10, 
			Description = "Furious rage", 
			CreatorId = 419860256
		},
		Brawler = {
			Rarity = 1/10,
			Description = "Empty.", 
			CreatorId = 347681747, 
			AudioInfo = {
				Name = "Shriek", 
				Author = "D-Mode-D"
			}
		}
	}, 
	Magnetic = {
		["Reverse Polarity"] = {
			Rarity = 1 / 10, 
			CreatorId = 500806314, 
			IsCommunityAura = true
		}
	}, 
	Lunar = {
		["Full Moon"] = {
			Rarity = 1 / 10, 
			CreatorId = 317330352, 
			IsCommunityAura = true, 
			Description = "A <font color=\"rgb(240, 230, 140)\">Full Moon</font> hung in the sky", 
			AudioInfo = {
				Name = "Shiny night", 
				Author = "Kandera"
			}
		},
		["Nightfall"] = {
			Rarity = 0.1 / 10, 
			CreatorId = 317330352, 
			IsCommunityAura = true, 
			Description = "Empty.", 
			AudioInfo = {
				Name = "Nightfall", 
				Author = "Kori"
			}
		},
	}, 
	Twilight = {
		["Iridescent Memory"] = {
			Rarity = 1 / 10, 
			CreatorId = 1390696522, 
			Description = "The memories were becoming increasingly blurry.\nUnder the full moon that holds many dreams high above, I sincerely wish.\nI believe that I will meet him again someday.\nI once again reminisce about the memories I have with the person I will never meet again.\n\nHer side is empty again today.", 
			AudioInfo = {
				Name = "Fleecy Light", 
				Author = "Baptiste Charvet"
			}
		}
	}, 
	Solar = {
		Solstice = {
			Rarity = 1 / 10, 
			CreatorId = 478424220, 
			IsCommunityAura = true, 
			AudioInfo = {
				Name = "White Knight", 
				Author = "APM Music"
			}
		}
	}, 
	Starscourge = {
		Radiant = {
			Rarity = 1 / 10, 
			CreatorId = 94067972, 
			IsCommunityAura = true, 
			AudioInfo = {
				Name = "Crystal Drift (a)", 
				Author = "APM Music"
			}
		}
	}, 
	BOUNDED = {
		UNBOUND = {
			Rarity = 1 / 10, 
			CreatorId = 419860256, 
			Description = "When news spread that this being had awoken, people trembled in fear. \n\nHowever, something was odd; the creature had awoken but showed no signs of activity. \nYet, it was too early for assumptions. It could be just recovering its strength...", 
			AudioInfo = {
				Name = "Brooding Dark (a)", 
				Author = "APM Music"
			}
		}
	}, 
	Stormal = {
		Hurricane = {
			Rarity = 1 / 10, 
			CreatorId = 1188520962, 
			AudioInfo = {
				Name = "Looking In a", 
				Author = "APM Music"
			}
		}
	}, 
	[":Flushed:"] = {
		Lobotomy = {
			Rarity = 1 / 10, 
			Description = "Fire In The Hole!!", 
			CreatorId = 198120391, 
			ConceptId = 1616246197
		}, 
		["Heart Eye"] = {
			Rarity = 0, 
			Description = "I\226\128\153ve fallen in <font color=\"rgb(245,136,255)\">love</font>!", 
			Unobtainable = true
		}
	}, 
	Exotic = {
		APEX = {
			Rarity = 1 / 10, 
			CreatorId = 419860256, 
			AudioInfo = {
				Name = "Panic Track", 
				Author = "Remi Gallego"
			}, 
			Description = "Maybe this is the source of the ancient <font color=\"rgb(255,0,0)\">being</font>, that people were dying to know about?"
		}
	}, 
	Chromatic = {
		Genesis = {
			Rarity = 1 / 10, 
			CreatorId = 419860256, 
			Description = "Defining the beginning and end of the world.\n\n<b><font transparency=\".75\">WAKE\nUP\nFROM\nAWAY</font></b>", 
			AudioInfo = {
				Name = "Something Different (Feat. Talurre) [Remastered]", 
				Author = "Derpcat"
			}
		}, 
		Exotic = {
			Rarity = 0, 
			Unobtainable = true, 
			Description = "Inside of hollow and dark place.", 
			CreatorId = 3536675145, 
			AudioInfo = {
				Name = "Cheatreal", 
				Author = "t+pazolite"
			}
		}, 
		Kromat1k = {
			Rarity = 0.4 / 10, 
			CreatorId = 419860256, 
			AudioInfo = {
				Name = "The Great Strategy", 
				Author = "badliz"
			}, 
			Unobtainable = true, 
			LimitedTimestamp = 1714143600, 
			Description = ("y3S! Ffeel my unst0wpavb1e beat!?\n\nAura dedicated to April Fool's Day. You can get it until [%*]"):format((DateTime.fromUnixTimestamp(1714143600):FormatLocalTime("LLL", l_LocalPlayer_0 and l_LocalPlayer_0.LocaleId or "ko-kr")))
		}
	}, 
	Divinus = {
		Love = {
			Rarity = 0, 
			Unobtainable = true, 
			Description = "Perchance, maybe <font color=\"rgb(245,136,255)\">love</font> is the strongest emotion?"
		}
	}, 
	Celestial = {
		Cupid = {
			Rarity = 0, 
			Unobtainable = true, 
			CreatorId = 419860256, 
			Description = "Do you want your <font color=\"rgb(245,136,255)\">love</font> to come true?? \nI\226\128\153ll make it come true!"
		}, 
		Divine = {
			Rarity = 1 / 10, 
			CreatorId = 1270194733, 
			Description = "EMPTY", 
			AudioInfo = {
				Name = "Slow Down", 
				Author = "Creo"
			}
		}
	}, 
	Hazard = {
		Rays = {
			Rarity = 1 / 10, 
			CreatorId = 419860256
		}
	}, 
	Undead = {
		Devil = {
			Rarity = 1 / 10, 
			Description = "The tiny demon", 
			CreatorId = 419860256
		}
	}, 
	Ink = {
		LEAK = {
			Rarity = 1 / 10, 
			CreatorId = 419860256
		}
	}, 
	Undefined = {
		Defined = {
			Rarity = 1 / 10, 
			Unobtainable = true, 
			LimitedTimestamp = 1714143600, 
			CreatorId = 1390696522, 
			Description = ("Aura dedicated to April Fool's Day. You can get it until [%*]"):format((DateTime.fromUnixTimestamp(1714143600):FormatLocalTime("LLL", l_LocalPlayer_0 and l_LocalPlayer_0.LocaleId or "ko-kr")))
		}
	}, 
	Impeached = {
		impeach = {
			Rarity = 1 / 10, 
			CreatorId = 419860256, 
			Unobtainable = true, 
			LimitedTimestamp = 1714143600, 
			Description = ("HEEHEEHEE, 'I\226\128\153m a peach!'\n\nim peach\n\nAura dedicated to April Fool's Day. You can get it until [%*]"):format((DateTime.fromUnixTimestamp(1714143600):FormatLocalTime("LLL", l_LocalPlayer_0 and l_LocalPlayer_0.LocaleId or "ko-kr")))
		},
		Diamond = {
			Rarity = 3 / 10, 
			CreatorId = 2044636238, 
			Unobtainable = true, 
			LimitedTimestamp = 1714143600, 
			Description = "The <font color=\"rgb(13,176,226)\">DIAMOND</font> ruler...?",
		}
	}, 
	Overture = {
		History = {
			Rarity = 3 / 10, 
			CreatorId = 419860256, 
			Description = "Tick* Tick* Tick* Tick* \n\nWhen the clock hand started to move for the <font color=\"rgb(132,255,94)\"><b>first time</b></font>, \nwas when everything started to move for the <font color=\"rgb(255,255,255)\"><b>first time</b></font>....."
		}
	}, 
	Sailor = {
		["Flying Dutchman"] = {
			Rarity = 6 / 10, 
			AudioInfo = {
				Name = "Voyage of Lost Souls", 
				Author = "End0_114"
			}, 
			HipHeight = 0, 
			CreatorId = 549228615, 
			Description = "<font color=\"rgb(81,113,80)\">The Flying Dutchman</font>. The same terrible vessel whose very timbers are cut from the bodies and souls of doomed seamen."
		}
	},
	Ruins = {
		["Blossom"] = {
			Rarity = 2 / 10, 
			AudioInfo = {
				Name = "Ruins : Piano", 
				Author = "sutart_thecoolkid"
			}, 
			HipHeight = 0, 
			CreatorId = 2044636238, 
			Description = "<font color=\"rgb(241,164,255)\">Ruins : Blossom</font>. Abandoned in a beautiful forest; What could it be hiding?"
		}
	},
	Oppression = {
		Depression = {
			Rarity = 69 / 10, 
			CreatorId = 2044636238, 
			HipHeight = 0, 
			Description = "Depression. :'("
		}
	},
	Matrix = {
		Overdrive = {
			Rarity = 5 / 10,
			CreatorId = 2044636238, 
			HipHeight = 0, 
			Description = "Empty."
		}
	},
	APOSTOLOS = {
		VEIL = {
			Rarity = 8 / 10,
			CreatorId = 2044636238, 
			HipHeight = 0, 
			Description = "Empty."
		}
	}
};
