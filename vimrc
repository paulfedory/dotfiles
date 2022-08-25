call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'hail2u/vim-css3-syntax'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
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

set grepprg=rg\ --color=never

let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint'], 'ruby': ['rubocop'], 'graphql': ['gqlint']}
let g:ale_fixers = {'javascript': ['eslint'], 'elixir': ['mix_format']}
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
let g:airline#extensions#ale#enabled = 1
" let g:ale_linters_explicit = 1
let g:ale_linters_ignore = {'typescript': ['tsserver'], 'javascript': ['tsserver'], 'typescriptreact': ['tsserver']}


" let g:ale_ruby_rubocop_options = '-c .ruby-style.yml'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:elm_format_autosave = 1
let g:airline_powerline_fonts = 1

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

" ===== Instead of backing up files, just reload the buffer when it changes. =====
" The buffer is an in-memory representation of a file, it's what you edit
set autoread                         " Auto-reload buffers when file changed on disk
set nobackup                         " Don't use backup files
set nowritebackup                    " Don't backup the file while editing
set noswapfile                       " Don't create swapfiles for new buffers
set updatecount=0                    " Don't try to write swapfiles after some number of updates
set backupskip=/tmp/*,/private/tmp/* " Let me edit crontab files

set list listchars=tab:»·,trail:·,nbsp:·

nmap <C-P> :GFiles<CR>
nnoremap K :Rg <C-R><C-W><CR>
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
nnoremap <tab> %
vnoremap <tab> %

" from COC.nvim
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
