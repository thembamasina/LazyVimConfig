return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        cond = vim.fn.executable("cmake") == 1,
      },
    },
    config = function()
      local actions = require("telescope.actions")
      local telescope = require("telescope")
      telescope.setup({
        -- extensions = {
        --   ["ui-select"] = {
        --     require("telescope.themes").get_dropdown({}),
        --   },
        -- },
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              ["<C-x>"] = actions.delete_buffer,
            },
          },
          file_ignore_patterns = {
            "node_modules",
            "yarn.lock",
            ".git",
            ".sl",
            "_build",
            ".next",
          },
          hidden = true,
        },
      })

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Seach Disgnostics" })
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader><leader>", builtin.git_files, { desc = "Find git files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep in files" })
      vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "String grep int files" })
      vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "Document Symbols" })
      vim.keymap.set("n", "<leader>,", builtin.buffers, { desc = "Show buffers" })

      -- Enable telescope fzf native, if installed
      pcall(require("telescope").load_extension, "fzf")
    end,
  },
}
