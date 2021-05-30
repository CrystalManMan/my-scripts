getgenv().MoneyDrop = true -- Execute getgenv().MoneyDrop = false to turn off the cash drop
getgenv().Money = 100 -- Put this above 100 or lower than 10000

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Auto Drop Money by zefify/REVlENGE")

function DropMoney(Amount)
    if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value > Amount then
        game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", Amount)
    end
end

while getgenv().MoneyDrop do
    DropMoney(Money) -- Loop drops the amount of cash you set
    wait(15) -- Im not sure what the delay on this is, change this if you know what the delay is
end
