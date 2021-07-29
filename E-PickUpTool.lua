**This is the E to pick up tool script!**

**This is the normal script(inside of the tool)!**


local tool = script.Parent
local trigger = script.Parent.ProximityPrompt

function pressed(player)
    tool.Parent = game.Workspace[player.Name]
    trigger:Destroy()
end

trigger.Triggered:Connect(pressed)
