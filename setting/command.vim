" Command
" =======

" Close all buffers
command Ball call CloseAllBufs()

" Save as root
command Sudow w !sudo tee % > /dev/null 2>&1

command W w

command Q q

