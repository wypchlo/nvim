return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end;
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',
                    'clangd',
                    'cssls',
                    'jdtls',
                    'ts_ls',
                    'emmet_language_server',
                    'csharp_ls'
                }
            })
        end;
    },
    {
        'lewis6991/hover.nvim',
        config = function()
            require("hover").setup {
                init = function()
                    require("hover.providers.lsp")
                end,
                preview_opts = {
                    border = 'rounded'
                },
                preview_window = false,
                title = true,
                mouse_providers = {
                    'LSP'
                },
                mouse_delay = 1000
            }
        end
    },
    {
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
                }
            });
            lspconfig.csharp_ls.setup({
                root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
                capabilities = capabilities
            });

            vim.keymap.set('n', 'K', require('hover').hover, {desc = 'hover.nvim'});
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end;
    }
}
