--[🔐] Настройки ключей
local PREMIUM_KEYS = {
    ["prem_A3f9jKlsm2nD8xXqZ7vYrP1Ws5"] = true,
    ["prem_Jd9KsLwXq2mN7yVpZ8aT1CbRe6"] = true,
    ["prem_Mn4LtXvZq9wBpCeY2sJhK17Dr0"] = true,
    ["prem_Vq7ZxPnLtMsBjArW64K9yEC3Fo"] = true,
    ["prem_Xt1LmBzQVpCe4FsJk8RhOwDYN"] = true,
    ["prem_CrJzW7FkX8qS1VtpMe9bTnLoYg"] = true,
    ["prem_QPw9RmCV0Jz6FxLdtGoTkYS8lHb"] = true,
    ["prem_HzFJW6tScLplTKVeqDX7noYAm"] = true,
    ["prem_OUnXq7cYrJTSWbEK94pZxFka0M"] = true,
    ["prem_BqTGW0rHRYFKylvsM2xcNzjZOn"] = true,
    ["prem_M5wlK0DrJBzTSfxYyeXNqPcp14"] = true,
    ["prem_LgfASXrbokM0Z9IvTN6YW7dz3E"] = true,
    ["prem_xA3VhJMLlWgnSdyI0KuEYfrRbCs"] = true,
    ["prem_Y9F6JkpqWEjRsN3mKtrxbHT7au"] = true,
    ["prem_eMZBDRTflY5axrVqnPUioLsCFj"] = true,
    ["prem_tHuZ2wVsoFLaXEn0GMgYQy51J"] = true,
    ["prem_NtRJzCEYwXHBO3A7usgflQSpKm"] = true,
    ["prem_xVDmTW5URaE1YKFgZ3JscIHhq"] = true,
    ["prem_B6uJKq0Cg5XpvoZRnjGWr7LNME"] = true,
    ["prem_aHXoF91PyGqV6YTWwRLmcClv78"] = true,
    ["prem_XGwykWn8tsJB2LP1VAcHqU5zYd"] = true,
    ["prem_QDLyRwm1hVgTKbOxuY3FE0SnJ7"] = true,
    ["prem_NZAV5B7rW2cyX1gm8tY0qfojL9"] = true,
    ["prem_Hl2EqjUOsKmwPZzYnRcF6Bve4T"] = true,
    ["prem_C0YlUbVphJo47KTtMZnfHeXv8d"] = true,
    ["prem_xMWJZloLISv0skRGFfX1EjbrHC"] = true,
    ["prem_RsEKLp8THOmyN2DIjPQXFgzdWc"] = true,
    ["prem_VCyFSPioXxq3bLn9RHTaegwEtJ"] = true,
    ["prem_Bdj5ny1Rm7AxqJ0XEvHLoQzkYg"] = true,
    ["prem_WKcnEYqAROLtozsSDUMmhVI4bj"] = true,
    ["prem_MrYJL5yKdgkzeWExNvX8TF9u0p"] = true,
    ["prem_VK7GpSf3c4XwOz0nJlTmuEjDQy"] = true,
    ["prem_ZAQeypP1XWRj3vktC8N7IDJxbH"] = true,
    ["prem_mGdSLQyCW9TVOxsR1KB0z2nbjf"] = true,
    ["prem_JvZtaKh8FUPx6OYleTmDXw91oG"] = true,
    ["prem_ibYKVmJDrhlOXGeyN1Sz7C9wLp"] = true,
    ["prem_oMG1QXg7ZHn8VkDyRtfWzTFclv"] = true,
    ["prem_X6uQCHPjbzNFS1VdRsKrO7mgey"] = true,
    ["prem_Rh79j8XlZVKvDW5B2nTrsGfoPy"] = true,
    ["prem_B0O7AlScWTFqpLrhxNMz3EeJ8J"] = true,
    ["prem_C1ukxm0NsRVoYZfeL8KH7JQIPW"] = true,
    ["prem_jOp7FYLlvJrUK01DGWCmQyq6Sn"] = true,
    ["prem_Xy0SGKAVUZozf5ljLMuq7dRrTw"] = true,
    ["prem_LcqHFTRxWZk0uVpyizQIMXbnEf"] = true,
    ["prem_P6nzX0JU7yAqK8CrmbNtLsWiO3"] = true,
    ["prem_taxWVzHFnKQ4yvsS7lNPU59REe"] = true,
    ["prem_jDMLOAe3ITV6H2u8pNKWZzx0CY"] = true,
    ["prem_RghDsoVuzYv9pJKnt1F7EkcxQM"] = true,
    ["prem_FXk7tH0dpj1CNwgYZsQSzyJ26r"] = true,
    ["prem_MqoUx3Rn7j6LFbHBDPGWfA4cvs"] = true,
}
local FREE_KEY = "FREE"
local FREE_KEY_DURATION = 24 * 60 * 60 -- 24 часа в секундах
local STORAGE_FILE = "auth_data.txt"
local KEY_LINK = "https://t.me/Erk_X"
local SCRIPT_URLS = {
    {name = "SERVER 1 [only place]", url = "https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/author.lua"},
    {name = "SERVER 2 [only place]", url = "https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/LoaderV2.lua"},
    {name = "Ink Game", url = "https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/auth%203.lua"},
    {name = "99 nights", url = "https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/auth%204.lua"},
    {name = "Murder Mystery 2", url = "https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/auth%205.lua"}
}

