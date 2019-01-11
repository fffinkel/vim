
function! SendSlackSnippet(visual)
  call inputsave()
  let channel = input('channel: ')
  call inputrestore()

  let prefix = ''
  if a:visual
    let prefix = ":'<,'>"
  endif

  execute prefix . ':w !curl -s'
        \ . ' -F file=@-'
        \ . ' -F channels=\\#' . channel
        \ . ' -F token=$SLACKTOKEN'
        \ . ' -F filetype=' . &ft
        \ . ' https://slack.com/api/files.upload'
endfunction

nnoremap <C-p> :call SendSlackSnippet(0)<CR>
vnoremap <C-p> <esc>:call SendSlackSnippet(1)<CR>

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
