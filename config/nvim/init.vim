set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set updatetime=200

source ~/.config/nvim/plug.vim
source ~/.config/nvim/theme.vim
source ~/.config/nvim/mapping.vim

autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
