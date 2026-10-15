return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 12,
            hide_numbers = true,
            shade_terminals = true,
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = 'horizontal',
            close_on_exit = true,
            shell = vim.o.shell,
            winbar = {
                enabled = true,
                name_formatter = function(term)
                    return string.format("Terminal #%d", term.id)
                end
            },
            float_opts = {
                border = 'curved',
                winblend = 3,
            },
        })
    end,
}
