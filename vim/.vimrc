" set plugins with vim-plug
call plug#begin('~/.vim/plugged')

" themes
Plug 'rakr/vim-one'

" web development
Plug 'NikolayFrantsev/jshint2.vim'
Plug 'prettier/vim-prettier'

" files and navigation
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"snippets
Plug 'honza/vim-snippets'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'

call plug#end()

" set charset
set encoding=utf-8

" set font
set guifont=JetBrainsMono\ Nerd\ Font

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
    set colorcolumn=99
endif

" have a line indicate the cursor location
set cursorline


" show the cursor position all the time
set ruler

" use spaces, not tabs, for autoindent/tab key
set expandtab

" don't wrap text
" set wrap
set textwidth=100

" don't wrap text in the middle of a word
set linebreak

" use smart indent if there is no indent file
set smartindent

" <tab> inserts 2 spaces
set tabstop=2

" indent level is 2 spaces wide
set shiftwidth=2

" <BS> over an autoindent deletes both spaces.
set softtabstop=2

" set tab settings and spacing to 4 when editing python scripts
autocmd FileType python setlocal ts=4 sh=4 sts=4 cc=79 tw=80

" set tab settings and spacing to 4 when editing java programs
autocmd FileType java setlocal ts=4 sh=4 sts=4 cc=79 tw=80

" set tab settings and spacing to 4 when editing vue modules
autocmd FileType vue setlocal ts=2 sh=2 sts=2 cc=99 tw=100

" enable spell checking for markdown (used for blogging)
autocmd FileType markdown setlocal spell spelllang=pt_br

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
set background=light

" remove trailing whitespace on <leader>S
noremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" disable double spacing between sentences
set nojoinspaces

" Plugins Settings

" NERDTree activate
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set shortcut key and open NerdTree at start
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$', '\.db$']

" adjust airline
let g:airline_theme='one' " vim-one theme for airline
let g:airline_powerline_fonts = 1 " enable powerline fonts
let g:airline#extensions#tabline#enabled = 1 " show tabline
let g:airline#extensions#tabline#show_tab_nr = 1 " show tab number
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number, not split number
let g:airline#extensions#tabline#show_tab_count = 0 " no need for tab count
let g:airline#extensions#tabline#show_buffers = 0 " no need for buffers label
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#fugitive#enabled = 1 " enable fugitive

set laststatus=2

" adjust ctrlp
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']

" adjust jshint.vim
let g:jshint2_save = 1

" adjust prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_same_line = 'true'

" indentline use colorscheme
let g:indentLine_setColors = 0

" snipmate parser
let g:snipMate = { 'snippet_version' : 1 }

" indentguide enabled by default
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" indentguide colors for vim-one light
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=253
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white ctermbg=254
