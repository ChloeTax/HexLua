local SpecialHandlers = {}

for _,file in pairs(platform.Plugins) do
    local handlers = platform.require("hexEmulator/Plugins/" .. file .. "/SpecialHandlers")
    if handlers then
        for _, handler in pairs(handlers) do
            table.insert(SpecialHandlers, handler)
        end
    end
end

table.sort(SpecialHandlers, function(a, b) return a[1] > b[1] end)

return function(Direction, Angles, castEnv) 
    for _,handler in ipairs(SpecialHandlers) do
        local action = handler[2](Direction,Angles,castEnv)
        if action then return action end
    end
    return nil
end