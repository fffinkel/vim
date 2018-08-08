set nocompatible
filetype off

source ~/.vim/plugins.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/functions.vim

filetype plugin indent on
au BufRead,BufNewFile *.t set filetype=perl
syntax on

scriptencoding utf-8
set encoding=utf-8

au BufWritePost ~/.vimrc :source ~/.vimrc
au BufWritePost ~/.zshrc :!source ~/.zshrc

" #############################################################################
" Split and open corresponding pm/t file
" http://blogs.perl.org/users/ovid/2013/03/discoverable-tests-and-creating-testing-standards.html
if !exists("*GotoCorresponding")
    function! GotoCorresponding(module)
        let file = system("get-corresponding ".a:module)
        if !empty(file)
            let ignore = system("zr-add-new-test ".a:module." ".file)
            execute "vsplit  " . file
        else
            echoerr("Cannot find corresponding file for: ".a:module)
        endif
    endf
endif
map \g :call GotoCorresponding(expand("%p"))<cr>
