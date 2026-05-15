return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- Vue, JavaScript, TypeScript
		local vue_language_server_path = vim.fn.expand("$MASON/packages")
			.. "/vue-language-server"
			.. "/node_modules/@vue/language-server"
		local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
		local vue_plugin = {
			name = "@vue/typescript-plugin",
			location = vue_language_server_path,
			languages = { "vue" },
			configNamespace = "typescript",
		}
		local vtsls_config = {
			-- capabilities = capabilities,
			settings = {
				vtsls = {
					tsserver = {
						globalPlugins = {
							vue_plugin,
						},
					},
				},
			},
			filetypes = tsserver_filetypes,
		}

		vim.lsp.config("vtsls", vtsls_config)
		vim.lsp.enable("vtsls")

		-- Tailwind CSS

		vim.lsp.enable("tailwindcss")
		vim.lsp.config("tailwindcss", {
			-- capabilities = capabilities,
		})
	end,
}
