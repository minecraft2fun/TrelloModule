local module = {}

local HttpService = game:GetService("HttpService")
local config = script.Parent.Parent.config
local API,TOKEN = config.APIkey.Value,config.Token.Value

function module.GetAsync(URL)
    local success, message = pcall(function()
        return HttpService:GetAsync("https://api.trello.com"..URL.."?key="..API.."&token="..TOKEN)
    end)
end

return module