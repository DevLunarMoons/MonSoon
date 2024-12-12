print ("Dragon Adventures ESP Loaded")
--Locals for each node.
--local EggNode = workspace.Interactions.Nodes.Eggs.ActivesNodes:GetChildren()[#].EggModel.Egg
--local FoodNode = workspace.Interactions.Nodes.Food:GetChildren()[#].BillboardPart
--local MaterialNode = workspace.Interactions.Nodes.Resources:GetChildren()[#].BillboardPart
--local BoneNode = workspace.Interactions.Nodes.BoneMeal:GetChildren()[#].BillboardPart
--local ChestNode = workspace.Interactions.Nodes.Treasure[#].Body
--local MobNode = workspace.Interactions.Nodes.Mobs:GetChildren()[#]
--local MobsNodes = workspace.MobFolder:GetChildren()

local eggESP = {}
local eggName = "Egg"

for _, resource in workspace.Interactions.Nodes.Eggs.ActivesNodes:GetDescendants() do
    if resource.Name -= eggName then 
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
-- workspace.Interactions.Nodes.Eggs.ActiveNodes.Part
-- workspace.Interactions.Nodes.Eggs.ActiveNodes:GetChildren()
