syntax on
filetype plugin indent on

" launch
set nocompatible
set noexrc
set visualbell

".swp dir for all so we don't litter
set directory=~/.vim/swp

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
set incsearch
set hlsearch
set ignorecase
set wildmenu
set wildmode=list:longest

" look n feel
set showmatch
set ruler
set number
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set scrolloff=20
if has("gui_running")
	colorscheme evening
endif

" folding
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

