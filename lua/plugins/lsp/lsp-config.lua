return {
    'neovim/nvim-lspconfig',
    config = function()
        local config = require('cmp_nvim_lsp');
        local capabilities = config.default_capabilities();

        local lspconfig = require('lspconfig');

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                runtime = {
                  version = "LuaJIT",
                  path = vim.split(package.path, ";"),
                },
                diagnostics = {
                  globals = { "vim" },
                },
                workspace = {
                  library = { vim.env.VIMRUNTIME },
                  checkThirdParty = false,
                },
                telemetry = {
                  enable = false,
                },
              },
            },
        });
        lspconfig.clangd.setup({capabilities = capabilities});
        lspconfig.cssls.setup({capabilities = capabilities});
        lspconfig.jdtls.setup({capabilities = capabilities});
        lspconfig.ts_ls.setup({
            capabilities = capabilities,
            settings = {
                javascript = {
                    implicitProjectConfig = {
                        checkJs = true
                    }
                }
            },
        });
        lspconfig.csharp_ls.setup({
            root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
            capabilities = capabilities
        });
        lspconfig.rust_analyzer.setup({capabilities = capabilities});
        lspconfig.prismals.setup({capabilities = capabilities});



        vim.keymap.set('n', 'K', require('hover').hover, {desc = 'hover.nvim'});
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end;
}
