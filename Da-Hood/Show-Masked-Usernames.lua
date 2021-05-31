function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Show Masked Usernames by zefify/REVlENGE")

function SMU()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v and v.Character:FindFirstChild("In-gameMask") then
            if v.Character:FindFirstChild("In-gameMask")[""] then
                v.Character:FindFirstChild("In-gameMask")[""].Name = v.Name
            end
        end
    end
end

game:GetService("RunService").Stepped:Connect(function()
    SMU()
end)
