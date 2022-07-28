local PlayerName = game.Players.LocalPlayer.Name

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")
local CreditsTab = MainWindow:Tab("Credits")

local AutoFarmSection = MainTab:Section("Auto Farm")
-- local AutoRebirthSection = MainTab:Section("Auto Rebirth")
-- local AutoBuySection = MainTab:Section("Auto Buy")
-- local AutoEquipSection = MainTab:Section("Auto Equip")
local MiscSection = MiscTab:Section("Misc")
local CreditsSection = CreditsTab:Section("Credits")

-- local CheckName = {"Default", "White", "Grass", "Wood", "Camo", "Bronze", "Triangles", "Allstar", "Moon", "Water", "Fire", "Emerald", "Amethyst", "Cloudy", "Money", "Pink Camo", "Gloomy", "Lightning", "Magma", "Galaxy", "Fire & Ice"}

-- local GetInventoryHelmets = game:GetService("ReplicatedStorage").Players[PlayerName].Inventory.Helmets:GetChildren()
-- local GetInventoryCleats = game:GetService("ReplicatedStorage").Players[PlayerName].Inventory.Cleats:GetChildren()
-- local GetInventoryJerseys = game:GetService("ReplicatedStorage").Players[PlayerName].Inventory.Jerseys:GetChildren()
-- local GetInventoryBalls = game:GetService("ReplicatedStorage").Players[PlayerName].Inventory.Balls:GetChildren()

-- local GetHelmets = game:GetService("ReplicatedStorage").Items.Helmets:GetChildren()
-- local GetBalls = game:GetService("ReplicatedStorage").Items.Balls:GetChildren()
-- local GetCleats = game:GetService("ReplicatedStorage").Items.Cleats:GetChildren()
-- local GetJerseys = game:GetService("ReplicatedStorage").Items.Jerseys:GetChildren()

local ToggleAutoGoal = AutoFarmSection:Toggle("Auto Goal", false ,"Toggle", function(ag)
    getgenv().autogoal = ag
    while true do
        if getgenv().autogoal == false then return end
        workspace.GammyRolf.Ball.ServerEvent:FireServer("Start")
        workspace.GammyRolf.Ball.ServerEvent:FireServer("Accuracy", 1)
        wait(0.9)
    end
end)

-- dumb code idk

-- local ToggleAutoBuyHelmet = AutoBuySection:Toggle("Auto Buy Helmets", false ,"Toggle", function(abh)
--     getgenv().autobuyhelmets = abh
--     while true do
--         if getgenv().autobuyhelmets == false then return end
--         local OldPlayerPosition = game.workspace[PlayerName].HumanoidRootPart.CFrame
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = CFrame.new(-288.911804, -5.84209251, -437.35965, 0.0327222496, -8.82422242e-08, 0.999464512, -2.6008971e-08, 1, 8.91410323e-08, -0.999464512, -2.89119377e-08, 0.0327222496)
--         for i = 1, #GetHelmets do
--             local ThisHelmet = GetHelmets[i].Name
--             game:GetService("ReplicatedStorage").ServerEvent:FireServer("Buy", "Helmets", ThisHelmet)
--         end
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = OldPlayerPosition
--         wait(2)
--     end
-- end)

-- local ToggleAutoBuyCleats = AutoBuySection:Toggle("Auto Buy Cleats", false ,"Toggle", function(abc)
--     getgenv().autobuycleats = abc
--     while true do
--         if getgenv().autobuycleats == false then return end
--         local OldPlayerPosition = game.workspace[PlayerName].HumanoidRootPart.CFrame
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = CFrame.new(-288.911804, -5.84209251, -437.35965, 0.0327222496, -8.82422242e-08, 0.999464512, -2.6008971e-08, 1, 8.91410323e-08, -0.999464512, -2.89119377e-08, 0.0327222496)
--         for i = 1, #GetCleats do
--             local ThisCleat = GetCleats[i].Name
--             game:GetService("ReplicatedStorage").ServerEvent:FireServer("Buy", "Cleats", ThisCleat)
--         end
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = OldPlayerPosition
--         wait(2)
--     end
-- end)

-- local ToggleAutoBuyJerseys = AutoBuySection:Toggle("Auto Buy Jerseys", false ,"Toggle", function(abj)
--     getgenv().autobuyjerseys = abj
--     while true do
--         if getgenv().autobuyjerseys == false then return end
--         local OldPlayerPosition = game.workspace[PlayerName].HumanoidRootPart.CFrame
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = CFrame.new(-288.911804, -5.84209251, -437.35965, 0.0327222496, -8.82422242e-08, 0.999464512, -2.6008971e-08, 1, 8.91410323e-08, -0.999464512, -2.89119377e-08, 0.0327222496)
--         for i = 1, #GetJerseys do
--             local ThisJersey = GetJerseys[i].Name
--             game:GetService("ReplicatedStorage").ServerEvent:FireServer("Buy", "Jerseys", ThisJersey)
--         end
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = OldPlayerPosition
--         wait(2)
--     end
-- end)

