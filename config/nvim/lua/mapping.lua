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
vim.keymap.set("n", "<C-f>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-b>", ":Telescope buffers<CR>")
vim.keymap.set("n", "<C-^>", ":Telescope lsp_references<CR>")

-- Cmp nvim
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>")

-- Debugging
vim.keymap.set("n", "<S-b>", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<F12>", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F1>", ":lua require('dapui').toggle()<CR>")
