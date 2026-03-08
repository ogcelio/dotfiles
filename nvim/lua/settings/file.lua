vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- https://neovim.io/doc/user/lua.html#vim.filetype.add()
vim.filetype.add({
  pattern = {
    ["/Users/luizotavio/dotfiles/zsh/config/*"] = "sh",
    ["/Users/luizotavio/dotfiles/ghostty/config"] = "sh",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})
