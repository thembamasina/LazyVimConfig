vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "Highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

vim.api.nvim_create_user_command("ToggleDiagnostics", function()
	if vim.g.diagnostics_enabled == nil then
		vim.g.diagnostics_enabled = false
		vim.diagnostic.disable()
	elseif vim.g.diagnostics_enabled then
		vim.g.diagnostics_enabled = false
		vim.diagnostic.disable()
	else
		vim.g.diagnostics_enabled = true
		vim.diagnostic.enable()
	end
end, {})

vim.api.nvim_create_user_command("ToggleESLint", function()
	require("null-ls").toggle("eslint")
end, {})
