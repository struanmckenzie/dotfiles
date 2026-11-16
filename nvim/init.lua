require("treesitter")
vim.cmd("syntax enable")
vim.lsp.enable({
    "clangd",
    "lua_ls",
    "pyright",
    "jdtls",
})

vim.opt.tabstop = 4 -- Display width of a tab
vim.opt.shiftwidth = 4 -- Indentation width
vim.opt.softtabstop = 4 -- Number of spaces inserted/deleted with Tab/Backspace
vim.opt.smartindent = true

-- Move lines up/down with alt+k and alt+j
-- Normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })

-- Visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- Insert mode
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { silent = true })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { silent = true })
