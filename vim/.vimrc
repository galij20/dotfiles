call plug#begin()
" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-dispatch'
call plug#end()

" Only set this AFTER Plug loads (important!)
augroup ultisnips_config
    autocmd!
    autocmd User UltiSnipsEnterFirstSnippet let g:UltiSnipsExpandTrigger = '<Tab>'
    autocmd User UltiSnipsEnterFirstSnippet let g:UltiSnipsJumpForwardTrigger = '<Tab>'
    autocmd User UltiSnipsEnterFirstSnippet let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
augroup END

" Set directories properly (as a list)
let g:UltiSnipsSnippetDirectories = [
    \ 'UltiSnips',
    \ '~/.vim/UltiSnips',
    \ '~/.config/nvim/UltiSnips'
\ ]
