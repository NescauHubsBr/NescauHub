-- 🍫 NESCAU HUB UI
-- UI própria | 99 Nights

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NescauHubUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 520, 0, 360)
Main.Position = UDim2.new(0.5, -260, 0.5, -180)
Main.BackgroundColor3 = Color3.fromRGB(50, 25, 15)
Main.BorderSizePixel = 0

local Corner = Instance.new("UICorner", Main)
Corner.CornerRadius = UDim.new(0, 14)

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "🍫 NESCAU HUB | 99 Nights"
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextColor3 = Color3.new(1, 1, 1)

print("🍫 NESCAU HUB UI carregada")
