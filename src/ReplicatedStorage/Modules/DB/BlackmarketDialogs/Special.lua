return {
	Interact = {
		Speaker = {
			Name = "Jester", 
			ViewportData = {}
		}, 
		Contexts = {
			{
				Text = "Welcome!", 
				EndDelay = 0.2
			}, 
			{
				Text = "This place has items that are worth 2000 times more than any store run by some 'idiot'!", 
				EndDelay = 0.2
			}
		}, 
		Choices = {
			{
				ButtonText = "[ Open ]", 
				ButtonColor3 = Color3.fromRGB(26, 136, 18), 
				Result = "Open"
			}, 
			{
				ButtonText = "[ Exchange ]", 
				ButtonColor3 = Color3.fromRGB(91, 14, 136), 
				Result = "Exchange", 
				NextDialog = {
					Speaker = {
						Name = "Jester", 
						ViewportData = {}
					}, 
					Contexts = {
						{
							Text = "If you give me an item filled with life and dark energy, I will exchange it into points necessary for the trade!", 
							EndDelay = 0.2
						}
					}
				}
			}, 
			{
				ButtonText = "Who are you?", 
				Result = "Leave", 
				NextDialog = {
					Speaker = {
						Name = "Jester", 
						ViewportData = {}
					}, 
					Contexts = {
						{
							Text = "I am Jester! A merchant that deals only with special goods!", 
							EndDelay = 1
						}, 
						{
							Text = "I don't take money! I'm only looking for points.", 
							EndDelay = 1
						}
					}, 
					Choices = {
						{
							ButtonText = "...", 
							Result = "Leave"
						}
					}
				}
			}, 
			{
				ButtonText = "[ Leave ]", 
				ButtonColor3 = Color3.fromRGB(136, 16, 16), 
				Result = "Leave"
			}
		}
	}, 
	AfterBought = {
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Thankyou vere- vere- much.", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "What a great deal-", 
					EndDelay = 1
				}
			}
		}
	}, 
	NoProduct = {
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Ah, the items are all sold out.", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Sorry dude! That's all the items I prepared for today!", 
					EndDelay = 1
				}
			}
		}
	}, 
	NoCurrency = {
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "There's nothing I can do to help.", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Hey are you joking? I can't give you the items for free!", 
					EndDelay = 1
				}
			}
		}
	}, 
	NoCurrencySpecial = {
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "You...", 
					EndDelay = 1.5
				}, 
				{
					Text = "Are... you... trying... to trade... in exchange... for... your... soul........? ", 
					EndDelay = 1.5
				}, 
				{
					Text = "...", 
					EndDelay = 2
				}, 
				{
					Text = "Hahaha!!", 
					EndDelay = 1
				}, 
				{
					Text = "I was just playing with you, don't worry-", 
					EndDelay = 1
				}
			}
		}
	}, 
	ExchangeDialogs = {
		{
			Speaker = {
				Name = "Jester", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Thanks, these items will be 'handy'.. heheh", 
					EndDelay = 1
				}
			}
		}
	}, 
	SpecialExchangeDialogs = {
		["Void Coin"] = {
			{
				Speaker = {
					Name = "Jester", 
					ViewportData = {}
				}, 
				Contexts = {
					{
						Text = "Tsk.. what do you think you're doing?", 
						EndDelay = 1
					}
				}
			}, 
			{
				Speaker = {
					Name = "Jester", 
					ViewportData = {}
				}, 
				Contexts = {
					{
						Text = "Buddy... where did you get this from?", 
						EndDelay = 1
					}
				}
			}
		}
	}
};
