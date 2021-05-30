function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Auto Collect Cash Nearby by zefify/REVlENGE")

function FindMoneyNearby()
    for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
        if v.Name == "MoneyDrop" then
            if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 12 then -- Dont put the magnitude above 12
                wait(0.25)
                fireclickdetector(v.ClickDetector)
            end
        end
    end
end

game:GetService("RunService").Stepped:Connect(function()
    FindMoneyNearby()
end)
