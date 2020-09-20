
set number " line numbers
set spell " spelling
set bg=dark " dark background
set colorcolumn=81 " column to indicate long lines
set tw=80 " word wrap / TODO: this sucks
set directory=~/.vim/swap/ " swap dir

"TODO: comments
"
set showcmd
set showmatch
set autoindent
set smartindent
"set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartcase
set hlsearch
set incsearch
set scrolloff=4
set laststatus=2
set statusline=%F%m%r%h%w\ [\%03.3b]\ [\%02.2B]\ [%04l,%04v][%p%%]\ [%L]
set wildignorecase
set updatetime=500
set wildmenu
set wildmode=full

" show whitespace characters
set list
set listchars=tab:☃·,trail:∙,precedes:«,extends:»

" backups
set backup
set backupdir=~/.vim/backups/

" perl
let perl_extended_vars = 1
let perl_highlight_matches = 1

" snipmate plugin
let g:snippets_dir = '/home/mfinkel/.vim/snippets/'

" taglist plugin
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Auto_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Display_Tag_Scope = 1
let tlist_perl_settings='perl;u:use;p:package;r:role;e:extends;c:constant;a:attribute;s:subroutine;l:label'

" make vim-wiki zr-wiki
let g:vimwiki_list = [{'path': '~/ziprecruiter/.zr-wiki/mattf/', 'syntax': 'markdown', 'ext': '.page'}]

let g:go_version_warning = 0

" sirver/ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
