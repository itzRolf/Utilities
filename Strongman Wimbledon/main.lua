local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

local MainWindow = Library:New({
  Name = "Destiny | Noctural#9816",
  FolderToSave = "Destiny"
})

local MainTab = MainWindow:Tab("Main")
local MiscTab = MainWindow:Tab("Misc")

local AutoFarmSection = MainTab:Section("AutoFarm")
local MiscSection = MiscTab:Section("Misc")

local client = game:GetService("Players").LocalPlayer
local clientDraggables = workspace.PlayerDraggables[client.UserId]
local holidayCoinLabel = client.PlayerGui.ParticleOverlay.ResourceHolder.TopHolidayContainer.CoinCounter.TextLabel

local function firetouch(toucher, toTouch)
    firetouchinterest(toucher, toTouch, 0)
    firetouchinterest(toucher, toTouch, 1)
end

local function sellAll()
    for i, inst in ipairs(clientDraggables:GetChildren()) do
        firetouch(inst, workspace.Areas.Area1.Exit.Goal)
    end
end

local trophyProxPrompt; do
    for i, inst in ipairs(workspace.Areas.Area1.DraggableItems:GetChildren()) do
        if inst.ClassName == "MeshPart" and inst.MeshId == "rbxassetid://9842961636" then
            trophyProxPrompt = inst.InteractionPoint.ProximityPrompt
        end
    end
end

local ToggleAutoFarmEnergy = AutoFarmSection:Toggle("Auto Farm", false,"Toggle", function(f)
    getgenv().autofarm = f
    while true do
        if getgenv().autofarm == false then return end

        client.Character.HumanoidRootPart.CFrame = trophyProxPrompt.Parent.CFrame + Vector3.new(0, 5, 0)

        while getgenv().autofarm == true do
            
	        if tonumber(holidayCoinLabel.Text) > 300 then
		        if game:GetService("ReplicatedStorage").TGSHoliday_PurchaseItemRemote:InvokeServer(6) == true then-- Incase it goes fucky
			        warn("Successfully purchased ugc")
			        break
		        else
			        warn("Failed ugc purchase")
			        task.wait(0.1)
		        end
            end
	        fireproximityprompt(trophyProxPrompt)
	        sellAll()
	        task.wait(0.05)
        end
    end
end)

local ToggleAutoWorkout = AutoFarmSection:Toggle("Auto Workout", false,"Toggle", function(w)
    getgenv().autoworkout = w
    while true do
        if getgenv().autoworkout == false then return end
        if getgenv().autoworkout == true then           
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.257965, 19.950098, -210.748077, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            wait(0.5)

            fireproximityprompt(game:GetService("Workspace").Areas.Area1.Gym.TrainingEquipment.WorkoutStation.Collider.ProximityPrompt, 1, true)
        end

        game:GetService("ReplicatedStorage").StrongMan_UpgradeStrength:InvokeServer(1)

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
