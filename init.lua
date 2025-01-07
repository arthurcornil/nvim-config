require("nsociety");
vim.api.nvim_set_var('neoformat_try_node_exe', 1);
vim.api.nvim_set_var('g:ale_linters_explicit', 1);
vim.api.nvim_set_var('g:ale_fix_on_save', 1);
vim.g.ale_fixers = {
    javascript = {'prettier'},
    css = {'prettier'}
}

