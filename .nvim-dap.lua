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
			io.popen("cargo build")
			return vim.fn.getcwd() .. "/target/debug/basm"
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		stdio = "${workspaceFolder}/input.txt",
	},
}
