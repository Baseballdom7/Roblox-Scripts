**This is the first person arms script!**

**This is the LocalScript(inside of StarterCharacterScripts)!**

local char = script.Parent

local humanoid = char:WaitForChild("Humanoid")


local armParts = {"LeftHand", "LeftLowerArm", "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm"}


for i, bodyPart in pairs(char:GetChildren()) do
    
    if table.find(armParts, bodyPart.Name) and bodyPart:IsA("BasePart") then
        
        
        bodyPart.LocalTransparencyModifier = bodyPart.Transparency
        
        
        bodyPart:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
            
            bodyPart.LocalTransparencyModifier = bodyPart.Transparency
        end)
    end
end
