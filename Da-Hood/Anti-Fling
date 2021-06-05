getgenv().AntiFling = true -- Execute getgenv().AntiFling = false to turn off anti fling
getgenv().FlingTarget = "ERMALCC" -- Change this to the name of the player flinging you (Make sure to add the capital letters)

function RFT()
    if game:GetService("Players"):FindFirstChild(FlingTarget).Character then
        game:GetService("Players"):FindFirstChild(FlingTarget).Character:Destroy()
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().AntiFling == true and getgenv().FlingTarget ~= nil then
        RFT()
    end
end)
