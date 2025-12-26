-- NESCAU HUB | OP MAIN
-- Universal | No UI | No Rayfield

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")
local TP = game:GetService("TeleportService")

local LP = Players.LocalPlayer
local Char = LP.Character or LP.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")

-- AUTO RESPAWN FIX
LP.CharacterAdded:Connect(function(c)
    Char = c
    Hum = c:WaitForChild("Humanoid")
end)

------------------------------------------------
-- 🔥 FLY OP (X = ON / Z = OFF)
------------------------------------------------
local Fly = false
local BV, BG

UIS.InputBegan:Connect(function(i,g)
    if g then return end
    if i.KeyCode == Enum.KeyCode.X then
        Fly = true
        BV = Instance.new("BodyVelocity", Char.HumanoidRootPart)
        BG = Instance.new("BodyGyro", Char.HumanoidRootPart)
        BV.Velocity = Vector3.new(0,0,0)
        BV.MaxForce = Vector3.new(9e9,9e9,9e9)
        BG.MaxTorque = Vector3.new(9e9,9e9,9e9)
    elseif i.KeyCode == Enum.KeyCode.Z then
        Fly = false
        if BV then BV:Destroy() end
        if BG then BG:Destroy() end
    end
end)

RS.RenderStepped:Connect(function()
    if Fly and BV then
        local cam = workspace.CurrentCamera
        BV.Velocity = cam.CFrame.LookVector * 150
        BG.CFrame = cam.CFrame
    end
end)

------------------------------------------------
-- 👹 NOCLIP OP (C)
------------------------------------------------
local Noclip = false

UIS.InputBegan:Connect(function(i,g)
    if g then return end
    if i.KeyCode == Enum.KeyCode.C then
        Noclip = not Noclip
    end
end)

RS.Stepped:Connect(function()
    if Noclip and Char then
        for _,v in pairs(Char:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
end)

------------------------------------------------
-- ⚡ INFINITE JUMP OP (SPACE)
------------------------------------------------
UIS.JumpRequest:Connect(function()
    Hum:ChangeState(Enum.HumanoidStateType.Jumping)
end)

------------------------------------------------
-- 🧠 INSTA TP (V = onde olhar)
------------------------------------------------
UIS.InputBegan:Connect(function(i,g)
    if g then return end
    if i.KeyCode == Enum.KeyCode.V then
        Char.HumanoidRootPart.CFrame =
            workspace.CurrentCamera.CFrame * CFrame.new(0,0,-5)
    end
end)

------------------------------------------------
-- 🛡️ ANTI VOID / FAKE GOD
------------------------------------------------
RS.Heartbeat:Connect(function()
    if Hum.Health <= 0 then
        Hum.Health = Hum.MaxHealth
    end
    if Char.HumanoidRootPart.Position.Y < -50 then
        Char.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
    end
end)
