return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        opts = {
            highlight = { enable = true },
            indent = { enable = false },
            ensure_installed = {
                'lua', 'vim', 'html', 'c', 'css', 'rust', 'javascript', 'c_sharp', 'cpp'
            }
	      },
	      config = function(_, opts)
		        require("nvim-treesitter.configs").setup(opts)
	      end,
    },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false
                },
                per_filetype = {
                    ["html"] = {
                        enable_close = true
                    }
                }
            })
        end
    },
    {
        'm4xshen/autoclose.nvim',
        opts = {}
    }
}
