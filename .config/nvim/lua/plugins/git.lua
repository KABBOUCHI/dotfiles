return {
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G" },
	},
	{
		"lewis6991/gitsigns.nvim",
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
}
