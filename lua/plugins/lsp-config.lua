return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
      vim.keymap.set("n", "<leader>m", ":Mason<CR>", {desc = "Show Mason"});
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.angularls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "Show info" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "Go to definition"})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {desc = "Show references"})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "Code action"})
      vim.keymap.set("n", "<leader>l", ":LspInfo<CR>", {desc = "Show Lsp Info"});
    end,
  },
}
