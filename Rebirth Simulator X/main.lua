local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")

local AutoRebirthSection = MainTab:Section("AutoRebirth")
local MiscSection = MiscTab:Section("Misc")

local ToggleAutoRebirth25k = AutoRebirthSection:Toggle("AutoRebirth 25k Normal", false,"Toggle", function(r)
    getgenv().autorebirth25k = r
    while true do
        if getgenv().autorebirth25k == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-102.624237, 4.49987698, 93.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.2)
    end
end)

local ToggleAutoRebirth1 = AutoRebirthSection:Toggle("AutoRebirth 1 Ultra", false,"Toggle", function(u)
    getgenv().autorebirthultra = u
    while true do
        if getgenv().autorebirthultra == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.624237, 4.49987698, 92.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.2)
    end
end)

local ToggleAutoRebirthCombine = AutoRebirthSection:Toggle("AutoRebirth 25k Normal + 1 Ultra", false,"Toggle", function(c)
    getgenv().autocombine = c
    while true do
        if getgenv().autocombine == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-102.624237, 4.49987698, 93.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.624237, 4.49987698, 92.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.5)
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