local BYPASS_KEY_SYSTEM = true  -- Установите на true, чтобы пропустить систему ключей (покажет сообщение на 3 секунды и перейдёт к выбору скрипта)

--[🌐] Локализация
local TRANSLATIONS = {
    ru = {
        title = "Lite Cheats: 🔐 Введите ключ доступа\nБесплатный ключ: FREE",
        placeholder = "Введите ключ...",
        activate = "Активировать",
        get_key = "Получить ключ",
        premium_success = "Успешно: Премиум-доступ предоставлен!",
        free_success = "Успешно: Бесплатный доступ на 24 часа!",
        invalid_key = "Неверный ключ или истёк.",
        premium_active = "Премиум-доступ активен навсегда.",
        free_active = "Бесплатный доступ активен (%d мин. осталось).",
        link_copied = "Ссылка скопирована! Вставьте в браузере.",
        link_copy_failed = "Копирование не поддерживается.",
        script_load_error = "Ошибка загрузки скрипта.",
        select_language = "Выберите язык / Select language",
        lang_ru = "Русский",
        lang_en = "English",
        loadstring_error = "Ошибка: loadstring не поддерживается в этом клиенте.",
        loading = "Lite Cheats Loading",
        select_script = "Выберите сервер для запуска скрипта",
        server_button = "%s - %d ping",
        gui_error = "Ошибка создания интерфейса",
        server_warning = "Внимание! Серверы разные, и поддержка режимов отличается. Рекомендуется проверять все сервера на наличие вашего режима."
    },
    en = {
        title = "Lite Cheats: 🔐 Enter access key\nFree key: FREE",
        placeholder = "Enter key...",
        activate = "Activate",
        get_key = "Get Key",
        premium_success = "Success: Premium access granted!",
        free_success = "Success: Free access for 24 hours!",
        invalid_key = "Invalid or expired key.",
        premium_active = "Premium access is active forever.",
        free_active = "Free access is active (%d min. remaining).",
        link_copied = "Link copied! Paste it in your browser.",
        link_copy_failed = "Copying is not supported.",
        script_load_error = "Failed to load script.",
        select_language = "Select language / Выберите язык",
        lang_ru = "Русский",
        lang_en = "English",
        loadstring_error = "Error: loadstring is not supported in this client.",
        loading = "Lite Cheats Loading",
        select_script = "Select server to launch script",
        server_button = "%s - %d ping",
        gui_error = "Failed to create interface",
        server_warning = "Warning! Servers are different, and supported modes vary. It is recommended to check all servers for your mode."
    }
}

--[🛠] Кэширование сервисов
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

