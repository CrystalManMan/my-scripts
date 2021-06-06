getgenv().Noclip = true -- Execute getgenv().Noclip = false to turn off noclip

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Noclip by zefify/REVlENGE")

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().Noclip == true and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        pcall(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso").CanCollide = false
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso").CanCollide = false
            game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
        end)
    end
end)
