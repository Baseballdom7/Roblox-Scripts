**This is the emote Gui script**

local player = game.Players.LocalPlayer
local character = player.Character
repeat wait()
    character = player.Character
until character
local hum = character:WaitForChild("Humanoid")
local emote = hum:LoadAnimation(script.Parent.Emote)
playing = false

script.Parent.MouseButton1Click:connect(function()
    if playing == false then
        emote:Play()
        hum.WalkSpeed = 0
        hum.JumpPower = 0
        playing = true
    elseif playing == true then
        emote:Stop()
        hum.WalkSpeed = 16
        hum.JumpPower = 50
        playing = false
    end
end) 
