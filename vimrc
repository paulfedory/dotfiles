call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nixprime/cpsm'
Plug 'elixir-lang/vim-elixir'
Plug 'hail2u/vim-css3-syntax'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
call plug#end()

" Make CtrlP use ag for listing the files. Way faster and no useless files.
set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_args='-c .ruby-style.yml'

set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set clipboard=unnamed

set relativenumber
set number
set numberwidth=5

set splitbelow
set splitright

set noswapfile

set list listchars=tab:»·,trail:·,nbsp:·

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
nnoremap <tab> %
vnoremap <tab> %
