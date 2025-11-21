return {
	Interact = {
		Speaker = {
			Name = "Mari", 
			ViewportData = {}
		}, 
		Contexts = {
			{
				Text = "Hmm.. hello.", 
				EndDelay = 0.2
			}, 
			{
				Text = "I hope I have something... that catches your attention..", 
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
				ButtonText = "Who are you?", 
				Result = "Leave", 
				NextDialog = {
					Speaker = {
						Name = "Mari", 
						ViewportData = {}
					}, 
					Contexts = {
						{
							Text = "My... name is Mari... nice to meet you...", 
							EndDelay = 1
						}, 
						{
							Text = "...", 
							EndDelay = 1
						}, 
						{
							Text = "Why are you looking at me like that...?", 
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
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Th...Thank you", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "That's a great choice...", 
					EndDelay = 1
				}
			}
		}
	}, 
	NoProduct = {
		{
			Speaker = {
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Sorry... that was the last item...", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "The goods are all... sold out..", 
					EndDelay = 1
				}
			}
		}
	}, 
	NoCurrency = {
		{
			Speaker = {
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "Uh oh... you don't have enough money...", 
					EndDelay = 1
				}
			}
		}, 
		{
			Speaker = {
				Name = "Mari", 
				ViewportData = {}
			}, 
			Contexts = {
				{
					Text = "I think... you don't have enough money...", 
					EndDelay = 1
				}
			}
		}
	}
};
