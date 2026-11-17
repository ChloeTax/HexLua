# HexLua

An emulator for [Hexcasting](https://github.com/FallingColors/HexMod) written in lua.

## Installation

```sh
git submodule add https://github.com/ChloeTax/HexLua hexEmulator
```

## Example

```lua
platform = dofile("platform.lua")

hexEmulator = platform.require("hexEmulator/Hexcasting")

local pattern = hexEmulator.Iotas.hexcasting.pattern

local hex = hexEmulator.Iotas.hexcasting.list:new({
    pattern:new("SOUTH_EAST", "aqaawa"),
    pattern:new("SOUTH_EAST", "aqaawa"),
    pattern:new("NORTH_EAST", "waaw")
})

print(hex:display()) -- [Numerical Reflection: 2, Numerical Reflection: 2, Additive Distillation]

local caster = Hexcasting.Iotas.hexcasting.null:new()

hex = Hexcasting.buildCast(hex, caster)

hex:eval()

print(hex.stack:display()) -- {4.00}
```

## Platform file

The platform file defines functions for platform-specific actions, along with the list of plugins to read from the Plugins folder

some of them include
```
platform
print
random
require
file
readChat
```
and
```
Plugins
```

The following is an example platform file for running it in a lua console 

```lua
local requireCache = {}

table.unpack = table.unpack or unpack

math.randomseed(os.time())

return {
    platform = "Lua",
    print = function(text, player) print(text) end,
    random = math.random,
    require = function(path, ...)
        local file = requireCache[path]
        if file then return file end
        
        file =  loadfile(path .. ".lua")
        requireCache[path] = file
        if not file then 
            local file2 = io.open(path.. ".lua", "r")
            if file2 then
                print("broken")
                error(path .. ".lua broken")
                file2:close()
            else
                -- print(path .. ".lua", " not found")
            end
            return
        nil end
        return file(...)
    end,
    file = {
        read = function(path)
            local file = io.open(path, "r")
            if not file then return nil end
            local content = file:read("*a")
            file:close()
            return content
        end
    },
    readChat = function ()
        local message = io.read("*l")
        if message then
            return message
        else
            return ""
        end
    end,
    Plugins = {
        "custom",
        "hexcasting",
        "moreiotas",
        "hexal",
        "internal"
    }
}
```


https://github.com/ChloeTax/hexlua-example/tree/main

###### powered by hexxy
