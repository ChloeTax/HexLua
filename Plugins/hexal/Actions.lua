Actions = {}
Actions["qaqwqaqwqaq"] = {direction = "NORTH_WEST", name = "Bind Storage", is_per_world = "False", id = "hexal:mote/storage/bind", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ewdwewdew"] = {direction = "EAST", name = "Pathfinder's Reflection", is_per_world = "False", id = "hexal:wisp/move/target/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["daqqqa"] = {direction = "WEST", name = "Phase Block", is_per_world = "False", id = "hexal:interop/fabric_only/phase_block", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqqqqa"] = {direction = "NORTH_EAST", name = "Particles", is_per_world = "False", id = "hexal:particles", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeedeeeee"] = {direction = "WEST", name = "Place Block II", is_per_world = "False", id = "hexal:place_type", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eweeewedww"] = {direction = "SOUTH_WEST", name = "Brigh's Gambit", is_per_world = "False", id = "hexal:everbook/toggle_macro", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqaw"] = {direction = "SOUTH_WEST", name = "Depot Purification", is_per_world = "False", id = "hexal:mote/storage/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awedqdewa"] = {direction = "SOUTH_EAST", name = "Capacity Reflection", is_per_world = "False", id = "hexal:mote/storage/remaining_capacity/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqqqqqaww"] = {direction = "EAST", name = "Phonebook Purification", is_per_world = "False", id = "hexal:link/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqwdeddw"] = {direction = "NORTH_WEST", name = "Send Iota", is_per_world = "False", id = "hexal:link/comm/send", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqqqwqqadad"] = {direction = "EAST", name = "Smelt", is_per_world = "False", id = "hexal:smelt", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aea"] = {direction = "WEST", name = "Running Sum Purification", is_per_world = "False", id = "hexal:running/sum", action = function(self, castEnv)
    local list = castEnv.stack:pop().list
    local total = Hexcasting.Iotas.hexcasting.list:new({table.remove(list,1)})
    local handler
    
    for _, iota in pairs(list) do

        for _, overload in pairs(Hexcasting.Overloads.waaw) do
            found = true

            if total.list[total:length()].Type ~= overload[1][1] then found = false end
            if iota.Type ~= overload[1][2] then found = false end
            if found then handler = overload[2] break end
            
            handler = nil
        end
        
        if handler then

            castEnv.stack:push(total.list[total:length()])
            castEnv.stack:push(iota)
            handler(nil, castEnv)
            total:append(castEnv.stack:pop())
        else
            total:append(Hexcasting.Iotas.hexcasting.null:new())
        end

    end
    
    castEnv.stack:push(total)
    
end}
Actions["eeeeeqwweqqqqq"] = {direction = "SOUTH_WEST", name = "Allow Transfer Others", is_per_world = "False", id = "hexal:wisp/transfer/others/allow", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqwdedwqqwdeddww"] = {direction = "SOUTH_EAST", name = "Zone Distillation: Wisp", is_per_world = "False", id = "hexal:zone_entity/wisp", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqaeqeeeee"] = {direction = "NORTH_WEST", name = "Summon Projectile Wisp", is_per_world = "False", id = "hexal:wisp/summon/projectile", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqwwqqqwqqawdedw"] = {direction = "WEST", name = "Gate's Closing", is_per_world = "False", id = "hexal:gate/close", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dwqqqqqwddww"] = {direction = "NORTH_EAST", name = "Stocktake Reflection", is_per_world = "False", id = "hexal:mote/contained_type/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ddwaa"] = {direction = "NORTH_WEST", name = "Timekeeper's Reflection", is_per_world = "False", id = "hexal:current_tick", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqqqqqwdeddw"] = {direction = "EAST", name = "Listen", is_per_world = "False", id = "hexal:wisp/trigger/comm", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqwawqa"] = {direction = "NORTH_WEST", name = "Nurse's Purification", is_per_world = "False", id = "hexal:health", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dedwqqwdedwqqaw"] = {direction = "NORTH_EAST", name = "Identity Reflection", is_per_world = "False", id = "hexal:wisp/self", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["edeqqaq"] = {direction = "EAST", name = "Gate's Dismissal", is_per_world = "False", id = "hexal:gate/unmark", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aweeeeewaaww"] = {direction = "SOUTH_EAST", name = "Stocktake Purification", is_per_world = "False", id = "hexal:mote/contained/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aweeeeewaa"] = {direction = "SOUTH_EAST", name = "Postmaster's Reflection", is_per_world = "False", id = "hexal:link/comm/num", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqa"] = {direction = "WEST", name = "Mediafy Item", is_per_world = "False", id = "hexal:mote/make", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqqqqw"] = {direction = "NORTH_WEST", name = "Squire's Purification", is_per_world = "False", id = "hexal:armour", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["weeeeew"] = {direction = "NORTH_EAST", name = "Recitation Reflection", is_per_world = "False", id = "hexal:link/comm/read", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqaweewaqawee"] = {direction = "NORTH_WEST", name = "Summon Cyclic Wisp", is_per_world = "False", id = "hexal:wisp/summon/ticking", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eewaqaweewaqaaww"] = {direction = "NORTH_EAST", name = "Zone Distillation: Non-Wisp", is_per_world = "False", id = "hexal:zone_entity/not_wisp", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aeqqqqea"] = {direction = "EAST", name = "Boxer's Purification", is_per_world = "False", id = "hexal:toughness", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["daqweewqaeaqweewqaqwwww"] = {direction = "EAST", name = "Familiar's Reflection", is_per_world = "False", id = "hexal:wisp/seon/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwawdedwawdewwdwaqawdwwedwawdedwaww"] = {direction = "SOUTH_EAST", name = "Craft", is_per_world = "False", id = "hexal:mote/craft", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwwdwdwwwawqqeqwqqwqeqwqq"] = {direction = "SOUTH_EAST", name = "Accelerate", is_per_world = "True", id = "hexal:tick", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqaaw"] = {direction = "EAST", name = "Splitting Gambit", is_per_world = "False", id = "hexal:mote/split", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqweewqaeaqweewqaqwww"] = {direction = "SOUTH_WEST", name = "Bind Wisp", is_per_world = "True", id = "hexal:wisp/seon/set", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aeawqqqae"] = {direction = "WEST", name = "Haste", is_per_world = "False", id = "hexal:wisp/move/speed/set", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["edwwdeeede"] = {direction = "EAST", name = "Marked Distillation", is_per_world = "False", id = "hexal:gate/mark/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awqwawqaw"] = {direction = "WEST", name = "Pathfinder's Gambit", is_per_world = "False", id = "hexal:wisp/move/target/set", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qeeeeedweqqqqqaww"] = {direction = "WEST", name = "Unlink Others", is_per_world = "False", id = "hexal:link/unlink/others", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aeqqqqqawwd"] = {direction = "SOUTH_WEST", name = "Recognition Purification", is_per_world = "False", id = "hexal:link/get_index", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dwqqwdedwqqwddwww"] = {direction = "SOUTH_WEST", name = "Allegiance Distillation", is_per_world = "False", id = "hexal:wisp/owner", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqawded"] = {direction = "NORTH_WEST", name = "Delay Wisp", is_per_world = "False", id = "hexal:wisp/trigger/tick", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwdedwq"] = {direction = "WEST", name = "Open Transmit", is_per_world = "False", id = "hexal:link/comm/open_transmit", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dwqaeaqwd"] = {direction = "NORTH_EAST", name = "Containment Distillation", is_per_world = "False", id = "hexal:mote/storage/contains", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wawdedwaw"] = {direction = "SOUTH_EAST", name = "Factorial Purification", is_per_world = "False", id = "hexal:factorial", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaawaaq"] = {direction = "NORTH_EAST", name = "Running Product Purification", is_per_world = "False", id = "hexal:running/mul", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeedw"] = {direction = "SOUTH_EAST", name = "Depot Gambit", is_per_world = "False", id = "hexal:mote/storage/set", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awdedwaawwqded"] = {direction = "SOUTH_EAST", name = "Offering Purification", is_per_world = "False", id = "hexal:mote/trade/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["weeeweedada"] = {direction = "WEST", name = "Freeze", is_per_world = "False", id = "hexal:freeze", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqwqqqqaa"] = {direction = "EAST", name = "Use Item On", is_per_world = "False", id = "hexal:mote/use_on", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqaweewaqaweedw"] = {direction = "NORTH_WEST", name = "Reservoir Reflection", is_per_world = "False", id = "hexal:wisp/media", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aweeeeewa"] = {direction = "SOUTH_EAST", name = "Unclogging Gambit", is_per_world = "False", id = "hexal:link/comm/clear", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwqqqwqaww"] = {direction = "SOUTH_EAST", name = "Lethe's Gambit", is_per_world = "False", id = "hexal:everbook/delete", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqqqqqawqeeeeedww"] = {direction = "EAST", name = "Link Others", is_per_world = "False", id = "hexal:link/others", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqewwqeeeee"] = {direction = "NORTH_WEST", name = "Allow Transfer", is_per_world = "False", id = "hexal:wisp/transfer/allow", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeeeeqeaqaawqeeeee"] = {direction = "SOUTH_WEST", name = "Disallow Transfer Others", is_per_world = "False", id = "hexal:wisp/transfer/others/disallow", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aqawdwaqawd"] = {direction = "NORTH_WEST", name = "Diver's Purification", is_per_world = "False", id = "hexal:breath", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["aweewaqaweewaawww"] = {direction = "SOUTH_EAST", name = "Manager's Purification", is_per_world = "False", id = "hexal:wisp/hex", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qedqde"] = {direction = "NORTH_EAST", name = "Lamplighter's Purification", is_per_world = "False", id = "hexal:light_level", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["edewedewede"] = {direction = "NORTH_EAST", name = "Bind Storage - Temporary", is_per_world = "False", id = "hexal:mote/storage/bind/temp", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eqwawqwaqww"] = {direction = "EAST", name = "Wander", is_per_world = "False", id = "hexal:wisp/trigger/move", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqqqqeqdeddweqqqqq"] = {direction = "NORTH_WEST", name = "Disallow Transfer", is_per_world = "False", id = "hexal:wisp/transfer/disallow", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qded"] = {direction = "EAST", name = "Return Item", is_per_world = "False", id = "hexal:mote/return", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["ewaqawe"] = {direction = "EAST", name = "Close Transmit", is_per_world = "False", id = "hexal:link/comm/close_transmit", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["awdedwaeqded"] = {direction = "NORTH_WEST", name = "Trade", is_per_world = "False", id = "hexal:mote/trade", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eaqaaeqqqqqaweaqaaw"] = {direction = "EAST", name = "Link", is_per_world = "False", id = "hexal:link", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eeewdqdee"] = {direction = "EAST", name = "Speedometer's Reflection", is_per_world = "False", id = "hexal:wisp/move/speed/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qdeddqeeeeedwqdeddw"] = {direction = "WEST", name = "Unlink", is_per_world = "False", id = "hexal:link/unlink", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wawqwawwwewwwewwwawqwawwwewwwewdeaweewaqaweewaawwww"] = {direction = "NORTH_WEST", name = "Consume Wisp", is_per_world = "True", id = "hexal:wisp/consume", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqwdedwqqdaqaaww"] = {direction = "SOUTH_EAST", name = "Entity Purification: Wisp", is_per_world = "False", id = "hexal:get_entity/wisp", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["eweeewedqdeddw"] = {direction = "NORTH_EAST", name = "Mnemosyne's Gambit", is_per_world = "False", id = "hexal:everbook/read", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwqqqwqaeaqaaw"] = {direction = "SOUTH_EAST", name = "Elysium's Gambit", is_per_world = "False", id = "hexal:everbook/write", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wqwawqwqwqwqwqw"] = {direction = "EAST", name = "Falling Block", is_per_world = "False", id = "hexal:falling_block", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qeeeeedww"] = {direction = "WEST", name = "Popularity Reflection", is_per_world = "False", id = "hexal:link/num", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["wwdwaqawdwaqwwawdedwawwqawdwaqawdww"] = {direction = "NORTH_EAST", name = "Preview Craft", is_per_world = "False", id = "hexal:mote/craft/preview", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qaqeede"] = {direction = "WEST", name = "Gate's Opening", is_per_world = "False", id = "hexal:gate/mark", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qwqwqwqwqwqqeaeaeaeaeae"] = {direction = "WEST", name = "Gate's Reflection", is_per_world = "True", id = "hexal:gate/make", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["dedqeaqa"] = {direction = "SOUTH_WEST", name = "Stacking Distillation II", is_per_world = "False", id = "hexal:mote/combinable", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
Actions["qqwdedwqqaww"] = {direction = "NORTH_WEST", name = "Seniority Purification", is_per_world = "False", id = "hexal:mote/villager/level/get", action = function(self, castEnv) hexUtils.Unimplemented(self) end}
return Actions
