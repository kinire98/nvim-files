local plugins = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "rust-analyzer",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "neoclide/coc.nvim",
    branch="master",
    build="yarn install --frozen-lockfile",
  },
  {
    "tpope/vim-surround"
  },
  {
    "ray-x/web-tools.nvim"
  }
}
return plugins
