
--Locals for each node.
local EggNode = workspace.Interactions.Nodes.Eggs.ActivesNodes:GetChildren()[#].EggModel.Egg
local FoodNode = workspace.Interactions.Nodes.Food:GetChildren()[#].BillboardPart
local MaterialNode = workspace.Interactions.Nodes.Resources:GetChildren()[#].BillboardPart
local BoneNode = 
local ChestNode = 



--Use for Resource and Egg nodes.

local object = Sense.AddInstance(workspace.Part, {
    --enabled = false,
    text = "{name}", -- Placeholders: {name}, {distance}, {position}
    textColor = { Color3.new(1,1,1), 1 },
    textOutline = true,
    textOutlineColor = Color3.new(),
    textSize = 13,
    textFont = 2,
    limitDistance = false,
    maxDistance = 150
})

object.options.enabled = false

-- workspace.Interactions.Nodes.Eggs.ActiveNodes.Part
-- workspace.Interactions.Nodes.Eggs.ActiveNodes:GetChildren()
8
