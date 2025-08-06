-- Функция для XOR-дешифрования
local function xorCrypt(input, key)
    local output = {}
    for i = 1, #input do
        local byte = string.byte(input, i)
        local keyByte = string.byte(key, (i - 1) % #key + 1)
        output[i] = string.char(bit32.bxor(byte, keyByte))
    end
    return table.concat(output)
end

-- Ключ для дешифрования (замените на ваш ключ)
local encryptionKey = "mySecretKey123"

-- URL зашифрованного скрипта
local encryptedScriptUrl = "https://raw.githubusercontent.com/TeamUBHub/UBLoader/refs/heads/main/index/Key.lua"

-- Функция для загрузки и копирования исходного кода
local function copyEncryptedScript()
    -- Загрузка зашифрованного скрипта
    local success, response = pcall(function()
        local HttpService = game:GetService("HttpService")
        return HttpService:GetAsync(encryptedScriptUrl)
    end)

    if not success then
        warn("Ошибка загрузки скрипта: " .. tostring(response))
        return
    end

    -- Дешифрование скрипта
    local decryptedScript = xorCrypt(response, encryptionKey)

    -- Сохранение исходного кода в глобальной среде
    _G.DecryptedScriptSource = decryptedScript

    print("Исходный код скопирован в _G.DecryptedScriptSource")
end

-- Обработчик сигнала
game:GetService("ReplicatedStorage").OnClientEvent:Connect(function(signal)
    if signal == "copy_script" then
        copyEncryptedScript()
    end
end)

-- Для тестирования
copyEncryptedScript()
