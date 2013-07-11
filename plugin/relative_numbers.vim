" Toggle between relative and absolute line numbers
" --------------------------------------------------------------------
function! g:ToggleNuMode()
    if(&rnu == 1)
        set nu
    else
        set rnu
    endif
endfunc

nnoremap <leader>n :call g:ToggleNuMode()<cr>
