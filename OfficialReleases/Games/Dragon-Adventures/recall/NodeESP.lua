--[[

          Sense | made by: Sirius           
                Instance ESP                
          Game: Dragon Adventures          

]]--
                print ("Sense Loaded!")
                -- This is required at the top of the script.
                local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
                    Sense.teamSettings.enemy.enabled = false
                    Sense.teamSettings.enemy.box = false
                    Sense.teamSettings.enemy.boxColor[1] = Color3.new(57, 255, 20)
                
                Sense.Load()
                -- Sense.Unload()
                -- Use as the command to unload ESP
--[[--------------------------------------------------------------------------------------------
              TODO:
              Make the esp reload when a new descendant is added to select folders.
              Make Resource Nodes check the health of their objects.
              
              Compleated:
              Egg ESP (Doesn't Respawn)
              Food ESP (Shows "Dead" nodes as well)
              Chest ESP (Does not show all chest locations)
----------------------------------------------------------------------------------------------]]
print ("Dragon Adventures ESP Loaded")
--Locals for each node.
--local EggNode = workspace.Interactions.Nodes.Eggs.ActiveNodes:GetChildren()[#].EggModel.Egg
--local FoodNode = workspace.Interactions.Nodes.Food:GetChildren()[#].BillboardPart
--local MaterialNode = workspace.Interactions.Nodes.Resources:GetChildren()[#].BillboardPart
--local BoneNode = workspace.Interactions.Nodes.BoneMeal:GetChildren()[#].BillboardPart
--local ChestNode = workspace.Interactions.Nodes.Treasure[#].Body
--local MobNode = workspace.Interactions.Nodes.Mobs:GetChildren()[#]
--local MobsNodes = workspace.MobFolder:GetChildren()
----------------------------------------------------------------------------------------------
-- Individual ESP for each object. Do not use :GetChildren(), rather use :GetDescendants().

-- TODO: Egg ESP needs to be updated when a child is added to the "ActiveNodes" folder. Food ESP needs to detect if the node's dead value is true and not show it.
-- Egg ESP
local eggESP = {}
local eggName = "Egg"
for _, resource in workspace.Interactions.Nodes.Eggs.ActiveNodes:GetDescendants() do
--    for i,v in workspace:GetDescendants() do
--	    v.DescendantAdded:Connect(function(child)
--		    print(child)
--	    end)
--    end
    if resource.Name ~= eggName then 
        continue
    end
    table.insert(
        eggESP,
        Sense.AddInstance(resource, {
            enabled = true,
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

-- Food ESP
local foodESP = {}
local foodName = "BillboardPart"
for _, resource in workspace.Interactions.Nodes.Food:GetDescendants() do
    if workspace.Interactions.Nodes.Food.LargeFoodNode.BillboardPart.Dead == false then
      continue
    end
    if resource.Name ~= foodName then 
        continue
    end
    table.insert(
        foodESP,
        Sense.AddInstance(resource, {
            enabled = true,
            text = "Food ({distance} studs)", -- Placeholders: {name}, {distance}, {position}
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

-- Bug: Not all chest show. Make it only show the "Weld" body part instead of the mesh part.
-- Chest ESP
local chestESP = {}
local chestName = "Body"
for _, resource in workspace.Interactions.Nodes.Treasure:GetDescendants() do
        if resource.Name ~= chestName then 
            continue
        end
    table.insert(
        chestESP,
        Sense.AddInstance(resource, {
            enabled = true,
            text = "Chest ({distance} studs)", -- Placeholders: {name}, {distance}, {position}
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
