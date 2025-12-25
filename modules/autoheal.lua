local player = game.Players.LocalPlayer
getgenv().AutoHeal = false

task.spawn(function()
    while task.wait(1) do
        if getgenv().AutoHeal then
            local char = player.Character
            local hum = char and char:FindFirstChild("Humanoid")
            if hum and hum.Health < 60 then
                -- depende do remote de bandage do jogo
                -- base pronta, ajusta depois
            end
        end
    end
end)
