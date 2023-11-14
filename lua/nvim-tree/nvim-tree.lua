return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init = function()
        require("nvim-tree").setup({
            filters = {
                dotfiles = true,
                exclude = { ".config", ".local", ".meta" },
            },
        })
    end,
}
