set nocompatible
filetype off

filetype plugin indent on
au BufRead,BufNewFile *.t set filetype=perl
syntax on

scriptencoding utf-8
set encoding=utf-8

au BufWritePost ~/.vimrc :source ~/.vimrc
au BufWritePost ~/.zshrc :!source ~/.zshrc

source ~/.vim/plugins.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/functions.vim
