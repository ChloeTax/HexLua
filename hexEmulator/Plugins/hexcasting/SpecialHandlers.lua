local SpecialHandlers = {}

local function startsWith(inputstr, check)
    return string.sub(inputstr,1,#check) == check
end

-- table.insert(SpecialHandlers,{100,function(startDir, anglesigs, castEnv) --debug
--     if castEnv then
--         print("___")
--         print("pattern:", Hexcasting.Iotas.hexcasting.pattern:new(startDir, anglesigs):display())
--         print("introDepth:", castEnv.introDepth)
--         print("stack:", castEnv.stack:display())
--         print("introIotas:", castEnv.introIotas:display())
--         print("---")
--     end
-- end})


table.insert(SpecialHandlers,{300,function(startDir, anglesigs, castEnv) --intro
    if anglesigs == "qqq" then
        pattern = {}
        pattern.action = function(self, castEnv)
            if castEnv.introDepth == 0 then
                castEnv.introIotas = Hexcasting.Iotas.hexcasting.list:new()
            else
                castEnv.introIotas:append(Hexcasting.Iotas.hexcasting.pattern:new(startDir, anglesigs))
            end
            castEnv.introDepth = castEnv.introDepth + 1
        end
        pattern.name = "Introspection"
        return pattern
    end
end})

table.insert(SpecialHandlers,{300,function(startDir, anglesigs, castEnv) --retro
    if anglesigs == "eee" then
        pattern = {}
        pattern.action = function(self, castEnv)
            castEnv.introDepth = castEnv.introDepth - 1
            if castEnv.introDepth == 0 then
                castEnv.stack:push(castEnv.introIotas)
                castEnv.introIotas = Hexcasting.Iotas.hexcasting.list:new()
            else
                castEnv.introIotas:append(Hexcasting.Iotas.hexcasting.pattern:new(startDir, anglesigs))
            end
        end
        pattern.name = "Retrospection"
        return pattern
    end
end})


table.insert(SpecialHandlers,{200,function(startDir, anglesigs, castEnv) --append iota to list
    if castEnv then
        if castEnv.introDepth > 0 then
            pattern.action = function(self, castEnv)
                return castEnv.introIotas:append(Hexcasting.Iotas.hexcasting.pattern:new(startDir, anglesigs))
            end
            return pattern
        end
    end
end})


---comment returns the number for a number literal
---@param startDir string
---@param anglesigs string
---@diagnostic disable-next-line: undefined-doc-name
---@param castEnv castEnv
---@return table | nil
table.insert(SpecialHandlers,{100,function(startDir, anglesigs, castEnv)

    if startsWith(anglesigs,"aqaa") then

        local pattern = {direction = startDir, is_per_world = "False", id = "hexcasting:number"}

        local x = 0

        for i = 5, string.len(anglesigs) do
            local char = string.sub(anglesigs, i, i)
            if     char == "a" then x = x * 2
            elseif char == "q" then x = x + 5
            elseif char == "w" then x = x + 1
            elseif char == "e" then x = x + 10
            elseif char == "d" then x = x / 2
            end
        end


        pattern.name = "Numerical Reflection: " .. x

        pattern.action = function(self, castEnv)
            return castEnv.stack:push(Hexcasting.Iotas.hexcasting.double:new(x))
        end

        return pattern
    end

    return nil
end})

table.insert(SpecialHandlers,{100,function(startDir, anglesigs, castEnv) --Bookkeeper
    if anglesigs == "a" then
        pattern = {}
        pattern.action = function(self, castEnv)
            castEnv.stack:pop()
        end
        pattern.name = "Bookkeeper v (temp)"
        return pattern
    end
end})


return SpecialHandlers