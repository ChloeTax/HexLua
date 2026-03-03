return {
    Unimplemented = function(self)
        error(table.concat({self.name, " (",self.id, ") is unimplemented"}),2)
    end,
    Special = function(self)
        error(table.concat({self.name, " (",self.id, ") should run via a special handler"}),2)
    end,
    Overloaded = function(self)
        error(table.concat({self.name, " (",self.id, ") should run via overload"}),2)
    end,
    BadArgs = function(self, count)
        -- error(table.concat({self.name, " (",self.id, ") is unimplemented"}),2)
    end,
    drawMedia = function(self, castEnv, amount, simulate, automishap)
        if automishap == nil then automishap = true end
        if simulate == nil then simulate = false end
        if amount == nil then error("Drawing nil media") end
        -- platform.something
        return 0
    end,
    applyEffect = function(self, castEnv, effect)
        local potency = castEnv.stack:peek()

        if (potency ~= nil and potency.Type == "hexcasting:double") then
            potency = castEnv.stack:pop()
        else
            potency = Hexcasting.Iotas.hexcasting.double:new(1)
        end

        local duration = castEnv.stack:pop()
        local entity = castEnv.stack:pop()
        platform.entity.apply_effect(entity, duration, potency, effect)
    end
}