-- 🍫 NESCAU HUB Loader
-- Version 1.5 | Game: 99 Nights

if getgenv().NescauHubLoaded then return end
getgenv().NescauHubLoaded = true

local BASE_URL = "https://raw.githubusercontent.com/SEUUSUARIO/NescauHub/main/"

local function Load(path)
    return loadstring(game:HttpGet(BASE_URL .. path))()
end

-- Load UI
Load("ui/main_ui.lua")

-- Load Game Script
Load("games/99nights.lua")

pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "🍫 NESCAU HUB",
        Text = "Loaded successfully (99 Nights)",
        Duration = 5
    })
end)
