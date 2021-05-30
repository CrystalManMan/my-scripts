getgenv().HideName = true
getgenv().CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().HideName == true then
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("In-gameMask") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Riot Mask] - $60"].Head.CFrame
            wait(0.25)
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Riot Mask] - $60"].ClickDetector)
            wait(0.25)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
            wait()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask").Parent = game:GetService("Players").LocalPlayer.Character
            wait()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask"):Activate()
        end
    end
end)
