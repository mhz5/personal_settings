" To keep cursor in middle while scrolling.
"set scrolloff=9999

" Set the window title to show name of open file.
" set title
" Reset window title to old title after closing vim.
set titleold=

" Timeout between keypresses, to distingush between <ESC> and Alt combos.
set ttimeout ttimeoutlen=10

" Yank (y) also copies to default register.
" This command sets two default registers,
" corresponding to the system and desktop clipboards.
" set clipboard=unnamedplus,unnamed

noremap <ENTER> /

" Set Line Numbers
" :set number
" :set relativenumber

noremap = F
noremap <Space> f
noremap <Tab> t
noremap l t
noremap L T

noremap k ;
noremap j ,
nnoremap <S-k> n
nnoremap <S-j> N

" Remap join lines.
nnoremap <S-l> <S-j>

" Visual Mode
noremap w v
noremap W V
noremap v w
noremap V W
noremap m b
noremap M B
noremap b m
noremap B M 
noremap iv iw
noremap av aw

" Remap movement commands.
:noremap h h
:noremap n l
:noremap c k
:noremap t j

" Jump carat instead of jumping screen.
" character is Alt+c
" execute "set <M-c>=\ec"
" :nnoremap <M-c> 10k
" :vnoremap <M-c> 10k
:noremap <Up> 5k

" character is Alt+t
" execute "set <M-t>=\et"
" :nnoremap <M-t> 10j
" :vnoremap <M-t> 10j
:noremap <Down> 5j


" Remap.
execute "set <M-m>=\em"
execute "set <M-v>=\ev"
:nnoremap <Home> ^
:nnoremap <End> $
:nnoremap <M-m> ^
:vnoremap <M-m> ^
:nnoremap <M-v> $
:vnoremap <M-v> $
:vnoremap w <ESC>

" Remap change.
:nnoremap b c


":nnoremap bm cb
":nnoremap bv cw
":nnoremap biv ciw
":nnoremap bav caw
":nnoremap div diw
":nnoremap dav daw
":nnoremap dv dw
":nnoremap dm db


" Prev/Next Position.
" :nnoremap <C-o> <C-o>
" :nnoremap <C-e> <Tab>

" Remap movement in visual mode.
:nmap <S-Up> v<Up>
:nmap <S-Down> v<Down>
:nmap <S-Left> v<Left>
:nmap <S-Right> v<Right>
:vmap <S-Up> <Up>
:vmap <S-Down> <Down>
:vmap <S-Left> <Left>
:vmap <S-Right> <Right>
:imap <S-Up> <Esc>v<Up>
:imap <S-Down> <Esc>v<Down>
:imap <S-Left> <Esc>v<Left>
:imap <S-Right> <Esc>v<Right>

