-- LIST OF GUNS YOU CAN PUT IN GETGENV().GUN
--[[
    TacticalShotgun
    Double-Barrel SG
    RPG
    SMG
    Silencer
    AR
    Revolver
    Glock
    P90
    AUG
    Shotgun
    SilencerAR
    AK47
    Flamethrower
]]--

getgenv().Gun = "TacticalShotgun" -- change this to whatever gun you want
getgenv().CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

if getgenv().Gun == "TacticalShotgun" then
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[TacticalShotgun] - $1750"].Head.CFrame
    wait(0.25)
    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[TacticalShotgun] - $1750"].ClickDetector)
    wait(0.25)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
else
    if getgenv().Gun == "Double-Barrel SG" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Double-Barrel SG] - $1400"].Head.CFrame
        wait(0.25)
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        wait(0.25)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
    else
        if getgenv().Gun == "RPG" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[RPG] - $6000"].Head.CFrame
            wait(0.25)
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[RPG] - $6000"].ClickDetector)
            wait(0.25)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
        else
            if getgenv().Gun == "SMG" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[SMG] - $750"].Head.CFrame
                wait(0.25)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[SMG] - $750"].ClickDetector)
                wait(0.25)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
            else
                if getgenv().Gun == "Silencer" then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Silencer] - $550"].Head.CFrame
                    wait(0.25)
                    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Silencer] - $550"].ClickDetector)
                    wait(0.25)
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                else
                    if getgenv().Gun == "AR" then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[AR] - $1000"].Head.CFrame
                        wait(0.25)
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[AR] - $1000"].ClickDetector)
                        wait(0.25)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                    else
                        if getgenv().Gun == "Revolver" then
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Revolver] - $1300"].Head.CFrame
                            wait(0.25)
                            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Revolver] - $1300"].ClickDetector)
                            wait(0.25)
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                        else
                            if getgenv().Gun == "Glock" then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Glock] - $500"].Head.CFrame
                                wait(0.25)
                                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Glock] - $500"].ClickDetector)
                                wait(0.25)
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                            else
                                if getgenv().Gun == "P90" then
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[P90] - $1000"].Head.CFrame
                                    wait(0.25)
                                    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[P90] - $1000"].ClickDetector)
                                    wait(0.25)
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                else
                                    if getgenv().Gun == "AUG" then
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[AUG] - $1950"].Head.CFrame
                                        wait(0.25)
                                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[AUG] - $1950"].ClickDetector)
                                        wait(0.25)
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                    else
                                        if getgenv().Gun == "Shotgun" then
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1250"].Head.CFrame
                                            wait(0.25)
                                            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1250"].ClickDetector)
                                            wait(0.25)
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                        else
                                            if getgenv().Gun == "SilencerAR" then
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[SilencerAR] - $1250"].Head.CFrame
                                                wait(0.25)
                                                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[SilencerAR] - $1250"].ClickDetector)
                                                wait(0.25)
                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                            else
                                                if getgenv().Gun == "AK47" then
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[AK47] - $2250"].Head.CFrame
                                                    wait(0.25)
                                                    fireclickdetector(game:GetService("Workspace").Ignored.Shop["[AK47] - $2250"].ClickDetector)
                                                    wait(0.25)
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                                else
                                                    if getgenv().Gun == "Flamethrower" then
                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Flamethrower] - $7500"].Head.CFrame
                                                        wait(0.25)
                                                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Flamethrower] - $7500"].ClickDetector)
                                                        wait(0.25)
                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
