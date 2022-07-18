local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")

local AutoClickSection = MainTab:Section("AutoFarm")
local MiscSection = MiscTab:Section("Misc")

local ToggleAutoClick = AutoClickSection:Toggle("Auto Click", false,"Toggle", function(k)
    getgenv().autoclick = k
    while true do
        if getgenv().autoclick == false then return end
        workspace.Events.AddClick:FireServer()
        wait()
    end
end)

local CurrentSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local CurrentJump = game.Players.LocalPlayer.Character.Humanoid.JumpPower

local SpeedSlider = MiscSection:Slider("Walk Speed", CurrentSpeed, 500 , 10 , 1 ,"Slider", function(f)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = f
  end)

local JumpSlider = MiscSection:Slider("Jump Power", CurrentJump, 500, 10 , 1,"Slider", function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower  = p
end)
