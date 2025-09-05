if vim.g.vscode then
  return {}
end
return {
  -- "zbirenbaum/copilot.lua",
  -- enabled = false,
  -- event = "InsertEnter",
  -- config = function()
  --   require("copilot").setup({
  --     suggestion = {
  --       enabled = false,
  --     },
  --     panel = { enabled = false },
  --   })
  -- end,
  {
    "github/copilot.vim",
    config = function() 
    end,
  },
}
