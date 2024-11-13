require("config.lazy");

vim.cmd("colorscheme kanagawa-dragon");
vim.cmd("set expandtab");
vim.cmd("set tabstop=2");
vim.cmd("set softtabstop=2");
vim.cmd("set shiftwidth=4");
vim.cmd('set number');
vim.cmd('set nowrap');
vim.cmd('set cursorline');

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282727" })

local fixBufferLineSeparator = function()
  vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", vim.api.nvim_get_hl_by_name('NvimTreeWinSeparator', true))   
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = fixBufferLineSeparator,
})

fixBufferLineSeparator()

vim.g.mapleader = ' ';
