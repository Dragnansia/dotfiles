local n = "n"

-- Copy and past
vim.keymap.set("n", "<c-c>", '"+y')
vim.keymap.set("v", "<c-c>", '"+y')
vim.keymap.set("n", "<c-v>", '"+p')
vim.keymap.set("i", "<c-v> <c-r>", "+")
vim.keymap.set("c", "<c-v> <c-r>", "+")
vim.keymap.set("i", "<c-r> <c-v>", "")

-- Terminal
--vim.keymap.set("n", "<F7>", ":FloatermNew --height=0.9 --width=0.9<CR>")
--vim.keymap.set("n", "<F8>", ":FloatermPrev<CR>")
--vim.keymap.set("n", "<F9>", ":FloatermNext<CR>")
--vim.keymap.set("n", "<F12>", ":FloatermToggle<CR>")
--vim.keymap.set("n", "<F11> <c-\\><c-n>", ":FloatermKill<CR>")
--vim.keymap.set("n", "<F7> <c-\\><c-n>", ":FloatermNew<CR>")
--vim.keymap.set("n", "<F8> <c-\\><c-n>", ":FloatermPrev<CR>")
--vim.keymap.set("n", "<F9> <c-\\><c-n>", ":FloatermNext<CR>")
--vim.keymap.set("n", "<F12> <c-\\><c-n>", ":FloatermToggle<CR>")
--vim.keymap.set("n", "<Esc> <c-\\><c-n>", ":FloatermToggle<CR>")
--vim.keymap.set("n", "<F11> <c-\\><c-n>", ":FloatermKill<CR>")

-- Telescope
vim.keymap.set("n", "<C-t>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-t>b", ":Telescope buffers<CR>")
vim.keymap.set("n", "<C-t>r", ":Telescope lsp_references<CR>")

-- Cmp nvim
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

-- Debugging
vim.keymap.set(n, "<leader>b", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set(n, "<leader>B", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
vim.keymap.set(n, "<F5>", function()
	require("dap").continue()
end)
vim.keymap.set(n, "<F10>", function()
	require("dap").step_over()
end)
vim.keymap.set(n, "<F11>", function()
	require("dap").step_out()
end)
vim.keymap.set(n, "<F12>", function()
	require("dap").step_into()
end)
vim.keymap.set(n, "<F1>", function()
	require("dapui").toggle()
end)
