-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")



--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Frame.Position = UDim2.new(0.199213624, 0, 0.243564352, 0)
Frame.Size = UDim2.new(0, 445, 0, 259)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 445, 0, 47)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Auto Spin By Staryuu" 
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 49.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TextButton.Position = UDim2.new(0.325842679, 0, 0.826254845, 0)
TextButton.Size = UDim2.new(0, 158, 0, 45)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Spin"
TextButton.TextColor3 = Color3.fromRGB(214, 214, 214)
TextButton.TextSize = 38.000
TextButton.MouseButton1Down:Connect(function()
	_G.autospin = true          -- On or Off.
	_G.desiredclan1 = "Kamado"
	_G.desiredclan2 = "Agatsuma" --Clans you're aiming for.
	_G.desiredclan3 = "Tomioka"
	_G.speed = 0.1              -- The time it takes to spin || Recommended 0.1 or lower

	while _G.autospin == true do
		if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.desiredclan1 then
			_G.autospin = false
		else
			if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.desiredclan2 then
				_G.autospin = false
			else
				if game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Clan.Value == _G.desiredclan3 then
					_G.autospin = false
				else
					local args = {[1] = "check_can_spin"}
					game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer(unpack(args))
					wait(_G.speed)
				end
			end
		end
	end
end)
