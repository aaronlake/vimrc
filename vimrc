" NeoBundle : See Vundle for more documentation
" =============================================

" Apparently this has to go before everything else, thus breaking my pretty
" configuration. D:
set nocompatible

" Load NeoBundle
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
NeoBundle 'xolox/vim-misc'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'kana/vim-fakeclip'

" Asthetic Related
" -------------
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'techlivezheng/vim-plugin-minibufexpl'

" Autocomplete/assistive completion
" ---------------------------------
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-surround'
NeoBundle 'godlygeek/tabular'
NeoBundle 'Raimondi/delimitMate'
" NeoBundle 'ervandew/supertab'

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
NeoBundle 'elzr/vim-json'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'puppetlabs/puppet-syntax-vim'

" Language: Ruby/Rails
" -----------------
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'

" Language: JavaScript
" -----------------------
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'bigfish/vim-js-beautify'

" Language: PHP
" ----------------

" Language: HTML
" -----------------
NeoBundle 'mattn/emmet-vim'
NeoBundle 'groenewege/vim-less'

" Other Addons
" ------------
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'nvie/vim-togglemouse'

source $HOME/.vim/setting/function.vim
source $HOME/.vim/setting/command.vim
source $HOME/.vim/setting/autocmd.vim
source $HOME/.vim/setting/setting.vim
source $HOME/.vim/setting/keymap.vim

if filereadable($HOME.'/.vimrc_local')
  source $HOME/.vimrc_local
endif
