local query_nvim = require("query_nvim")
local connectors = require('query_nvim/connectors')

require('query_nvim').setup({
  db = {
    b5 = connectors.mysql({
        user = "root",
        host = "127.0.0.1",
        database = "b5",
    }),
    b51 = connectors.mysql({
        user = "root",
        host = "127.0.0.1",
        database = "b5",
    }),
  },
})
