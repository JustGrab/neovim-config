return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		-- Remove background color from the NvimTree window (ui fix)
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

		require("nvim-tree").setup({
			filters = {
				dotfiles = true, -- Show hidden files (dotfiles)
			},
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
                width = 35
			},
		})
	end,
}
