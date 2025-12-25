
getgenv().AutoSaveKids = false

task.spawn(function()
    while task.wait(1) do
        if getgenv().AutoSaveKids then
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name:lower():find("kid") and v:FindFirstChild("Interact") then
                    v.Interact:FireServer()
                end
            end
        end
    end
end)
