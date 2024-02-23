return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		require("notify").setup({
			background_colour = "#1E222A",
		})
		require("noice").setup({
			mode = "terminal",
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false,
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
