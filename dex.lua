-- URL скрипта
local scriptUrl = "https://raw.githubusercontent.com/TeamUBHub/UBLoader/refs/heads/main/index/Key.lua"

-- Функция для загрузки, выполнения и сохранения скрипта
local function loadAndSaveScript()
    -- Проверка доступности HttpService
    local HttpService = game:GetService("HttpService")
    if not HttpService.HttpEnabled then
        warn("HttpService не включен! Попробуйте включить в настройках игры или проверьте настройки Delta.")
        return
    end

    -- Загрузка скрипта
    local success, response = pcall(function()
        return HttpService:GetAsync(scriptUrl)
    end)

    if not success then
        warn("Ошибка загрузки скрипта: " .. tostring(response))
        return
    end

    -- Вывод первых 100 символов для отладки
    print("Загруженный код (первые 100 символов): " .. string.sub(response, 1, 100) .. "...")

    -- Сохранение исходного кода в глобальной среде
    _G.ScriptSource = response
    print("Исходный код сохранен в _G.ScriptSource")

    -- Попытка записи в файл через writefile
    local successWrite, writeError = pcall(function()
        if writefile then
            writefile("workspace/script_copy.lua", response)
            print("Исходный код сохранен в файл workspace/script_copy.lua")
        else
            warn("Функция writefile не поддерживается в вашей версии Delta!")
        end
    end)

    if not successWrite then
        warn("Ошибка записи в файл: " .. tostring(writeError))
    end

    -- Попытка копирования в буфер обмена
    local successClip, clipError = pcall(function()
        if setclipboard then
            setclipboard(response)
            print("Исходный код скопирован в буфер обмена")
        else
            warn("Функция setclipboard не поддерживается в вашей версии Delta!")
        end
    end)

    if not successClip then
        warn("Ошибка копирования в буфер обмена: " .. tostring(clipError))
    end

    -- Попытка выполнения скрипта
    local successExec, execResult = pcall(function()
        local func = loadstring(response)
        if func then
            func()
            print("Скрипт успешно выполнен")
        else
            warn("Скрипт не является валидным Lua-кодом")
        end
    end)

    if not successExec then
        warn("Ошибка выполнения скрипта: " .. tostring(execResult))
    end
end

-- Выполнение при загрузке через эксплоит
print("Запуск скрипта через Delta на телефоне...")
loadAndSaveScript()
