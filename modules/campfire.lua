getgenv().AutoCampfire = false

task.spawn(function()
    while task.wait(2) do
        if getgenv().AutoCampfire then
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name:lower():find("campfire") and v:FindFirstChild("Interact") then
                    v.Interact:FireServer()
                end
            end
        end
    end
end)
