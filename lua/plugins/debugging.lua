return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
            "williamboman/mason.nvim"
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")

            dap.listeners.before.attach.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
              dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
              dapui.close()
            end

            dap.adapters.codelldb = {
              type = 'server',
              port = "${port}",
              executable = {
                command = '/home/deron/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb',
                args = {"--port", "${port}"},
              }
            }

            dap.configurations.cpp = {
              {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
              },
            }

            vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
            vim.keymap.set('n', '<leader>dc', dap.continue, {})
        end
    }
}
