getgenv().AntiFling = true -- Execute getgenv().AntiFling = false to turn off anti fling
getgenv().FlingTarget = "Player" -- Change this to the name of the player flinging you (Make sure to add the capital letters)

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Anti Fling by zefify/REVlENGE")

function RFT()
    if game:GetService("Players"):FindFirstChild(getgenv().FlingTarget).Character then
        game:GetService("Players"):FindFirstChild(getgenv().FlingTarget).Character:Destroy()
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().AntiFling == true and getgenv().FlingTarget ~= nil then
        RFT()
    end
end)
