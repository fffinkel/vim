set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/taglist.vim'
Plugin 'mhinz/vim-startify'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'mileszs/ack.vim'
Plugin 'vimwiki/vimwiki.git'
Plugin 'craigemery/vim-autotag'
Plugin 'pjcj/vim-hl-var'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ipod825/vim-tagjump'

"Plugin 'garbas/vim-snipmate'
"Bundle 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on
au BufRead,BufNewFile *.t set filetype=perl
autocmd BufRead,BufNewFile   *.md,*.mkdn set expandtab ts=4 sw=4 ai
syntax on

au BufWritePost ~/.vimrc :source ~/.vimrc
au BufWritePost ~/.zshrc :!source ~/.zshrc


scriptencoding utf-8
set encoding=utf-8

source ~/.vim/variables.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim

