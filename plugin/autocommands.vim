" -v-1 Auto-commands
" ------------------------------------------------------------------------
" -v-2 Only highlight the 80th column of the currently active window
" ------------------------------------------------------------------------
"augroup BgHghlight
"    autocmd!
"    autocmd WinEnter * set colorcolumn=80 cursorline cursorcolumn
"    autocmd WinLeave * set colorcolumn=0 nocursorline nocursorcolumn
"augroup END

" -v-2 Only highlight the cursorline when in insert mode
" ------------------------------------------------------------------------
au InsertEnter * set cursorline cursorcolumn
au InsertLeave * set nocursorline nocursorcolumn

" -v-2 Auto-clean fugitive buffers
" ------------------------------------------------------------------------
autocmd BufReadPost fugitive://* set bufhidden=delete

" -v-2 Set up compiler and makeprg for Ruby
" ------------------------------------------------------------------------
autocmd FileType ruby
          \ if expand('%') =~# '_test\.rb$' |
          \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
          \ elseif expand('%') =~# '_spec\.rb$' |
          \   compiler rspec | setl makeprg=rspec\ \"%:p\" |
          \ else |
          \   compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
          \ endif

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
