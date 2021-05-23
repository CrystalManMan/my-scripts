getgenv().Noclip = false

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

function Notification(text)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Noclip",
        Text = text,
        Icon = "rbxassetid://0",
        Duration = 3,
    })
end

local Meta = getrawmetatable(game)
local Index = Meta.__index
local NIndex = Meta.__newindex
local NCall = Meta.__namecall
local Caller = checkcaller or is_protosmasher_caller
setreadonly(Meta, false)

game:GetService("RunService").Stepped:Connect(function()
	if Noclip == true and Player and Player.Character and Player.Character:FindFirstChild("Humanoid") then
		pcall(function()
			Player.Character.Head.CanCollide = false
			Player.Character.Torso.CanCollide = false
		end)
	end
end)

Meta.__newindex = newcclosure(function(self, crv, Value)
	if Caller() then
		return NIndex(self, crv, Value)
	end
	if tostring(self) == "HumanoidRootPart" or tostring(self) == "Torso" then
		if crv == "CFrame" and self:IsDescendantOf(Player.Character) then
			return true
		end
	end
	return NIndex(self, crv, Value)
end)
setreadonly(Meta, true)

Mouse.KeyDown:Connect(function(Key)
    if Key == "g" then
        Noclip = not Noclip
        Notification("Noclip: "..tostring(Noclip))
    end
end)
