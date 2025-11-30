Overloads = {}

Overloads.waaw = {}

table.insert(Overloads.waaw, { --add
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number1 = castEnv.stack:pop().number
        local number2 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 + number2
            )
        )
    end
})

Overloads.wddw = {}

table.insert(Overloads.wddw, { --sub
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 - number2
            )
        )
    end
})


return Overloads