getgenv().SpamPhoneCall = true -- Execute getgenv().SpamPhoneCall = false to turn off spam phone call
getgenv().SpamCallTarget = "Player123" -- Change this to the name of the player you want to spam call (Make sure to add the capital letters)

function SPC()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Phone]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Phone]") then
        game:GetService("ReplicatedStorage").MainEvent:FireServer("PhoneCall", getgenv().SpamCallTarget)
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().SpamPhoneCall == true and getgenv().SpamCallTarget ~= nil then
        SPC()
    end
end)
