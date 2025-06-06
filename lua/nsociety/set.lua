vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
--vim.opt.colorcolumn = "80"
vim.opt.autoindent = true
vim.opt.clipboard = "unnamed"
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
vim.cmd[[colorscheme tokyonight]]
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#9b9b9b', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#d6d6d6', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#9b9b9b', bold=true })
end
LineNumberColors()
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
