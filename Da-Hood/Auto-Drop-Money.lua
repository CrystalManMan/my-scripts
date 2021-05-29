getgenv().MoneyDrop = true -- execute getgenv().CashDrop = false to turn off the cash drop
getgenv().Money = 100 -- put this above 100 or lower than 10000

function DropMoney(Amount)
    game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", Amount)
end

while MoneyDrop do
    DropMoney(Money) -- loop drops the amount of cash you set
    wait(15) -- im not sure what the delay on this is, change if you know what the delay is
end
