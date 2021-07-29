**This is the "E to open door" script**

**This is the normal script(inside of the ProximityPrompt)**


script.Parent.ActionText = "Open"
script.Parent.ObjectText = "Door"

script.Parent.Triggered:Connect(function()
    script.Parent.Parent.Transparency = 0.5
    script.Parent.Parent.CanCollide = false
    script.Parent.Enabled = false
    wait(1.5)
    script.Parent.Enabled = true
    script.Parent.Parent.Transparency = 0
    script.Parent.Parent.CanCollide = true
end)
