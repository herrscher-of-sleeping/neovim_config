return {
  { "folke/todo-comments.nvim", opts = {} },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", opts = {} },
  { "williamboman/mason-lspconfig.nvim", opts = {} },
  { "tomasky/bookmarks.nvim", opts = {} },
  {
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
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim", opts = {} },
  { "rafi/awesome-vim-colorschemes" },
}
