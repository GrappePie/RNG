-- Based on:
-- https://stackoverflow.com/questions/35969656/

local base16 = {
	['0'] = 'F',
	['1'] = 'E',
	['2'] = 'D',
	['3'] = 'C',
	['4'] = 'B',
	['5'] = 'A',
	['6'] = '9',
	['7'] = '8',
	['8'] = '7',
	['9'] = '6',
	['A'] = '5',
	['B'] = '4',
	['C'] = '3',
	['D'] = '2',
	['E'] = '1',
	['F'] = '0',
}

return function(color, bw)
	-- Check if RGB or HEX
	if type(color) == 'string' then
		-- Remove # symbol
		local hex = color:gsub("#", "")
		
		-- Convert 3 to 6
		if (hex:len() == 3) then
			local one, two, three = hex:split("")[1], hex:split("")[2], hex:split("")[3]
			hex = one .. one .. two .. two .. three .. three
		end
		
		-- Error if invalid
		if (hex:len() ~= 6) then
			error('Invalid HEX color!')
		end
		
		-- Reverse HEX
		local split = hex:split("")
		local newHex = ''
		local newRGB = ''
		table.foreachi(split, function(_,v)
			newHex = newHex .. base16[string.upper(tostring(v))]
		end)
		
		-- Get RGB components from HEX
		local r = tonumber(newHex:split("")[1]..newHex:split("")[2], 16)
		local g = tonumber(newHex:split("")[3]..newHex:split("")[4], 16)
		local b = tonumber(newHex:split("")[5]..newHex:split("")[6], 16)
		
		-- Check black/white color
		if (bw) then
			if (r * 0.299 + g * 0.587 + b * 0.114) > 186 then
				return Color3.new(1,1,1)
			else
				return Color3.new(0,0,0)
			end
		end
		
		return Color3.fromRGB(r, g, b)
	elseif typeof(color) == 'Color3' then
		-- Get RGB components
		local r, g, b = color.R*255, color.G*255, color.B*255
		
		-- Invert RGB components
		local invertedRed, invertedGreen, invertedBlue = math.round(255 - r), math.round(255 - g), math.round(255 - b)
		
		-- Check black/white color
		if (bw) then
			if (invertedRed * 0.299 + invertedGreen * 0.587 + invertedBlue * 0.114) > 186 then
				return Color3.new(1,1,1)
			else
				return Color3.new(0,0,0)
			end
		end
		
		return Color3.fromRGB(invertedRed, invertedGreen, invertedBlue)
	end
end