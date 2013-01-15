" Set minibufexpl colors
function SetMBPColors()
    " MiniBufExpl Colors
    hi MBEVisibleActive guifg=#A6DB29 guibg=fg
    hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
    hi MBEVisibleChanged guifg=#F1266F guibg=fg
    hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
    hi MBEChanged guifg=#CD5907 guibg=fg
    hi MBENormal guifg=#ffffff guibg=fg
endfunction

" Close all buffers
function CloseAllBufs()
    execute "Bonly"
    execute "Bclose"
endfunction
