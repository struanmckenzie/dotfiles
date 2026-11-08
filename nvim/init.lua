require("treesitter")
vim.cmd("syntax enable")
vim.lsp.enable({
    "clangd",
    "lua_ls",
    "pyright",
    "jdtls",
})
