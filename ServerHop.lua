for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
    if v and v ~= v.maxPlayers and v.id ~= game.JobId then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
    end
end
