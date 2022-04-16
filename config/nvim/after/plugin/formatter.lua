local prettier = {
    function()
		return {
			exe = "prettier",
			args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote" },
			stdin = true,
		}
	end,
}

require("formatter").setup({
	filetype = {
		json = prettier,
		javascript = prettier,
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
					args = { vim.fn.expand("%:p") },
					stdin = true,
				}
			end,
		},
	},
})

vim.api.nvim_exec(
	[[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js, *.lua, *.rs, *.json, *.h, *.hpp, *.cpp, *.c FormatWrite
    augroup END
    ]],

    true
)
