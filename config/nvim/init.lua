vim.bo.shiftwidth = 4
vim.wo.relativenumber = true
vim.bo.expandtab = 4
vim.api.nvim_set_option("updatetime", 200)

require("plugin")
require("theme")

-- Format
local format_group = vim.api.nvim_create_augroup("FormatAutoGroup", {})

local format_after_save = function()
	vim.api.nvim_command("FormatWrite")
end
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*" },
	callback = format_after_save,
})
