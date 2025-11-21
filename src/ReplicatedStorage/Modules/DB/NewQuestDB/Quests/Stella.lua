local l_Util_0 = require(script.Parent.Parent:WaitForChild("Util"));
local v1 = {
	Name = "Stella", 
	ViewportData = {
		Model = workspace.Map.etc.Stella, 
		CameraCFrame = l_Util_0.getThumbnailCFrame(workspace.Map.etc.Stella)
	}
};
return {
	QuestName = "Stella", 
	QuestList = {
		{
			SubQuestName = "Stella's request", 
			Description = "Let's Find her magical ingredient", 
			Dialogs = {
				QuestCompletedBeforeAccept = {
					Speaker = v1, 
					Contexts = l_Util_0.contexts({
						"Hey! Can you help me while you're here?", 
						"I lost my magical ingredient while using teleportation magic.", 
						"It looks like a star shape with a shining moon in the middle.", 
						"Oh wait you already have my star?", 
						"Thank you, I'll create the portal for you."
					})
				}, 
				General = {
					Speaker = v1, 
					Contexts = l_Util_0.contexts({
						"Hey! Can you help me while you're here?", 
						"I lost my magical ingredient while using teleportation magic.", 
						"It looks like a star shape with a shining moon in the middle.", 
						"I'd appreciate it if you could find it. As a reward, I'll create a portal near the entrance of the mine that leads directly to my location."
					}), 
					Choices = l_Util_0.DefaultChoices
				}, 
				NotYetComplete = {
					Speaker = v1, 
					Contexts = l_Util_0.contexts("You haven't completed my quest yet.")
				}, 
				QuestComplete = {
					Speaker = v1, 
					Contexts = l_Util_0.contexts({
						"Thank you.", 
						"As promised, I've created a portal for you."
					}), 
					Choices = {
						{
							ButtonText = "...", 
							Result = "Completed"
						}
					}
				}
			}, 
			Requirements = {
				{
					Name = "Collect Stella's star.", 
					Description = "Collect Stella's star.", 
					Type = "Item_Stella's star", 
					Goal = 1, 
					CalculatingGoalInTotal = true
				}
			}, 
			Rewards = {
				Custom = {
					{
						RewardName = "Portal1", 
						Runner = function(v2)
							l_Util_0.DataStore.GetStore(v2, true):SetValue("CaveShortcutUnlocked", true);
						end
					}
				}
			}
		}
	}, 
	AllQuestsCompletedDialog = {
		Speaker = v1, 
		Contexts = l_Util_0.contexts("You've already completed all my quests."), 
		Choices = {
			{
				ButtonText = "..."
			}
		}
	}
};
