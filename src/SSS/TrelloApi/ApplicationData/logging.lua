local module = {}

function module.Print(text:string)
    print("[Trello API] "..text)
end
function module.Warn(text:string)
    warn("[Trello API] "..text)
end
function module.Error(text:string)
    error("[Trello API] "..text)
end

return module