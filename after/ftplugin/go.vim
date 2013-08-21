setlocal foldmethod=syntax
setlocal foldnestmax=10
setlocal nofoldenable
setlocal foldlevel=0

"set rtp+=/home/n2o4/code/go/src/github.com/golang/lint/misc/vim
autocmd FileType go autocmd BufWritePre <buffer> Fmt

setlocal makeprg=go\ build\ ./...
nnoremap <buffer> <c-m> :make<CR>

function! s:GoVet()
    cexpr system("go vet " . shellescape(expand('%')))
    copen
endfunction
command! GoVet :call s:GoVet()

function! s:GoLint()
    cexpr system("golint " . shellescape(expand('%')))
    copen
endfunction
command! GoLint :call s:GoLint()
