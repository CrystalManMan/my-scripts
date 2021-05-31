getgenv().AntiFlashbang = true -- Execute getgenv().AntiFlashbang = false to turn off anti flashbang

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Anti Flashbang by zefify/REVlENGE")

function RFB()
    if game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("whiteScreen") then
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("whiteScreen"):Destroy()
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().AntiFlashbang == true then
        RFB()
    end
end)
