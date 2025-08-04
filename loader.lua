--[🔐] Настройки ключей
local PREMIUM_KEYS = {
    ["prem_SIjsiji1ji233uhijdjjfijiw"] = true,
    ["YOUR_PREMIUM_KEY_2"] = true
}
local FREE_KEY = "FREE"
local FREE_KEY_DURATION = 24 * 60 * 60 -- 24 часа в секундах
local STORAGE_FILE = "auth_data.txt"

--[🗂] Загрузка и сохранение состояния
local function saveAuth(data)
    writefile(STORAGE_FILE, game:GetService("HttpService"):JSONEncode(data))
end

local function loadAuth()
    if isfile(STORAGE_FILE) then
        local success, result = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(STORAGE_FILE))
        end)
        if success and result and result.key then
            return result
        end
    end
    return nil
end

local function isAuthValid(data)
    if PREMIUM_KEYS[data.key] then
        return true, "Премиум-доступ активен навсегда."
    elseif data.key == FREE_KEY and data.expireAt and os.time() < data.expireAt then
        local left = math.floor((data.expireAt - os.time()) / 60)
        return true, "Бесплатный доступ активен (" .. left .. " мин. осталось)."
    end
    return false, "Ключ истёк или недействителен."
end

--[📦] GUI
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Frame)
Title.Text = "🔐 Введите ключ доступа"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 22

local TextBox = Instance.new("TextBox", Frame)
TextBox.PlaceholderText = "Введите ключ..."
TextBox.Size = UDim2.new(0.9, 0, 0, 30)
TextBox.Position = UDim2.new(0.05, 0, 0.5, -15)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18

local Status = Instance.new("TextLabel", Frame)
Status.Text = ""
Status.Size = UDim2.new(1, 0, 0, 30)
Status.Position = UDim2.new(0, 0, 1, -30)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.Font = Enum.Font.SourceSans
Status.TextSize = 18

local Button = Instance.new("TextButton", Frame)
Button.Text = "Активировать"
Button.Size = UDim2.new(0.9, 0, 0, 30)
Button.Position = UDim2.new(0.05, 0, 0.75, 0)
Button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 18

--[✅] Авторизация по нажатию
local function authenticate(inputKey)
    if PREMIUM_KEYS[inputKey] then
        saveAuth({ key = inputKey })
        return true, "Успешно: Премиум-доступ предоставлен!"
    elseif inputKey == FREE_KEY then
        local expire = os.time() + FREE_KEY_DURATION
        saveAuth({ key = inputKey, expireAt = expire })
        return true, "Успешно: Бесплатный доступ на 24 часа!"
    else
        return false, "Ошибка: Ключ недействителен."
    end
end

Button.MouseButton1Click:Connect(function()
    local key = TextBox.Text
    local ok, msg = authenticate(key)
    Status.Text = msg
    if ok then
        wait(1)
        ScreenGui:Destroy()
        -- Загрузка скрипта после успешной авторизации
        loadstring(game:HttpGet("https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/TOOLS.lua", true))()
    end
end)

--[🧠] Проверка сохранённой авторизации
local saved = loadAuth()
if saved then
    local ok, msg = isAuthValid(saved)
    if ok then
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/catskill39/cheat/refs/heads/main/TOOLS.lua", true))()
    else
        Status.Text = msg
    end
end
