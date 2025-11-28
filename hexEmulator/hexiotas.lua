local Iotas = {}

for _,file in pairs(platform.Plugins) do
    Iotas[file] = platform.require("hexEmulator/Plugins/" .. file .. "/Iotas")
end


local iotaRequirements = {
        "new",
        "copy",
        "display",
        "equals",
        "serialize",
        "deserialize"
}

for addon,iotas_ in pairs(Iotas) do
    for name,iota in pairs(iotas_) do
        for _,requirment in pairs(iotaRequirements) do
            if not iota[requirment] then
                error(table.concat({addon, ":", name,' does not have a "', requirment, '" function.'}))
            end
        end
    end
end

return Iotas