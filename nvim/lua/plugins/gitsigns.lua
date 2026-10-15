return { {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        -- navigate hunks
        vim.keymap.set("n", "]c", gs.next_hunk, { buffer = bufnr })
        vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = bufnr })
        -- stage/reset hunks
        vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr })
        vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr })
        -- blame
        vim.keymap.set("n", "<leader>hb", gs.blame_line, { buffer = bufnr })
      end,
    })
  end,
} }
