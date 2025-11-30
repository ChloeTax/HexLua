local Iotas = {}

Iotas.string = {
    new = function(self, string)
        data = {
            Type = "moreiotas:string",
            string = string
        }
        self.__index = self
        return setmetatable(data,self)
    end,
    copy = function(self)
        return Hexcasting.Iotas.moreiotas.string:new(self.string)
    end,
    display = function(self) return '"' .. self.string .. '"' end,
    serialize = function(self) error("Unimplemented") end,
    deserialize = function(self, data) error("Unimplemented") end,
}

return Iotas