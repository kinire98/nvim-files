local plugins = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "rust-analyzer",
      "astro-language-server",
      "vtsls",
      "lemminx"
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
    "tpope/vim-surround"
  },
  {
    "ray-x/web-tools.nvim"
  },
  {
    "neoclide/coc.nvim",
    branch = "master",
    build = "yarn install --frozen-lockfile"
  },
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require'nvim-web-devicons'.setup {
        override = {
          astro = {
            icon = "", -- Choose an appropriate icon
            color = "#FF7F50", -- Set an appropriate color
            cterm_color = "65",
            name = "Astro"
          },
        },
        default = true
      }
    end
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
  },
  {
    "Maan2003/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
      vim.defer_fn(function()
        vim.diagnostic.config({
          virtual_text = false,
          virtual_lines = true,
        })
      end, 0)
    end,
  },
  {
    "mstuttgart/vscode-odoo-snippets",
    event = "InsertEnter",
  }
}
return plugins
