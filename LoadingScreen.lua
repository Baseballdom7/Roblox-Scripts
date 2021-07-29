**This is the loadingscreen script!**

script.Parent.Parent.Parent.Parent.Enabled = true
wait(2)

script.Parent:TweenSize(UDim2.new(.3,1,1), "Out", "Linear", 2, true)
wait(2)
script.Parent:TweenSize(UDim2.new(.5,1,1), "Out", "Linear", 1, true)
wait(2)
script.Parent:TweenSize(UDim2.new(1,1,1), "Out", "Linear", 1, true)

wait(1)
script.Parent.Parent.Parent.Parent.Enabled = false
wait(1)
script.Parent:TweenSize(UDim2.new(0,0,0), "Out", "Linear", 1, true)