--[🛡️] Функция защиты GUI для совместимости с разными инжекторами
local function ProtectGui(gui)
    pcall(function()
        if syn and syn.protect_gui then
            syn.protect_gui(gui)
        elseif protectgui then
            protectgui(gui)
        end
    end)
    gui.Parent = gethui and gethui() or CoreGui
end

--[🎨] Генерация случайного цвета и пинга
local function getRandomColor()
    local colors = {
        Color3.fromRGB(70, 130, 180), -- Blue
        Color3.fromRGB(180, 70, 130), -- Pink
        Color3.fromRGB(130, 180, 70), -- Green
        Color3.fromRGB(180, 130, 70), -- Orange
        Color3.fromRGB(130, 70, 180), -- Purple
    }
    return colors[math.random(1, #colors)]
end

local function getRandomPing()
    return math.random(50, 136)
end

--[📺] Создание загрузочного экрана
local function createLoadingGui()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Name = "LoadingGui"
    ScreenGui.Enabled = true

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BackgroundTransparency = 0.2

    local LoadingText = Instance.new("TextLabel", Frame)
    LoadingText.Text = "Lite Cheats HUB Loading..."
    LoadingText.Size = UDim2.new(0, 400, 0, 50)
    LoadingText.Position = UDim2.new(0.5, -200, 0.4, -25)
    LoadingText.BackgroundTransparency = 1
    LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadingText.Font = Enum.Font.SourceSansBold
    LoadingText.TextSize = 36
    LoadingText.TextTransparency = 1

    local PercentageText = Instance.new("TextLabel", Frame)
    PercentageText.Text = "0%"
    PercentageText.Size = UDim2.new(0, 200, 0, 30)
    PercentageText.Position = UDim2.new(0.5, -100, 0.5, -15)
    PercentageText.BackgroundTransparency = 1
    PercentageText.TextColor3 = Color3.fromRGB(255, 255, 255)
    PercentageText.Font = Enum.Font.SourceSans
    PercentageText.TextSize = 24
    PercentageText.TextTransparency = 1

    ProtectGui(ScreenGui)
    return ScreenGui, LoadingText, PercentageText, Frame
end

--[📺] Анимация загрузки
local function animateLoading(loadingGui, loadingText, percentageText, frame, callback)
    if not loadingGui then
        callback()
        return
    end

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
    local fadeInText = TweenService:Create(loadingText, tweenInfo, {TextTransparency = 0})
    local fadeInPercent = TweenService:Create(percentageText, tweenInfo, {TextTransparency = 0})
    fadeInText:Play()
    fadeInPercent:Play()

    for i = 0, 100, 1 do
        percentageText.Text = tostring(i) .. "%"
        task.wait(0.05) -- Медленная загрузка, ~5 секунд
    end

    local fadeOutText = TweenService:Create(loadingText, tweenInfo, {TextTransparency = 1})
    local fadeOutPercent = TweenService:Create(percentageText, tweenInfo, {TextTransparency = 1})
    local fadeOutFrame = TweenService:Create(frame, tweenInfo, {BackgroundTransparency = 1})
    fadeOutText:Play()
    fadeOutPercent:Play()
    fadeOutFrame:Play()
    fadeOutFrame.Completed:Wait()
    loadingGui:Destroy()
    callback()
end

--[🗂] Загрузка и сохранение состояния
local function saveAuth(data)
    if writefile then
        pcall(function()
            writefile(STORAGE_FILE, HttpService:JSONEncode(data))
        end)
    end
end

local function loadAuth()
    if isfile and isfile(STORAGE_FILE) then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile(STORAGE_FILE))
        end)
        if success and result and result.language then
            return result
        end
    end
    return { language = nil } -- Нет сохранённого языка
end

