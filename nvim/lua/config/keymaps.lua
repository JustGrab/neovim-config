-- ================================================================================================
-- TITLE: NeoVim keymaps
-- ABOUT: sets some quality-of-life keymaps
-- ================================================================================================

-- Directories
vim.keymap.set('n', '<leader>cd', ':cd %:h<CR>', { desc = 'Set cwd to current file' })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Nvim Tree / File Explorer
vim.keymap.set("n", "<leader>m", "<Cmd>NvimTreeFocus<CR>", { desc = "Focus on File Explorer" })
vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- Telescope
vim.keymap.set("n", "<Leader>f", "<Nop>", { desc = "Telescope" })
vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fw', function() require('telescope.builtin').grep_string() end, { desc = 'Search word under cursor' })
vim.keymap.set("n", "<leader>fs", function() require("telescope.builtin").lsp_document_symbols() end, { desc = "Search document symbols"})
vim.keymap.set("n", "<leader>fS", function() require("telescope.builtin").lsp_workspace_symbols() end, { desc = "Search workspace symbols"})
vim.keymap.set("n", "<leader>fc", function() require("telescope.builtin").find_files({cwd = vim.fn.stdpath("config"),}) end, { desc = "Telescope config files" })
vim.keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = 'Telescope help tags' })

-- Toggle Term
vim.keymap.set("n", "<Leader>t", "<Nop>", { desc = "Toggle Term" })
vim.keymap.set('n', '<leader>tt', '<Cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>t1', '<Cmd>1ToggleTerm<CR>', { desc = 'Toggle terminal 1' })
vim.keymap.set('n', '<leader>t2', '<Cmd>2ToggleTerm<CR>', { desc = 'Toggle terminal 2' })
vim.keymap.set('n', '<leader>t3', '<Cmd>3ToggleTerm<CR>', { desc = 'Toggle terminal 3' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Trouble
vim.keymap.set("n", "<Leader>x", "<Nop>", { desc = "Diagnostics via Trouble" })
vim.keymap.set('n', '<leader>xx', '<Cmd>Trouble diagnostics toggle<cr>', {desc = 'Diagnostics (Trouble)'})
vim.keymap.set('n', '<leader>xX', '<Cmd>Trouble diagnostics toggle filter.buf=0<cr>', {desc = 'Buffer Diagnostics (Trouble)'})
vim.keymap.set('n', '<leader>xs', '<Cmd>Trouble symbols toggle focus=false<cr>', {desc = 'Symbols (Trouble)'})
vim.keymap.set('n', '<leader>xl', '<Cmd>Trouble lsp toggle focus=false win.position=right<cr>', {desc = 'LSP Defns / References (Trouble)'})
vim.keymap.set('n', '<leader>xl', '<Cmd>Trouble loclist toggle<cr>', {desc = 'Location List (Trouble)'})
vim.keymap.set('n', '<leader>xQ', '<Cmd>Trouble qflist toggle<cr>', {desc = 'Quick Fix List (Trouble)'})

-- LSP
vim.keymap.set('n', "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, { desc = 'Goto Definition'})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set('n', '<leader>ra', vim.lsp.buf.code_action, {desc = "Code Action"})
vim.keymap.set('n', '<leader>rf', function() vim.lsp.buf.format({ async = true }) end, { desc = "Format File" })
vim.keymap.set('n', '<leader>rs', ':ClangdSwitchSourceHeader<CR>', { silent = true, desc = "Switch between Header/Source File"})

-- Diagnostic
vim.keymap.set("n", "<leader>de", "<cmd>TinyInlineDiag enable<cr>", { desc = "Enable diagnostics" })
vim.keymap.set("n", "<leader>dd", "<cmd>TinyInlineDiag disable<cr>", { desc = "Disable diagnostics" })
vim.keymap.set("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })

-- Comments
vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
end, { desc = "Next error/warning todo comment" })
