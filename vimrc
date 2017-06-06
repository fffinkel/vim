set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

Bundle 'vim-scripts/taglist.vim'
Bundle 'mhinz/vim-startify'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Plugin 'mileszs/ack.vim'

"Bundle 'honza/vim-snippets'
"Bundle 'pjcj/vim-hl-var'
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

