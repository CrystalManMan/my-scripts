getgenv().HideName = true
getgenv().CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().HideName == true then
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("In-gameMask") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask") then
            wait(0.05)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.CFrame
            wait(0.05)
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector)
            wait(0.05)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
            wait(0.05)
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask").Parent = game:GetService("Players").LocalPlayer.Character
            wait(0.05)
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask"):Activate()
        end
    end
end)
