print ("MonSoon Hub Connected")
-- This script is made by DevLunarMoons as a part of the MonSoon Developer Hub.
------------------------------------------------------------------------------------
--                                                                                --
--            __  ___           _____                      __  __      __         --
--           /  |/  /___  ____ / ___/____  ____  ____     / / / /_  __/ /_        --
--          / /|_/ / __ \/ __ \\__ \/ __ \/ __ \/ __ \   / /_/ / / / / __ \       --
--         / /  / / /_/ / / / /__/ / /_/ / /_/ / / / /  / __  / /_/ / /_/ /       --
--        /_/  /_/\____/_/ /_/____/\____/\____/_/ /_/  /_/ /_/\__,_/_.___/        --
--                                                                                --
--                                                                                --
--                              made by: LunarMoons                               --
------------------------------------------------------------------------------------

-- Load the ESP for Players
-- loadstring(game:HttpGet('https://raw.githubusercontent.com/DevLunarMoons/MonSoon/main/OfficialReleases/SenseESP.lua'))()
-- loadstring(game:HttpGet('https://raw.githubusercontent.com/DevLunarMoons/MonSoon/main/OfficialReleases/Games/Dragon-Adventures/recall/NodeESP.lua'))()
-- loadstring(game:HttpGet('https://raw.githubusercontent.com/DevLunarMoons/MonSoon/refs/heads/main/OfficialReleases/Games/Dragon-Adventures/recall/InstancesESP/Egg.lua'))()
-- loadstring(game:HttpGet('https://raw.githubusercontent.com/DevLunarMoons/MonSoon/refs/heads/main/OfficialReleases/Games/Dragon-Adventures/recall/InstancesESP/Chest.lua'))()

local placeId = game.PlaceId
	-- Finds whether or not devive in a computer or mobile device.
		local UserInputService = game:GetService("UserInputService")
		local IsOnMobile
		local IsOnComputer
		if UserInputService.TouchEnabled then
			IsOnMobile = true
		elseif UserInputService.MouseIconEnabled then
			IsOnComputer = true
		else
   			IsOnComputer = true
		end
-- Runs the script connected to the placeID

