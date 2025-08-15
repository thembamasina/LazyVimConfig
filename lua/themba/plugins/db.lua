return {
  -- "tpope/vim-dadbod",
  -- "kristijanhusak/vim-dadbod-completion",
  -- {
  --   "kristijanhusak/vim-dadbod-ui",
  --   init = function()
  --     vim.g.db_ui_use_nerd_fonts = 1
  --     vim.g.db_ui_save_location = "e:/scripts/dbui/"
  --   end,
  --{
  "kndndrj/nvim-dbee",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  build = function()
    require("dbee").install()
  end,
  config = function()
    require("dbee").setup()
  end,
}
