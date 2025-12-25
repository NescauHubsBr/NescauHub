getgenv().ESPEnabled = false

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function createESP(char)
    if not char:FindFirstChild("Head") then return end
    if char:FindFirstChild("NescauESP") then return end

    local box = Instance.new("BillboardGui")
    box.Name = "NescauESP"
    box.Adornee = char.Head
    box.Size = UDim2.new(0,100,0,40)
    box.StudsOffset = Vector3.new(0,2,0)
    box.AlwaysOnTop = true

    local text = Instance.new("TextLabel", box)
    text.Size = UDim2.new(1,0,1,0)
    text.BackgroundTransparency = 1
    text.Text = char.Name
    text.TextColor3 = Color3.fromRGB(255, 0, 0)
    text.TextStrokeTransparency = 0
    text.TextScaled = true

    box.Parent = char
end

RunService.RenderStepped:Connect(function()
    if not getgenv().ESPEnabled then
        for _,p in pairs(Players:GetPlayers()) do
            if p.Character and p.Character:FindFirstChild("NescauESP") then
                p.Character.NescauESP:Destroy()
            end
        end
        return
    end

    for _,p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character then
            createESP(p.Character)
        end
    end
end)
