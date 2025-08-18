-- Локальные ссылки на глобальные объекты
local game = game
local os = os
local math = math
local string = string
local task = task
local Enum = Enum
local Color3 = Color3
local UDim2 = UDim2
local UDim = UDim
local Instance = Instance
local RunService = game:GetService("RunService")

-- Таблица с игровыми режимами и их URL скриптов
local gameModes = {
    {name = "99 nights #1 [No Ban]", url = "https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua"},
}

-- Функция получения CET/CEST времени
local function getCETTime()
    local utc = os.date("!*t")
    local localT = os.date("*t")
    local offset = localT.isdst and 2 or 1
    utc.hour = (utc.hour + offset) % 24
    return string.format("%02d:%02d:%02d", utc.hour, utc.min, utc.sec)
end

-- Функция получения пинга
local function getPing()
    local ok, result = pcall(function()
        local startT = tick()
        local cr = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
        if cr then cr:WaitForChild("OnNewMessage", 0.05) end
        return (tick() - startT) * 1000
    end)
    return ok and math.floor(result) or 0
end

-- Счетчик FPS
local fps = 0
task.spawn(function()
    local last = tick()
    while true do
        local now = tick()
        if now > last then fps = math.floor(1/(now - last)) end
        last = now
        task.wait()
    end
end)

-- Генерация случайного цвета для неоновой подсветки
local function getRandomColor()
    return Color3.fromRGB(
        math.random(100, 255),
        math.random(100, 255),
        math.random(100, 255)
    )
end

-- Безопасное создание GUI
local function safeCreateGui(name)
    local ok, gui = pcall(function()
        local coreGui = game:GetService("CoreGui")
        local existing = coreGui:FindFirstChild(name)
        if existing then existing:Destroy() end
        local sg = Instance.new("ScreenGui")
        sg.Name = name
        sg.ResetOnSpawn = false
        sg.Parent = coreGui
        return sg
    end)
    return ok and gui or nil
end

-- Создаем GUI для информации (автор, пинг, FPS)
local infoGui = safeCreateGui("InfoDisplayGui")
if not infoGui then
    warn("Failed to create Info GUI")
    return
end

-- Создаем GUI для выбора режима
local modeGui = safeCreateGui("ModeSelectionGui")
if not modeGui then
    warn("Failed to create Mode Selection GUI")
    infoGui:Destroy()
    return
end

-- Создаем фрейм для информации (в верхнем правом углу)
local infoFrame = Instance.new("Frame")
infoFrame.Size = UDim2.new(0, 180, 0, 100)
infoFrame.Position = UDim2.new(1, -190, 0, 10)
infoFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
infoFrame.BackgroundTransparency = 0.5
infoFrame.BorderSizePixel = 0
infoFrame.Parent = infoGui

-- Добавляем неоновую подсветку для инфо-фрейма
local infoStroke = Instance.new("UIStroke")
infoStroke.Thickness = 2
infoStroke.Color = getRandomColor()
infoStroke.Transparency = 0.3
infoStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
infoStroke.Parent = infoFrame

-- Метка времени
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, -20, 0, 20)
timeLabel.Position = UDim2.new(0, 10, 0, 10)
timeLabel.BackgroundTransparency = 1
timeLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
timeLabel.Font = Enum.Font.Code
timeLabel.TextSize = 16
timeLabel.TextXAlignment = Enum.TextXAlignment.Left
timeLabel.Text = "🕒 " .. getCETTime()
timeLabel.Parent = infoFrame

-- Метка статуса (автор, пинг, FPS)
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -20, 0, 40)
statusLabel.Position = UDim2.new(0, 10, 0, 40)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(255, 0, 255)
statusLabel.Font = Enum.Font.Code
statusLabel.TextSize = 14
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.TextYAlignment = Enum.TextYAlignment.Top
statusLabel.Text = string.format("Author: t.me/erk_X\n📶 %dms | ⚡ %d FPS\nInkGame-3", getPing(), fps)
statusLabel.Parent = infoFrame