-- local ToggleAutoBuyBalls = AutoBuySection:Toggle("Auto Buy Balls", false ,"Toggle", function(abb)
--     getgenv().autobuyballs = abb
--     while true do
--         if getgenv().autobuyballs == false then return end
--         local OldPlayerPosition = game.workspace[PlayerName].HumanoidRootPart.CFrame
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = CFrame.new(-286.158051, -5.84209251, -397.477905, -0.0525985733, -6.43642295e-08, 0.998615742, -2.3215152e-09, 1, 6.43311751e-08, -0.998615742, 1.0654263e-09, -0.0525985733)
--         for i = 1, #GetBalls do
--             local ThisBall = GetBalls[i].Name
--             game:GetService("ReplicatedStorage").ServerEvent:FireServer("Buy", "Balls", ThisBall)
--         end
--         game.workspace[PlayerName].HumanoidRootPart.CFrame = OldPlayerPosition
--         wait(2)
--     end
-- end)

-- --

-- local ToggleAutoEquipHelmets = AutoEquipSection:Toggle("Auto Equip Helmets", false ,"Toggle", function(aeh)
--     getgenv().autoequiphelmets = aeh
--     while true do
--         if getgenv().autoequiphelmets == false then return end
--         for i = #CheckName, -1 do
--             if game:GetService("ReplicatedStorage").Players.GammyRolf.Inventory.Helmets:FindFirstChild(CheckName[i]) then
--                 game:GetService("ReplicatedStorage").ServerEvent:FireServer("Equip", "Helmets", CheckName[i])
--             end
--         end
--         wait(2)
--     end
-- end)

-- local ToggleAutoEquipCleats = AutoEquipSection:Toggle("Auto Equip Cleats", false ,"Toggle", function(aec)
--     getgenv().autoequipcleats = aec
--     while true do
--         if getgenv().autoequipcleats == false then return end
--         for i = #CheckName, -1 do
--             if game:GetService("ReplicatedStorage").Players.GammyRolf.Inventory.Cleats:FindFirstChild(CheckName[i]) then
--                 game:GetService("ReplicatedStorage").ServerEvent:FireServer("Equip", "Cleats", CheckName[i])
--             end
--         end
--         wait(2)
--     end
-- end)

-- local ToggleAutoEquipJerseys = AutoEquipSection:Toggle("Auto Equip Jerseys", false ,"Toggle", function(aej)
--     getgenv().autoequipjerseys = aej
--     while true do
--         if getgenv().autoequipjerseys == false then return end
--         for i = #CheckName, -1 do
--             if game:GetService("ReplicatedStorage").Players.GammyRolf.Inventory.Jerseys:FindFirstChild(CheckName[i]) then
--                 game:GetService("ReplicatedStorage").ServerEvent:FireServer("Equip", "Jerseys", CheckName[i])
--             end
--         end
--         wait(2)
--     end
-- end)

-- local ToggleAutoEquipBalls = AutoEquipSection:Toggle("Auto Equip Balls", false ,"Toggle", function(aeb)
--     getgenv().autoequipballs = aeb
--     while true do
--         if getgenv().autoequipballs == false then return end
--         for i = #CheckName, -1 do
--             if game:GetService("ReplicatedStorage").Players.GammyRolf.Inventory.Balls:FindFirstChild(CheckName[i]) then
--                 game:GetService("ReplicatedStorage").ServerEvent:FireServer("Equip", "Balls", CheckName[i])
--             end
--         end
--         wait(2)
--     end
-- end)
local SpeedSlider = MiscSection:Slider("Walk Speed", 25, 250 , 25 , 1 ,"Slider", function(f)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = f
  end)

local JumpSlider = MiscSection:Slider("Jump Power", 65, 250, 65 , 1,"Slider", function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower  = p
end)

CreditsSection:Button("Copy Discord Server", function()
    setclipboard("https://discord.gg/HjKDVu2rAH")
  end)
  
CreditsSection:Button("Copy Youtube Channel", function()
    setclipboard("https://www.youtube.com/channel/UCrAhpn4GOFLBuJspEygwpWg/")
end)
  
CreditsSection:Button("Copy Discord ID", function()
    setclipboard("Noctural#9816")
end)
