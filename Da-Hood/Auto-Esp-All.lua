getgenv().AUTOESPALL = true -- Execute getgenv().AUTOESPALL = false to turn off auto esp all

function ESP()
    wait(1)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character.Head and v ~= game:GetService("Players").LocalPlayer then
            if not v.Character.Head:FindFirstChild("ESP") then
                local BillBoardGui = Instance.new("BillboardGui", v.Character.Head)
                local TextLabel = Instance.new("TextLabel", BillBoardGui)
                BillBoardGui.Name = "ESP"
                BillBoardGui.Adornee = epic
                BillBoardGui.AlwaysOnTop = true
                BillBoardGui.ExtentsOffset = Vector3.new(0, 3, 0)
                BillBoardGui.Size = UDim2.new(0, 5, 0, 5)
                TextLabel.Name = "ESP2"
                TextLabel.BackgroundColor3 = Color3.new(255, 255, 255)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0, 0, 0, -40)
                TextLabel.Size = UDim2.new(1, 0, 10, 0)
                TextLabel.Visible = true
                TextLabel.ZIndex = 10
                TextLabel.Font = "ArialBold"
                TextLabel.FontSize = "Size18"
                TextLabel.TextColor = BrickColor.new("Bright red")
                TextLabel.TextStrokeTransparency = 0.75
                while wait() do
                    TextLabel.Text = "Name: "..v.Name.." | Health: "..math.floor(v.Character.Humanoid.Health).." | Distance: "..math.floor((game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude)
                end
            end
        end
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    if getgenv().AUTOESPALL == true then
        ESP()
    end
end)
