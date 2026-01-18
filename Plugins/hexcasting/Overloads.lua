Overloads = {}

Overloads.waaw = {}

table.insert(Overloads.waaw, { --add
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 + number2
            )
        )
    end
})

table.insert(Overloads.waaw, { --add
    {"hexcasting:list", "hexcasting:list"},
    function(self, castEnv)
        local list2 = castEnv.stack:pop().list
        local list1 = castEnv.stack:pop()
        for _, iota in pairs(list2) do
            list1:append(iota)
        end
        castEnv.stack:push(list1)
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

Overloads.waqaw = {}

table.insert(Overloads.waqaw, { --multiply
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 * number2
            )
        )
    end
})


Overloads.wdedw = {}

table.insert(Overloads.wdedw, { --divide
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 / number2
            )
        )
    end
})




Overloads.addwaad = {}

table.insert(Overloads.addwaad, { --modulo
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.double:new(
                number1 % number2
            )
        )
    end
})


Overloads.qq = {} 

table.insert(Overloads.qq, { -- Minimus Distillation II
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                number1 <= number2
            )
        )
    end
})

Overloads.q = {} 

table.insert(Overloads.q, { -- Minimus Distillation
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                number1 < number2
            )
        )
    end
})


Overloads.ee = {} 

table.insert(Overloads.ee, { -- Maximus Distillation II
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                number1 >= number2
            )
        )
    end
})

Overloads.waw = {} 

table.insert(Overloads.waw, { -- OR
    {"hexcasting:bool", "hexcasting:bool"},
    function(self, castEnv)
        local bool2 = castEnv.stack:pop().bool
        local bool1 = castEnv.stack:pop().bool
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                bool1 or bool2
            )
        )
    end
})

Overloads.wdw = {} 

table.insert(Overloads.wdw, { -- AND
    {"hexcasting:bool", "hexcasting:bool"},
    function(self, castEnv)
        local bool2 = castEnv.stack:pop().bool
        local bool1 = castEnv.stack:pop().bool
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                bool1 and bool2
            )
        )
    end
})




return Overloads