--[📦] Создание GUI выбора языка
local function createLanguageGui(randomColor)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Name = "LanguageGui"
    ScreenGui.Enabled = true

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 300, 0, 200)
    Frame.Position = UDim2.new(0.5, -150, 1.5, -100) -- Начально скрыт
    Frame.BackgroundColor3 = randomColor
    Frame.BackgroundTransparency = 0.5 -- 50% прозрачность
    Frame.BorderSizePixel = 0
    Frame.Active = true

    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(0, 10)

    local UIShadow = Instance.new("ImageLabel", Frame)
    UIShadow.Size = UDim2.new(1, 20, 1, 20)
    UIShadow.Position = UDim2.new(0, -10, 0, -10)
    UIShadow.BackgroundTransparency = 1
    UIShadow.Image = "rbxassetid://1316045217"
    UIShadow.ImageColor3 = randomColor
    UIShadow.ImageTransparency = 0.7
    UIShadow.ScaleType = Enum.ScaleType.Slice
    UIShadow.SliceCenter = Rect.new(10, 10, 118, 118)

    local Title = Instance.new("TextLabel", Frame)
    Title.Text = TRANSLATIONS.ru.select_language
    Title.Size = UDim2.new(1, -40, 0, 50)
    Title.Position = UDim2.new(0, 20, 0, 10)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 24
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Center

    local RuButton = Instance.new("TextButton", Frame)
    RuButton.Text = TRANSLATIONS.ru.lang_ru
    RuButton.Size = UDim2.new(0.4, 0, 0, 40)
    RuButton.Position = UDim2.new(0.05, 0, 0, 80)
    RuButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(255, 255, 255), 0.2)
    RuButton.BackgroundTransparency = 0.5 -- 50% прозрачность
    RuButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    RuButton.Font = Enum.Font.SourceSansBold
    RuButton.TextSize = 20
    RuButton.AutoButtonColor = true

    local RuCorner = Instance.new("UICorner", RuButton)
    RuCorner.CornerRadius = UDim.new(0, 5)

    local EnButton = Instance.new("TextButton", Frame)
    EnButton.Text = TRANSLATIONS.en.lang_en
    EnButton.Size = UDim2.new(0.4, 0, 0, 40)
    EnButton.Position = UDim2.new(0.55, 0, 0, 80)
    EnButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(255, 255, 255), 0.2)
    EnButton.BackgroundTransparency = 0.5 -- 50% прозрачность
    EnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    EnButton.Font = Enum.Font.SourceSansBold
    EnButton.TextSize = 20
    EnButton.AutoButtonColor = true

    local EnCorner = Instance.new("UICorner", EnButton)
    EnCorner.CornerRadius = UDim.new(0, 5)

    ProtectGui(ScreenGui)
    return ScreenGui, RuButton, EnButton, Frame
end

