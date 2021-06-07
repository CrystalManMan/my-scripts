getgenv().TP = true -- Execute getgenv().TP = false to turn off click tp
getgenv().Mouse = game:GetService("Players").LocalPlayer:GetMouse()

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Key Tp by zefify/REVlENGE")

Mouse.KeyDown:Connect(function(Key)
    if Key == "t" then -- Change this to whatever key you want
        if getgenv().TP == true then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.hit.p.X, Mouse.hit.p.Y, Mouse.hit.p.Z)
        end
    end
end)
