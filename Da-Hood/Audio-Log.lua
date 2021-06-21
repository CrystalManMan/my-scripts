getgenv().AudioLogTarget = "Player" -- Change this to the name of the player you want to audio log (Make sure to add the capital letters)

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Audio Log by zefify/REVlENGE")

function AudioLog()
    if game:GetService("Players"):FindFirstChild(getgenv().AudioLogTarget).Character.LowerTorso.BOOMBOXSOUND then
        print(string.match(game:GetService("Players"):FindFirstChild(getgenv().AudioLogTarget).Character.LowerTorso.BOOMBOXSOUND.SoundId,"%d+"))
    end
end

AudioLog()
