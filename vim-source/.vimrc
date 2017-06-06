" change the leader to be a comma vs slash
let mapleader=","

" syntax highlighting
syntax enable
syntax on

" display line numbers
set number

" show a line at column 99
if exists("&colorcolumn")
    set colorcolumn=79
endif

" have a line indicate the cursor location
set cursorline

" we are using dark background in vim
set background=dark

" show the cursor position all the time
set ruler

" use spaces, not tabs, for autoindent/tab key
set expandtab

" don't wrap text
set nowrap

" don't wrap text in the middle of a word
set linebreak

" use smart indent if there is no indent file
set smartindent

" <tab> inserts 2 spaces
set tabstop=4

" indent level is 2 spaces wide
set shiftwidth=4

" <BS> over an autoindent deletes both spaces.
set softtabstop=4

" rounds indent to a multiple of shiftwidth
set shiftround

" show matching <> (html mainly)
set matchpairs+=<:>

" keep our cursor in the middle of the screen
set scrolloff=100
set sidescrolloff=30

" show whitespace
set list
set listchars=tab:>-,trail:~

" default to using case insensitive searches ...
set ignorecase

" ... unless uppercase letters are used in the regex
set smartcase

" highlight searches by default
set hlsearch

" delete search highlight"
" set invhlsearch

" set color theme
colorscheme molokai

" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Load pathogen with docs for all plugins
execute pathogen#infect()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" NERDTree activate
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set shortcut key and open NerdTree at start
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.db$']

" enable spell checking
set spell spelllang=en_us

" disable double spacing between sentences
set nojoinspaces

" adjust colors
let g:solarized_termcolors=256
set t_Co=256

" adjust airline
let g:airline_powerline_fonts = 1
set laststatus=2
