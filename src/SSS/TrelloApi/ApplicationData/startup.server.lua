local Started = script.Parent.Values.Started
local log = require(script.Parent.logging)
local Print, Warn, Error = log.Print,log.Warn,log.Error
local version = 0.1
local VersionModule = {
    ["v"]=1.0,
    ["m"] = {
        [1.0] = {t = print, mess="Thank you for using the first version of this module, any bugs can be sent to minecraft2fun#7992"}
    }
}

do
    if VersionModule.v ~= version then
        Warn("Your API os out of date, re-insert the module to update from "..version.." to "..VersionModule.v)
    end
    if VersionModule.m[version] ~= nil then
        VersionModule.m[version].t(VersionModule.m[version].mess)
    end
end

do
	local good = false
	for _, v in pairs(game.ServerScriptService:GetDescendants()) do
		if v == script then
			good = true
			break
		end
	end
    if not good then
        Error("Please have the TrelloAPI in ServerScriptService")
        return
    end
end
do
    Print("Checking if API requirements are met")
    local enabled, message = pcall(function()
        game:GetService("HttpService"):GetAsync("https://google.com")
    end)
    if enabled then
        Print("HTTPservvice is enabled, awesome!")
    else
        Error("Please enable HttpService in your game's settings")
        return
    end
end
Print("Started API client")
Started.Value = true