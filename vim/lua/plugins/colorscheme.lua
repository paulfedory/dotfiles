return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- "folke/tokyonight.nvim",
    "loctvl842/monokai-pro.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require("monokai-pro").setup({
        styles = {
          comment = { italic = false },
          keyword = { italic = false }, -- any other keyword
          type = { italic = false }, -- (preferred) int, long, char, etc
          storageclass = { italic = false }, -- static, register, volatile, etc
          structure = { italic = false }, -- struct, union, enum, etc
          parameter = { italic = false }, -- parameter pass in function
          annotation = { italic = false },
          tag_attribute = { italic = false }, -- attribute of tag in reactjs
        },
      })

      -- setup must be called before loading
      vim.cmd.colorscheme("monokai-pro-default")
    end,
  },
}
