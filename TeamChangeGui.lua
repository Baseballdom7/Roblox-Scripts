**This is the team change Gui!**
**This is the normal script!**

local player = script.Parent.Parent.Parent.Parent.Parent.Name

script.Parent.MouseButton1Click:Connect(function()
    game.Players[player].TeamColor = BrickColor.new ("Really blue")
    script.Parent.Parent.Visible = false
end)
