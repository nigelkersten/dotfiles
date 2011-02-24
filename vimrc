" launch
set nocompatible
set noexrc
set visualbell
set paste


".swp dir for all so we don't litter
"not in ~/.vim for dotfile ease.
set directory=~/.vimswp


filetype plugin on
filetype indent on

" indent
set smartindent


" tabs
set tabstop=2
set softtabstop=2
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
  set guifont=Consolas:h18
  let macvim_hig_shift_movement = 1
  colorscheme slate
  set guioptions-=T
  set mousehide
endif

" Turn on spell checking with English dictionary
set spell
set spelllang=en
set spellsuggest=9 "show only 9 suggestions for misspelled words
" Selectively turn spelling off.
autocmd FileType c,cpp,lisp,puppet,ruby,vim setlocal nospell

" Enable indent folding
if version >= 702
  set foldenable
  set fdm=indent
end

" Set space to toggle a fold
" nnoremap <space> za

" Hide buffer when not in window (to prevent relogin with FTP edit)
set bufhidden=hide

" Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3

" Visually select current indent level and greater.
" http://vim.wikia.com/wiki/VimTip1014
function! SelectIndent ()
  let temp_var=indent(line("."))
  while indent(line(".")-1) >= temp_var
    exe "normal k"
  endwhile
  exe "normal V"
  while indent(line(".")+1) >= temp_var
    exe "normal j"
  endwhile
endfun
" Map space to select the indent level
nmap <Space> :call SelectIndent()<CR>

" Enable balloon tooltips on spelling suggestions and folds
function! FoldSpellBalloon()
    let foldStart = foldclosed(v:beval_lnum )
    let foldEnd = foldclosedend(v:beval_lnum)
    let lines = []

    " Detect if we are in a fold
    if foldStart < 0
        " Detect if we are on a misspelled word
        let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
    else
        " we are in a fold
        let numLines = foldEnd – foldStart + 1
        " if we have too many lines in fold, show only the first 14
        " and the last 14 lines
        if ( numLines > 31 )
            let lines = getline( foldStart, foldStart + 14 )
            let lines += [ '-- Snipped ' . ( numLines - 30 ) . ' lines --' ]
            let lines += getline( foldEnd – 14, foldEnd )
        else
            " less than 30 lines, lets show all of them
            let lines = getline( foldStart, foldEnd )
        endif
    endif
    " return result
    return join( lines, has( “balloon_multiline" ) ? “\n" : " " )
endfunction

" JJM FIXME E518: Unknown option: balloonexpr=FoldSpellBalloon()
" set balloonexpr=FoldSpellBalloon()
" set ballooneval

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" Show trailing whitespace and spaces before a tab:
" match ExtraWhitespace /\s\+$\| \+\ze\t/
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" JJM: Any changes to colorscheme will trigger this back on
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen



" make up for my own inadequecies
:command W w
:command Q q

