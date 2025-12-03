local Actions = {}
Actions["aadadaaw"] = {direction = "EAST", name = "Dioscuri Gambit", is_per_world = "False", id = "hexcasting:2dup", action = function(self, castEnv)
        local iota2 = castEnv.stack:pop()
        local iota1 = castEnv.stack:pop()

        castEnv.stack:push(iota1)
        castEnv.stack:push(iota2)
        castEnv.stack:push(iota1:copy())
        castEnv.stack:push(iota2:copy())

end}
Actions["qaawawaeqqqdd"] = {direction = "SOUTH_EAST", name = "Red Sun's Zenith", is_per_world = "True", id = "hexcasting:potion/haste", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddewedd"] = {direction = "SOUTH_EAST", name = "Speaker's Distillation", is_per_world = "False", id = "hexcasting:construct", action = function(self, castEnv)
    local iota = castEnv.stack:pop()
    local list = castEnv.stack:peek()
    table.insert(list.list, 1, iota)
end}
Actions["qqqqqwdeddwq"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Monster", is_per_world = "False", id = "hexcasting:zone_entity/monster", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwaeawqaeaqa"] = {direction = "NORTH_WEST", name = "Flock's Reflection", is_per_world = "False", id = "hexcasting:stack_len", action = function(self, castEnv) 
    castEnv.stack:push(
        Hexcasting.Iotas.hexcasting.double:new(
            castEnv.stack:length()
        ))
end}
Actions["awqqqwaq"] = {direction = "SOUTH_WEST", name = "Blink", is_per_world = "False", id = "hexcasting:blink", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqea"] = {direction = "NORTH_WEST", name = "Vector Reflection +X", is_per_world = "False", id = "hexcasting:const/vec/px", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["deeeeeq"] = {direction = "EAST", name = "Assessor's Reflection", is_per_world = "False", id = "hexcasting:writable", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["q"] = {direction = "SOUTH_WEST", name = "Minimus Distillation", is_per_world = "False", id = "hexcasting:less", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["weddwaa"] = {direction = "EAST", name = "Architect's Distillation", is_per_world = "False", id = "hexcasting:raycast/axis", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aadaa"] = {direction = "EAST", name = "Gemini Decomposition", is_per_world = "False", id = "hexcasting:duplicate", action = function(self, castEnv)
    castEnv.stack:push(
        castEnv.stack:peek():copy()
    )
end}
Actions["dwdwdeweaqa"] = {direction = "NORTH_EAST", name = "Aviator's Purification", is_per_world = "False", id = "hexcasting:flight/can_fly", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqq"] = {direction = "NORTH_WEST", name = "Vector Reflection Zero", is_per_world = "False", id = "hexcasting:const/vec/0", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dw"] = {direction = "NORTH_WEST", name = "Negation Purification", is_per_world = "False", id = "hexcasting:not", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dwa"] = {direction = "NORTH_WEST", name = "Exclusion Distillation", is_per_world = "False", id = "hexcasting:xor", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqaeaqw"] = {direction = "NORTH_WEST", name = "Surgeon's Exaltation", is_per_world = "False", id = "hexcasting:replace", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["adaa"] = {direction = "WEST", name = "Make Note", is_per_world = "False", id = "hexcasting:beep", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqaawawaeqqdd"] = {direction = "SOUTH_WEST", name = "Black Sun's Zenith", is_per_world = "True", id = "hexcasting:potion/absorption", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aaq"] = {direction = "EAST", name = "Euler's Reflection", is_per_world = "False", id = "hexcasting:const/double/e", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqadwawaww"] = {direction = "SOUTH_EAST", name = "Red Sun's Nadir", is_per_world = "False", id = "hexcasting:potion/poison", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeewaqaawa"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Animal", is_per_world = "False", id = "hexcasting:zone_entity/not_animal", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqaewawawe"] = {direction = "SOUTH_WEST", name = "Black Sun's Nadir", is_per_world = "False", id = "hexcasting:potion/wither", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqawwawawd"] = {direction = "WEST", name = "Blue Sun's Nadir", is_per_world = "False", id = "hexcasting:potion/levitation", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqadwawaw"] = {direction = "SOUTH_EAST", name = "Green Sun's Nadir", is_per_world = "False", id = "hexcasting:potion/slowness", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwded"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Any", is_per_world = "False", id = "hexcasting:zone_entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wdwewewewewew"] = {direction = "EAST", name = "Chronicler's Gambit", is_per_world = "False", id = "hexcasting:write/entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awdd"] = {direction = "SOUTH_EAST", name = "Augur's Exaltation", is_per_world = "False", id = "hexcasting:if", action = function(self, castEnv)
        local iota2 = castEnv.stack:pop()
        local iota1 = castEnv.stack:pop()
        if castEnv.stack:pop().bool then
            castEnv.stack:push(iota1)
        else
            castEnv.stack:push(iota2)
        end
end}
Actions["eeeeeqd"] = {direction = "SOUTH_WEST", name = "Vector Reflection -Z", is_per_world = "False", id = "hexcasting:const/vec/nz", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aa"] = {direction = "EAST", name = "Compass' Purification", is_per_world = "False", id = "hexcasting:entity_pos/eye", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqed"] = {direction = "NORTH_WEST", name = "Vector Reflection +Z", is_per_world = "False", id = "hexcasting:const/vec/pz", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddad"] = {direction = "WEST", name = "Fisherman's Gambit", is_per_world = "False", id = "hexcasting:fisherman", action = function(self, castEnv)
    local distance = castEnv.stack:pop().number
    if distance > 0 then
        castEnv.stack:push(castEnv.stack:pop(distance))
    else
        castEnv.stack:push(castEnv.stack:pop(), distance * -1)
    end
end}
Actions["qdwdqdw"] = {direction = "NORTH_EAST", name = "Banish Sentinel", is_per_world = "False", id = "hexcasting:sentinel/destroy", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwdeddwa"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Animal", is_per_world = "False", id = "hexcasting:zone_entity/animal", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwwqqqwwwqqeqqwwwqqwqqdqqqqqdqq"] = {direction = "EAST", name = "Greater Teleport", is_per_world = "True", id = "hexcasting:teleport/great", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaq"] = {direction = "NORTH_EAST", name = "Mind's Reflection", is_per_world = "False", id = "hexcasting:get_caster", action = function(self, castEnv)
    castEnv.stack:push(castEnv.caster)
end}
Actions["wa"] = {direction = "EAST", name = "Alidade's Purification", is_per_world = "False", id = "hexcasting:get_entity_look", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eee"] = {direction = "EAST", name = "Retrospection", is_per_world = "False", id = "hexcasting:close_paren", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dadad"] = {direction = "NORTH_EAST", name = "Thoth's Gambit", is_per_world = "False", id = "hexcasting:for_each", action = function(self, castEnv)
        castEnv.continuations:push(
            Hexcasting.Iotas.hexcasting.FrameForEach:new(
                castEnv.stack:pop(),
                castEnv.stack:pop(),
                castEnv.stack:copy()
            )
        )
end}
Actions["qqa"] = {direction = "NORTH_EAST", name = "Conjure Block", is_per_world = "False", id = "hexcasting:conjure_block", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqd"] = {direction = "NORTH_EAST", name = "Conjure Light", is_per_world = "False", id = "hexcasting:conjure_light", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqaawdd"] = {direction = "EAST", name = "Archer's Distillation", is_per_world = "False", id = "hexcasting:raycast", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["da"] = {direction = "EAST", name = "Inequality Distillation", is_per_world = "False", id = "hexcasting:not_equals", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqdaqaawe"] = {direction = "SOUTH_EAST", name = "Entity Purification: Player", is_per_world = "False", id = "hexcasting:get_entity/player", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeeqw"] = {direction = "SOUTH_WEST", name = "Vector Reflection -Y", is_per_world = "False", id = "hexcasting:const/vec/ny", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["deaqq"] = {direction = "SOUTH_EAST", name = "Hermes' Gambit", is_per_world = "False", id = "hexcasting:eval", action = function(self, castEnv)
        castEnv.continuations:push(
            Hexcasting.Iotas.hexcasting.FrameEvaluate:new(
                castEnv.stack:pop()
            )
        )
end}
Actions["qqaed"] = {direction = "SOUTH_EAST", name = "Thanatos' Reflection", is_per_world = "False", id = "hexcasting:thanatos", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awddwqawqwawq"] = {direction = "EAST", name = "Internalize Pigment", is_per_world = "False", id = "hexcasting:colorize", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awq"] = {direction = "NORTH_EAST", name = "Stadiometer's Purification", is_per_world = "False", id = "hexcasting:get_entity_height", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["e"] = {direction = "SOUTH_EAST", name = "Maximus Distillation", is_per_world = "False", id = "hexcasting:greater", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aaedd"] = {direction = "EAST", name = "Prospector's Gambit", is_per_world = "False", id = "hexcasting:over", action = function(self, castEnv)
    castEnv.stack:push(castEnv.stack:peek(1):copy())
end}
Actions["aqdee"] = {direction = "SOUTH_WEST", name = "Charon's Gambit", is_per_world = "False", id = "hexcasting:halt", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["d"] = {direction = "EAST", name = "Nullary Reflection", is_per_world = "False", id = "hexcasting:const/null", action = function(self, castEnv) castEnv.stack:push(Hexcasting.Iotas.hexcasting.null:new()) end}
Actions["aqqqqq"] = {direction = "EAST", name = "Scribe's Reflection", is_per_world = "False", id = "hexcasting:read", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qdqawwaww"] = {direction = "EAST", name = "Erase Item", is_per_world = "False", id = "hexcasting:erase", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaeaq"] = {direction = "NORTH_WEST", name = "Derivation Decomposition", is_per_world = "False", id = "hexcasting:unappend", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["adeeeee"] = {direction = "NORTH_EAST", name = "Inverse Cosine Purification", is_per_world = "False", id = "hexcasting:arccos", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeweeeeede"] = {direction = "EAST", name = "Akasha's Gambit", is_per_world = "False", id = "hexcasting:akashic/write", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eadeeeeew"] = {direction = "NORTH_EAST", name = "Inverse Tangent Purification", is_per_world = "False", id = "hexcasting:arctan", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwaeaeaeaeaea"] = {direction = "NORTH_WEST", name = "Recharge Item", is_per_world = "False", id = "hexcasting:recharge", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waeawae"] = {direction = "EAST", name = "Summon Sentinel", is_per_world = "False", id = "hexcasting:sentinel/create", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["edqdewaqa"] = {direction = "SOUTH_WEST", name = "Excisor's Distillation", is_per_world = "False", id = "hexcasting:remove_from", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waeawaedwa"] = {direction = "EAST", name = "Wayfind Sentinel", is_per_world = "False", id = "hexcasting:sentinel/wayfind", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["deeeee"] = {direction = "EAST", name = "Scribe's Gambit", is_per_world = "False", id = "hexcasting:write", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwaqqqqqeawqwqwqwqwqwwqqeadaeqqeqqeadaeqq"] = {direction = "EAST", name = "Craft Artifact", is_per_world = "False", id = "hexcasting:craft/artifact", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeede"] = {direction = "SOUTH_WEST", name = "Place Block", is_per_world = "False", id = "hexcasting:place_block", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqqqqqe"] = {direction = "EAST", name = "Auditor's Reflection", is_per_world = "False", id = "hexcasting:readable", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqdaqaaww"] = {direction = "SOUTH_EAST", name = "Entity Purification: Item", is_per_world = "False", id = "hexcasting:get_entity/item", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aawawaeqqqqdd"] = {direction = "EAST", name = "Green Sun's Zenith", is_per_world = "True", id = "hexcasting:potion/strength", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqaqwawqaqw"] = {direction = "NORTH_EAST", name = "Overgrow", is_per_world = "False", id = "hexcasting:bonemeal", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddeeeee"] = {direction = "SOUTH_EAST", name = "Inverse Sine Purification", is_per_world = "False", id = "hexcasting:arcsin", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaawdde"] = {direction = "SOUTH_EAST", name = "Swindler's Gambit", is_per_world = "False", id = "hexcasting:swizzle", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waqqqqq"] = {direction = "EAST", name = "Craft Cypher", is_per_world = "False", id = "hexcasting:craft/cypher", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeeqa"] = {direction = "SOUTH_WEST", name = "Vector Reflection -X", is_per_world = "False", id = "hexcasting:const/vec/nx", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["adeeed"] = {direction = "EAST", name = "Single's Purification", is_per_world = "False", id = "hexcasting:singleton", action = function(self, castEnv)
        castEnv.stack:push(Hexcasting.Iotas.hexcasting.list:new({castEnv.stack:pop()}))
end}
Actions["dedwedade"] = {direction = "SOUTH_WEST", name = "Destroy Liquid", is_per_world = "False", id = "hexcasting:destroy_water", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqawqadaq"] = {direction = "SOUTH_EAST", name = "Create Water", is_per_world = "False", id = "hexcasting:create_water", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqqqqq"] = {direction = "EAST", name = "Vector Exaltation", is_per_world = "False", id = "hexcasting:construct_vec", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ewdqdwe"] = {direction = "SOUTH_WEST", name = "Flock's Gambit", is_per_world = "False", id = "hexcasting:last_n_list", action = function(self, castEnv)
    local count = castEnv.stack:pop().number
    local output = Hexcasting.Iotas.hexcasting.list:new()
    for i=1,count do
        output:append(castEnv.stack:pop())
    end
    output:reverse()
    castEnv.stack:push(output)
 end}
Actions["dwaawedwewdwe"] = {direction = "WEST", name = "Caster's Glamour", is_per_world = "False", id = "hexcasting:cycle_variant", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waeawaeqqqwqwqqwq"] = {direction = "EAST", name = "Summon Greater Sentinel", is_per_world = "True", id = "hexcasting:sentinel/create/great", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waadwawdaaweewq"] = {direction = "EAST", name = "Summon Lightning", is_per_world = "True", id = "hexcasting:lightning", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qdwdq"] = {direction = "NORTH_EAST", name = "Arc's Reflection", is_per_world = "False", id = "hexcasting:const/double/pi", action = function(self, castEnv)
    castEnv.stack:push(Hexcasting.Iotas.hexcasting.double:new(math.pi))
end}
Actions["weaqa"] = {direction = "EAST", name = "Scout's Distillation", is_per_world = "False", id = "hexcasting:raycast/entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wdedw"] = {direction = "NORTH_EAST", name = "Division Distillation", is_per_world = "False", id = "hexcasting:div", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddwdwwdwwd"] = {direction = "NORTH_EAST", name = "Alter Scale", is_per_world = "False", id = "hexcasting:interop/pehkui/set", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaeaqwded"] = {direction = "NORTH_WEST", name = "Selection Exaltation", is_per_world = "False", id = "hexcasting:slice", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeedw"] = {direction = "EAST", name = "Evanition", is_per_world = "False", id = "hexcasting:undo", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqq"] = {direction = "WEST", name = "Introspection", is_per_world = "False", id = "hexcasting:open_paren", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aweaqa"] = {direction = "NORTH_EAST", name = "Uniqueness Purification", is_per_world = "False", id = "hexcasting:unique", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddedwdwd"] = {direction = "SOUTH_WEST", name = "Extinguish Area", is_per_world = "False", id = "hexcasting:extinguish", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwe"] = {direction = "EAST", name = "Ceiling Purification", is_per_world = "False", id = "hexcasting:ceil", action = function(self, castEnv)
    local output = Hexcasting.Iotas.hexcasting.double:new(
        castEnv.stack:pop():ceil()
    )
    castEnv.stack:push(output)
end}
Actions["qqqqqwdeddwe"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Player", is_per_world = "False", id = "hexcasting:zone_entity/player", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qq"] = {direction = "SOUTH_WEST", name = "Minimus Distillation II", is_per_world = "False", id = "hexcasting:less_eq", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqaww"] = {direction = "NORTH_WEST", name = "Axial Purification", is_per_world = "False", id = "hexcasting:coerce_axial", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qeqwqwqwqwqeqaeqeaqeqaeqaqded"] = {direction = "NORTH_EAST", name = "Flay Mind", is_per_world = "True", id = "hexcasting:brainsweep", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqaw"] = {direction = "WEST", name = "Consideration", is_per_world = "False", id = "hexcasting:escape", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waaw"] = {direction = "NORTH_EAST", name = "Additive Distillation", is_per_world = "False", id = "hexcasting:add", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqaede"] = {direction = "EAST", name = "Retrograde Purification", is_per_world = "False", id = "hexcasting:reverse", action = function(self, castEnv)
    castEnv.stack:push(castEnv.stack:pop():reverse())
end}
Actions["waeawaede"] = {direction = "EAST", name = "Locate Sentinel", is_per_world = "False", id = "hexcasting:sentinel/get_pos", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["deadeeeeewd"] = {direction = "WEST", name = "Inverse Tangent Purification II", is_per_world = "False", id = "hexcasting:arctan2", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aadaadaa"] = {direction = "EAST", name = "Gemini Gambit", is_per_world = "False", id = "hexcasting:duplicate_n", action = function(self, castEnv)
    local count = castEnv.stack:pop().number
    local iota = castEnv.stack:pop()
    for i=1,count do
            castEnv.stack:push(iota)
    end
end}
Actions["ddqdd"] = {direction = "NORTH_EAST", name = "Rotation Gambit II", is_per_world = "False", id = "hexcasting:rotate_reverse", action = function(self, castEnv)
    castEnv.stack:push(castEnv.stack:pop(), 2)
end}
Actions["waw"] = {direction = "SOUTH_EAST", name = "Disjunction Distillation", is_per_world = "False", id = "hexcasting:or", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eawae"] = {direction = "NORTH_WEST", name = "Circle's Reflection", is_per_world = "False", id = "hexcasting:const/double/tau", action = function(self, castEnv)
    castEnv.stack:push(Hexcasting.Iotas.hexcasting.double:new(math.pi * 2))
end}
Actions["eaqawqadaqd"] = {direction = "EAST", name = "Create Lava", is_per_world = "True", id = "hexcasting:create_lava", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeewaqaaww"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Item", is_per_world = "False", id = "hexcasting:zone_entity/not_item", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddqaa"] = {direction = "EAST", name = "Undertaker's Gambit", is_per_world = "False", id = "hexcasting:tuck", action = function(self, castEnv)
        castEnv.stack:push(castEnv.stack:peek():copy(), 2)
end}
Actions["qqqqqdaqaawd"] = {direction = "SOUTH_EAST", name = "Entity Purification: Living", is_per_world = "False", id = "hexcasting:get_entity/living", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["deeed"] = {direction = "NORTH_WEST", name = "Selection Distillation", is_per_world = "False", id = "hexcasting:index", action = function(self, castEnv)
    local index = castEnv.stack:pop().number
    local list = castEnv.stack:pop().list
    castEnv.stack:push(list[index + 1])
end}
Actions["wwweeewwweewdawdwad"] = {direction = "WEST", name = "Summon Rain", is_per_world = "True", id = "hexcasting:summon_rain", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["edqde"] = {direction = "SOUTH_WEST", name = "Integration Distillation", is_per_world = "False", id = "hexcasting:append", action = function(self, castEnv)
    local iota = castEnv.stack:pop()
    local list = castEnv.stack:pop()
    castEnv.stack:push(list:append(iota))
end}
Actions["eqqwawqaaw"] = {direction = "NORTH_WEST", name = "Huginn's Gambit", is_per_world = "False", id = "hexcasting:write/local", action = function(self, castEnv)
    castEnv.data.hexcasting.ravenmind = castEnv.stack:pop()
end}
Actions["qqqqqdaqaawa"] = {direction = "SOUTH_EAST", name = "Entity Purification: Animal", is_per_world = "False", id = "hexcasting:get_entity/animal", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awawaawq"] = {direction = "SOUTH_WEST", name = "Anchorite's Flight", is_per_world = "False", id = "hexcasting:flight/range", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dedqde"] = {direction = "EAST", name = "Locator's Distillation", is_per_world = "False", id = "hexcasting:index_of", action = function(self, castEnv)
    local search = castEnv.stack:pop()

    local output = -1
    for k, v in ipairs(castEnv.stack:pop().list) do
        if v:equals(search) then
            output = k - 1
            break
        end
    end

    castEnv.stack:push(Hexcasting.Iotas.hexcasting.double:new(output))
end}
Actions["aawaawaa"] = {direction = "EAST", name = "Explosion", is_per_world = "False", id = "hexcasting:explode", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aw"] = {direction = "NORTH_EAST", name = "Augur's Purification", is_per_world = "False", id = "hexcasting:bool_coerce", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeewaqaawd"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Living", is_per_world = "False", id = "hexcasting:zone_entity/not_living", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqdaqaawq"] = {direction = "SOUTH_EAST", name = "Entity Purification: Monster", is_per_world = "False", id = "hexcasting:get_entity/monster", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dedq"] = {direction = "NORTH_EAST", name = "False Reflection", is_per_world = "False", id = "hexcasting:const/false", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["de"] = {direction = "NORTH_EAST", name = "Reveal", is_per_world = "False", id = "hexcasting:print", action = function(self, castEnv) platform.print(castEnv.stack:peek():display()) end}
Actions["aaqawawa"] = {direction = "SOUTH_EAST", name = "Ignite", is_per_world = "False", id = "hexcasting:ignite", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qeewdweddw"] = {direction = "NORTH_EAST", name = "Muninn's Reflection", is_per_world = "False", id = "hexcasting:read/local", action = function(self, castEnv)
    castEnv.stack:push(castEnv.data.hexcasting.ravenmind:copy())
end}
Actions["wddw"] = {direction = "NORTH_WEST", name = "Subtractive Distillation", is_per_world = "False", id = "hexcasting:sub", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqaeaae"] = {direction = "NORTH_EAST", name = "Vacant Reflection", is_per_world = "False", id = "hexcasting:empty_list", action = function(self, castEnv)
    castEnv.stack:push(Hexcasting.Iotas.hexcasting.list:new())
end}
Actions["wdw"] = {direction = "NORTH_EAST", name = "Conjunction Distillation", is_per_world = "False", id = "hexcasting:and", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqaawawaeqdd"] = {direction = "WEST", name = "Blue Sun's Zenith", is_per_world = "True", id = "hexcasting:potion/night_vision", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqwqaewdd"] = {direction = "SOUTH_WEST", name = "Lesser Fold Reflection", is_per_world = "False", id = "hexcasting:circle/bounds/min", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqwqae"] = {direction = "SOUTH_WEST", name = "Waystone Reflection", is_per_world = "False", id = "hexcasting:circle/impetus_pos", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqqqaqwwaqqqqqeqaqqqawwqwqwqwqwqw"] = {direction = "SOUTH_WEST", name = "Craft Phial", is_per_world = "True", id = "hexcasting:craft/battery", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeewaqaawq"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Monster", is_per_world = "False", id = "hexcasting:zone_entity/not_monster", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wedew"] = {direction = "NORTH_WEST", name = "Power Distillation", is_per_world = "False", id = "hexcasting:pow", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wawqwqwqwqwqwew"] = {direction = "EAST", name = "Auditor's Purification", is_per_world = "False", id = "hexcasting:readable/entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwdeddwd"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Living", is_per_world = "False", id = "hexcasting:zone_entity/living", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqdaqa"] = {direction = "SOUTH_EAST", name = "Entity Purification", is_per_world = "False", id = "hexcasting:get_entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dwdwdewq"] = {direction = "NORTH_EAST", name = "Wayfarer's Flight", is_per_world = "False", id = "hexcasting:flight/time", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqew"] = {direction = "NORTH_WEST", name = "Vector Reflection +Y", is_per_world = "False", id = "hexcasting:const/vec/py", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddwddwdd"] = {direction = "EAST", name = "Fireball", is_per_world = "False", id = "hexcasting:explode/fire", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dd"] = {direction = "NORTH_EAST", name = "Compass' Purification II", is_per_world = "False", id = "hexcasting:entity_pos/foot", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aaqwqaa"] = {direction = "SOUTH_WEST", name = "Speaker's Decomposition", is_per_world = "False", id = "hexcasting:deconstruct", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["waqaw"] = {direction = "SOUTH_EAST", name = "Multiplicative Distillation", is_per_world = "False", id = "hexcasting:mul", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wq"] = {direction = "EAST", name = "Pace Purification", is_per_world = "False", id = "hexcasting:get_entity_velocity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqad"] = {direction = "SOUTH_EAST", name = "Cosine Purification", is_per_world = "False", id = "hexcasting:cos", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqqqqqadq"] = {direction = "SOUTH_WEST", name = "Tangent Purification", is_per_world = "False", id = "hexcasting:tan", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaqqqqq"] = {direction = "EAST", name = "Break Block", is_per_world = "False", id = "hexcasting:break_block", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ad"] = {direction = "EAST", name = "Equality Distillation", is_per_world = "False", id = "hexcasting:equals", action = function(self, castEnv)
    local output = Hexcasting.Iotas.hexcasting.bool:new(
        castEnv.stack:pop():equals(castEnv.stack:pop()
    ))
    castEnv.stack:push(output)
end}
Actions["eeeeewaqaawe"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Player", is_per_world = "False", id = "hexcasting:zone_entity/not_player", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqaa"] = {direction = "SOUTH_EAST", name = "Sine Purification", is_per_world = "False", id = "hexcasting:sin", action = function(self, castEnv)
    local output = math.sin(castEnv.stack:pop().number)
    output = Hexcasting.Iotas.hexcasting.double:new(output)
    castEnv.stack:push(output)
end}
Actions["aawawwawwa"] = {direction = "NORTH_WEST", name = "Gulliver's Purification", is_per_world = "False", id = "hexcasting:interop/pehkui/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ee"] = {direction = "SOUTH_EAST", name = "Maximus Distillation II", is_per_world = "False", id = "hexcasting:greater_eq", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqaqe"] = {direction = "NORTH_WEST", name = "Logarithmic Distillation", is_per_world = "False", id = "hexcasting:logarithm", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqaqw"] = {direction = "NORTH_EAST", name = "Length Purification", is_per_world = "False", id = "hexcasting:abs", action = function(self, castEnv)
    local output = Hexcasting.Iotas.hexcasting.double:new(
        castEnv.stack:pop():length()
    )
    castEnv.stack:push(output)
end}
Actions["eqqq"] = {direction = "NORTH_WEST", name = "Entropy Reflection", is_per_world = "False", id = "hexcasting:random", action = function(self, castEnv)  
    castEnv.stack:push(
        Hexcasting.Iotas.hexcasting.double:new(
            platform.random()
        ))
end}
Actions["aaeaa"] = {direction = "EAST", name = "Rotation Gambit", is_per_world = "False", id = "hexcasting:rotate", action = function(self, castEnv)
    local iota1 = castEnv.stack:pop()
    local iota2 = castEnv.stack:pop()
    local iota3 = castEnv.stack:pop()

    castEnv.stack:push(iota2)
    castEnv.stack:push(iota1)
    castEnv.stack:push(iota3)
end}
Actions["qeeeee"] = {direction = "EAST", name = "Vector Disintegration", is_per_world = "False", id = "hexcasting:deconstruct_vec", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqwqaewede"] = {direction = "SOUTH_WEST", name = "Lodestone Reflection", is_per_world = "False", id = "hexcasting:circle/impetus_dir", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aawdd"] = {direction = "EAST", name = "Jester's Gambit", is_per_world = "False", id = "hexcasting:swap", action = function(self, castEnv)
    local iota1 = castEnv.stack:pop()
    local iota2 = castEnv.stack:pop()
    castEnv.stack:push(iota1)
    castEnv.stack:push(iota2)
end}
Actions["aqae"] = {direction = "SOUTH_EAST", name = "True Reflection", is_per_world = "False", id = "hexcasting:const/true", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wawqwqwqwqwqw"] = {direction = "EAST", name = "Chronicler's Purification", is_per_world = "False", id = "hexcasting:read/entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeewwweeewwaqqddqdqd"] = {direction = "EAST", name = "Dispel Rain", is_per_world = "True", id = "hexcasting:dispel_rain", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eawwaeawawaa"] = {direction = "NORTH_WEST", name = "Altiora", is_per_world = "True", id = "hexcasting:flight", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwaeawq"] = {direction = "NORTH_WEST", name = "Flock's Disintegration", is_per_world = "False", id = "hexcasting:splat", action = function(self, castEnv)
    local list = castEnv.stack:pop().list
    for _, iota in ipairs(list) do
        castEnv.stack:push(iota)
    end
end}
Actions["ewq"] = {direction = "EAST", name = "Floor Purification", is_per_world = "False", id = "hexcasting:floor", action = function(self, castEnv)
    local output = Hexcasting.Iotas.hexcasting.double:new(
        castEnv.stack:pop():floor()
    )
    castEnv.stack:push(output)
end}
Actions["qqqqaawawaedd"] = {direction = "NORTH_WEST", name = "White Sun's Zenith", is_per_world = "True", id = "hexcasting:potion/regeneration", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aada"] = {direction = "EAST", name = "Fisherman's Gambit II", is_per_world = "False", id = "hexcasting:fisherman/copy", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awqqqwaqw"] = {direction = "SOUTH_WEST", name = "Impulse", is_per_world = "False", id = "hexcasting:add_motion", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wdwewewewewewqw"] = {direction = "EAST", name = "Assessor's Purification", is_per_world = "False", id = "hexcasting:writable/entity", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqaqwawaw"] = {direction = "NORTH_WEST", name = "White Sun's Nadir", is_per_world = "False", id = "hexcasting:potion/weakness", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwaqde"] = {direction = "NORTH_WEST", name = "Iris' Gambit", is_per_world = "False", id = "hexcasting:eval/cc", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqwqqqqqaq"] = {direction = "WEST", name = "Akasha's Distillation", is_per_world = "False", id = "hexcasting:akashic/read", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwaqqqqqeaqeaeqqqeaeq"] = {direction = "EAST", name = "Craft Trinket", is_per_world = "False", id = "hexcasting:craft/trinket", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["addwaad"] = {direction = "NORTH_EAST", name = "Modulus Distillation", is_per_world = "False", id = "hexcasting:modulo", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwdeddww"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Item", is_per_world = "False", id = "hexcasting:zone_entity/item", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqaqwd"] = {direction = "NORTH_EAST", name = "Edify Sapling", is_per_world = "False", id = "hexcasting:edify", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqwqawaaqa"] = {direction = "WEST", name = "Greater Fold Reflection", is_per_world = "False", id = "hexcasting:circle/bounds/max", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
return Actions