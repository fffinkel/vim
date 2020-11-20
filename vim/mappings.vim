
" Move between splits
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Move lines at a time
vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-k> :m-2<CR>gv=gv

" I am a crappy typer
command WQ wq
command Wq wq
command W w
command Q q

" MetaCPAN and Perldoc lookups
" TODO remove use of non-leader
nnoremap _L :set iskeyword=@,58<CR>:!xdg-open https://metacpan.org/search?q=<cword><CR>:set iskeyword-=58<CR>
nnoremap _l :set iskeyword=@,58<CR>:!perldoc <cword><CR>:set iskeyword-=58<CR>

" Shell
nnoremap <leader>s :shell<CR>

" Just right
" TODO remove use of non-leader
nnoremap _W :vertical resize 86<CR>

" Blame
vmap <leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Vertical split resize, keep visual mode highlights
nmap > 5<C-W>>
nmap < 5<C-W><
vnoremap < <gv
vnoremap > >gv

" Function keys
nnoremap <F2> :!perldoc -F %<CR>
nnoremap <F3> :!grep -r '\#TODO ' %<CR>
map <F4> :let t = winsaveview()<CR>:%!perltidy<CR>:w<CR>:call winrestview(t)<CR>
"map <F4> :let t = winsaveview()<CR>:%!perltidy<CR>:%!podtidy<CR>:w<CR>:call winrestview(t)<CR>
vnoremap <F4> <esc>:'<,'>!perltidy<CR>:w<CR>
nmap <F5> :vs 
nmap <F6> :tabe 
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap <F9> :! perl -I app/lib %<CR>
nmap <F10> :%s/\t/  /g<CR>

" Tig
nmap <leader>t :!tig %<CR><CR>

" Comment blocks
" TODO remove use of non-leader
vnoremap _C :s/^/#/gi<CR>:noh<CR>
vnoremap _V :s/^\s*#//gi<CR>:noh<CR>

" Taglist
nnoremap <leader>tl :TlistToggle<CR>

" Ack
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>A :Ack! <C-R><C-W> app/lib<CR>

" quick vimrc edit
nmap <leader>v :tabe ~/.vimrc<CR>
nmap <leader>V :tabe ~/.vim/<CR>

" fake ass go debug
abbrev ff fmt.Printf("\n\n----------> %s\n", )
abbrev fff zz, _ := json.MarshalIndent( , "", "\t")<cr>fmt.Printf("\n\n----------> %s\n", zz)
abbrev ffff buf := &bytes.Buffer{}<cr>buf.ReadFrom( )<cr>zz := buf.String()<cr>mt.Printf("\n\n----------> %s\n", zz)

" notes
nmap <leader>no :tabe <C-R>=system("~/.vim/opennotes.sh")<cr><cr>
imap <F3> ## <C-R>=strftime("%Y-%m-%d %a %I:%M %p %Z")<cr> (

