return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
    local highlight = {"IblScope"}
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IblScope", {fg="#3B4048"})
    end)
    require('ibl').setup({
        scope = {
            highlight = highlight,
        }
    })
    end
}
