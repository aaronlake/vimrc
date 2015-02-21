" Command
" =======

" Close all buffers
command Ball call CloseAllBufs()

" Save as root
cmap w!! %!sudo tee > /dev/null %

command W w

command Q q

