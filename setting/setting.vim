" Settings
" ========

" Non-Addon related settings
" --------------------------
" Default VIM colorscheme which works in terminals
if isdirectory($HOME."/.vim/bundle/vim-colors-solarized")
  colorscheme solarized
endif

set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans  = 1

" Enable syntax hilighting
syntax on

" Change Leader key to comma
let mapleader=","

set viminfo='1000,f1,:1000,/1000

set history=500

" Share clipboard with systems
if $TMUX == ''
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" Highlight background of current line
set cursorline

set colorcolumn=80

" Enable Line Numbers
set number

" Disable word wrap
set nowrap

" Visual bell instead of beeps
set vb

" Display cursor position on bottom right of screen
set ruler

" tab = 2 spaces
set tabstop=2

" Indent to two spaces
set shiftwidth=2
set softtabstop=2

" Multipurpose Tab Key
" Indent if we're at the beginning of a line, else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Switch between unsaved buffers w/o needing to save, preserves history
set hidden

" Let mouse avaliable in terminal
set mouse=a

" Syntax Highlight
filetype indent on

" Autoindent
set autoindent

" Use spaces instead of tabs
set expandtab

" Search while typing
set incsearch

" Set ignorecase
" Lowercase = case insensitive, any uppercase = case sensitive
set smartcase

" Highlight all search results
set hlsearch

" Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

" F2 = Paste Toggle (in insert mode, pasting indented text behavior changes)
set pastetoggle=<F2>

" Show command in the last line of the screen.
set showcmd

" Always show the statusline
set laststatus=2

" Plugin settings
" ===============

" Ragtag
" ------
let g:ragtag_global_maps = 1

" Indent guide
" ------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" SuperTab
" --------
imap  <silent><expr><tab>  neocomplcache#sources#snippets_complete#expandable() ? "\<plug>(neocomplcache_snippets_expand)" : (pumvisible() ? "\<c-e>" : "\<tab>")
smap  <tab>  <right><plug>(neocomplcache_snippets_jump)
inoremap <expr><c-e>     neocomplcache#complete_common_string()

" Endwise
" --------
let g:endwise_no_mappings=1

" php-doc
" ---------
let g:pdv_cfg_Author="Aaron Lake <aaron.lake@gmail.com>"
let g:pdv_cfg_Copyright="2013 Aaron Lake"
let g:pdv_cfg_License=""

" MiniBufExpl
" ------------
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplCheckDupeBufs = 0

" Powerline
let g:Powerline_symbols = 'fancy'

" CtrtlP
" ---------
let g:ctrlp_map = '<Leader>p'

" delimitMate
" ----------
let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=1
let g:delimitMate_smart_matchpairs=1
let g:delimitMate_balance_matchpairs=1

" Syntastic
" ---------
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=2
let g:syntastic_auto_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'eruby'],
                           \ 'passive_filetypes': [] }

" Tagbar
" --------
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/bin/jsctags'
    \ }
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=26

" ruby, python, markdown, haml, eruby, html, sass fixes
autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd\|footer\|small\|header\|nav\|aside\|section' | endif
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd! BufRead,BufNewFile *.sass setfiletype sass

" Markdown fixes
autocmd! FileType mkd setlocal syn=off
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

" Session
" ---------
let g:session_autosave = 'no'

" NERDTree
" ----------
let NERDTreeIgnore=['CVS']
" setting root dir in NT also sets VIM's cd
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
" single click to open directory
let NERDTreeMouseMode = 2

" Easymotion
" ----------
let g:EasyMotion_leader_key = '<Leader>'

" Neocomplcache
" -------------
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion, which require computational 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}power and may stall the vim.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
