local Actions = {}

for _,file in pairs(platform.Plugins) do
    local addon = platform.require("hexEmulator/Plugins/" .. file .. "/Actions")
    if addon then
        for angles, action in pairs(addon) do
            if Actions[angles] then error("duplicate pattern! " .. angles) end
            Actions[angles] = action
        end
    end
end

return Actions