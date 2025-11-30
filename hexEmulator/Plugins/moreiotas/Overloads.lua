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

return Overloads