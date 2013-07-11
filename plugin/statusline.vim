hi User1 ctermfg=220 ctermbg=0 cterm=bold

let &statusline='[ %{mode()} ]
    \%r
    \%{fugitive#statusline()}
    \%*%#warningmsg#%*
    \%{SyntasticStatuslineFlag()}
    \[ %n: %t ]
    \[ %{&ff}/%Y ]
    \ %1*%m%* 
    \%=
    \[ %03v ]
    \[ Line %l of %L ]
    \[%p%%]'
