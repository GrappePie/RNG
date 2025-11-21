--[[
		Thank you for using UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw.

		If you didn't save in Binary (rbxl) - it's recommended to save the game right away to take advantage of the binary format & to preserve values of certain properties if you used IgnoreDefaultProperties setting (as they might change in the future).
		You can do that by going to FILE -> Save to File As -> Make sure File Name ends with .rbxl -> Save

		ServerStorage, ServerScriptService and Server Scripts are IMPOSSIBLE to save because of FilteringEnabled.

		If your player cannot spawn into the game, please move the scripts in StarterPlayer somewhere else. Then run `game:GetService("Players").CharacterAutoLoads = true`.
		And use "Play Here" to start game instead of "Play" to spawn your Character where your Camera currently is.

		If the chat system does not work, please use the explorer and delete everything inside the TextChatService/Chat service(s). 
		Or run `game:GetService("Chat"):ClearAllChildren() game:GetService("TextChatService"):ClearAllChildren()`
				
		If Union and MeshPart collisions don't work, run the script below in the Studio Command Bar:
				
				
		local C = game:GetService("CoreGui")
		local D = Enum.CollisionFidelity.Default
				
		for _, v in game:GetDescendants() do
			if v:IsA("TriangleMeshPart") and not v:IsDescendantOf(C) then
				v.CollisionFidelity = D
			end
		end
		print("Done")
				
		If you can't move the Camera, run this script in the Studio Command Bar:
			
		workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed
		
		Or Destroy the Camera.

		This file was generated with the following settings:
				{"SaveBytecode":false,"ShowStatus":true,"IgnoreDefaultPlayerScripts":true,"NilInstancesFixes":{"BaseWrap":null,"Animator":null,"Attachment":null,"PackageLink":null,"AdPortal":null},"IgnoreList":["CoreGui","CorePackages"],"__DEBUG_MODE":false,"decomptype":"","IgnoreNotArchivable":true,"RemovePlayerCharacters":true,"Object":null,"DecompileIgnore":["TextChatService",null,null],"IgnoreSpecialProperties":false,"TreatUnionsAsParts":false,"IsModel":false,"NilInstances":false,"ExtraInstances":[],"noscripts":false,"ReadMe":true,"OptionsAliases":{"IsolatePlayers":"SavePlayers","FilePath":"FileName","IgnoreNotArchivable":"IgnoreArchivable","SaveNonCreatable":"SaveNotCreatable","IgnoreDefaultProperties":"IgnoreDefaultProps","timeout":"DecompileTimeout","scriptcache":"DecompileJobless"},"scriptcache":true,"SharedStringOverwrite":false,"AlternativeWritefile":true,"mode":"optimized","SaveCacheInterval":56320,"IgnoreSharedStrings":true,"IsolatePlayers":false,"NotCreatableFixes":["Player","PlayerScripts","PlayerGui","TouchTransmitter"],"timeout":10,"SaveNonCreatable":false,"Anonymous":false,"IsolateStarterPlayer":false,"IsolateLocalPlayerCharacter":false,"IgnorePropertiesOfNotScriptsOnScriptsMode":false,"FilePath":false,"IgnoreDefaultProperties":true,"IsolateLocalPlayer":false,"ShutdownWhenDone":false,"AntiIdle":true,"SafeMode":false,"IgnoreProperties":[],"DecompileJobless":false}

		Elapsed time: 0.5118261000607163 PlaceId: 15532962292 Executor: Synapse Z 0.33-654.rel
]]