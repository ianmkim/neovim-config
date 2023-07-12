--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: plugins/custom/init.lua
-- Description: Place your customization plugins here
-- Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>
return {
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    config = true,
    -- stylua: ignore
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next ToDo" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous ToDo" },
      { "<leader>ct", "<cmd>TodoTrouble<cr>", desc = "ToDo (Trouble)" },
      { "<leader>cT", "<cmd>TodoTelescope<cr>", desc = "ToDo" },
    },
  },
  {
    "danymat/neogen",
    opts = {
      snippet_engine = "luasnip",
      enabled = true,
      languages = {
        lua = {
          template = {
            annotation_convention = "ldoc",
          },
        },
        python = {
          template = {
            annotation_convention = "google_docstrings",
          },
        },
        rust = {
          template = {
            annotation_convention = "rustdoc",
          },
        },
        javascript = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
        typescript = {
          template = {
            annotation_convention = "tsdoc",
          },
        },
        typescriptreact = {
          template = {
            annotation_convention = "tsdoc",
          },
        },
      },
    },
    --stylua: ignore
    keys = {
      { "<leader>cgd", function() require("neogen").generate() end, desc = "Annotation", },
      { "<leader>cgc", function() require("neogen").generate { type = "class" } end, desc = "Class", },
      { "<leader>cgf", function() require("neogen").generate { type = "func" } end, desc = "Function", },
      { "<leader>cgt", function() require("neogen").generate { type = "type" } end, desc = "Type", },
    },
  }
}