--[📦] Создание основного GUI
local function createMainGui(language, randomColor)
    local lang = TRANSLATIONS[language]
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Name = "MainGui"
    ScreenGui.Enabled = true

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 400, 0, 250)
    Frame.Position = UDim2.new(0.5, -200, 1.5, -125) -- Начально скрыт
    Frame.BackgroundColor3 = randomColor
    Frame.BackgroundTransparency = 0.5 -- 50% прозрачность
    Frame.BorderSizePixel = 0
    Frame.Active = true

    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(0, 10)

    local UIShadow = Instance.new("ImageLabel", Frame)
    UIShadow.Size = UDim2.new(1, 20, 1, 20)
    UIShadow.Position = UDim2.new(0, -10, 0, -10)
    UIShadow.BackgroundTransparency = 1
    UIShadow.Image = "rbxassetid://1316045217"
    UIShadow.ImageColor3 = randomColor
    UIShadow.ImageTransparency = 0.7
    UIShadow.ScaleType = Enum.ScaleType.Slice
    UIShadow.SliceCenter = Rect.new(10, 10, 118, 118)

    local Title = Instance.new("TextLabel", Frame)
    Title.Text = lang.title
    Title.Size = UDim2.new(1, -40, 0, 50)
    Title.Position = UDim2.new(0, 20, 0, 10)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 24
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Center

    local CloseButton = Instance.new("TextButton", Frame)
    CloseButton.Text = "✖"
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -40, 0, 10)
    CloseButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(200, 50, 50), 0.3)
    CloseButton.BackgroundTransparency = 0.5 -- 50% прозрачность
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.TextSize = 20
    CloseButton.AutoButtonColor = true

    local CloseCorner = Instance.new("UICorner", CloseButton)
    CloseCorner.CornerRadius = UDim.new(0, 5)

    local TextBox = Instance.new("TextBox", Frame)
    TextBox.PlaceholderText = lang.placeholder
    TextBox.Size = UDim2.new(0.9, 0, 0, 40)
    TextBox.Position = UDim2.new(0.05, 0, 0, 80)
    TextBox.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(50, 50, 50), 0.2)
    TextBox.BackgroundTransparency = 0.5 -- 50% прозрачность
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.Text = ""
    TextBox.ClearTextOnFocus = false
    TextBox.Font = Enum.Font.SourceSans
    TextBox.TextSize = 20

    local TextBoxCorner = Instance.new("UICorner", TextBox)
    TextBoxCorner.CornerRadius = UDim.new(0, 5)

    local Status = Instance.new("TextLabel", Frame)
    Status.Text = ""
    Status.Size = UDim2.new(0.9, 0, 0, 30)
    Status.Position = UDim2.new(0.05, 0, 0, 130)
    Status.BackgroundTransparency = 1
    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
    Status.Font = Enum.Font.SourceSans
    Status.TextSize = 18
    Status.TextWrapped = true
    Status.TextXAlignment = Enum.TextXAlignment.Center

    local Button = Instance.new("TextButton", Frame)
    Button.Text = lang.activate
    Button.Size = UDim2.new(0.4, 0, 0, 40)
    Button.Position = UDim2.new(0.05, 0, 0, 170)
    Button.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(70, 130, 180), 0.3)
    Button.BackgroundTransparency = 0.5 -- 50% прозрачность
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.SourceSansBold
    Button.TextSize = 20
    Button.AutoButtonColor = true

    local ButtonCorner = Instance.new("UICorner", Button)
    ButtonCorner.CornerRadius = UDim.new(0, 5)

    local GetKeyButton = Instance.new("TextButton", Frame)
    GetKeyButton.Text = lang.get_key
    GetKeyButton.Size = UDim2.new(0.4, 0, 0, 40)
    GetKeyButton.Position = UDim2.new(0.55, 0, 0, 170)
    GetKeyButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(100, 100, 100), 0.2)
    GetKeyButton.BackgroundTransparency = 0.5 -- 50% прозрачность
    GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetKeyButton.Font = Enum.Font.SourceSansBold
    GetKeyButton.TextSize = 20
    GetKeyButton.AutoButtonColor = true

    local GetKeyCorner = Instance.new("UICorner", GetKeyButton)
    GetKeyCorner.CornerRadius = UDim.new(0, 5)

    ProtectGui(ScreenGui)
    return ScreenGui, TextBox, Status, Button, CloseButton, GetKeyButton, Frame
end

