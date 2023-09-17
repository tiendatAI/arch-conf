local M = {}

M.rust_tools = {
  ft = "rust",
  opts = function ()
      return require "custom.configs.rust-tools"
  end,
  config = function(_, opts)
      require('rust-tools').setup(opts)
  end,
}

M.crates = {
  ft = {"toml"},
  config = function(_, opts)
    local crates  = require('crates')
    crates.setup(opts)
    require('cmp').setup.buffer({
      sources = { { name = "crates" }}
    })
    crates.show()
    require("core.utils").load_mappings("crates")
  end,
}

M.rust_lang = {
  ft = "rust",
  init = function ()
    vim.g.rustfmt_autosave = 1
  end
}

return M
