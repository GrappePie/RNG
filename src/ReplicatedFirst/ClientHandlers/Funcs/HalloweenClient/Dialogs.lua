-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:17:03
-- Luau version 6, Types version 3
-- Time taken: 0.000868 seconds

local tbl = {
	Name = "Jack";
	ViewportData = {
		Model = nil;
	};
}
return {
	NoCurrency = {
		Contexts = {{
			Speaker = tbl;
			Text = "Hey? You need to pay the price!";
			EndDelay = 1;
		}};
	};
	NoCurrencyRepeat = {
		Contexts = {{
			RichText = true;
			Speaker = tbl;
			Text = "No pumpkins? How about offering your <i>head</i>...";
			EndDelay = 0.2;
		}, {
				Speaker = tbl;
				Text = "......";
				EndDelay = 1;
			}, {
				Speaker = tbl;
				Text = "Well!";
				EndDelay = 0.2;
			}, {
				Speaker = tbl;
				Text = "I was just kidding, haha!";
				EndDelay = 0.2;
			}};
	};
	OnPurchase = {{
		Contexts = {{
			Speaker = tbl;
			Text = "Haha! Excellent choice...";
			EndDelay = 1;
		}};
	}, {
			Contexts = {{
				Speaker = tbl;
				Text = "Very... well...";
				EndDelay = 1;
			}};
		}};
	Speaker = tbl;
}