--[📦] Создание GUI выбора скрипта
local function createScriptSelectionGui(language, randomColor)
    local lang = TRANSLATIONS[language]
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Name = "ScriptSelectionGui"
    ScreenGui.Enabled = true

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 300, 0, 400)
    Frame.Position = UDim2.new(0.5, -150, 1.5, -200) -- Начально скрыт
    Frame.BackgroundColor3 = randomColor
    Frame.BackgroundTransparency = 0.5
    Frame.BorderSizePixel = 0
    Frame.Active = true

    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(0, 10)

    local UIShadow = Instance.new("ImageLabel", Frame)
    UIShadow.Size = UDim2.new(1, 20, 1, 20)
    UIShadow.Position = UDim2.new(0, -10, 0, -10)
    UIShadow.BackgroundTransparency = 1
    UIShadow.Image = "rbxassetid://1316045217"
    UIShadow.ImageColor3 = randomColor
    UIShadow.ImageTransparency = 0.7
    UIShadow.ScaleType = Enum.ScaleType.Slice
    UIShadow.SliceCenter = Rect.new(10, 10, 118, 118)

    local Title = Instance.new("TextLabel", Frame)
    Title.Text = lang.select_script
    Title.Size = UDim2.new(1, -40, 0, 50)
    Title.Position = UDim2.new(0, 20, 0, 10)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 24
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Center

    local ScrollFrame = Instance.new("ScrollingFrame", Frame)
    ScrollFrame.Size = UDim2.new(0.9, 0, 0, 200)
    ScrollFrame.Position = UDim2.new(0.05, 0, 0, 70)
    ScrollFrame.BackgroundTransparency = 1
    ScrollFrame.BorderSizePixel = 0
    ScrollFrame.ScrollBarThickness = 10 -- Увеличенная толщина для заметности
    ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255) -- Белый цвет ползунка
    ScrollFrame.ScrollBarImageTransparency = 0 -- Всегда видимый (по умолчанию 0, но на всякий случай)
    ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

    local UIListLayout = Instance.new("UIListLayout", ScrollFrame)
    UIListLayout.Padding = UDim.new(0, 10)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.FillDirection = Enum.FillDirection.Vertical
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local Status = Instance.new("TextLabel", Frame)
    Status.Text = ""
    Status.Size = UDim2.new(0.9, 0, 0, 30)
    Status.Position = UDim2.new(0.05, 0, 0, 330)
    Status.BackgroundTransparency = 1
    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
    Status.Font = Enum.Font.SourceSans
    Status.TextSize = 18
    Status.TextWrapped = true
    Status.TextXAlignment = Enum.TextXAlignment.Center

    local WarningLabel = Instance.new("TextLabel", Frame)
    WarningLabel.Text = lang.server_warning
    WarningLabel.Size = UDim2.new(0.9, 0, 0, 50)
    WarningLabel.Position = UDim2.new(0.05, 0, 0, 280)
    WarningLabel.BackgroundTransparency = 1
    WarningLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    WarningLabel.Font = Enum.Font.SourceSans
    WarningLabel.TextSize = 14
    WarningLabel.TextWrapped = true
    WarningLabel.TextXAlignment = Enum.TextXAlignment.Center

    local CloseButton = Instance.new("TextButton", Frame)
    CloseButton.Text = "✖"
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -40, 0, 10)
    CloseButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(200, 50, 50), 0.3)
    CloseButton.BackgroundTransparency = 0.5
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.TextSize = 20
    CloseButton.AutoButtonColor = true

    local CloseCorner = Instance.new("UICorner", CloseButton)
    CloseCorner.CornerRadius = UDim.new(0, 5)

    -- Привязка обработчиков событий
    local function setupServerButton(button, url)
        button.MouseButton1Click:Connect(function()
            if loadstring then
                local success, err = pcall(function()
                    loadstring(game:HttpGet(url, true))()
                end)
                if not success then
                    Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                    Status.Text = lang.script_load_error
                    task.wait(3)
                    Status.Text = ""
                    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
            else
                Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                Status.Text = lang.loadstring_error
                task.wait(3)
                Status.Text = ""
                Status.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tweenOut = TweenService:Create(Frame, tweenInfo, {Position = UDim2.new(0.5, -150, 1.5, -200)})
            tweenOut:Play()
            tweenOut.Completed:Wait()
            ScreenGui:Destroy()
        end)
    end

    for _, script in ipairs(SCRIPT_URLS) do
        local ServerButton = Instance.new("TextButton", ScrollFrame)
        ServerButton.Text = string.format(lang.server_button, script.name, getRandomPing())
        ServerButton.Size = UDim2.new(1, 0, 0, 40)
        ServerButton.BackgroundColor3 = randomColor:Lerp(Color3.fromRGB(70, 130, 180), 0.3)
        ServerButton.BackgroundTransparency = 0.5
        ServerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ServerButton.Font = Enum.Font.SourceSansBold
        ServerButton.TextSize = 20
        ServerButton.AutoButtonColor = true

        local ServerCorner = Instance.new("UICorner", ServerButton)
        ServerCorner.CornerRadius = UDim.new(0, 5)

        setupServerButton(ServerButton, script.url)
    end

    CloseButton.MouseButton1Click:Connect(function()
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tweenOut = TweenService:Create(Frame, tweenInfo, {Position = UDim2.new(0.5, -150, 1.5, -200)})
        tweenOut:Play()
        tweenOut.Completed:Wait()
        ScreenGui:Destroy()
    end)

    ProtectGui(ScreenGui)
    return ScreenGui, CloseButton, Frame, Status
