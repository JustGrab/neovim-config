
-- C/C++
vim.lsp.config("clangd", {
  cmd = { "clangd", "--header-insertion=never", "--clang-tidy" },
  -- You can add other configurations here (e.g., capabilities, on_attach function)
})

-- Rust
vim.lsp.config('rust_analyzer', {
  -- Server-specific settings. See `:help lsp-quickstart`
  settings = {
    ['rust-analyzer'] = {},
  },
})

-- TypeScript/JavaScript
vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = 'all',
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
      },
    },
  },
})

-- Emmet
vim.lsp.config("emmet_ls", {
  cmd = { "emmet-ls", "--stdio" },
  filetypes = { 'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'svelte' },
})

-- Nix
vim.lsp.config("nixd", {
  cmd = { "nixd" },
})

-- Zig
vim.lsp.config("zls", {
  cmd = { "zls" },
})

-- Bash
vim.lsp.config("bashls", {
  cmd = { "bash-language-server", "start" },
})

-- JSON
vim.lsp.config("jsonls", {
  cmd = { "vscode-json-language-server", "--stdio" },
  settings = {
    json = {
      validate = { enable = true },
    },
  },
})

-- YAML
vim.lsp.config("yamlls", {
  cmd = { "yaml-language-server", "--stdio" },
  settings = {
    yaml = {
    },
  },
})

-- TOML
vim.lsp.config("taplo", {
  cmd = { "taplo", "lsp", "stdio" },
})

-- XML
vim.lsp.config("lemminx", {
  cmd = { "lemminx" },
})

-- Markdown
vim.lsp.config("marksman", {
  cmd = { "marksman", "server" },
})

-- SQL
vim.lsp.config("sqlls", {
  cmd = { "sql-language-server", "up", "--method", "stdio" },
})

-- Java
vim.lsp.config("jdtls", {
  cmd = { "jdtls" },
})
