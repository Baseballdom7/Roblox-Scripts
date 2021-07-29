**This is the chat tag script!**

**This is the normal script(inside of ServerScriptService)**

```lua
local creator = 0



local ServerScriptService = game:GetService("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local Players = game:GetService("Players")



ChatService.SpeakerAdded:Connect(function(PlrName)
    local Speaker = ChatService:GetSpeaker(PlrName)
    if Players[PlrName].UserId == creator then
        Speaker:SetExtraData('Tags', {{TagText = "CREATOR", TagColor = Color3.fromRGB(229, 238, 0)}}) 
    end
end)
```