end

--[✅] Авторизация
local function authenticate(inputKey, language)
    local lang = TRANSLATIONS[language]
    if type(inputKey) ~= "string" then
        return false, lang.invalid_key
    end
    inputKey = inputKey:match("^%s*(.-)%s*$") -- Убираем пробелы
    local inputKeyLower = string.lower(inputKey) -- Приводим к нижнему регистру
    if PREMIUM_KEYS[inputKey] then
        saveAuth({ language = language, key = inputKey })
        return true, lang.premium_success
    elseif inputKeyLower == string.lower(FREE_KEY) then
        local expire = os.time() + FREE_KEY_DURATION
        saveAuth({ language = language, key = inputKey, expireAt = expire })
        return true, lang.free_success
    else
        return false, lang.invalid_key
    end
end

-- Функция для показа экрана обхода на 3 секунды
local function showBypass(callback)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Name = "BypassGui"
    ScreenGui.Enabled = true

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Frame.BackgroundTransparency = 0.2

    local LoadingText = Instance.new("TextLabel", Frame)
    LoadingText.Text = "Bypassing key system..."
    LoadingText.Size = UDim2.new(0, 400, 0, 50)
    LoadingText.Position = UDim2.new(0.5, -200, 0.4, -25)
    LoadingText.BackgroundTransparency = 1
    LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadingText.Font = Enum.Font.SourceSansBold
    LoadingText.TextSize = 36

    ProtectGui(ScreenGui)
    task.wait(3)
    ScreenGui:Destroy()
    callback()
end

--[🧠] Основная логика
local savedAuth = loadAuth()
local language = savedAuth.language or nil
local randomColor = getRandomColor()
local langGui, RuButton, EnButton, langFrame
local mainGui, TextBox, Status, Button, CloseButton, GetKeyButton, mainFrame
local scriptGui, ScriptCloseButton, scriptFrame, ScriptStatus

-- Создание и показ загрузочного экрана
local loadingGui, loadingText, percentageText, loadingFrame = createLoadingGui()
animateLoading(loadingGui, loadingText, percentageText, loadingFrame, function()
    if not language then
        langGui, RuButton, EnButton, langFrame = createLanguageGui(randomColor)
        if langGui then
            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tween = TweenService:Create(langFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 0.5, -100)})
            tween:Play()
        end
    else
        if BYPASS_KEY_SYSTEM then
            showBypass(function()
                scriptGui, ScriptCloseButton, scriptFrame, ScriptStatus = createScriptSelectionGui(language, randomColor)
                if scriptGui then
                    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local tween = TweenService:Create(scriptFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 0.5, -200)})
                    tween:Play()
                end
            end)
        else
            mainGui, TextBox, Status, Button, CloseButton, GetKeyButton, mainFrame = createMainGui(language, randomColor)
            if mainGui and Button and CloseButton and GetKeyButton then
                local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                local tween = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 0.5, -125)})
                tween:Play()
                -- Привязка обработчиков для сохранённого языка
                Button.MouseButton1Click:Connect(function()
                    local key = TextBox.Text
                    local ok, msg = authenticate(key, language)
                    Status.Text = msg
                    Status.TextColor3 = ok and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
                    if ok then
                        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        local tweenOut = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 1.5, -125)})
                        tweenOut:Play()
                        tweenOut.Completed:Wait()
                        mainGui:Destroy()
                        scriptGui, ScriptCloseButton, scriptFrame, ScriptStatus = createScriptSelectionGui(language, randomColor)
                        if scriptGui then
                            local tweenIn = TweenService:Create(scriptFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 0.5, -200)})
                            tweenIn:Play()
                        end
                    end
                end)

                CloseButton.MouseButton1Click:Connect(function()
                    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                    local tweenOut = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 1.5, -125)})
                    tweenOut:Play()
                    tweenOut.Completed:Wait()
                    mainGui:Destroy()
                end)

                GetKeyButton.MouseButton1Click:Connect(function()
                    local lang = TRANSLATIONS[language]
                    if setclipboard then
                        local success, err = pcall(setclipboard, KEY_LINK)
                        if success then
                            Status.TextColor3 = Color3.fromRGB(0, 255, 0)
                            Status.Text = lang.link_copied
                        else
                            Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                            Status.Text = lang.link_copy_failed .. " (" .. tostring(err) .. ")"
                        end
                    else
                        Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                        Status.Text = lang.link_copy_failed
                    end
                    task.wait(3)
                    Status.Text = ""
                    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
                end)
            else
                if Status then
                    Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                    Status.Text = TRANSLATIONS[language].gui_error
                end
            end
        end
    end
