local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local TeleportTab = MainWindow:Tab("Teleport")
local MiscTab = MainWindow:Tab("Misc")

local AutoRebirthSection = MainTab:Section("AutoRebirth")
local TeleportSection = TeleportTab:Section("Teleport")
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
        wait(0.8)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.624237, 4.49987698, 92.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.8)
    end
end)

local ToggleAutoRebirth11 = AutoRebirthSection:Toggle("AutoRebirth 5 Normal + 140 Ultra", false,"Toggle", function(a)
    getgenv().auto11 = a
    while true do
        if getgenv().auto11 == false then return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28.0582142, 2.49987686, 2.48364186, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-147.624237, 2.49987698, 12.1305161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(0.3)
    end
end)

TeleportSection:Button("Teleport to Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 15.0245419, -53, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Winter", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(264.071045, 17.0245419, 747.349976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Candy", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-772.121887, 17.0245419, -571.67395, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Desert", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-651.137451, 17.0245419, 593.416931, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Toy", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(488.362549, 17.0245419, -668.083069, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Jungle", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(961.947327, 17.0245419, 115.599586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Volcano", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1266.05273, 20.0245419, -66.4004135, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:Button("Teleport to Moon", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-220.928955, 17.0245419, 1286.34998, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)


TeleportSection:Button("Teleport to Beach", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(391.071045, 25.0245419, 1359.34998, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)


TeleportSection:Button("Teleport to Alien", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.9289551, 19.0245419, -1241.65002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)


local CurrentSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local CurrentJump = game.Players.LocalPlayer.Character.Humanoid.JumpPower

local SpeedSlider = MiscSection:Slider("Walk Speed", CurrentSpeed, 500 , 10 , 1 ,"Slider", function(f)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed  = f
  end)

local JumpSlider = MiscSection:Slider("Jump Power", CurrentJump, 500, 10 , 1,"Slider", function(p)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower  = p
end)
