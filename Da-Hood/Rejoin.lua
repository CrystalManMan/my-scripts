-- Made this since some of you Da Hood scripters dont know how to make a simple rejoin script and instead make a serverhop script :rofl:

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Rejoin by zefify/REVlENGE")
wait(1)
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
