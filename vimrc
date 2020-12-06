call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'hail2u/vim-css3-syntax'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'elmcast/elm-vim'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
call plug#end()

" set grepprg=ag\ --nogroup\ --nocolor
set grepprg=rg\ --color=never

let g:ale_linters = {'javascript': ['eslint'], 'ruby': ['rubocop'], 'graphql': ['gqlint']}
let g:ale_fixers = {'javascript': ['eslint'], 'elixir': ['mix_format']}
" let g:ale_ruby_rubocop_options = '-c .ruby-style.yml'

let g:elm_format_autosave = 1

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

nmap <C-P> :GFiles<CR>
nnoremap K :Rg <C-R><C-W><CR>
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
nnoremap <tab> %
vnoremap <tab> %

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
