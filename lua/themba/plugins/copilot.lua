return {
	-- {
	-- 	"zbirenbaum/copilot.lua",
	-- 	enabled = false,
	-- 	event = { "BufEnter" },
	-- 	config = function()
	-- 		require("copilot").setup({
	-- 			suggestion = {
	-- 				enabled = false,
	-- 			},
	-- 			panel = { enabled = false },
	-- 		})
	-- 	end,
	-- },
	{
		"github/copilot.vim",
	},
	{
		"zbirenbaum/copilot-cmp",
		enabled = false,
		event = { "BufEnter" },
		dependencies = { "zbirenbaum/copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}