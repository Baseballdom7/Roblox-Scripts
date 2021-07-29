**this is the C to crouch script!**
**NOTE:Make sure the script is called "Crouching"**

local UserInputService = game:GetService("UserInputService")
local Character = script.Parent
local Humanoid = Character:WaitForChild("Humanoid")
local isRunning = false
local Animation = Humanoid:LoadAnimation(script.Parent.Crouching:WaitForChild("Animation"))

UserInputService.InputBegan:Connect(function(key)

    if key.KeyCode == Enum.KeyCode.C then
        if isRunning == false then
            isRunning = true
            Animation:Play()
            Humanoid.WalkSpeed = 10        
        else
            UserInputService.InputEnded:Connect(function()
                isRunning = false
                Animation:Stop()
                Humanoid.WalkSpeed = 16

            end)
        end
    end

end)
