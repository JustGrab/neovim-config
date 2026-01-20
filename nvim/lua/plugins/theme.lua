return {
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
        require("themery").setup({
            themes = {{
                name = "VS Code",
                colorscheme = "vscode",
              },
              {
                name = "Carbon Fox",
                colorscheme = "carbonfox",
              },
              {
                name = "Warmer",
                colorscheme = "onedark",
              }
          },
        })
        end
    },
     -- One dark Theme
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
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
            color_overrides = {},
      
            -- Group overrides (optional)
            group_overrides = {},
        })
        end
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

    -- Onedark Theme
    {
      "navarasu/onedark.nvim",
      lazy = true,
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        require('onedark').setup {
          style = 'warmer'
        }
        require('onedark').load()
      end
    }
}
