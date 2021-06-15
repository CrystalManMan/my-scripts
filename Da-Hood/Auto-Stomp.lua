getgenv().AutoStomp = true -- Execute getgenv().AutoStomp = false to turn off auto stomp

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Auto Stomp by zefify/REVlENGE")

function Stomp()
    game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
end

if getgenv().AutoStomp == true then
    while getgenv().AutoStomp == true do
        Stomp()
        wait()
    end
end
