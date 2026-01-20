return {
    Unimplemented = function(self)
        error(table.concat({self.name, " (",self.id, ") is unimplemented"}),2)
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
    end
}