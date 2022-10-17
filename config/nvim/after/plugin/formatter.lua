local prettier = {
	function()
		return {
			exe = "npx",
			args = {
				"prettier",
				"--stdin-filepath",
				vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
				"--double-quote",
			},
			stdin = true,
		}
	end,
}

local defaults, util = require("formatter.defaults"), require("formatter.util")

require("formatter").setup({
	filetype = {
		json = prettier,
		javascript = prettier,
		html = prettier,
		rust = {
			function()
				return {
					exe = "rustfmt",
					args = { "--emit=stdout", "--edition=2021" },
					stdin = true,
				}
			end,
		},
		cpp = {
			function()
				return {
					exe = "clang-format",
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					cwd = vim.fn.expand("%:p:h"),
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
})
