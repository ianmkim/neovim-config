--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: plugins/colorscheme.lua
-- Description: Colorscheme config
-- Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>
return { -- Rose-pine - Soho vibes for Neovim
{
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
        dark_variant = "main"
    }
}, -- Github - Github"s Neovim themes
{
    "projekt0n/github-nvim-theme",
    lazy = true,
    opts = {
        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        specs = {
            hint = "orange",
            error = "#ff0000"
        },
    },
    config = function(_, opts)
        require("github-theme").setup(opts)
    end
}, -- Tokyonight- A clean, dark Neovim theme written in Lua, with support for lsp,
-- treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish.
{
    "folke/tokyonight.nvim",
    lazy = true
}}
