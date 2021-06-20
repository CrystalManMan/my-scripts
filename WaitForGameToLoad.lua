if not game:IsLoaded() then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Game", Text = "Waiting for game to load!", Icon = "rbxassetid://0", Duration = 3})
    game.Loaded:Wait()
end
