" NeoBundle : See Vundle for more documentation
" =============================================

if has('vim_starting')
  set runtimepath+=~/.vim/before/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" VIM centric
" -----------
NeoBundle 'mileszs/ack.vim.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-scripts/BufOnly.vim'
NeoBundle 'bcaccinolo/bclose'
NeoBundle 'xolox/vim-session'
NeoBundle 'tpope/vim-sensible'

" Asthetic Related
" -------------
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'techlivezheng/vim-plugin-minibufexpl'
" NeoBundle 'vim-scripts/ScrollColors'
" NeoBundle 'vim-scripts/Color-Sampler-Pack'
" NeoBundle 'tomasr/molokai'
" NeoBundle 'shawncplus/skittles_berry'
" NeoBundle 'veloce/vim-aldmeris'

" Autocomplete/assistive completion
" ---------------------------------
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'tpope/vim-surround'
NeoBundle 'godlygeek/tabular'
" NeoBundle 'Townk/vim-autoclose'  " ** This is breaking minibufexpl
" NeoBundle 'ervandew/supertab' " ** This is breaking neocomplcache

" File Browsing/management
" ------------------------
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'

" Language: All
" ----------------
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'helino/vim-json'
" NeoBundle 'nathanaelkane/vim-indent-guides'

" Language: Ruby/Rails
" -----------------
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'

" Language: JavaScript
" -----------------------
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'helino/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'bigfish/vim-js-beautify'

" Language: PHP
" ----------------
" NeoBundle 'taxilian/VimDebugger'
" NeoBundle 'beyondwords/vim-twig'
" NeoBundle 'shawncplus/phpcomplete.vim'

" Language: HTML
" -----------------
NeoBundle 'mattn/zencoding-vim'

" Other Addons
" ------------
NeoBundle 'mattn/gist-vim'

source $HOME/.vim/setting/function.vim
source $HOME/.vim/setting/command.vim
source $HOME/.vim/setting/autocmd.vim
source $HOME/.vim/setting/setting.vim
source $HOME/.vim/setting/keymap.vim

if filereadable($HOME.'/.vimrc_local')
  source $HOME/.vimrc_local
endif
