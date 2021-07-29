**This is the bounce pad script!**

**This is the normal script(inside of the part)**


local pad = script.Parent

local function jump(part)
    local hrp = part.Parent:FindFirstChild('HumanoidRootPart')
    local bodyVel = hrp:FindFirstChildWhichIsA('BodyVelocity')
    if hrp and not bodyVel then
        local newVel = Instance.new('BodyVelocity')
        newVel.Velocity = Vector3.new(0,100,0)
        newVel.MaxForce = Vector3.new(7000,7000,7000)
        newVel.P = 5000
        newVel.Parent = hrp
        wait(1)
        newVel:Destroy()
    end
end

pad.Touched:Connect(jump) 
