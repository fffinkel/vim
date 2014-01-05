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
nnoremap <C-p> :!curl -s -F data=@% http://pastie.it.corp/ \| xclip -selection clipboard; xclip -selection clipboard -o<CR>
vnoremap <C-p> <esc>:'<,'>:w !curl -s -F data=@- http://pastie.it.corp/ \| xclip -selection clipboard; xclip -selection clipboard -o<CR>

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
nmap <F9> :! perl -I lib/ %<CR>
nmap <F10> :! cadillac prove %<CR>

" Tig
nmap _T :!tig %<CR><CR>

" Verify CorvisaDoc
nmap _X :!xmllint --relaxng ~/src/cadillac/lib/Cadillac/Devel/Doc/internal/schema.rng %<CR>

" Comment blocks
vnoremap _C :s/^/#/gi<CR>:noh<CR>
vnoremap _V :s/^#//gi<CR>:noh<CR>
