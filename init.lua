return {
  options = {
    opt = {
      relativenumber = false,
    },
    g = {
      mapleader = ";",
    },
  },

  mappings = {
    n = {
      ["L"] = {
        function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Next buffer",
      },
      ["H"] = {
        function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Previous buffer",
      },
    },
  },

  colorscheme = "catppuccin",

  plugins = {
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function() require("catppuccin").setup {} end,
    },
  },
}
