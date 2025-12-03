local Iotas = {}

Iotas.stack = {
    new = function(self, table)
        if not table then table = {} end
        data = {
            Type = "internal:stack",
            list = table
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    push = function(self, iota, distance)
        if not distance then distance = 0 end
        table.insert(self.list,#self.list-distance+1, iota)
        return self
    end,
    pop = function(self, distance)
        if not distance then distance = 0 end
        return table.remove(self.list, #self.list - distance)
    end,
    peek = function(self, distance)
        if not distance then distance = 0 end
        return self.list[#self.list - distance]
    end,
    copy = function(self)
        local newIota = Hexcasting.Iotas.internal.stack:new()
        for _,iota in pairs(self.list) do
            newIota:push(iota:copy())
        end
        return newIota
    end,
    display = function(self)
        local output = {"{"}
        for _,iota in pairs(self.list) do
            table.insert(output,iota:display())
            table.insert(output,", ")
        end
        if #output > 1 then
            table.remove(output)
        end
        table.insert(output,"}")
        return table.concat(output)
    end,
    length = function(self)
        return #self.list
    end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}

Iotas.block = {
    new = function(self, blockType, blockData)
        data = {
            Type = "internal:block",
            blockType = blockType,
            blockData = blockData,
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    copy = function(self)
        return Hexcasting.Iotas.block:new(self.blockType, self.blockData:copy())
    end,
    display = function(self)
        error("Unimplemented")
    end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}

Iotas.nbt = {
    new = function(self, tags)
        data = {
            Type = "internal:nbt",
            tags = tags,
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    copy = function(self)
        local newData = {}
        for k,v in pairs(self.tags) do
            newData[k] = v:copy()
        end
        return Hexcasting.Iotas.nbt:new(newData)
    end,
    display = function(self)
        error("Unimplemented")
    end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}


Iotas.world = {
    new = function(self)
        data = {
            Type = "internal:world",
            blocks = {},
            entities = {},
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    copy = function(self)
        error("Unimplemented")
    end,
    display = function(self)
        error("Unimplemented")
    end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}

Iotas.cast = {
    new = function(self, caster, continuations, world, stack)
        data = {
            Type = "internal:cast",
            caster = caster, 
            continuations = continuations, 
            world = world, 
            stack = stack, 
            data = {}
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    copy = function(self)
        error("Unimplemented")
    end,
    display = function(self)
        error("Unimplemented")
    end,
    eval = function(self)
        while self.continuations:length() ~= 0 do
            continuation = self.continuations:peek()
            continuation:eval(self)
        end
    end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}


return Iotas