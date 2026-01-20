return {
	{ "echasnovski/mini.ai", version = "*", opts = {} },
	{ "echasnovski/mini.comment", version = "*", opts = {} },
	{ "echasnovski/mini.move", version = "*", opts = {} },
	{ "echasnovski/mini.surround", version = "*", opts = {} },
	{ "echasnovski/mini.cursorword", version = "*", opts = {} },
    { "echasnovski/mini.trailspace", version = "*", opts = {} },
	{ "echasnovski/mini.bufremove", version = "*", opts = {} },
	{ "echasnovski/mini.notify", version = "*", opts = {} }, 
    {
        "echasnovski/mini.icons",
        opts = {},
        lazy = true,
        specs = {
          { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
        },
        init = function()
          package.preload["nvim-web-devicons"] = function()
            require("mini.icons").mock_nvim_web_devicons()
            return package.loaded["nvim-web-devicons"]
          end
        end,
    },
    {
      "echasnovski/mini.nvim",
      version = false,
      config = function()
        require("mini.clue").setup({
            triggers = {
                { mode = 'n', keys = '<Leader>' },
                { mode = 'x', keys = '<Leader>' },
            },
            window = {
                delay = 0,  -- show immediately
                config = {
                    border = 'single',
                },
            },
        })
      end,
    }
}
