local dap, dapui = require('dap'), require('dapui')

-- packages are installed via mason, so we need to construct the path 
local install_root_dir = vim.fn.stdpath('data') .. '/mason/packages'

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<F5>', '<Cmd>lua require("dap").continue()<CR>', opts)
vim.keymap.set('n', '<S-F5>', '<Cmd>lua require("dap").stop()<CR>', opts)
vim.keymap.set('n', '<F9>', '<Cmd>lua require("dap").toggle_breakpoint()<CR>', opts)
vim.keymap.set('n', '<F10>', '<Cmd>lua require("dap").step_over()<CR>', opts)
vim.keymap.set('n', '<F11>', '<Cmd>lua require("dap").step_into()<CR>', opts)
vim.keymap.set('n', '<S-F11>', '<Cmd>lua require("dap").step_out()<CR>', opts)

dap.adapters.node2 = {
	type = 'executable',
	command = 'node',
	args = { install_root_dir .. '/node-debug2-adapter/out/src/nodeDebug.js' },
}

-- load any launch.json configs from a project .vscode directory
-- require('dap.ext.vscode').load_launchjs(nil, { node = { 'javascript', 'typescript' } })

local node2_configurations = {
	{
		name = 'Launch',
		type = 'node2',
		request = 'launch',
		program = '${file}',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
	},
	{
		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
		name = 'Attach to process',
		type = 'node2',
		request = 'attach',
		processId = require 'dap.utils'.pick_process,
	},
	{
		name = 'BBC-CC: All Jest tests',
		type = 'node2',
		request = 'launch',
		program = '${workspaceFolder}/node_modules/jest/bin/jest.js',
		env = {
			LOG_LEVEL = 'silent'
		},
		args = {
			'-c',
			'${workspaceFolder}/jest.config.js',
			'--verbose',
			'-i',
			'--no-cache'
		},
		console = 'integratedTerminal',
		internalConsoleOptions = 'neverOpen'
	},
	{
		name = 'BBC-CC: Single Jest test',
		type = 'node2',
		request = 'launch',
		program = '${workspaceFolder}/node_modules/jest/bin/jest.js',
		env = {
			LOG_LEVEL = 'silent'
		},
		args = {
			'${file}',
			'-c',
			'${workspaceFolder}/jest.config.js',
			'--verbose',
			'-i',
			'--no-cache'
		},
		console = 'integratedTerminal',
		internalConsoleOptions = 'neverOpen'
	}
}

dap.configurations.javascript = node2_configurations
dap.configurations.typescript = node2_configurations

dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated['dapui_config'] = function()
	dapui.close({})
end
dap.listeners.before.event_exited['dapui_config'] = function()
	dapui.close({})
end
