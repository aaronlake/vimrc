" Key Maps
" ========

" Tabularize
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a- :Tabularize /-<CR>
vnoremap <leader>a- :Tabularize /-<CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>
nnoremap <leader>a, :Tabularize /,\zs<CR>
vnoremap <leader>a, :Tabularize /,\zs<CR>
nnoremap <leader>a" :Tabularize /"/l1l0l0<CR>
vnoremap <leader>a" :Tabularize /"/l1l0l0<CR>

" Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>

" Toggle NERD_tree
noremap <Leader>L :NERDTreeToggle<CR>

" Search buffers
noremap <leader>b :CtrlPBuffer<cr>

" Find file in NERT tree
noremap <leader>f :NERDTreeFind<cr>

" Tab & Shift-Tab move between buffers
noremap <silent> <Tab> :bn<CR>
noremap <silent> <S-Tab> :bp<CR>

" Closes the current buffer
nnoremap <silent> <Leader>q :Bclose!<CR>
map <A-q> :Bclose<CR>

" Session
map <Leader>os :OpenSession
map <Leader>so :OpenSession
map <Leader>ss :SaveSession

" Closes the current window
nnoremap <silent> <Leader>Q <C-w>c
map <A-w> :q<CR>

" Edit and Reload .vimrc files
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

" Toggle menu bar
nnoremap <silent> <f4> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<cr>

" PhpDoc
noremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>:let g:pdv_cfg_Version=""

" Toggle Tagbar
noremap <silent> <Leader>y :TagbarToggle<CR>
noremap <f2> :TagbarToggle<cr>

" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>ee
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" When pressing <leader>cd switch to the directory of the open buffer
" map <Leader>cd :cd %:p:h<CR>
" ,ct = Builds ctags
map <Leader>ct :! ctags -R *<CR>

" ,v = Paste
map <Leader>v "+gP
" ,c = Copy
map <Leader>c "+y
" ,T = Delete all Trailing space in file
map <Leader>T :%s/\s\+$//<CR>
" ,U = Deletes Unwanted empty lines
map <Leader>U :g/^$/d<CR>
" ,R = Converts tabs to spaces in document
map <Leader>R :retab<CR>

map <Leader>? :Helptags<CR>

" Disable arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

" Map jk to <esc>
inoremap jk <esc>
