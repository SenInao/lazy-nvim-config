return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  priority = 900,

  dependencies = {
    "windwp/nvim-ts-autotag",
    "HiPhish/nvim-ts-rainbow2"
  },

  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting

      sync_install = false,

      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "prisma",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "c",
		    "python",
      },

      highlight = {
        enable = true,
      },

      rainbow = {
        --enable = true,
        disable = {"jsx", "tsx"}
      },

      indent = {
        enable = true,
        disable = {"python"}
      }
    })
  end,
}
