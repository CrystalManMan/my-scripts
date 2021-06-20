--[[ALL THE ITEMS YOU CAN USE WITH REACH:
    Bat
    Knife
    SledgeHammer
    Shovel
    Pitchfork
    StopSign
]]--

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Da Hood",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

Notification("Reach by zefify/REVlENGE")

function Reach(Tool)
    if Tool == "Bat" then
        local Bat = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Bat]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Bat]")
        if Bat then
            Bat.Handle.Size = Vector3.new(50, 50, 50)
            Bat.Handle.Transparency = 1
            Notification("Reach is now on Bat")
        end
    else
        if Tool == "Knife" then
            local Knife = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Knife]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Knife]")
            if Knife then
                Knife.Handle.Size = Vector3.new(50, 50, 50)
                Knife.Handle.Transparency = 1
                Notification("Reach is now on Knife")
            end
        else
            if Tool == "SledgeHammer" then
                local SledgeHammer = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[SledgeHammer]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]")
                if SledgeHammer then
                    SledgeHammer.Handle.Size = Vector3.new(50, 50, 50)
                    SledgeHammer.Handle.Transparency = 1
                    Notification("Reach is now on SledgeHammer")
                end
            else
                if Tool == "Shovel" then
                    local Shovel = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Shovel]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Shovel]")
                    if Shovel then
                        Shovel.Handle.Size = Vector3.new(50, 50, 50)
                        Shovel.Handle.Transparency = 1
                        Notification("Reach is now on Shovel")
                    end
                else
                    if Tool == "Pitchfork" then
                        local Pitchfork = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Pitchfork]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Pitchfork]")
                        if Pitchfork then
                            Pitchfork.Handle.Size = Vector3.new(50, 50, 50)
                            Pitchfork.Handle.Transparency = 1
                            Notification("Reach is now on Pitchfork")
                        end
                    else
                        if Tool == "StopSign" then
                            local StopSign = game:GetService("Players").LocalPlayer.Character:FindFirstChild("[StopSign]") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[StopSign]")
                            if StopSign then
                                StopSign.Handle.Size = Vector3.new(50, 50, 50)
                                StopSign.Handle.Transparency = 1
                                StopSign.Sign.Transparency = 1
                                StopSign.Sign.Decal:Destroy()
                                StopSign.Sign.Decal:Destroy()
                                Notification("Reach is now on StopSign")
                            end
                        end
                    end
                end
            end
        end
    end
end

Reach("Bat") -- Change this to whatever you want to use reach on
