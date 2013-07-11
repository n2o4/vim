" Add boxquotes macro
" Usage:
"    Blockquote a range (default: current line)
"    :<range>Bq [title]
"    Blockquote a file
"    :Bqf {filename}
"    Blockquote a file, starting at line {start}
"    :Bqf {filename} {start}
"    Blockquote a file, starting at line {start} and ending at {end}
"    :Bqf {filename} {start} {end}
"    Remove a blockquote, starting at <range> (default: current line)
"    :<range>UBq

let BOXQUOTE=expand("~/.vim/macros/boxquotes.vim")
if filereadable(BOXQUOTE) | exe "source " . BOXQUOTE | endif

" 'sn'ip quotes with sn 
iabbrev <buffer> sn [...]

iabbrev <buffer> != ≠

" Mark a block of text in visual mode to snip content
vmap <buffer><leader>el c[...]
vmap <buffer><leader>EL c> [

" rot13
vmap <buffer><leader>r :!tr A-Za-z N-ZA-Mn-za-m<CR>

" Mark some lines for quotes
vmap <buffer><leader>qq <ESC>'<O--- Quote begin ---<ESC>'>o--- Quote end ---<ESC>o<ESC>

" Mark some lines for code
vmap <buffer><leader>cc <ESC>'<O<--- Cut here ---><ESC>'>o<--- Cut here ---><ESC>o<ESC>

" Quickly change mail subjects
nnoremap <buffer><leader>cs 1G/^Subject: <CR>:s/Re:/was:/<CR>Wi (<C-O>$)<ESC>0Whi

" Fix quoting (Fix various other quote characters)
vmap <buffer><leader>fq :s/^\(\( *>\)*\)\s*\([-"\|:}\%]\s*\)/\1> /e<CR>

" Kill excess quote spaces (when quoting a quote)
nnoremap <buffer><leader>kq mz:%s/^> >/>>/<cr>`z

" Quickly delete quoted signatures
nnoremap <buffer><leader>ds G?^> -- $<CR>d}

" Quickly delete excess quoting signs
nnoremap <buffer><leader>dq :%s/^>[ >]*$//<CR>

" Make Message urgent:
nnoremap <buffer><leader>mu 1G}OPriority: urgent<ESC>

" Formatting the current paragraph according to the current 'textwidth' 
" with ^J (control-j)
imap <C-J> <c-o>gqap
map <C-J> gqap
vmap <C-J> gq

" Hellos and greetings.
map ;: 1G}oGreetings.<CR><ESC>
map ;;  G/^\* /e+1<CR>ye1G}oGreetings, <c-r>"!<cr><ESC>
map ,he 1G}oHello,<CR><ESC>
map ,He G/^\* /e+1<CR>ye1G}oHello, !<ESC>Po<ESC>

nnoremap <buffer>Q gq
vnoremap <buffer>Q gq
setlocal nocp
setlocal formatoptions=tcrqw
setlocal colorcolumn=72
setlocal textwidth=72
setlocal wrap
setlocal spell
setlocal spelllang=en,de
setlocal number
"call cursor(1,1) 
call search('^$')
