local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local AimlockTarget = nil
local AimlockTargetPos = Vector3.new(0, 0, 0)

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Aimlock by zefify/REVlENGE")

game:GetService("UserInputService").InputBegan:Connect(function(Key, Typing)
    if Typing then return end
    if Key.KeyCode == Enum.KeyCode.Q then
        local Head = Mouse.Target.Parent:FindFirstChild("Head")
        if not Head then
            Head = Mouse.Target.Parent.Parent:FindFirstChild("Head")
        end
        if Head then
            if Head.Parent.Name == "SpecialParts" then
                AimlockTarget = Head.Parent.Parent.Parent.Name
            else
                AimlockTarget = Head.Parent.Name
            end
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Aimlock", Text = "Target has been set to "..AimlockTarget, Icon = "rbxassetid://0", Duration = 3})
        else
            AimlockTarget = nil
            game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Aimlock", Text = "Target has been set to nil", Icon = "rbxassetid://0", Duration = 3})
        end
    end
end)

local MT = getrawmetatable(game)
local NC = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local A = {...}
    local GNCM = getnamecallmethod() or get_namecall_method()
    if GNCM == "FireServer" and self.Name == "MainEvent" then
        if tostring(A[1]) == "UpdateMousePos" then
            if AimlockTarget ~= nil then
                A[2] = AimlockTargetPos
            end
        end
    end
    return NC(self, unpack(A))
end)
setreadonly(MT, true)

game:GetService("RunService").Heartbeat:Connect(function()
    local Target = game:GetService("Players"):FindFirstChild(AimlockTarget).Character
    if Target then
        AimlockTargetPos = Vector3.new(Target.Head.Position.X, Target.Head.Position.Y, Target.Head.Position.Z, (Target.Head.Velocity * 0.756)) -- Change this if you want to
    else
        AimlockTargetPos = Mouse.Hit.p
    end
end)
