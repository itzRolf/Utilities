local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")

local AutoSwingSection = MainTab:Section("Auto Swing")
local AutoUpgradeSection = MainTab:Section("Auto Upgrade")

local ToggleAutoSwing = AutoSwingSection:Toggle("Auto Swing", false ,"Toggle", function(as)
  getgenv().autoswing = as
  while true do
      if getgenv().autoswing == false then return end
      game:GetService("ReplicatedStorage").Events.Player.Swing:FireServer()
      wait(0.1)
  end
end)

local ToggleAutoUpgrade = AutoUpgradeSection:Toggle("Auto Upgrade Damage", false ,"Toggle", function(apd)
  getgenv().autoupgradedamage = apd
  while true do
      if getgenv().autoupgradedamage == false then return end
      game:GetService("ReplicatedStorage").Events.Store.Level:FireServer()
      wait(0.3)
  end
end)
