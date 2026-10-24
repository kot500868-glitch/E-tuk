local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")

local autoE = false

-- Включение на F6
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.F6 then
        autoE = true
        print("Auto E: ON")
    end

    -- Выключение на F7
    if input.KeyCode == Enum.KeyCode.F7 then
        autoE = false
        print("Auto E: OFF")
    end
end)

-- Автоматическое нажатие E
task.spawn(function()
    while true do
        if autoE then
            VirtualInputManager:SendKeyEvent(
                true,
                Enum.KeyCode.E,
                false,
                game
            )

            task.wait(0.1)

            VirtualInputManager:SendKeyEvent(
                false,
                Enum.KeyCode.E,
                false,
                game
            )
        else
            task.wait(0.05)
        end
    end
end)
