set nocompatible
set autoindent
set expandtab		" Convert tabs to spaces.
"set " filetype-indent-on	" Enable indentation rules that are file-type specific
set shiftround		" When shifting lines, round the indentation to the nearest multiple of shiftwidth
set shiftwidth=4
set smarttab
set tabstop=4

" Search:
set hlsearch	" Enable search highlighting
set ignorecase	" Ignore case when searching, but
set smartcase	" Automatically switch search to case-sensitive when search query contains an uppercase letter
set incsearch	" Incremental search that shows partial matches

" Text options:
set encoding=utf-8
set linebreak		" Avoid wrapping a line in the middle of a word.
set scrolloff=1		" The number of screen lines to keep above and below the cursor.
set sidescrolloff=5	" The number of screen columns to keep to the left and right of the cursor.
set wrap			" Enable line wrapping.
syntax enable

" User Interface:
set laststatus=2			" Always display the status bar
set ruler				" Always show cursor position
set wildmenu			" Display command line's tab complete options as a menu
" colorscheme wombat256mod	" Change color scheme.
set cursorline			" Highlight the line currently under cursor.
set number				" Show line numbers on the sidebar.
set relativenumber		" Show line number on the current line and relative numbers on all other lines.
set noerrorbells			" Disable beep on errors.
set mouse=a				" Enable mouse for scrolling and resizing.
set title				" Set the window's title, reflecting the file currently being edited.
set background=dark		" Use colors that suit a dark background.

" Folding:
set foldmethod=indent		" Fold based on indention levels.

filetype plugin on
set path+=**

" Text editing:
nnoremap <A-Up> ddkP
nnoremap <A-Down> ddp
vnoremap <A-Up> xkPgv
vnoremap <A-Down> xp`[Vs

" Move current line up/down in normal mode:
nnoremap <Leader>u :m .-2<CR>==
nnoremap <Leader>d :m .+1<CR>==

" Move selected lines up/down in visual mode:
vnoremap <Leader>u :m '<-2<CR>gv=gv
vnoremap <Leader>d :m '<+1<CR>gv=gv

" Comment/uncomment in normal mode:
nnoremap <Leader>c :s /^/#/<CR>
nnoremap <Leader>x :s /^#//<CR>

" Comment/uncomment in visual mode:
vnoremap <Leader>c :s /^/#/<CR>gv=gv
vnoremap <Leader>x :s /^#//<CR>gv=gv

