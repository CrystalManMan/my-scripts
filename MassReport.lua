--// THIS IS A SIMPLE MASS REPORT \\--

getgenv().MassReport = true -- execute getgenv().MassReport = false to turn it off
local Players = game:GetService("Players")

if MassReport then
    while MassReport do
        wait()
        Players:ReportAbuse(Players.example, "Type of abuse", "Description") -- example: Players:ReportAbuse(Players.Player123, "Cheating/Exploiting", "This player was using exploits in game")
    end
end
