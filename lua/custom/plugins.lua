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
    'justinmk/vim-sneak',
    lazy = false,
    config = function ()
      vim.g['sneak#s_next'] = 0

      -- Set custom mappings
      vim.api.nvim_set_keymap('n', '<leader>z', '<Plug>Sneak_s', {})
      vim.api.nvim_set_keymap('n', '<leader>Z', '<Plug>Sneak_S', {})
      vim.api.nvim_set_keymap('x', '<leader>z', '<Plug>Sneak_s', {})
      vim.api.nvim_set_keymap('x', '<leader>Z', '<Plug>Sneak_S', {})
      vim.api.nvim_set_keymap('o', '<leader>z', '<Plug>Sneak_s', {})
      vim.api.nvim_set_keymap('o', '<leader>Z', '<Plug>Sneak_S', {})
    end,
  }
}
return plugins
