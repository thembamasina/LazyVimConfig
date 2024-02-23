return {
  -- { "microsoft/vscode-js-debug" },
  {
    "mxsdev/nvim-dap-vscode-js",
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    config = function()
      require("dap-vscode-js").setup({
        -- debugger_path = "C:/source/vscode-js-debug/",
        debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
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
            type = "pwa-msedge",
            request = "launch",
            name = 'Start edge with "localhost"',
            url = "http://localhost:4200",
            address = "http://localhost:4200",
            cmd = vim.fn.getcwd(),
            webRoot = "${workspaceFolder}",
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
        }
      end
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
      local dap, dapui = require("dap"), require("dapui")

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
      end
    end,
  },
}
