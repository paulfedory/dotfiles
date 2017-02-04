set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2

set number

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'elixir-lang/vim-elixir'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

