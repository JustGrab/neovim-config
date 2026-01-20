return 
{
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup {
            automatic_enable = {
                "lua_ls",
                "vimls",
                "rust_analyzer",
                "clangd",
                "ts_ls",
                "emmet_ls",
                "pylsp",
                "zls",
                "bashls",
                "jsonls",
                "yamlls",
                "taplo",
                "lemminx",
                "marksman",
                "sqlls",
                "jdtls"
            }
        }
        end
    },
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    }
}
