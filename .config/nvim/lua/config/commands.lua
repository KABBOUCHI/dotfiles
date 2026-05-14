vim.api.nvim_create_user_command("TelescopeDotfiles", function()
	require("telescope.builtin").find_files({
		prompt_title = "Dotfiles",
		cwd = vim.fn.expand("~/.config/nvim"),
		hidden = true,
	})
end, {})

vim.api.nvim_create_user_command("TelescopeCodes", function()
	require("telescope.builtin").find_files({
		prompt_title = "Codes",
		cwd = vim.fn.expand("~/codes"),
		hidden = false,
	})
end, {})
