**This is the Teleporterpad script!**

script.Parent.Touched:Connect(function(hit)
    local plr = game.Players:GetPlayerFromCharacter(hit.Parent)    
    if plr then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-36.465, 9.83, 44.425)
    end
end)
