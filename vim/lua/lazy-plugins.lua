-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  -- "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  -- Use `opts = {}` to force a plugin to be loaded.

  require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
  require 'plugins.which-key', -- pending keybinds
  require 'plugins.telescope', -- fuzzy finder (files, lsp)
  require 'plugins.lsp', -- Language Server
  require 'plugins.ai', -- AI
  require 'plugins.autoformat', -- Autoformat, linting
  require 'plugins.autocompletion', -- Autocompletion
  require 'plugins.colorscheme', -- Color scheme
  require 'plugins.todo-comments', -- Highlight TODOs
  require 'plugins.bufferline', -- Cool tabs for buffers
  require 'plugins.mini', -- various small quality of life plugins
  require 'plugins.treesitter', -- highlight, edit, navigate code
  require 'plugins.neo-tree', -- tree file explorer
  require 'plugins.copilot-chat', -- tree file explorer

  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  --    in the custom/plugins folder:
  -- { import = "custom.plugins" },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})
