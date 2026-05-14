return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",

  opts = {
    options = {
      mode = "buffers",
      diagnostics = "nvim_lsp",
      separator_style = "slant",
    },
  },

  -- keys = { { "<leader>bp", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },},
}

