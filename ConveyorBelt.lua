**This is the conveyor belt script!**

**This is the normal script(inside of the part)**


local speed = 33

while true do
    script.Parent.Velocity = script.Parent.CFrame.lookVector * speed
    wait(0.1)
end
