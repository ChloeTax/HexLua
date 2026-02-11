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

table.insert(Overloads.waaw, { --add
    {"hexcasting:vec3", "hexcasting:vec3"},
    function(self, castEnv)
        local vector2 = castEnv.stack:pop()
        local vector1 = castEnv.stack:pop()
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.vec3:new(
                vector1.x + vector2.x,
                vector1.y + vector2.y,
                vector1.z + vector2.z
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

table.insert(Overloads.waqaw, { --multiply
    {"hexcasting:vec3", "hexcasting:double"},
    function(self, castEnv)
        local number = castEnv.stack:pop().number
        local vector = castEnv.stack:pop()
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.vec3:new(
                vector.x * number,
                vector.y * number,
                vector.z * number
            )
        )
    end
})

table.insert(Overloads.waqaw, { --multiply
    {"hexcasting:double", "hexcasting:vec3"},
    function(self, castEnv)
        local vector = castEnv.stack:pop()
        local number = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.vec3:new(
                vector.x * number,
                vector.y * number,
                vector.z * number
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


Overloads.e = {}

table.insert(Overloads.e, { -- Maximus Distillation
    {"hexcasting:double", "hexcasting:double"},
    function(self, castEnv)
        local number2 = castEnv.stack:pop().number
        local number1 = castEnv.stack:pop().number
        castEnv.stack:push(
            Hexcasting.Iotas.hexcasting.bool:new(
                number1 > number2
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