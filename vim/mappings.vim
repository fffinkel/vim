" Support for scroll wheel
map <M-Esc>[62~ <MouseDown>
map! <M-Esc>[62~ <MouseDown>
map <M-Esc>[63~ <MouseUp>
map! <M-Esc>[63~ <MouseUp>
map <M-Esc>[64~ <S-MouseDown>
map! <M-Esc>[64~ <S-MouseDown>
map <M-Esc>[65~ <S-MouseUp>
map! <M-Esc>[65~ <S-MouseUp>

" Create pastie
nnoremap <C-p> :!curl -s -F data=@% http://pastie.it.corp/<CR>
vnoremap <C-p> <esc>:'<,'>:w !curl -s -F data=@- http://pastie.it.corp/<CR>

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
nnoremap _L :set iskeyword=@,58<CR>:!xdg-open https://metacpan.org/search?q=<cword><CR>:set iskeyword-=58<CR>
nnoremap _l :set iskeyword=@,58<CR>:!perldoc <cword><CR>:set iskeyword-=58<CR>

nnoremap _S :shell<CR>

" Blame
vmap _B :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Vertical split resize
nmap > 5<C-W>>
nmap < 5<C-W><

" Keep visual mode highlights highlighted
vnoremap < <gv
vnoremap > >gv

" SimpleNote
nnoremap nl :Simplenote -l<CR>
nnoremap ne :Simplenote -n<CR>
nnoremap nd :Simplenote -d<CR>
nnoremap nt :Simplenote -t<CR>
nnoremap nu :Simplenote -u<CR>

" Function keys
nnoremap <F2> :!perldoc %<CR>
nnoremap <F3> :!grep -r '\#TODO ' %<CR>
map <F4> :let t = winsaveview()<CR>:%!perltidy<CR>:%!podtidy<CR>:w<CR>:call winrestview(t)<CR>
vnoremap <F4> <esc>:'<,'>!perltidy<CR>:w<CR>
nmap <F5> :vs 
nmap <F6> :tabe 
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
"nmap <C-p> :tabp<CR>
"nmap <C-n> :tabn<CR>
nmap <F9> :! carton exec perl -Ilib -I/home/mfinkel/src/opsys/cadillac/lib -I/home/mfinkel/src/opsys/rest-api-client/lib %<CR>
nmap <F10> :! carton exec cadillac prove %<CR>

"nmap <C-p> :tabp<CR>
"nmap <C-n> :tabn<CR>

" Query
nmap <leader>Q :!rm /tmp/tmp.sql && touch /tmp/tmp.sql<CR>:vs /tmp/tmp.sql<CR>
nmap <leader>q :w<CR>:!psql -f % -d cirrus<CR>

" Tig
nmap <leader>t :!tig %<CR><CR>

" Verify CorvisaDoc
nmap _X :!xmllint --relaxng ~/src/cadillac/lib/Cadillac/Devel/Doc/internal/schema.rng %<CR>

" Comment blocks
vnoremap _C :s/^/#/gi<CR>:noh<CR>
vnoremap _V :s/^\s*#//gi<CR>:noh<CR>

"This will make an empty newline below the line you're editing right now when
"you press return and then move your cursor back to the line you were at
"before.
nnoremap <CR> mpo<ESC>`p
