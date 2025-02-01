-- Tạo giao diện UI dễ sử dụng hơn
local ui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local mainFrame = Instance.new("Frame", ui)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(100, 100, 100)

-- Tiêu đề của menu
local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(0, 300, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "MinhxHub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.BackgroundTransparency = 1

-- Tạo nút Auto Farm
local farmButton = Instance.new("TextButton", mainFrame)
farmButton.Size = UDim2.new(0, 280, 0, 40)
farmButton.Position = UDim2.new(0, 10, 0, 60)
farmButton.Text = "Start Auto Farm"
farmButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
farmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
farmButton.TextSize = 18

-- Tạo nút Auto Dragon Quest
local dragonQuestButton = Instance.new("TextButton", mainFrame)
dragonQuestButton.Size = UDim2.new(0, 280, 0, 40)
dragonQuestButton.Position = UDim2.new(0, 10, 0, 110)
dragonQuestButton.Text = "Start Dragon Quest"
dragonQuestButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
dragonQuestButton.TextColor3 = Color3.fromRGB(255, 255, 255)
dragonQuestButton.TextSize = 18

-- Tạo nút Stop Farm
local stopFarmButton = Instance.new("TextButton", mainFrame)
stopFarmButton.Size = UDim2.new(0, 280, 0, 40)
stopFarmButton.Position = UDim2.new(0, 10, 0, 160)
stopFarmButton.Text = "Stop Auto Farm"
stopFarmButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
stopFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
stopFarmButton.TextSize = 18

-- Biến kiểm soát
local farmActive = false

-- Auto Farm function
function autoFarm()
    farmActive = not farmActive
    farmButton.Text = farmActive and "Stop Auto Farm" or "Start Auto Farm"
    
    while farmActive do
        wait(1)
        local enemies = workspace:GetChildren()
        for _, enemy in pairs(enemies) do
            if enemy:FindFirst
