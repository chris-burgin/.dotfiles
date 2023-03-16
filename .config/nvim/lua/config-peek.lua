return function()
    local peek = require("peek")
    vim.keymap.set("n", "gl", function() peek.Peek("definition") end, {})
end
