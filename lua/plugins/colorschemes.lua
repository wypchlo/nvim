return {
    {
        'xiyaowong/transparent.nvim',
        config = function ()
            require("transparent").setup({
              groups = {
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                'EndOfBuffer',
              },
              extra_groups = {},
              exclude_groups = {},
              on_clear = function() end,
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "*",
                callback = function()
                    --vim.cmd("TransparentEnable")
                    vim.cmd("colorscheme kanagawa-dragon")

                    --floating windows fix
                    vim.cmd('hi! NormalFloat guibg=none')
                    vim.cmd('hi! FloatBorder guibg=none')

                    --line numbers fix
                    vim.cmd('hi! LineNr guibg=none ctermbg=none');

                    --lsp error column fix
                    vim.cmd('hi! SignColumn guibg=none');
                    vim.cmd('hi! DiagnosticSignError guibg=none');
                    vim.cmd('hi! DiagnosticSignHint guibg=none');
                    vim.cmd('hi! DiagnosticSignInfo guibg=none');
                    vim.cmd('hi! DiagnosticSignWarn guibg=none');
                end,
            })
        end
    }
}
