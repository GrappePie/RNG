-- What the sigma?

local v_u_1 = game:GetService("HttpService")
local v_u_2 = game:GetService("ContentProvider")
local v_u_3 = {
	["_version"] = 1
}
v_u_3.__index = v_u_3
local v_u_4 = {
	["version"] = "number",
	["size"] = "number",
	["count"] = "number",
	["columns"] = "number",
	["rows"] = "number",
	["images"] = "table"
}
function v_u_3.new(p5, p6)
	-- upvalues: (copy) v_u_1, (copy) v_u_4, (copy) v_u_3
	if type(p5) == "string" then
		p5 = v_u_1:JSONDecode(p5)
	elseif type(p5) ~= "table" then
		error("Argument #1 (configuration) must be a JSON string or table.", 2)
	end
	for v7, v8 in pairs(p5) do
		if v_u_4[v7] == nil then
			error(("Invalid property name in Radial Image configuration: %s"):format(v7), 2)
		end
		if type(v8) ~= v_u_4[v7] then
			error(("Invalid property type %q in Radial Image configuration: must be a %s."):format(v7, v_u_4[v7]), 2)
		end
	end
	if p5.version ~= v_u_3._version then
		error(("Passed configuration version does not match this module\'s version (which is %d)"):format(v_u_3._version), 2)
	end
	local v9 = {
		["config"] = p5,
		["label"] = p6
	}
	local v10 = v_u_3
	setmetatable(v9, v10)
	return v9
end
function v_u_3.Preload(p11)
	-- upvalues: (copy) v_u_2
	if p11.label == nil then
		error("You must provide a label to RadialImage.new to use Preload", 2)
	end
	p11.labels = {}
	for _, v12 in ipairs(p11.config.images) do
		local v13 = p11.label:Clone()
		v13.Image = v12
		v13.Visible = true
		v13.Size = UDim2.new(0, 0, 0, 0)
		v13.Parent = p11.label.Parent
		local v14 = p11.labels
		table.insert(v14, v13)
	end
	v_u_2:PreloadAsync(p11.labels)
	for _, v15 in ipairs(p11.labels) do
		v15.Visible = false
	end
end
function v_u_3.Destroy(p16)
	for _, v17 in ipairs(p16.labels) do
		v17:Destroy()
	end
	p16.labels = nil
end
function v_u_3.GetFromAlpha(p18, p19)
	if type(p19) ~= "number" then
		error("Argument #1 (alpha) to GetFromAlpha must be a number.", 2)
	end
	local v20 = p18.config.count
	local v21 = p18.config.size
	local v22 = p18.config.columns
	local v23 = p18.config.rows
	local v24 = 1 <= p19 and v20 - 1
	if not v24 then
		local v25 = p19 * v20
		v24 = math.floor(v25)
	end
	local v26 = v24 / v22 * v23
	local v27 = math.floor(v26) + 1
	local v28 = v24 - v22 * v23 * (v27 - 1)
	local v29 = v28 % v22 * v21
	local v30 = v28 / v22
	return v29, math.floor(v30) * v21, v27
end
function v_u_3.UpdateLabel(p31, p32, p33)
	local v34 = p33 or p31.label
	if type(p32) ~= "number" then
		error("Argument #1 (alpha) to UpdateLabel must be a number.", 2)
	end
	if typeof(v34) ~= "Instance" or not (v34:IsA("ImageLabel") or v34:IsA("ImageButton")) then
		error("Attempt to update label but no label has been given. Either pass the label as argument #2 to \"new\", or as argument #2 to \"UpdateLabel\".", 2)
	end
	local v35, v36, v37 = p31:GetFromAlpha(p32)
	v34.ImageRectSize = Vector2.new(p31.config.size, p31.config.size)
	v34.ImageRectOffset = Vector2.new(v35, v36)
	v34.Image = p32 <= 0 and "" or p31.config.images[v37]
end
return v_u_3