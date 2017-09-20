set number
set showcmd
set showmatch
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set directory=~/.vim/swap/
set smartcase

set hlsearch
set smartcase
set incsearch
set backup
set backupdir=~/.vim/backups/
set scrolloff=4
set bg=dark

set colorcolumn=81
set tw=80

" Cursor line
"set cursorline
"hi CursorLine cterm=NONE ctermbg=darkgrey guibg=darkred guifg=white

" Folding
"set foldmethod=syntax   "fold based on indent
"set foldnestmax=5      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

" Display tabs and trailing spaces
"set listchars=tab:▶·,trail:∙,precedes:«,extends:» ",eol:↲
set listchars=tab:☃·,trail:∙,precedes:«,extends:» ",eol:↲
set list

" Make X clipboard the default paste buffer
:if $DISPLAY != ""
	set mouse=a
	set clipboard=unnamed,autoselect,exclude:cons\|linux
:endif
"
" Status bar
hi CursorLine cterm=NONE ctermbg=lightgrey guibg=darkred guifg=white
set laststatus=2
set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v][%p%%]\ [%L]

set wildignorecase
set updatetime=500

set wildmenu
set wildmode=full

set path+=app/lib

set spell
