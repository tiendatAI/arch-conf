local cmp = require "cmp"
local M = {}

M.nvim_dap_ui = {
  event = "VeryLazy",
  config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
}

M.nvim_dap = {
  init = function()
      require("core.utils").load_mappings("dap")
  end,
  config = function(_, _)
      require("core.utils").load_mappings("dap")
  end,
}

M.nvim_dap_virtual_text = {
  lazy = false,
  config = function(_, _)
    require("nvim-dap-virtual-text").setup()
  end
}

M.nvim_cmp = {
  opts = function()
    local local_var = require "plugins.configs.cmp"
    local_var.completion.completeopt = "menu,menuone,noselect"
    local_var.mapping["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    }
    table.insert(local_var.sources, {name = "crates"})
    return local_var
  end,
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "codelldb",

    -- python
    "black",
    "debugpy",
    "mypy",
    "ruff",
    "pyright",

    -- rust
     "rust-analyzer",
  },
}

M.neoscroll = {
  init = function(_)
    require("neoscroll").setup()
  end,
}

M.leap = {
  init = function (_)
    require('leap').add_default_mappings()
  end,
}


-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}



return M
