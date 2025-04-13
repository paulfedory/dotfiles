return {
  { -- Add cool tabs for the buffers
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "tabs",
        },
      })
    end,
  },
}
