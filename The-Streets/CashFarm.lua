--// THIS CASHFARM IS MAINLY FOR THE STREETS \\--

getgenv().CashFarm = true

local Player = game:GetService("Players").LocalPlayer

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "CashFarm",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("CASH FARM MADE BY ZEFIFY/REVLENGE")

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("Seat") then
        v:Destroy() -- Seats suck so fucking much
    end
end

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v.Name == "RandomSpawner" then
        local part = nil
        for i,b in pairs(v:GetDescendants()) do
            if v:IsA("BasePart") then
                part = v
            end
        end
        game:GetService("TweenService"):Create(Player.Character:FindFirstChild("HumanoidRootPart"), TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CFrame = part.CFrame}):Play()
        wait(10)
        for i,n in pairs(Player.Backpack:GetChildren()) do
            if n:IsA("Tool") and string.find(string.lower(n.Name), "cash") then
                n.Parent = Player.Character
                wait(0.25)
                n:Activate()
            elseif n:IsA("Tool") and n.Name ~= "Punch" and n.Name ~= "Knife" then
                n:Destroy()
            end
        end
    end
end

game:GetService("Workspace").ChildAdded:Connect(function(child)
    if child.Name == "RandomSpawner" then
        if CashFarm then
            wait(0.25)
            local part = nil
            for i,child in pairs(game:GetService("Workspace"):GetChildren()) do
                if child.Name == "RandomSpawner" then
                    local part = nil
                    for i,v in pairs(child:GetDescendants()) do
                        if v:IsA("BasePart") then
                            part = v
                        end
                    end
                    game:GetService("TweenService"):Create(Player.Character:FindFirstChild("HumanoidRootPart"), TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CFrame = part.CFrame}):Play()
                    wait(10)
                    for i,n in pairs(Player.Backpack:GetChildren()) do
                        if n:IsA("Tool") and string.find(string.lower(n.Name), "cash") then
                            n.Parent = Player.Character
                            wait(0.25)
                            n:Activate()
                        elseif n:IsA("Tool") and n.Name ~= "Punch" and n.Name ~= "Knife" then
                            n:Destroy()
                        end
                    end
                end
            end
        end
    end
end)
