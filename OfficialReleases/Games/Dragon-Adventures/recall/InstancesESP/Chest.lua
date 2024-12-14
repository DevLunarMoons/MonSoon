--[[

███╗   ███╗███████╗      ███████╗███████╗██████╗ 
████╗ ████║██╔════╝      ██╔════╝██╔════╝██╔══██╗
██╔████╔██║███████╗█████╗█████╗  ███████╗██████╔╝
██║╚██╔╝██║╚════██║╚════╝██╔══╝  ╚════██║██╔═══╝ 
██║ ╚═╝ ██║███████║      ███████╗███████║██║     
╚═╝     ╚═╝╚══════╝      ╚══════╝╚══════╝╚═╝     
                                                 
mabe by: mrpopcat14
---------------------------------------------------
Chest ESP for MonSoon

]]--
local RunService = game:GetService("RunService")
local CollectionService = game:GetService("CollectionService")

-- Table to keep track of highlighted objects
local highlightedObjects = {}

local function handleNewObject(obj)
    if obj:IsA('Part') and obj.Parent and obj.Parent:IsA('Folder') and obj.Parent.Name == 'Treasure' then
        -- Check if the object is not already highlighted
        if not highlightedObjects[obj] then
            if not obj.Parent:FindFirstChildOfClass('BillboardGui') then
                local BillboardGui = Instance.new('BillboardGui')
                local TextLabel = Instance.new('TextLabel')

                BillboardGui.Parent = obj.Parent
                BillboardGui.AlwaysOnTop = true
                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(0.7, 0, 0.7, 0)
                TextLabel.Text = "Chest" -- Display text
                TextLabel.TextScaled = true
                TextLabel.TextStrokeTransparency = 0.5 -- Text stroke for visibility

                -- Removed the initial rotation check and related logic

                local function updateColors()
                    local color = Color3.fromHSV(1, 1, 1)
                    TextLabel.TextColor3 = color
                end

                -- Keep updating colors without rotation check
                RunService.RenderStepped:Connect(updateColors)

                highlightedObjects[obj] = true
            end
        end
    end
end

-- Function to batch handle all existing objects
local function handleExistingObjects()
    for _, obj in ipairs(game.Workspace:GetDescendants()) do
        handleNewObject(obj)
    end
end

game.Workspace.ChildAdded:Connect(function(child)
    handleNewObject(child)
end)

local lastCheck = 0
RunService.Heartbeat:Connect(function(deltaTime)
    lastCheck = lastCheck + deltaTime
    if lastCheck >= 0.5 then
        handleExistingObjects()
        lastCheck = 0
    end
end)

handleExistingObjects()
