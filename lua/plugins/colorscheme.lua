return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    lazy = false,
    opts = { style = "night" },
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
}
