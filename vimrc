set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'mrtazz/simplenote.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mhinz/vim-startify'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'

filetype plugin indent on
autocmd BufRead,BufNewFile   *.md,*.mkdn set expandtab ts=4 sw=4 ai
syntax on

source ~/.vim/variables.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
