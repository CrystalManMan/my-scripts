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
wait()
local Char = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local Fold = Instance.new("Folder")
Fold.Name = "FULLY_LOADED_CHAR"
Fold.Parent = Char
Char:WaitForChild("RagdollConstraints"):Destroy()
local Val = Instance.new("BoolValue", Char)
Val.Name = "RagdollConstraints"

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().AutoUnban == true and game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("K.O").Value == true then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(15)
        wait()
        local Char = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
        local Fold = Instance.new("Folder")
        Fold.Name = "FULLY_LOADED_CHAR"
        Fold.Parent = Char
        Char:WaitForChild("RagdollConstraints"):Destroy()
        local Val = Instance.new("BoolValue", Char)
        Val.Name = "RagdollConstraints"
    end
end)
