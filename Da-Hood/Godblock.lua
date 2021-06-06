function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Godblock by zefify/REVlENGE")

function Godblock()
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size.X == 2 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size.Y == 2 then -- Unban size / 0 lettuce eaten size
        game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Defense"):Destroy()
        local Val = Instance.new("IntValue", game:GetService("Players").LocalPlayer.Character.BodyEffects)
        Val.Name = "Defense"
        Val.Value = 100
        Notification("God block is now on, Reset to turn god block off")
    end
end

Godblock()
