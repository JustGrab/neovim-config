return {
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {{
                    name = "VSCode",
                    colorscheme = "vscode",
                },
                {
                    name = "VSCode Modern Dark",
                    colorscheme = "vscode_modern",
                },
                {
                    name = "Carbon Fox",
                    colorscheme = "carbonfox",
                },
                {
                    name = "Midnight",
                    colorscheme = "midnight",
                },
                {
                    name = "Warmer",
                    colorscheme = "onedark",
                },
                {
                    name = "Arctic Dark",
                    colorscheme = "arctic",
                },

            }
        })
    end
},
-- One dark Theme
    {
        "navarasu/onedark.nvim",
        lazy = true,
        priority = 1001, -- make sure to load this before all the other start plugins
        config = function()
        require('onedark').setup {
            style = 'darker'
        }
        require('onedark').load()
        end
    },

    -- Vscode Theme
    {
        "Mofiqul/vscode.nvim",
        lazy = true,
        config = function()
        require('vscode').setup({
            -- Optional: configure the theme
            transparent = false,
            italic_comments = true,
            underline_links = true,
            disable_nvimtree_bg = true,

             -- Style options: 'dark', 'light'
            style = 'dark',

            -- Color overrides (optional)
            color_overrides = {
                vscLineNumber = '#FFFFFF',
            }, 
            -- Group overrides (optional)
            group_overrides = {},
        })
        end
    },

    -- Vscode Modern Dark
    {
        "gmr458/vscode_modern_theme.nvim",
        lazy = true,
        priority = 1002,
        config = function()
            require("vscode_modern").setup({
                cursorline = true,
                transparent_background = false,
                nvim_tree_darker = true,
            })
            vim.cmd.colorscheme("vscode_modern")
        end,
    },

    -- Nightfox Theme
    {
        "EdenEast/nightfox.nvim",
        lazy = true,
        config = function()
        require('nightfox').setup({
            options = {
                -- Optional configurations
                transparent = false,
                terminal_colors = true,
                dim_inactive = false,
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    types = "italic,bold",
                }
            }
        })
    end
    },

    -- Midnight
    { 
        'dasupradyumna/midnight.nvim', 
        lazy = true, 
        priority = 1003,
        config = function()
            require('midnight').setup {
            }
            require('midnight').load()
        end
    },
    
    -- Arctic V2
    {
        "rockyzhang24/arctic.nvim",
        dependencies = { "rktjmp/lush.nvim" }
    }
    
}
