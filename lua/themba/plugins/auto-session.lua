return {
	"rmagatti/auto-session",
	config = function()
		local options = {
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		}
		require("auto-session").setup(options)
		vim.keymap.set("n", "<F2>", require("auto-session.session-lens").search_session, {
			noremap = true,
		})
	end,
}
