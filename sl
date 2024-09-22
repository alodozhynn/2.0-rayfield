-- Inicialização do Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "☀ Sunlight y Hub ☀| Brookhaven RP 🏡 | Made by alodo8888",
    LoadingTitle = "Sunlight is loading...",
    LoadingSubtitle = "by alodo8888",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "RayfieldTest", -- Pasta personalizada para configuração
        FileName = "config"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink", -- Código do convite para o Discord
        RememberJoins = true
    },
    KeySystem = false -- Desativa o sistema de chaves
})
-- Adiciona a tab "Main/Trolling"
local mainTab = Window:CreateTab("Main/Trolling", "rbxassetid://7733960981")

-- Seção para "Trollar jogadores"
mainTab:CreateSection("Trollar jogadores")

-- Lista de jogadores para selecionar
local players = game.Players:GetPlayers()
local dropdownOptions = {}
for i, player in ipairs(players) do
    table.insert(dropdownOptions, player.Name)
end

-- Dropdown para selecionar o jogador
mainTab:CreateDropdown("Selecionar Jogador/select a player", dropdownOptions, function(value)
    selectedPlayer = game.Players:FindFirstChild(value)
end)

-- Função para teleportar e matar o jogador
local function teleportAndKillPlayer(targetPlayer)
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    local targetHRP = targetPlayer.Character:WaitForChild("HumanoidRootPart")
    myHRP.CFrame = CFrame.new(-83, 19, -130)
    wait(1)
    local connection
    connection = game:GetService("RunService").Stepped:Connect(function()
        myHRP.CFrame = targetHRP.CFrame
        if targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Sit then
            myHRP.CFrame = CFrame.new(500000, 0, 0)
            connection:Disconnect()
        end
    end)
end

-- Botão para matar o jogador
mainTab:CreateButton("Matar Jogador [couch kill player]", function()
    if selectedPlayer then
        teleportAndKillPlayer(selectedPlayer)
    else
        print("Nenhum jogador selecionado.")
    end
end)

-- Botão para aviso de que a tab Trolling 2 está por vir
mainTab:CreateButton("Trolling 2 tab coming soon.", function()
    print("Trolling 2 coming soon")
end)
-- Adiciona a tab "Teleportes"
local teleportesTab = Window:CreateTab("Teleportes", "rbxassetid://7733798691")

-- Seção para "Teleporte para outros lugares (Brookhaven only)"
teleportesTab:CreateSection("Teleporte para outros lugares (Brookhaven only)")

-- Botão para teleporte à Delegacia
teleportesTab:CreateButton("Delegacia/Police", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(-107, 3, 35)
end)

-- Botão para teleporte ao Hospital
teleportesTab:CreateButton("Hospital", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(-333, 4, 36)
end)

-- Botão para teleporte à Escola
teleportesTab:CreateButton("Escola/School", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(-324, 4, 203)
end)

-- Botão para teleporte ao Banco do Brookhaven
teleportesTab:CreateButton("Banco do Brookhaven/Brookhaven Bank", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(12, 3, 268)
end)

-- Botão para teleporte ao Mercado
teleportesTab:CreateButton("Mercado/Market", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(-23, 3, -128)
end)

-- Botão para teleporte ao Shopping
teleportesTab:CreateButton("Shopping/Mall", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(161, 11, -166)
end)

-- Botão para teleporte ao Aeroporto
teleportesTab:CreateButton("Aeroporto/Airport", function()
    local myHRP = game.Players.LocalPlayer.Character.HumanoidRootPart
    myHRP.CFrame = CFrame.new(356, 14, 107)
end)
