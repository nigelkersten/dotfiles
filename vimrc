" launch
set nocompatible
set noexrc
set visualbell
set paste


".swp dir for all so we don't litter
"not in ~/.vim for dotfile ease.
set directory=~/.vimswp


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
set smartcase
set wildmenu
set wildmode=longest:full,list:full


" look n feel
syntax on
set showmatch
set showmode
set ruler
set number
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set scrolloff=20
set ttyfast
set shortmess=aIoOTt
set list
set listchars=tab:»·,trail:·

if has("gui_running")
	colorscheme evening
  set mousehide
endif


" folding
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100

" make up for my own inadequecies
:command W w
:command Q q


if has("autocmd")
  filetype plugin indent on
endif 
