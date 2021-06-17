game:GetService("RunService").Stepped:Connect(function()
    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head.Position).Magnitude <= 9 then -- Dont put the magnitude above 9
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].ClickDetector)
        wait()
        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Taser]").Parent = game:GetService("Players").LocalPlayer.Character
        wait()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v.Name == "[Taser]" then
                v:Activate()
            end
        end
    end
end)
