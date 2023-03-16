local util = require("lsp/_util")

local function organize_imports()
    local timeout = 1000
    local context = {source = {organizeImports = true}}
    vim.validate({context = {context, "t", true}})

    local params = vim.lsp.util.make_range_params()
    params.context = context

    local method = "textDocument/codeAction"
    local resp = vim.lsp.buf_request_sync(0, method, params, timeoutms)
    if resp and resp[1] then
        local result = resp[1].result
        if result and result[1] then
            local edit = result[1].edit
            vim.lsp.util.apply_workspace_edit(edit)
        end
    end

    vim.lsp.buf.formatting()
end

require("lspconfig").gopls.setup({
    on_attach = util.on_attach,
    commands = {
        OrganizeImports = {organize_imports, description = "Organize Imports"}
    }
})
