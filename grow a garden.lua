-- Lite Cheats - TG@erk_X GUI
-- Easy to customize with variables at the top

local LOADSTRING_CODE = [[
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FryzerHub/Scripts/refs/heads/main/Pet%20Dupe%20With%20Wind%20ui%20Libery"))()
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Remove existing GUI if it exists
if playerGui:FindFirstChild("LiteCheatsGUI") then
    playerGui:FindFirstChild("LiteCheatsGUI"):Destroy()
end

-- Create main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LiteCheatsGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 200)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add corner radius to main frame
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = mainFrame

-- Create RGB border effect
local rgbFrame = Instance.new("Frame")
rgbFrame.Size = UDim2.new(1, 6, 1, 6)
rgbFrame.Position = UDim2.new(0, -3, 0, -3)
rgbFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
rgbFrame.BorderSizePixel = 0
rgbFrame.ZIndex = mainFrame.ZIndex - 1
rgbFrame.Parent = mainFrame

local rgbCorner = Instance.new("UICorner")
rgbCorner.CornerRadius = UDim.new(0, 15)
rgbCorner.Parent = rgbFrame

-- RGB Animation (Even Faster)
spawn(function()
    local hue = 0
    while rgbFrame.Parent do
        hue = hue + 4
        if hue > 360 then hue = 0 end
        rgbFrame.BackgroundColor3 = Color3.fromHSV(hue/360, 1, 1)
        wait(0.01)
    end
end)

-- Create title
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 15)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Lite Cheats - TG@erk_X"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = mainFrame

-- Create subtitle (Removed Key System subtitle)
-- If you want, you can add other elements here

-- Create Load Script button (вместо Next кнопки)
local loadButton = Instance.new("TextButton")
loadButton.Size = UDim2.new(0.8, 0, 0, 40)
loadButton.Position = UDim2.new(0.1, 0, 0, 100)
loadButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
loadButton.BorderSizePixel = 0
loadButton.Text = "Load Script"
loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
loadButton.TextSize = 20
loadButton.Font = Enum.Font.GothamBold
loadButton.Parent = mainFrame

local loadButtonCorner = Instance.new("UICorner")
loadButtonCorner.CornerRadius = UDim.new(0, 6)
loadButtonCorner.Parent = loadButton

-- Status label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 25)
statusLabel.Position = UDim2.new(0, 0, 0, 160)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextSize = 14
statusLabel.TextScaled = true
statusLabel.Font = Enum.Font.Gotham
statusLabel.Parent = mainFrame

-- Button hover effect function
local function createHoverEffect(button, normalColor, hoverColor)
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = hoverColor}):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = normalColor}):Play()
    end)
end

createHoverEffect(loadButton, Color3.fromRGB(0, 150, 0), Color3.fromRGB(0, 180, 0))

-- Load script on button click
loadButton.MouseButton1Click:Connect(function()
    loadstring(LOADSTRING_CODE)()
    statusLabel.Text = "Script loaded!"
    statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    
    wait(3)
    statusLabel.Text = ""
end)

-- You can keep or remove the Get Key button logic below,
-- but since key system is removed, I suggest to remove or repurpose it.

-- If you want, I могу помочь подправить Get Key часть под что-то другое.

