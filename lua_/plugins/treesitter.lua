return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	event = { "BufEnter" },
	dependencies = {
		-- Additional text objects for treesitter
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"css",
				"graphql",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"tsx",
				"typescript",
				"vim",
			},
			sync_install = false,
			-- ensure_installed = { "lua", "vim", "javascript", "typescript" },
			highlight = { enable = true },
			indent = { enable = true },
			autopairs = { enable = true },
			autotags = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = "<c-s>",
					node_decremental = "<c-backspace>",
				},
			},
		})
	end,
}