-- Создаем фрейм для выбора режима (в центре)
local modeFrame = Instance.new("Frame")
modeFrame.Size = UDim2.new(0, 300, 0, 400)
modeFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
modeFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
modeFrame.BackgroundTransparency = 0.5
modeFrame.BorderSizePixel = 0
modeFrame.Parent = modeGui

-- Добавляем неоновую подсветку для фрейма выбора режима
local modeStroke = Instance.new("UIStroke")
modeStroke.Thickness = 3
modeStroke.Color = getRandomColor()
modeStroke.Transparency = 0.2
modeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
modeStroke.Parent = modeFrame

-- Создаем прокручиваемый фрейм для выбора режима
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -20, 1, -80)
scrollingFrame.Position = UDim2.new(0, 10, 0, 70)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 255)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #gameModes * 50)
scrollingFrame.Parent = modeFrame

-- Создаем UIListLayout для кнопок
local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Padding = UDim.new(0, 5)
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Parent = scrollingFrame

-- Метка статуса для выбора режима
local modeStatusLabel = Instance.new("TextLabel")
modeStatusLabel.Size = UDim2.new(1, -20, 0, 40)
modeStatusLabel.Position = UDim2.new(0, 10, 0, 20)
modeStatusLabel.BackgroundTransparency = 1
modeStatusLabel.TextColor3 = Color3.fromRGB(255, 0, 255)
modeStatusLabel.Font = Enum.Font.Code
modeStatusLabel.TextSize = 14
modeStatusLabel.TextXAlignment = Enum.TextXAlignment.Left
modeStatusLabel.TextYAlignment = Enum.TextYAlignment.Top
modeStatusLabel.Text = "Select a game mode"
modeStatusLabel.Parent = modeFrame

-- Кэшируем UIStroke для оптимизации
local buttonStrokes = {}

-- Создаем кнопки выбора режима
for i, mode in ipairs(gameModes) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -10, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.BackgroundTransparency = 0.6
    button.Text = mode.name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Code
    button.TextSize = 14
    button.BorderSizePixel = 0
    button.LayoutOrder = i
    
    -- Добавляем UIStroke для кнопки
    local buttonStroke = Instance.new("UIStroke")
    buttonStroke.Thickness = 1
    buttonStroke.Color = getRandomColor()
    buttonStroke.Transparency = 0.4
    buttonStroke.Parent = button
    buttonStrokes[button] = buttonStroke
    
    -- Обработчик нажатия кнопки
    button.MouseButton1Click:Connect(function()
        modeStatusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        modeStatusLabel.Text = "Loading: " .. mode.name
        task.spawn(function()
            local success, result = pcall(function()
                loadstring(game:HttpGet(mode.url))()
            end)
            if success then
                modeStatusLabel.Text = "Loaded: " .. mode.name
            else
                modeStatusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                modeStatusLabel.Text = "Error loading: " .. mode.name
            end
            -- Ждем 3 секунды и уничтожаем GUI с выбором режима
            task.wait(3)
            modeGui:Destroy()
        end)
    end)
    
    button.Parent = scrollingFrame
end

-- Обновление времени и статуса
task.spawn(function()
    while infoGui.Parent do
        timeLabel.Text = "🕒 " .. getCETTime()
        statusLabel.Text = string.format("Author: t.me/erk_X\n📶 %dms | ⚡ %d FPS\nSERVER-4", getPing(), fps)
        task.wait(1)
    end
end)

-- Неоновая анимация свечения
local step = 0
RunService.RenderStepped:Connect(function()
    step = step + 0.05
    -- Анимация для инфо-фрейма
    if infoGui.Parent then
        infoStroke.Transparency = 0.3 + 0.2 * math.sin(step)
    end
    -- Анимация для фрейма выбора режима
    if modeGui.Parent then
        modeStroke.Transparency = 0.2 + 0.2 * math.sin(step)
        for button, stroke in pairs(buttonStrokes) do
            stroke.Transparency = 0.4 + 0.2 * math.sin(step + button.LayoutOrder * 0.2)
        end
    end
end)
