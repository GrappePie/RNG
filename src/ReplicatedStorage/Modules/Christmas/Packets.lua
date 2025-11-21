-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local l_Modules_0 = game:GetService("ReplicatedStorage"):WaitForChild("Modules");
local l_ByteNet_0 = require(l_Modules_0:WaitForChild("ByteNet"));
return l_ByteNet_0.defineNamespace("Christmas2024", function() --[[ Line: 9 ]]
    -- upvalues: l_ByteNet_0 (copy)
    return {
        PlayRouletteEffect = l_ByteNet_0.definePacket({
            value = l_ByteNet_0.struct({
                SelectedIndex = l_ByteNet_0.uint8, 
                Items = l_ByteNet_0.array({
                    ItemType = l_ByteNet_0.string, 
                    ItemColor = l_ByteNet_0.string, 
                    ItemName = l_ByteNet_0.string, 
                    ItemImage = l_ByteNet_0.string
                })
            })
        }), 
        ShowOutcome = l_ByteNet_0.definePacket({
            value = l_ByteNet_0.struct({
                Text = l_ByteNet_0.string, 
                Color1 = l_ByteNet_0.vec3, 
                Color2 = l_ByteNet_0.vec3, 
                Image = l_ByteNet_0.string, 
                Rarity = l_ByteNet_0.int8, 
                IsAura = l_ByteNet_0.bool
            })
        }), 
        SpinRoulette = l_ByteNet_0.definePacket({
            value = l_ByteNet_0.struct({
                RouletteType = l_ByteNet_0.string, 
                Index = l_ByteNet_0.int8, 
                Quick = l_ByteNet_0.bool
            })
        })
    };
end);