vim.g.mapleader = " "
vim.keymap.set("n", "-", "<CMD>Oil<CR>")
vim.keymap.set("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", "<CMD>ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", "<CMD>ToggleTerm direction=vertical size=40<CR>")
require("toggleterm").setup{}
function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, "i", "<C-w>", [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-w>", [[<C-\><C-n><C-W>k]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

