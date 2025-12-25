getgenv().AutoShredder = false

task.spawn(function()
    while task.wait(3) do
        if getgenv().AutoShredder then
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name:lower():find("shredder") and v:FindFirstChild("Interact") then
                    v.Interact:FireServer()
                end
            end
        end
    end
end)
