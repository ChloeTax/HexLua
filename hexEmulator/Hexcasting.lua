hexUtils = platform.require("hexEmulator/hexUtils")

Hexcasting = {}
Hexcasting.Actions = platform.require("hexEmulator/hexactions")
Hexcasting.Iotas = platform.require("hexEmulator/hexiotas")
Hexcasting.SpecialHandlers = platform.require("hexEmulator/hexSpecialHandlers")

function Hexcasting.buildCast(hex, caster)
    local cast = Hexcasting.Iotas.internal.cast:new(
        caster, --caster
        Hexcasting.Iotas.internal.stack:new(), --continuation
        Hexcasting.Iotas.internal.world:new(), --world
        Hexcasting.Iotas.internal.stack:new(), --stack
        Hexcasting.Iotas.hexcasting.null:new(), --ravenmind
        Hexcasting.Iotas.hexcasting.list:new(), --introiotas
        0, --introdepth
        false --considering
    )
    cast.continuations:push(Hexcasting.Iotas.hexcasting.FrameEvaluate:new(hex))
    return cast
end

return Hexcasting