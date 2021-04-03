call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'

" Automatically close brackets
Plug 'jiangmiao/auto-pairs'

Plug 'tomasiser/vim-code-dark'

" File tree
Plug 'scrooloose/nerdtree'

Plug 'psliwka/vim-smoothie'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'glts/vim-radical'
Plug 'glts/vim-magnum'

Plug 'ryanoasis/vim-devicons'

Plug 'joshdick/onedark.vim'

Plug 'tpope/vim-commentary'

Plug 'junegunn/rainbow_parentheses.vim'

" Git --
Plug 'mhinz/vim-signify'

Plug 'airblade/vim-rooter'

call plug#end()

imap <C-BS> <C-W>
imap jk <Esc>

" Set the color scheme
colorscheme codedark

" Enable relative line numbering
set rnu

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=~/AppData/Local/nvim/.vimundo
set undolevels=1000
set undoreload=10000

" vim-commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" rainbow
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" set leader key
let g:mapleader = "\<Space>"

" Ignore JS/TS/Web Stack files
set wildignore+=*/node_modules/*

" Ignore C/C++ object files
set wildignore+=*.o,*.obj,*.out,*.elf,*.exe,*.app

" Ignore C#.NET files
set wildignore+=*.Cache,*/bin/*,*/tmp/*,*/obj/*

" Ignore Python files
set wildignore+=*/__pycache__/*,*.pyc

" Auto indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Disable swap file
set noswapfile

" Enable line numbers
set number

" Disable line wrapping
set nowrap

" Make backspace behave like in other editors
set backspace=indent,eol,start
set hidden                              " Required to keep multiple buffers open multiple buffers
" Other options
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set cmdheight=2
set wildmenu
set langmenu=en
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus
set fileencoding=utf-8                  " The encoding written to file
set ruler  
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set whichwrap+=<,>,[,],h,l
set conceallevel=0                      " So that I can see `` in markdown files

" ---------------------------------------------------------------
" airline

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'codedark'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" ---------------------------------------------------------------
" signify

" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" ---------------------------------------------------------------
" mappings

  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>

  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

:inoremap <M-}> } " AltGr+4 on French, AltGr+9 on German
:inoremap <M-[> [ " AltGr+5 on French, AltGr+8 on German
:inoremap <M-{> { " AltGr+7 on German

  map <C-n> :NERDTreeToggle<CR>

  autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
