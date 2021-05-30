function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Godmode made by zefify/REVlENGE")

function Godmode()
    if game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking") then
        game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking"):Destroy()
        Notification("God mode is now on, Reset to turn god mode off")
    end
end

Godmode()
