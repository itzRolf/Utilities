local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")

local AutoClickSection = MainTab:Section("Auto Click")
local PetsSection = MainTab:Section("Pets")
local MiscSection = MiscTab:Section("Misc")

local GetEggs = game:GetService("Workspace").Eggs:GetChildren()
local AllEggs = {}
local CurrentEgg

for i = 1, #GetEggs do
  local ThisEgg = GetEggs[i].Name
  AllEggs[i] = ThisEgg
end

local ToggleAutoClick = AutoClickSection:Toggle("Auto Click", false,"Toggle", function(k)
    getgenv().autoclick = k
    while true do
        if getgenv().autoclick == false then return end
        workspace.Events.AddClick:FireServer()
        wait()
    end
end)

local Eggs = PetsSection:Dropdown("Eggs", AllEggs,"","Dropdown", function(segg)
  CurrentEgg = segg
end)

local ToggleAutoEggTriple = PetsSection:Toggle("Auto Egg Triple", false,"Toggle", function(egt)
  getgenv().autoeggtriple = egt
  while true do
      if getgenv().autoeggtriple == false then return end
      game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(CurrentEgg, "Triple")
      wait(0.5)
  end
end)

local ToggleAutoEggSingle = PetsSection:Toggle("Auto Egg Single", false,"Toggle", function(eg)
  getgenv().autoegg = eg
  while true do
      if getgenv().autoegg == false then return end
      game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(CurrentEgg, "Single")
      wait(0.5)
  end
end)

local SpeedSlider = MiscSection:Slider("Walk Speed", 25, 500 , 25 , 1 ,"Slider", function(f)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = f
  end)

local JumpSlider = MiscSection:Slider("Jump Power", 50, 500, 50 , 1,"Slider", function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower  = p
end)
