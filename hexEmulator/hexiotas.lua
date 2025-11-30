local Iotas = {}

for _,file in pairs(platform.Plugins) do
    Iotas[file] = platform.require("hexEmulator/Plugins/" .. file .. "/Iotas")
end


local iotaRequirements = {
    "new",
    "copy",
    "display",
    "serialize",
    "deserialize"
}

local iotaDefaults = {
    ceil = function (self) error(self.Type .. " does not support ceil") end,
    floor = function (self) error(self.Type .. " does not support floor") end,
    length = function (self) error(self.Type .. " does not support length") end,
    eval = function (self, castEnv) if castEnv.introDepth > 0 then castEnv.introIotas:append(self) else error(self.Type .. " does not support evaluation") end end,
}

for addon,iotas_ in pairs(Iotas) do
    for name,iota in pairs(iotas_) do
        for _,requirment in pairs(iotaRequirements) do
            if not iota[requirment] then
                error(table.concat({addon, ":", name,' does not have a "', requirment, '" function.'}))
            end
        end

        for default, fun in pairs(iotaDefaults) do
            if not iota[default] then
                iota[default] = fun
            end
        end
    end
end

return Iotas