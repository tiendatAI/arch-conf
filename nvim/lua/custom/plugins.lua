local overrides = require("custom.configs.overrides")
local overrides_py = require("custom.configs.overrides-python")
local overrides_rs = require("custom.configs.overrides-rust")

local plugins = {
  -- debug adapter
  {
    "rcarriga/nvim-dap-ui",
    event = overrides.nvim_dap_ui.event,
    dependencies = "mfussenegger/nvim-dap",
    config = overrides.nvim_dap_ui.config,
  },
  {
    "mfussenegger/nvim-dap",
    init = overrides.nvim_dap.init,
    config = overrides.nvim_dap.config,
  },

  -- dont make mistake
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = overrides.nvim_dap_virtual_text.lazy,
    config = overrides.nvim_dap_virtual_text.config
  },

  -- AI suggest 
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },

  -- python
  {
    "mfussenegger/nvim-dap-python",
    ft = overrides_py.nvim_dap_python.ft,
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = overrides_py.nvim_dap_python.config,
  },

  -- rust
  {
    "simrat39/rust-tools.nvim",
    ft = overrides_rs.rust_tools.ft,
    dependencies = "neovim/nvim-lspconfig",
    opts = overrides_rs.rust_tools.opts,
    config = overrides_rs.rust_tools.config,  
  },
  {
    'saecki/crates.nvim',
    ft = overrides_rs.crates.ft,
    config = overrides_rs.crates.config,  
  },
  {
    "rust-lang/rust.vim",
    ft = overrides_rs.rust_lang.ft,
    init = overrides_rs.rust_lang.init,   
  },

  --atuo complete
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.nvim_cmp.opts,
  },

  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    init = overrides.neoscroll.init,
  },

  -- surround 
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  -- leap
  {
    "ggandor/leap.nvim", -- https://github.com/gggandor
    init = overrides.leap.init,
  },

  -- default in nvchad 
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
