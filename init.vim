let g:python3_host_prog = 'C:\Users\Rick\AppData\Local\Programs\Python\Python310\python'

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimsence/vimsence'
Plug 'chriskempson/base16-vim'
call plug#end()

set nu
set relativenumber

set hidden
set incsearch
set ignorecase
set smartcase
set scrolloff=8
set encoding=utf-8
set splitright
set splitbelow
set autoread
filetype on
filetype plugin on
filetype indent on

let mapleader = "\<space>"
nnoremap <leader>; A;<esc>
" init.vim
nnoremap <leader>evs :vsplit C:\Users\Rick\appdata\local\nvim/init.vim<cr>
nnoremap <leader>ev :e C:\Users\Rick\appdata\local\nvim/init.vim<cr>

nnoremap <leader>f :Files<cr>

" save configs
nnoremap <leader>s :w<cr>
nnoremap <leader>sq :wq<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>l A<cr><esc>

" popup
inoremap <expr> <Tab>   pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<Up>" : "\<S-Tab>"

" remapeando transição 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" theme
let base16colorspace=256 
colorscheme base16-default-dark

set termguicolors
if (has("nvim")) "Transparent background. Only for nvim
    highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif

"vim airline tabline

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"vim discord

let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'

let g:vimsence_file_explorer_details = 'Looking for files'

