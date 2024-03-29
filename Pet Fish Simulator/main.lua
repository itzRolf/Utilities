local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/neonixran/MaterialLua/master/Module.lua"), "Material Lua")()

local MainWindow = Library:Load({ 
    Title = "Pet Fishing Simulator",
	SizeX = 400,
	SizeY = 300,
    Theme = "Mocha",
	Style = 1,
	Overrides = {}
})

local MainPage = MainWindow:New({
    Title = "Main"
})

local CreditsPage = MainWindow:New({
    Title = "Credits"
})

local SettingsPage = MainWindow:New({
    Title = "Settings"
})

local AutoRebirthToggle = MainPage:Toggle({
	Text = "Auto Rebirth",
	Callback = function(rebfunc)
        task.spawn(function()
            getgenv().autorebirth = rebfunc
            while true do
                task.wait()
                if getgenv().autorebirth == false then return end
                game:GetService("ReplicatedStorage").ServerMsg.Reborn:InvokeServer(game:GetService("Players").LocalPlayer) 
                wait(0.5)
            end
        end)
	end,
	Enabled = false
})

local AutoInfMoneyToggle = MainPage:Toggle({
	Text = "Auto Inf Money",
	Callback = function(inffunc)
        task.spawn(function()
            getgenv().autoinfmoney = inffunc
            while true do
                task.wait()
                if getgenv().autoinfmoney == false then return end
                game:GetService("ReplicatedStorage").ServerMsg.CatchFish:FireServer({[5001101] = 99e99})
                wait(0.5)
            end
        end)
	end,
	Enabled = false
})

local AutoSellToggle = MainPage:Toggle({
	Text = "Auto Sell",
	Callback = function(sellfunc)
        task.spawn(function()
            getgenv().autosell = sellfunc
            while true do
                task.wait()
                if getgenv().autosell == false then return end
                game:GetService("ReplicatedStorage").ServerMsg.Teleport:FireServer(1)
                wait(0.5)
            end
        end)
	end,
	Enabled = false
})


local CopyDiscordCredits = CreditsPage:Button({
	Text = "Copy Discord: Noctural#9816",
	Callback = function()
		setclipboard("Noctural#9816")
        Library.Notification({
            Title = "Successfully copied",
            Description = "Discord copied to clipboard.",
            Duration = 3
        })
	end,
})

local CopyChannelCredits = CreditsPage:Button({
	Text = "Copy Youtube Channel",
	Callback = function()
		setclipboard("https://www.youtube.com/channel/UCrAhpn4GOFLBuJspEygwpWg")
        Library.Notification({
            Title = "Successfully copied",
            Description = "Youtube Channel copied to clipboard.",
            Duration = 3
        })
	end,
})

CreditsPage:Separator()

local SupportLable = CreditsPage:Label({
    Text = "You want support me and script development?"
})

local SupportTwoLable = CreditsPage:Label({
    Text = "Subscribe and Like me on Youtube"
})

CreditsPage:Separator()

SettingsPage:GuiSettings()
