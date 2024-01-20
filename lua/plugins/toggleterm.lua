return {
    'akinsho/toggleterm.nvim',
        version = "*",
        init = function()
            require("toggleterm").setup {
                --size = 20 | function(term)
                --    if term.direction == "horizontal" then
                --        return 15
                --    elseif term.direction == "vertical" then
                --        return vim.o.columns * 0.4
                --   end
                --end,
                open_mapping = [[<c-\>]],
                auto_scroll = true,
                start_in_insert = true,
                direction = 'float',
                shell = vim.o.shell,
                terminal = 'powershell',
            }

            vim.api.nvim_set_keymap('n', '<C-t>', '<Cmd>ToggleTerm<CR>', { noremap = true, silent = true })
            
            -- vim.api.nvim_set_keymap('n', '<C-'\'>', '<Cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true })
        end,
}