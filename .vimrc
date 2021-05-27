" Load pathogen with docs for all plugins
call pathogen#infect()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
"
" set charset
set encoding=utf-8

" set font
set guifont=Monaco\ Nerd\ Font:h13

" adjust colors
let g:solarized_termcolors=256
set t_Co=256

" change the leader to be a comma vs slash
let mapleader=","

" syntax highlighting
syntax enable
syntax on

" display line numbers
set number

" show a line at column 79
if exists("&colorcolumn")
    set colorcolumn=79
endif

" have a line indicate the cursor location
set cursorline

" we are using dark background in vim
set background=light

" show the cursor position all the time
set ruler

" use spaces, not tabs, for autoindent/tab key
set expandtab

" don't wrap text
" set wrap
set textwidth=80

" don't wrap text in the middle of a word
set linebreak

" use smart indent if there is no indent file
set smartindent

" <tab> inserts 4 spaces
set tabstop=4

" indent level is 4 spaces wide
set shiftwidth=4

" <BS> over an autoindent deletes both spaces.
set softtabstop=4

" set tab settings and spacing to 2 when editing front-end scripts
autocmd Filetype html setlocal ts=2 sh=2 sts=2 cc=99 tw=100
autocmd Filetype css setlocal ts=2 sh=2 sts=2 cc=99 tw=100
autocmd Filetype javascript setlocal ts=2 sh=2 sts=2 cc=99 tw=100

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
set invhlsearch

" set color theme
colorscheme one

" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" NERDTree activate
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set shortcut key and open NerdTree at start
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.db$']

" enable spell checking for markdown (used for blogging)
autocmd Filetype markdown setlocal spell spelllang=pt_br

" disable double spacing between sentences
set nojoinspaces

" adjust airline
let g:airline_theme='one' " vim-one theme for airline
let g:airline_powerline_fonts = 1 " enable powerline fonts
let g:airline#extensions#tabline#enabled = 1 " show tabline
let g:airline#extensions#tabline#show_tab_nr = 1 " show tab number
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number, not split number
let g:airline#extensions#tabline#show_tab_count = 0 " no need for tab count
let g:airline#extensions#tabline#show_buffers = 0 " no need for buffers label
let g:airline#extensions#tabline#formatter = 'default'
set laststatus=2
