Overloads = {}

Overloads.waaw = {}

table.insert(Overloads.waaw, { --add
    {"moreiotas:string", "moreiotas:string"},
    function(self, castEnv)
        local string2 = castEnv.stack:pop().string
        local string1 = castEnv.stack:pop().string
        castEnv.stack:push(
            Hexcasting.Iotas.moreiotas.string:new(
                string1 .. string2
            )
        )
    end
})

Overloads.qaeaqwded = {}

table.insert(Overloads.qaeaqwded, { -- Selection Exaltation
    {"moreiotas:string", "hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        local string1 = castEnv.stack:pop().string
        castEnv.stack:push(
            Hexcasting.Iotas.moreiotas.string:new(
                string1:sub(number1 + 1,number2)
            )
        )
    end
})


return Overloads