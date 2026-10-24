local VirtualInputManager = game:GetService("VirtualInputManager")

while true do
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    task.wait(0.1)

    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
    task.wait(1)
end
