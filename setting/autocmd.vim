" Auto Commands
" =============

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Deletes trailing space in file upon write
autocmd BufWritePre * :%s/\s\+$//e

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown

" set wrap for markdown
autocmd FileType markdown setlocal wrap

" add json syntax highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

autocmd ColorScheme * call SetMBPColors()

