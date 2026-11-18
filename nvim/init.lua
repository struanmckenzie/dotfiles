local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "echasnovski/mini.pairs",
        version = false,
        config = function()
            require("mini.pairs").setup()
        end,
    },
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        vim.treesitter.start(args.buf)
    end,
})


vim.cmd.colorscheme("habamax")

vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.keymap.set("n", "<M-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==", { silent = true })

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { silent = true })
