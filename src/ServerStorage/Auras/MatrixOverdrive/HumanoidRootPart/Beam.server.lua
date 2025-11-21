local function compareAttachments(attachment1, attachment2)
	if attachment1 == nil or attachment2 == nil then
		return false
	end

	return attachment1.WorldPosition == attachment2.WorldPosition and
		attachment1.WorldOrientation == attachment2.WorldOrientation
end

local parent = script.Parent.Parent
local descendants = parent:GetDescendants()

for _, descendant in pairs(descendants) do
	if descendant:IsA("Beam") then
		local beam = descendant
		local attachment0 = beam.Attachment0
		local attachment1 = beam.Attachment1

		if attachment0 and attachment1 then
			for _, candidate in pairs(descendants) do
				if candidate:IsA("Attachment") then
					if compareAttachments(attachment0, candidate) then
						beam.Attachment0 = candidate
					end

					if compareAttachments(attachment1, candidate) then
						beam.Attachment1 = candidate
					end
				end
			end
		end
	end
end