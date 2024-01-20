local dap = require("dap")

dap.adapters.codelldb = {
	type = 'server',
	port = "${port}",
	executable = {
		command = '/home/bamgoesn/.local/share/nvim/mason/bin/codelldb',
		args = { "--port", "${port}" },
	}
}

dap.configurations.rust = {
	{
		name = "Debug solution",
		type = "codelldb",
		request = "launch",
		program = function()
			local job = require("plenary.job")
			job:new({
				command = 'cargo',
				args = {'build'},
				cwd = vim.fn.getcwd(),
			}):sync()
			return vim.fn.getcwd() .. "/target/debug/basm"
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		stdio = "${workspaceFolder}/input.txt",
	},
}
