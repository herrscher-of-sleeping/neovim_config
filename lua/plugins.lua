return {
  { "nvim-lua/plenary.nvim" }, -- Dependency of many plugins
  { "folke/todo-comments.nvim", opts = {} },
  { "neovim/nvim-lspconfig" },
  { -- Installs LSP servers
    "williamboman/mason.nvim", opts = {}
  },
  { "williamboman/mason-lspconfig.nvim", opts = {} },
  { "tomasky/bookmarks.nvim", opts = {} },
  { -- Configures LSP for Vim config and plugins
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        "~/.config/nvim"
      },
      enabled = function(root_dir)
        return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
      end,
    },
  },
  { "hrsh7th/nvim-cmp", opts = {} },
  { "hrsh7th/cmp-nvim-lsp", opts = {} },
  { -- filter lists, do seach, find files, etc
    "nvim-telescope/telescope.nvim", opts = {}
  },
  { "rafi/awesome-vim-colorschemes" },
  { -- :NoNeckPain for no neck pain
    "shortcuts/no-neck-pain.nvim"
  },
  { -- Magit, but in Neovim
    "NeogitOrg/neogit", opts = {}
  },
  { -- Git gutter
    "lewis6991/gitsigns.nvim", opts = {}
  },
  -- { "folke/trouble.nvim", opts = {} },
  { -- File tree sidebar thing
    "nvim-tree/nvim-tree.lua", opts = {}
  },
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  { -- Git blame for the entire file
    "FabijanZulj/blame.nvim", opts = {}
  },
  { -- Inline git blame, shows in the current line
    "f-person/git-blame.nvim", opts = {}
  },
  { -- Symbol tree, provided by LSP's
    "hedyhli/outline.nvim", opts = {}
  },
  { -- Not what I thought it to be, but I like it
    -- Lets you find and insert stuff like kaomoji
    "nvim-telescope/telescope-symbols.nvim"
  },
}
