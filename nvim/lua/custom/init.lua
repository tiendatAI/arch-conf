-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.g.dap_virtual_text = true

-- require('').setup()
vim.o.scrolloff = 8
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })

-- enable relative number
vim.wo.relativenumber = true

-- leap and sourround nvim plugins keyword
vim.g["surround_no_mappings"] = 1
-- Just the defaults copied here.
vim.keymap.set("n", "ds", "<Plug>Dsurround")
vim.keymap.set("n", "cs", "<Plug>Csurround")
vim.keymap.set("n", "cS", "<Plug>CSurround")
vim.keymap.set("n", "ys", "<Plug>Ysurround")
vim.keymap.set("n", "yS", "<Plug>YSurround")
vim.keymap.set("n", "yss", "<Plug>Yssurround")
vim.keymap.set("n", "ySs", "<Plug>YSsurround")
vim.keymap.set("n", "ySS", "<Plug>YSsurround")

-- The conflicting ones. Note that `<Plug>(leap-cross-window)`
-- _does_ work in Visual mode, if jumping to the same buffer,
-- so in theory, `gs` could be useful for Leap too...
vim.keymap.set("x", "gs", "<Plug>VSurround")
vim.keymap.set("x", "gS", "<Plug>VgSurround")


-- change font
vim.cmd("set guifont=Intel\\ One\\ Mono:h12") -- Set the font size as desired


-- codeium 
vim.keymap.set('i', '<C-;>', function () return vim.fn['codeium#Accept']() end, { expr = true })
