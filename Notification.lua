getgenv().Notification = function(title, text, duration)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = title,
        Text = text,
        Icon = "rbxassetid://0",
        Duration = duration,
    })
end
