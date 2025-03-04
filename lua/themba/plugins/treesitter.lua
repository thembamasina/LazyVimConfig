return { -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "html", "css", "lua", "javascript", "typescript" },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true, use_languagetree = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    require("nvim-ts-autotag").setup({
      opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        -- enable_close_on_slash = false, -- Auto close on trailing </
      },
    })

    -- local npairs = require("nvim-autopairs")
    -- local Rule = require("nvim-autopairs.rule")
    --
    -- npairs.setup({
    --   check_ts = true,
    --   ts_config = {
    --     lua = { "string" }, -- it will not add a pair on that treesitter node
    --     javascript = { "template_string" },
    --     java = false, -- don't check treesitter on java
    --   },
    -- })
    --
    -- local ts_conds = require("nvim-autopairs.ts-conds")
    --
    -- -- press % => %% only while inside a comment or string
    -- npairs.add_rules({
    --   Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
    --   Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
    -- })
  end,
}
