getgenv().AutoUnban = true

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Auto Unban by zefify/REVlENGE")

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
game:GetService("Players").LocalPlayer.DataFolder.Information.Jail.Value = 0
wait(4.9)
game:GetService("Players").LocalPlayer.Character:ClearAllChildren()
local Character = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local Folder = Instance.new("Folder")
Folder.Name = "FULLY_LOADED_CHAR"
Folder.Parent = Character
Character:WaitForChild("BodyEffects").Dead:Destroy()
local Value = Instance.new("BoolValue", Character.BodyEffects)
Value.Name = "Dead"

game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
    if getgenv().AutoUnban then
        wait(4.9)
        game:GetService("Players").LocalPlayer.Character:ClearAllChildren()
        local Character = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
        local Folder = Instance.new("Folder")
        Folder.Name = "FULLY_LOADED_CHAR"
        Folder.Parent = Character
        Character:WaitForChild("BodyEffects").Dead:Destroy()
        local Value = Instance.new("BoolValue", Character.BodyEffects)
        Value.Name = "Dead"
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    if game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("K.O").Value == true then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(15)
    end
end)
