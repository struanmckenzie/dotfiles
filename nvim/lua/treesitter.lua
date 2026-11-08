require("nvim-treesitter").setup({
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "java",
        "lua",
        "python",
    },

    auto_install = true,

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },
})
