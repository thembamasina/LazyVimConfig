return {
	"xiyaowong/transparent.nvim",
	event = "BufWinEnter",
	config = function()
		require("transparent").setup({
			extra_groups = { -- table/string: additional groups that should be clear
				"GitSignsAdd",
				"GitSignsChange",
				"GitSignsDelete",
				"GitSignsChangeDelete",
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal", -- NvimTree
			},
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
		})
	end,
}
