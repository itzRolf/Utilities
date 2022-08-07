local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/neonixran/MaterialLua/master/Module.lua"), "Material Lua")()

local MainWindow = Library:Load({ 
    Title = "Destiny | Money Tycoon",
	SizeX = 350,
	SizeY = 250,
	Style = 1,
	Overrides = {}
})

local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local lPlayer = game.Players.LocalPlayer

local MainPage = MainWindow:New({
    Title = "Main"
})

local CreditsPage = MainWindow:New({
    Title = "Credits"
})

local SettingsPage = MainWindow:New({
    Title = "Settings"
})

local AntiCollectToggle = MainPage:Toggle({
	Text = "Auto Collect",
	Callback = function(colcfunc)
        task.spawn(function()
            getgenv().autocolect = colcfunc
            while true do
                if getgenv().autocolect == false then return end            
                for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].StarterParts.Collector:GetDescendants()) do
                    if v:IsA("TouchTransmitter") then
                        firetouchinterest(pRoot, v.Parent, 0)
                        wait()
                        firetouchinterest(pRoot, v.Parent, 1)
                    end
                end
                wait()
            end
        end)
	end,
	Enabled = false
})


local AntiBuyButtonsToggle = MainPage:Toggle({
	Text = "Auto Buy Buttons",
	Callback = function(buyfunc)
        task.spawn(function()
            getgenv().autobuybut = buyfunc
            while true do
                if getgenv().autobuybut == false then return end            
                for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].ButtonsFolder:GetDescendants()) do
                    if v.Name == "Gamepass" then
                        local p2w = v.Parent
                        p2w:Destroy()
                    end
                end
                wait(0.5)
                for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].ButtonsFolder:GetDescendants()) do
                    if v:IsA("TouchTransmitter") then
                        firetouchinterest(pRoot, v.Parent, 0)
                        firetouchinterest(pRoot, v.Parent, 1)
                    end
                end
                wait(1)
            end
        end)
	end,
	Enabled = false
})

local AntiRebirthToggle = MainPage:Toggle({
	Text = "Auto Rebirth",
	Callback = function(rebfunc)
        task.spawn(function()
            getgenv().autorebirth = rebfunc
            while true do
                if getgenv().autorebirth == false then return end            
                game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
                wait(5)
            end
        end)
	end,
	Enabled = false
})
