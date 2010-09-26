syntax on
filetype plugin indent on

set nocompatible

" indent
set cindent
set autoindent
set smartindent

" tabs
set tabstop=2
set softtabstop=2
set shiftround
set shiftwidth=2
set expandtab

" search
set showmatch
set noerrorbells
set ruler
set incsearch
set noexrc
set wildmenu
set wildmode=list:longest

set laststatus=2
set number

" folding
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

" look
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
colorscheme evening

".swp dir for all
set directory=~/.vim/swp

set scrolloff=10

" gui
if has("gui_running")
	colorscheme evening
endif
