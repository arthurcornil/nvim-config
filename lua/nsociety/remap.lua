vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_var('g:user_emmet_leader_key', ',');
vim.api.nvim_set_keymap('n', '<C-a>', '"+y', { noremap = true, silent = true })
