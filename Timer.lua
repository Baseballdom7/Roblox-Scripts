**This is the timer script**

local parent = script.Parent
local start = tick()
local format = function(value)
         return string.format("%.1f", value)
end
parent.Text = format(0)

while true do     
        wait(0.1)
        parent.Text = format(tick() - start)
end
