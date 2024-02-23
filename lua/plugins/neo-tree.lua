return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set(
      "n",
      "<leader>e",
      ":Neotree toggle=true filesystem reveal left<CR>",
      { desc = "Show File Explorer" }
    )
    vim.keymap.set(
      "n",
      "<leader>fm",
      ":Neotree filesystem reveal float<CR>",
      { desc = "Show File Explorer" }
    )
    vim.keymap.set("n", "<leader>bs", ":Neotree buffers reveal float<CR>", { desc = "Show Floating File Explorer" })
  end,
}
