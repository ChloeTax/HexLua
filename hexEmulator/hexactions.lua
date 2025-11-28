local Actions = {}

for _,file in pairs(platform.Plugins) do
    addon = platform.require("hexEmulator/Plugins/" .. file .. "/Actions")
    if addon then
        for angles, action in pairs(addon) do
            if Actions[angles] then error("duplicate pattern! " .. angles) end
            Actions[angles] = action
        end
    end
end

-- local function eval(castEnv,iota)
--     local introDepth = 0
--     local introIotas = Hexcasting.Iotas["hexcasting:list"]:new()
--     if iota.Type == "hexcasting:list" then
--         for _,subiota in pairs(iota.list) do
--             if subiota.Type == "hexcasting:pattern" then
--                 if subiota.ID == "hexcasting:open_paren" then
--                     if introDepth > 0 then introIotas:append(subiota) end
--                     introDepth = introDepth + 1
--                 elseif subiota.ID == "hexcasting:close_paren" then
--                     introDepth = introDepth - 1
--                     if introDepth == 0 then
--                         castEnv.stack:push(introIotas)
--                         introIotas = Hexcasting.Iotas["hexcasting:list"]:new()
--                     else
--                         introIotas:append(subiota)
--                     end
--                 else
--                     if introDepth == 0 then
--                         Hexcasting.Actions[subiota.ID](subiota, castEnv)
--                     else
--                         introIotas:append(subiota)
--                     end
--                 end
--             else
--                 if introDepth > 0 then
--                     introIotas:append(subiota)
--                 else
--                     pprint(subiota)
--                     error("expected to eval a pattern but evaluated that instead")
--                 end
--             end
--         end
--     else
--         error('executed a bad Type: ' .. iota.Type ..'"')
--     end
-- end

return Actions