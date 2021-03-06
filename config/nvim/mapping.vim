" Copy past
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
inoremap <c-r> <c-v>

" Float terminal
nnoremap <silent> <F7> :FloatermNew --height=0.9 --width=0.9<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
nnoremap <silent> <F11> <c-\><c-n> :FloatermKill<CR>

tnoremap <silent> <F7> <c-\><c-n> :FloatermNew<CR>
tnoremap <silent> <F8> <c-\><c-n> :FloatermPrev<CR>
tnoremap <silent> <F9> <c-\><c-n> :FloatermNext<CR>
tnoremap <silent> <F12> <c-\><c-n> :FloatermToggle<CR>
tnoremap <silent> <Esc> <c-\><c-n> :FloatermToggle<CR>
tnoremap <silent> <F11> <c-\><c-n> :FloatermKill<CR>

" Telescope
nnoremap <silent> <C-f> :Telescope find_files<CR>
nnoremap <silent> <C-b> :Telescope buffers<CR>
nnoremap <silent> <C-r> :Telescope lsp_references<CR>

" Cmp nvim
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>

" Markdown preview
nnoremap <C-p> :MarkdownPreview<CR>

