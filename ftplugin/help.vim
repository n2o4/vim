" help.vim - ftplugin for better Help navigation and operation
" Barry Arthur

" jump to links with CR
nmap <buffer> <CR> <C-]>
" jump back with BS
nmap <buffer> <BS> <C-T>
" skip to next option link
nmap <buffer> o /'[a-z]\{2,\}'<CR>
" skip to previous option link
nmap <buffer> O ?'[a-z]\{2,\}'<CR>
" skip to next subject link
nmap <buffer> s /\|\S\+\|<CR>l
" skip to previous subject link
nmap <buffer> S h?\|\S\+\|<CR>l
" quit
nmap <buffer> q :q<CR>
" skip to next/prev quickfix list entry (from a helpgrep)
nmap <buffer> <leader>j :cnext<CR>
nmap <buffer> <leader>k :cprev<CR>

set nospell
