
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
