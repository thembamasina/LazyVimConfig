return {
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "microsoft/vscode-js-debug" },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    config = function()
      require("dap-vscode-js").setup({
        -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
        debugger_path = "C:/source/vscode-js-debug/",
        -- debugger_cmd = { "js-debug-adapter" },
        -- debugger_cmd = { "extension" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
        adapters = {
          "chrome",
          "pwa-node",
          "pwa-chrome",
          "pwa-msedge",
          "msedge",
          "node-terminal",
          "pwa-extensionHost",
          "node",
        }, -- which adapters to register in nvim-dap
      })
      local js_based_languages = { "typescript", "javascript", "typescriptreact" }

      for _, language in ipairs(js_based_languages) do
        require("dap").configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-chrome",
            request = "launch",
            name = 'Start chrome with "localhost"',
            url = "http://localhost:4200",
            cmd = vim.fn.getcwd(),
            webRoot = "${workspaceFolder}",
          },
          {
            type = "pwa-msedge",
            request = "launch",
            name = 'Start edge with "localhost"',
            url = "http://localhost:4200",
            address = "http://localhost:4200",
            cmd = vim.fn.getcwd(),
            webRoot = "${workspaceFolder}",
          },
        }
      end
    end,
  },
}
