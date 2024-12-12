print ("Sense Loaded!")
-- 1. Load the library
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

-- 2. Change the configuration.
Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = false
Sense.teamSettings.enemy.boxColor[1] = Color3.new(57, 255, 20)

-- 3. Load the esp. It doesn't really matter where you put this, but it's recommended you put it at the end of your script.
Sense.Load()

-- 4. Unload the esp. When you unload Sense, it will clean up every drawing object and instance it has made.
--Sense.Unload()

print ("Dragon Adventures ESP Loaded")
--Locals for each node.
--local EggNode = workspace.Interactions.Nodes.Eggs.ActiveNodes:GetChildren()[#].EggModel.Egg
--local FoodNode = workspace.Interactions.Nodes.Food:GetChildren()[#].BillboardPart
--local MaterialNode = workspace.Interactions.Nodes.Resources:GetChildren()[#].BillboardPart
--local BoneNode = workspace.Interactions.Nodes.BoneMeal:GetChildren()[#].BillboardPart
--local ChestNode = workspace.Interactions.Nodes.Treasure[#].Body
--local MobNode = workspace.Interactions.Nodes.Mobs:GetChildren()[#]
--local MobsNodes = workspace.MobFolder:GetChildren()

local eggESP = {}
local eggName = "Egg"

for _, resource in workspace.Interactions.Nodes.Eggs.ActiveNodes:GetDescendants() do
    if resource.Name ~= eggName then 
        continue
    end
    table.insert(
        eggESP,
        Sense.AddInstance(resource, {
            enabled = false,
            text = "{name} ({distance} studs)", -- Placeholders: {name}, {distance}, {position}
            textColor = { Color3.new(1,1,1), 1 },
            textOutline = true,
            textOutlineColor = Color3.new(),
            textSize = 13,
            textFont = 2,
            limitDistance = false,
            maxDistance = 150
        })
    )
end
-- workspace.Interactions.Nodes.Eggs.ActiveNodes.Part
-- workspace.Interactions.Nodes.Eggs.ActiveNodes:GetChildren()
