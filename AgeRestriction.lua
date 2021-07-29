**This is the account age restriction script!**

**This is the normal script(inside of ServerScriptService)**


game.Players.PlayerAdded:Connect(function(plr)
    if plr.AccountAge <= 15 then
        plr:Kick("Your account is not 15 days or older. You may come back after " ..14 - plr.AccountAge.. " days.")
    end
end)
