-- Edit Align Properties under the script
-- Change what to follow here
-- Make sure each of these parts has an attachment named "Attachment"
--task.wait(1)
local MainPart, ToFollow = script.Parent.shard1, script.Parent.shardgoto

script.AlignPosition.Attachment0, script.AlignOrientation.Attachment0 = MainPart.Attachment, MainPart.Attachment
script.AlignPosition.Attachment1, script.AlignOrientation.Attachment1 = ToFollow.Attachment, ToFollow.Attachment