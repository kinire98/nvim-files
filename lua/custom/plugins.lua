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
  },
  {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    }
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    --dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    ft = { 'markdown', 'quarto' },
    render_modes = { 'n', 'c', 't' },
  },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    'wuelnerdotexe/vim-astro'
  }
}
return plugins
