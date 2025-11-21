local _ = require(script.Parent:WaitForChild("ItemDB"));
local l_ItemDB_1 = require(game:WaitForChild("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("ItemDB"));
return {
	["Fortune Potion"] = {
		1; 
		description = "Those who take this <font color=\"rgb(148,134,255)\"><b>Potion</b></font> will be <font color=\"rgb(127,255,134)\"><b>Blessed</b></font>.", 
		potions = {
			{
				description = l_ItemDB_1["Fortune Potion I"].Description, 
				viewportModel = l_ItemDB_1["Fortune Potion I"].PreviewModel, 
				ingredients = {
					{
						"Lucky Potion", 
						5
					}, 
					{
						"Uncommon", 
						1
					}, 
					{
						"Rare", 
						5
					}, 
					{
						"Gilded", 
						1
					}
				}
			}, 
			{
				description = l_ItemDB_1["Fortune Potion II"].Description, 
				viewportModel = l_ItemDB_1["Fortune Potion II"].PreviewModel, 
				ingredients = {
					{
						"Fortune Potion I", 
						1
					}, 
					{
						"Lucky Potion", 
						10
					}, 
					{
						"Uncommon", 
						5
					}, 
					{
						"Rare", 
						10
					}, 
					{
						"Gilded", 
						2
					}
				}
			}, 
			{
				description = l_ItemDB_1["Fortune Potion III"].Description, 
				viewportModel = l_ItemDB_1["Fortune Potion III"].PreviewModel, 
				ingredients = {
					{
						"Fortune Potion II", 
						1
					}, 
					{
						"Lucky Potion", 
						15
					}, 
					{
						"Uncommon", 
						10
					}, 
					{
						"Rare", 
						15
					}, 
					{
						"Gilded", 
						5
					}
				}
			}
		}
	}, 
	["Haste Potion"] = {
		2; 
		description = "<font color=\"rgb(127,255,218)\"><b>The Power of the Wind</b></font> speeds you up.", 
		potions = {
			{
				description = l_ItemDB_1["Haste Potion I"].Description, 
				viewportModel = l_ItemDB_1["Haste Potion I"].PreviewModel, 
				ingredients = {
					{
						"Speed Potion", 
						10
					}, 
					{
						"Uncommon", 
						5
					}, 
					{
						"Rare", 
						10
					}, 
					{
						"Wind", 
						1
					}
				}
			}, 
			{
				description = l_ItemDB_1["Haste Potion II"].Description, 
				viewportModel = l_ItemDB_1["Haste Potion II"].PreviewModel, 
				ingredients = {
					{
						"Haste Potion I", 
						1
					}, 
					{
						"Speed Potion", 
						10
					}, 
					{
						"Uncommon", 
						10
					}, 
					{
						"Rare", 
						15
					}, 
					{
						"Wind", 
						2
					}
				}
			}, 
			{
				description = l_ItemDB_1["Haste Potion III"].Description, 
				viewportModel = l_ItemDB_1["Haste Potion III"].PreviewModel, 
				ingredients = {
					{
						"Haste Potion II", 
						1
					}, 
					{
						"Speed Potion", 
						20
					}, 
					{
						"Uncommon", 
						15
					}, 
					{
						"Rare", 
						25
					}, 
					{
						"Wind", 
						4
					}
				}
			}
		}
	}, 
	["Heavenly Potion"] = {
		3; 
		description = "Those who take this <font color=\"rgb(148,134,255)\"><b>Potion</b></font> will be <font color=\"rgb(255,134,219)\"><b>Heavenly Blessed</b></font>.", 
		potions = {
			{
				description = l_ItemDB_1["Heavenly Potion I"].Description, 
				viewportModel = l_ItemDB_1["Heavenly Potion I"].PreviewModel, 
				ingredients = {
					{
						"Lucky Potion", 
						100
					}, 
					{
						"Divinus", 
						50
					}, 
					{
						"Gilded", 
						20
					}, 
					{
						"Celestial", 
						1
					}
				}
			}, 
			{
				description = l_ItemDB_1["Heavenly Potion II"].Description, 
				viewportModel = l_ItemDB_1["Heavenly Potion II"].PreviewModel, 
				ingredients = {
					{
						"Heavenly Potion I", 
						2
					}, 
					{
						"Lucky Potion", 
						125
					}, 
					{
						"Divinus", 
						75
					}, 
					{
						"Gilded", 
						50
					}, 
					{
						"Exotic", 
						1
					}
				}
			}
		}
	}
};
