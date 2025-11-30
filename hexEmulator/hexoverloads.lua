local Overloads = {}

for _,file in pairs(platform.Plugins) do
    local addon = platform.require("hexEmulator/Plugins/" .. file .. "/Overloads")
    if addon then
        for angles,overloads in pairs(addon) do
            if not Overloads[angles] then Overloads[angles] = {} end
            for _,overload in pairs(overloads) do
                table.insert(Overloads[angles], overload)
            end
        end
    end
end

return Overloads