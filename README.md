Installation
------------

### Option 1:
The script below will backup your existing Vim configuration files and plop my Vim files down in your home directory. This is by far the easiest way for installation, but you'll have to trust that this script won't do anything nasty (it doesn't).
``` bash
$ curl -Lo- https://raw.github.com/aaronlake/vimrc/master/bootstrap.sh | bash
```

### Option 2:
If you'd like a little more customization to the install follow these steps below:

* Backup your existing Vim configuration files
  * `mv ~/.vim ~/.vim.old`
  * `mv ~/.vimrc ~/.vimrc.old`
  * `mv ~/.gvimrc ~/.gvimrc.old`
* Clone this repo `git clone https://github.com/aaronlake/vimrc.git $HOME/.vim`
* Create links to the my vimrc files.
  * `ln -s ~/.vim/vimrc ~/.vimrc`
  * `ln -s ~/.vim/gvimrc ~/.gvimrc`
* Create Vim cache directories
  * `mkdir -p $HOME/.cache/vim/backup $HOME/.cache/vim/cache $HOME/.cache/vim/undo`

Plugin Installation & Mangement
-------------------------------

My .vimrc configuration uses Shougo's excellent [NeoBundle](https://github.com/Shougo/neobundle.vim) plugin manager. I have a large number of plugins added by default, with some useful (but not to me) ones commented out. I'd recommend going through the list of plugins below and verifying that the plugins I've added are useful or otherwise.

* Comment out/uncomment useful plugins
* Run `:NeoBundleInstall` to install the plugins you selected
* Update plugins using `:NeoBundleUpdate` to update all plugins to the latest version from Github or vim.org.

Settings and Keymaps
--------------------
I've documented the `setting/setting.vim` and `setting/keymap.vim` files fairly well though I'd recommend looking through both files to get a better idea how I have this vimrc configured. The plugins, listed below, add quite a bit of functionality and I'd highly recommend reading the documentation on each of them.

Plugins
-------

### VIM centric

* [mileszs/ack.vim.git](http://www.github.com/mileszs/ack.vim.git)
* [tpope/vim-fugitive](http://www.github.com/tpope/vim-fugitive)
* [Lokaltog/vim-easymotion](http://www.github.com/Lokaltog/vim-easymotion)
* [vim-scripts/BufOnly.vim](http://www.github.com/vim-scripts/BufOnly.vim)
* [bcaccinolo/bclose](http://www.github.com/bcaccinolo/bclose)
* [xolox/vim-session](http://www.github.com/xolox/vim-session)
* [tpope/vim-sensible](http://www.github.com/tpope/vim-sensible)
* [kana/vim-fakeclip](http://www.github.com/kana/vim-fakeclip)

### Asthetic Related
* [altercation/vim-colors-solarized.git](http://www.github.com/altercation/vim-colors-solarized.git)
* [Lokaltog/vim-powerline](http://www.github.com/Lokaltog/vim-powerline)
* [techlivezheng/vim-plugin-minibufexpl](http://www.github.com/techlivezheng/vim-plugin-minibufexpl)
* [vim-scripts/ScrollColors](http://www.github.com/vim-scripts/ScrollColors)
* [vim-scripts/Color-Sampler-Pack](http://www.github.com/vim-scripts/Color-Sampler-Pack)
* [tomasr/molokai](http://www.github.com/tomasr/molokai)
* [shawncplus/skittles_berry](http://www.github.com/shawncplus/skittles_berry)
* [veloce/vim-aldmeris](http://www.github.com/veloce/vim-aldmeris)

### Autocomplete/assistive completion
* [Shougo/neocomplcache](http://www.github.com/Shougo/neocomplcache)
* [Shougo/neosnippet](http://www.github.com/Shougo/neosnippet)
* [tpope/vim-surround](http://www.github.com/tpope/vim-surround)
* [godlygeek/tabular](http://www.github.com/godlygeek/tabular)
* [Raimondi/delimitMate](http://www.github.com/Raimondi/delimitMate)
* [ervandew/supertab](http://www.github.com/ervandew/supertab)

### File Browsing/management
* [scrooloose/nerdtree](http://www.github.com/scrooloose/nerdtree)
* [kien/ctrlp.vim](http://www.github.com/kien/ctrlp.vim)

### Language: All
* [majutsushi/tagbar](http://www.github.com/majutsushi/tagbar)
* [scrooloose/syntastic](http://www.github.com/scrooloose/syntastic)
* [bronson/vim-trailing-whitespace](http://www.github.com/bronson/vim-trailing-whitespace)
* [tomtom/tcomment_vim](http://www.github.com/tomtom/tcomment_vim)
* [helino/vim-json](http://www.github.com/helino/vim-json)
* [nathanaelkane/vim-indent-guides](http://www.github.com/nathanaelkane/vim-indent-guides)

### Language: Ruby/Rails
* [vim-ruby/vim-ruby](http://www.github.com/vim-ruby/vim-ruby)
* [tpope/vim-rails](http://www.github.com/tpope/vim-rails)
* [tpope/vim-endwise](http://www.github.com/tpope/vim-endwise)

### Language: JavaScript
* [juvenn/mustache.vim](http://www.github.com/juvenn/mustache.vim)
* [helino/vim-json](http://www.github.com/helino/vim-json)
* [pangloss/vim-javascript](http://www.github.com/pangloss/vim-javascript)
* [kchmck/vim-coffee-script](http://www.github.com/kchmck/vim-coffee-script)
* [bigfish/vim-js-beautify](http://www.github.com/bigfish/vim-js-beautify)

### Language: PHP
* [taxilian/VimDebugger](http://www.github.com/taxilian/VimDebugger)
* [beyondwords/vim-twig](http://www.github.com/beyondwords/vim-twig)
* [shawncplus/phpcomplete.vim](http://www.github.com/shawncplus/phpcomplete.vim)

### Language: HTML
* [mattn/zencoding-vim](http://www.github.com/mattn/zencoding-vim)

### Other Addons
* [mattn/gist-vim](http://www.github.com/mattn/gist-vim)
