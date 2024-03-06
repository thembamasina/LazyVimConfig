return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				them_conf = { border = true },
				previewer = false,
			},
			vim.keymap.set("n", "<F2>", require("auto-session.session-lens").search_session, {
				noremap = true,
			}),
		})
	end,
}
