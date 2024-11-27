local center = {
    {
        desc = "Find File                     ",
        keymap = "",
        key = "f",
        icon = "  ",
        action = "Telescope find_files",
    },
    {
        desc = "Recents",
        keymap = "",
        key = "r",
        icon = "  ",
        action = "Telescope oldfiles",
    },

    {
        desc = "Browse Files",
        keymap = "",
        key = "b",
        icon = "  ",
        action = "Neotree float",
    },

    {
        desc = "New File",
        keymap = "",
        key = "n",
        icon = "  ",
        action = "enew",
    },

    {
        desc = "Load Last Session",
        keymap = "",
        key = "L",
        icon = "  ",
        action = "SessionLoad",
    },

    {
        desc = "Update Plugins",
        keymap = "",
        key = "u",
        icon = "  ",
        action = "Lazy update",
    },

    {
        desc = "Manage Extensions",
        keymap = "",
        key = "e",
        icon = "  ",
        action = "Mason",
    },

    {
        desc = "Config",
        keymap = "",
        key = "c",
        icon = "  ",
        action = "Telescope find_files cwd=~/.config/nvim",
    },
    {
        desc = "Exit",
        keymap = "",
        key = "q",
        icon = "  ",
        action = "exit",
    },
}
--[[
    ⠀⠀⠀⣠⣤⣤⣤⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⣾⡋⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⠷⠧⠄⠱⠀⠀⢤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠸⡎⡟⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⠓⠒⠂⠁⢠⡄⠉⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⣤⠀⢰⠂⠘⠋⠀⠀⢰⣶⡆⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠈⠳⣮⣩⣿⢛⣻⣻⣻⢿⡿⠳⠥⠄⠂⠐⡠⠀⡀⠄⠈⡁⠘⠀⠆⠀⡀⢀⡀⢀⡀⣀⢀⡀⢠⣄⠤⠐⠶⠀⠓⠈⢃⢙⠀⠄⠀⠤⠀⠨⠔⠀⢀⡦⠄⠀⠀⡸⠛⠁⠀⠀⣤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣷⣧⠍⠁⠀⠀⠀⠀⠐⠂⠁⡄⠀⠌⠀⠂⠠⠀⡌⠀⠈⠀⠈⠁⠀⠀⠀⠀⣀⠠⠄⠘⢀⡈⠆⠐⠐⠂⠆⢀⢠⡀⠀⠄⡀⠀⠀⠐⠛⠁⠀⠀⣄⡄⠀⠀⠀⢠⢶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠋⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠀⠆⢈⡀⠀⠅⠌⠀⠃⠈⠡⠈⠁⢀⠀⢤⠘⠀⠀⠀⠀⠀⠀⠀⠰⢄⣀⠀⠁⣀⠀⢤⠀⠂⠄⠀⠀⠉⠀⠀⢀⣤⠀⠀⠀⠀⣴⡦⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠒⠀⠂⠘⠃⠈⠃⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡵⣏⣻⣿⣿⣿⣷⣄⠀⠘⠁⠈⠈⣄⠄⠤⢀⠀⠀⢀⣤⡀⠁⠀⠀⢶⡶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣄⡀⠚⠁⠪⢿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠒⠀⠀⢢⡀⠀⡀⠀⣦⡆⠀⡀⠄⠰⡿⠃⠀⠀⣠⡤⠀⠀⢠⠔⠀⢀⣴⠂⢀⡆⠀⡼⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣼⣿⡿⠛⠀⠀⢠⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⠟⠿⣿⣿⣿⡄⠘⠀⠄⣀⠀⠀⠀⠘⠀⠀⠀⠀⣀⢀⠀⠀⠀⣣⡄⢀⠀⢀⠃⠀⠀⠀⡛⠀⠀⢘⠃⠀⠘⠀⠀⠀⠘
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⠿⠟⠋⠀⠀⠀⣠⣾⣿⠏⠂⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠴⢶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡿⣿⡏⣀⠀⠀⠀⠈⠀⠒⠀⠠⠀⠀⡀⠁⠀⠀⠀⠰⠄⠄⠀⡀⠐⢛⡀⠀⡀⠞⢂⠀⠐⢁⠂⠀⠁⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠐⠓⠣⠔⠞⠛⠏⠀⠁⠀⠀⠆⠐⠮⠔⠞⠃⠀⠀⠀⠀⠀⠁⠀⠀⠒⠒⠂⠂⠤⠚⠛⠁⠖⠋⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠛⠏⠔⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠐⠒⠀⠀⠀⠐⠈ ⠂⠂⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

local version = vim.version()
local header = {
    "",
    "",
    "",
    "",
    ":::.    :::..,::::::     ...    :::      .::.:::.        :   ",
    "`;;;;,  `;;;;;;;''''  .;;;;;;;. ';;,   ,;;;' ;;;;;,.    ;;;  ",
    "  [[[[[. '[[ [[cccc  ,[[     \\[[,\\[[  .[[/   [[[[[[[, ,[[[[, ",
    "  $$$ \"Y$c$$ $$\"\"\"\"  $$$,     $$$ Y$c.$$\"    $$$$$$$$$$$\"$$$ ",
    "  888    Y88 888oo,__\"888,_ _,88P  Y88P      888888 Y88\" 888o",
    "  MMM     YM \"\"\"\"YUMMM \"YMMMMMP\"    MP       MMMMMM  M'  \"MMM",
    "                                                             ",
    "v " .. version.major .. "." .. version.minor,
    "",
}

vim.api.nvim_create_autocmd("Filetype", {
    pattern = "dashboard",
    group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true }),
    callback = function()
        vim.cmd([[
            setlocal buftype=nofile
            setlocal nonumber norelativenumber nocursorline noruler fillchars=eob:\ 
            nnoremap <buffer> <F2> :h news.txt<CR>
            highlight DashboardHeader guifg=#949fb5
        ]])
    end,
})

return {
    {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
            theme = "doom",
            config = {
                header = header,
                center = center,
                footer = function()
                    return {
                        "",
                        "",
                        "type  :help<Enter>  or  <F1>  for on-line help,  <F2>  news changelog",
                        "Startup time: " .. require"lazy".stats().startuptime .. " ms"
                    }
                end,
            },
        }
      end,
      dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }
}