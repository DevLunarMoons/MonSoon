--[[
______________________________________________________________________________
|                                                                            |
|       .oooooo..o oooooooooooo ooooo      ooo  .oooooo..o oooooooooooo      |
|      d8P'    `Y8 `888'     `8 `888b.     `8' d8P'    `Y8 `888'     `8      |
|      Y88bo.       888          8 `88b.    8  Y88bo.       888              |
|       `"Y8888o.   888oooo8     8   `88b.  8   `"Y8888o.   888oooo8         |
|           `"Y88b  888    "     8     `88b.8       `"Y88b  888    "         |
|      oo     .d8P  888       o  8       `888  oo     .d8P  888       o      |
|      8""88888P'  o888ooooood8 o8o        `8  8""88888P'  o888ooooood8      |
|                                                                            |
‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
                          Sense | made by: Sirius        
]]



        print ("Sense Loaded!")
        local Sense = loadstring(game:HttpGet("https://raw.githubusercontent.com/DevLunarMoons/10042089652901/refs/heads/main/736552679.lua"))()
        Sense.teamSettings.enemy.enabled = false
        Sense.teamSettings.enemy.box = false
        Sense.teamSettings.enemy.boxColor[1] = Color3.new(57, 255, 20)
        
        Sense.Load()
        -- Sense.Unload()

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

-- Egg ESP
local eggESP = {}
local eggName = "Egg"
for _, resource in workspace.Interactions.Nodes.Eggs.ActiveNodes:GetDescendants() do
          -- Reloads the ESP when an egg respawns
--          for i,v in workspace.Interactions.Nodes.Eggs.ActiveNodes:GetDescendants() do
  --                  v.DescendantAdded:Connect(function(child)
    --                          print(child)
      --              end)
        --  end
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