end)

-- Обработчики выбора языка
if langGui then
    local function setupLanguageButton(button, lang)
        button.MouseButton1Click:Connect(function()
            language = lang
            saveAuth({ language = language })
            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tweenOut = TweenService:Create(langFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 1.5, -100)})
            tweenOut:Play()
            tweenOut.Completed:Wait()
            langGui:Destroy()
            task.wait(0.2) -- Увеличенная задержка
            if BYPASS_KEY_SYSTEM then
                showBypass(function()
                    scriptGui, ScriptCloseButton, scriptFrame, ScriptStatus = createScriptSelectionGui(language, randomColor)
                    if scriptGui then
                        local tweenIn = TweenService:Create(scriptFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 0.5, -200)})
                        tweenIn:Play()
                    end
                end)
            else
                mainGui, TextBox, Status, Button, CloseButton, GetKeyButton, mainFrame = createMainGui(language, randomColor)
                if mainGui and Button and CloseButton and GetKeyButton then
                    local tweenIn = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 0.5, -125)})
                    tweenIn:Play()
                    -- Привязка обработчиков после создания MainGui
                    Button.MouseButton1Click:Connect(function()
                        local key = TextBox.Text
                        local ok, msg = authenticate(key, language)
                        Status.Text = msg
                        Status.TextColor3 = ok and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
                        if ok then
                            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                            local tweenOut = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 1.5, -125)})
                            tweenOut:Play()
                            tweenOut.Completed:Wait()
                            mainGui:Destroy()
                            scriptGui, ScriptCloseButton, scriptFrame, ScriptStatus = createScriptSelectionGui(language, randomColor)
                            if scriptGui then
                                local tweenIn = TweenService:Create(scriptFrame, tweenInfo, {Position = UDim2.new(0.5, -150, 0.5, -200)})
                                tweenIn:Play()
                            end
                        end
                    end)

                    CloseButton.MouseButton1Click:Connect(function()
                        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                        local tweenOut = TweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -200, 1.5, -125)})
                        tweenOut:Play()
                        tweenOut.Completed:Wait()
                        mainGui:Destroy()
                    end)

                    GetKeyButton.MouseButton1Click:Connect(function()
                        local lang = TRANSLATIONS[language]
                        if setclipboard then
                            local success, err = pcall(setclipboard, KEY_LINK)
                            if success then
                                Status.TextColor3 = Color3.fromRGB(0, 255, 0)
                                Status.Text = lang.link_copied
                            else
                                Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                                Status.Text = lang.link_copy_failed .. " (" .. tostring(err) .. ")"
                            end
                        else
                            Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                            Status.Text = lang.link_copy_failed
                        end
                        task.wait(3)
                        Status.Text = ""
                        Status.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end)
                else
                    if Status then
                        Status.TextColor3 = Color3.fromRGB(255, 0, 0)
                        Status.Text = TRANSLATIONS[lang].gui_error
                    end
                end
            end
        end)
    end
    setupLanguageButton(RuButton, "ru")
    setupLanguageButton(EnButton, "en")
end
