local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")

local AutoTapSection = MainTab:Section("Auto Tap")
local AutoRebirthSection = MainTab:Section("Auto Rebirth")
local MiscSection = MiscTab:Section("Misc")

local RebirthCout

local ToggleAutoTap = AutoTapSection:Toggle("Auto Tap", false ,"Toggle", function(as)
  getgenv().autotap = as
  while true do
      if getgenv().autotap == false then return end
      game:GetService("ReplicatedStorage").Remotes.Tapping:FireServer("Tapping")
      wait(0.3)
  end
end)

local RebirthList = AutoRebirthSection:Dropdown("Rebirths", {"1", "5", "8", "15", "35", "65", "95", "150", "250", "500"},"","Dropdown", function(p)
    local allrebirths = {"1", "5", "8", "15", "35", "65", "95", "150", "250", "500"}
    for i, v in pairs(allrebirths) do
        if v == p then
            RebirthCout = i
        end
    end
end)

local ToggleAutoRebirth = AutoRebirthSection:Toggle("Auto Rebirth", false ,"Toggle", function(ar)
    getgenv().autorebirth = ar
    while true do
        if getgenv().autorebirth == false then return end
        game:GetService("ReplicatedStorage").Remotes.RefeshClient:FireServer("Rebirths", RebirthCout)
        wait(0.5)    
    end
end)

MiscSection:Button("Copy Discord Server", function()
    setclipboard("https://discord.gg/HjKDVu2rAH")
  end)
  
MiscSection:Button("Copy Youtube Channel", function()
    setclipboard("https://www.youtube.com/channel/UCrAhpn4GOFLBuJspEygwpWg/")
end)
  
MiscSection:Button("Copy Discord ID", function()
    setclipboard("Noctural#9816")
end) 
