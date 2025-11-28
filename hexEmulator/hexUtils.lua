return {
    Unimplemented = function(self)
        error(table.concat({self.name, " (",self.id, ") is unimplemented"}),2)
    end,
    stringSplit = function(inputstr, sep)
        if sep == nil then
            sep = "%s"
        end
        local t = {}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
        end
        return t
    end

}