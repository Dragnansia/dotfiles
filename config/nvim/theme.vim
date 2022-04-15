set background=dark

let g:gruvbox_baby_background_color = "hard"
" let g:gruvbox_baby_transparent_mode = 1

if (empty($TMUX) && has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

colorscheme gruvbox-baby
