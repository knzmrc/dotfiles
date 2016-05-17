set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable   " enable syntax processing

set tabstop=4   " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
set expandtab   " tabs are spaces
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd " show command in bottom bar
set number " show line numbers
set hidden
set wildmenu    " visual autocomplete for command menu
set wildmode=list:longest
set visualbell
set cursorline  " highlight current line
set ttyfast
set ruler
set lazyredraw  " redraw only when we need to
set showmatch   " highlight matching [{()}]
set backspace=indent,eol,start
set laststatus=2
set history=1000
set nonumber
set norelativenumber
set undofile
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
set foldenable  " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10  " 10 nested folds max
set foldmethod=indent   " fold based on indent level
set undoreload=10000
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak
set colorcolumn=+1

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Toggle line numbers
nnoremap <leader>n :setlocal number!<cr>

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Save when losing focus
au FocusLost * :silent! wall

" Resize splits when the window is resized
au VimResized * :wincmd =

" Leader
let mapleader = ","

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" }}}
