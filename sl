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
-- Adiciona a aba "Chat"
local chatTab = Window:CreateTab("Chat", "rbxassetid://8834748103")

-- Adiciona a seção "Chat bypasser"
chatTab:CreateSection("Chat bypasser")

-- Função para copiar o texto para a área de transferência
local function copyToClipboard(text)
    setclipboard(text)
end

-- Botões para copiar os textos das redes sociais
chatTab:CreateButton({
    Name = "Copiar Texto: YouTube",
    Callback = function()
        copyToClipboard("Y͜͡o͜͡u͜͡T͜͡u͜͡b͜͡e͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Instagram",
    Callback = function()
        copyToClipboard("I͜͡n͜͡s͜͡t͜͡a͜͡g͜͡r͜͡a͜͡m͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Tik tok",
    Callback = function()
        copyToClipboard("T͜͡i͜͡k͜͡ t͜͡o͜͡k͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Bluesky",
    Callback = function()
        copyToClipboard("b͜͡l͜͡u͜͡e͜͡s͜͡k͜͡y͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Kwai",
    Callback = function()
        copyToClipboard("k͜͡w͜͡a͜͡i͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Discord",
    Callback = function()
        copyToClipboard("D͜͡i͜͡s͜͡c͜͡o͜͡r͜͡d͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: WhatsApp",
    Callback = function()
        copyToClipboard("w͜͡h͜͡a͜͡t͜͡s͜͡ a͜͡p͜͡p͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Texto: Twitch",
    Callback = function()
        copyToClipboard("T͜͡w͜͡i͜͡t͜͡c͜͡h͜͡")
    end
})

-- Adiciona a seção "Chat bypasser (números)"
chatTab:CreateSection("Chat bypasser (números)")

-- Botões para copiar os números de 0 a 9 com os caracteres estilizados
chatTab:CreateButton({
    Name = "Copiar Número: 0",
    Callback = function()
        copyToClipboard("0͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 1",
    Callback = function()
        copyToClipboard("1͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 2",
    Callback = function()
        copyToClipboard("2͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 3",
    Callback = function()
        copyToClipboard("3͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 4",
    Callback = function()
        copyToClipboard("4͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 5",
    Callback = function()
        copyToClipboard("5͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 6",
    Callback = function()
        copyToClipboard("6͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 7",
    Callback = function()
        copyToClipboard("7͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 8",
    Callback = function()
        copyToClipboard("8͜͡")
    end
})

chatTab:CreateButton({
    Name = "Copiar Número: 9",
    Callback = function()
        copyToClipboard("9͜͡")
    end
})
-- Adicionar a seção "Desbanir" na tab "Casas"
CasasTab:AddSection({
    Name = "Desbanir"
})

-- Função para remover a pasta 'BannedLots'
local function removerBannedLots()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local bannedLots = ReplicatedStorage:FindFirstChild("BannedLots")

    if bannedLots and bannedLots:IsA("Folder") then
        -- Remover a pasta 'BannedLots'
        bannedLots:ClearAllChildren()
        bannedLots:Destroy()

        -- Notificação de sucesso
        OrionLib:MakeNotification({
            Name = "Você foi desbanido pra sempre das casas",
            Content = "'BannedLots' foi deletada do ReplicatedStorage.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    else
        -- Notificação de erro
        OrionLib:MakeNotification({
            Name = "Problemas no ReplicatedStorage",
            Content = "A pasta 'BannedLots' não foi encontrada ou não é uma pasta.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
end

-- Adicionar botão "Ser desbanido de uma casa" na seção "Desbanir"
CasasTab:AddButton({
    Name = "Ser desbanido de uma casa/unban yourself of a house",
    Callback = removerBannedLots
})
