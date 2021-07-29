**this is the start screen script!**

**This is the LocalScript!(inside of the TextButton)**

local ui = script.Parent.Parent

script.Parent.MouseButton1Click:Connect(function(click)
    ui:TweenPosition(UDim2.new(0,0,1,0), "InOut", "Sine",0.5)
    for i = 1,25 do
        wait(0.01)
        game.Lighting.Blur.Size = game.Lighting.Blur.Size - 3
    end
end)
