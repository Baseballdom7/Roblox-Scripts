**This are the collectable coin scripts!**
**This is the coin script(a normal script inside of the coin)!**

script.Parent.Touched:Connect(function(hit)
    local player = hit.Parent:FindFirstChild("Humanoid")
    local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
    if plr.leaderstats.Coins.Value>= 0 then
        wait()
        script.Disabled = true
        script.Parent.CanCollide = false
        script.Parent.Transparency = 1
        plr.leaderstats.Coins.Value = plr.leaderstats.Coins.Value + 1
        game.Workspace.Coin:Play()
        script.Disabled = true
        wait(4)
        script.Parent.CanCollide = false
        script.Parent.Transparency = 0
        script.Disabled = false
    end
end)

This is the rotating coin script(a normal script inside of the coin)!:
sphere = script.Parent
a = 0
repeat
    sphere.Rotation = Vector3.new( 0, a, 0)
    wait(.01)
    a = a+3
until pigs == 1

This are the saving leaderstats(a normal script inside of ServerScriptService):!
local dataStoreService = game:GetService("DataStoreService")
local coinsData = dataStoreService:GetDataStore("CoinsData")


game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = coinsData:GetAsync(player.UserId) or 0
    coins.Parent = leaderstats



    coins.Changed:Connect(function()
        coinsData:SetAsync(player.UserId,coins.Value)
    end)

end)
