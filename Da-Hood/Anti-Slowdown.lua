getgenv().AntiSlowdown = true -- Execute getgenv().AntiSlowdown = false to turn off anti slowdown

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Anti Slowdown by zefify/REVlENGE")

function AntiSlowdown()
    MovementValues = game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or game:GetService("Players").LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
    if MovementValues then
        MovementValues:Destroy()
    end
    if game:GetService("Players").LocalPlayer.Character.BodyEffects.Reload.Value == true then
        game:GetService("Players").LocalPlayer.Character.BodyEffects.Reload.Value = false
    end
end

if getgenv().AntiSlowdown == true then
    while getgenv().AntiSlowdown == true do
        AntiSlowdown()
        wait()
    end
end
