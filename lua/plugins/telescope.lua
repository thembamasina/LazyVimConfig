return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find files" })
      vim.keymap.set('n', '<leader><leader>', builtin.git_files, {desc = "Find git files" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live grep in files" })
      vim.keymap.set('n', '<leader>fs', builtin.grep_string, {desc = "String grep int files" })
      vim.keymap.set('n', '<leader>,', builtin.buffers, {desc = "Show buffers" })

      require("telescope").load_extension("ui-select")
    end,
  }}
