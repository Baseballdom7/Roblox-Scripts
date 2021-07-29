**This is the colored chat bubble script!**


local settings = {
    --Change here the color
    BackgroundColor3 = Color3.fromRGB(0, 142, 250),
    TextColor3 = Color3.fromRGB(239, 247, 255),
}
pcall(function()
    game:GetService("Chat"):SetBubbleChatSettings(settings)
end)
