local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Destiny", "Synapse")

local MainTab = Window:NewTab("Main")
local MiscTab = Window:NewTab("Misc")

local AutoClickSection = MainTab:NewSection("Auto Click")
local PetsSection = MainTab:NewSection("Pets")
local MiscSection = MiscTab:NewSection("Misc")

local GetEggs = game:GetService("Workspace").Eggs:GetChildren()
local AllEggs = {}
local CurrentEgg

for i = 1, #GetEggs do
  local ThisEgg = GetEggs[i].Name
  AllEggs[i] = ThisEgg
end

AutoClickSection:NewToggle("Auto Click", "Toggle Auto Click.", function(k)
    getgenv().autoclick = k
    while true do
        if getgenv().autoclick == false then return end
        workspace.Events.AddClick:FireServer()
        wait()
    end
end)

PetsSection:NewDropdown("Eggs", "Eggs", AllEggs, function(segg)
    CurrentEgg = segg
end)

PetsSection:NewToggle("Auto Egg Triple", "Toggle Auto Egg Triple.", function(egt)
    getgenv().autoeggtriple = egt
    while true do
      if getgenv().autoeggtriple == false then return end
      game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(CurrentEgg, "Triple")
      wait(0.5)
  end
end)

PetsSection:NewToggle("Auto Egg Triple", "Toggle Auto Egg Triple.", function(eg)
    getgenv().autoegg = eg
    while true do
      if getgenv().autoegg == false then return end
      game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(CurrentEgg, "Single")
      wait(0.5)
  end
end)

MiscSection:NewSlider("Walk Speed", "Walk Speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscSection:NewSlider("Jump Power", "Jump Power", 500, 50, function(j)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)
