" -v-1 Keybinds
" ------------------------------------------------------------------------
" -v-2 Leader key settings
" ------------------------------------------------------------------------
let mapleader = "\<space>"

" -v-2 Personal mappings
" ------------------------------------------------------------------------
"imap jj <Esc>
inoremap <C-c> <Esc>

" Use double-space to enter command-line
" http://vimbits.com/bits/444
nnoremap <leader><space> :

" ack it!
nnoremap <leader>a :Ack<space>

" Open help <foo> in vertical split
nnoremap <leader>h :vert h<space>

" Quickly toggle tag window
nnoremap <silent> <leader>z :TagbarToggle<CR>

" Quickly toggle 'set list'
nmap <leader>s :setlocal list!<cr>

" Stop cycling when you can fly
nnoremap <leader>ls :ls<CR>:b<space>

" I know when to ask for help, thank you very much.
noremap <F1> <esc>

cmap w!! w !sudo tee >/dev/null %

" Set local directory only for the current window (Each window has a local
" current directory that can be different from Vim's global current
" directory).
nnoremap <silent><leader>cd :lcd %:p:h<CR>

" Shortcut for Syntastic error panel (Overwrites current location list)
nnoremap <leader>er :Errors<CR>

nnoremap <leader>ve <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

nnoremap Y y$

map ö [
map ä ]
map Ö {
map Ä }

" -v-2 Window management mappings
" ------------------------------------------------------------------------
" Make window control quicker
"nnoremap <leader>w <C-w>

"nnoremap <silent> <C-m> :wincmd _<CR>
"nnoremap <silent> <C-j> <C-W>j<C-W>_
"nnoremap <silent> <C-k> <C-W>k<C-W>_
"nnoremap <silent> <C-h> :wincmd h<CR>
"nnoremap <silent> <C-l> :wincmd l<CR>

" The following remaps were blatantly stolen from Barry Arthur, thanks!
" https://gist.github.com/dahu/5306096
"
" Resize windows to half/double their current size (multipliable by a count)
"nnoremap \k :<c-u>exe "resize " . (winheight(0) / (2 * v:count1))<cr>
"nnoremap \j :<c-u>exe "resize " . (winheight(0) * (2 * v:count1))<cr>
"nnoremap \h :<c-u>exe "vertical resize " . (winwidth(0) / (2 * v:count1))<cr>
"nnoremap \l :<c-u>exe "vertical resize " . (winwidth(0) * (2 * v:count1))<cr> 

nnoremap \j :<c-u>exe "resize " . (winheight(0) / (2 * v:count1))<cr>
nnoremap \k :<c-u>exe "resize " . (winheight(0) * (2 * v:count1))<cr>
nnoremap \l :<c-u>exe "vertical resize " . (winwidth(0) / (2 * v:count1))<cr>
nnoremap \h :<c-u>exe "vertical resize " . (winwidth(0) * (2 * v:count1))<cr> 

" Max/Min window resize
nnoremap \K :<c-u>resize 1<cr>
nnoremap \J :<c-u>resize 9999<cr>
nnoremap \H :<c-u>vertical resize 1<cr>
nnoremap \L :<c-u>vertical resize 9999<cr>

" Rotate windows
nnoremap \<up>    <c-w>K
nnoremap \<down>  <c-w>J
nnoremap \<left>  <c-w>H
nnoremap \<right> <c-w>L

" -v-2 Navigation remaps
" ------------------------------------------------------------------------
" Match bracket pairs with <tab>
"nnoremap <tab> %
"vnoremap <tab> %

nnoremap <leader>] :tjump /<c-r>=expand('<cword>')<cr><cr>
nnoremap <leader>} :ptag /<c-r>=expand('<cword>')<cr><cr>

" Insert \v before any string that is searched for.
" This turns off Vim's own regex and resorts to normal regexes instead.

"nnoremap / /\v
"vnoremap / /\v
nnoremap <silent><CR> :nohlsearch<cr>

" -v-2 Tab mappings
" ------------------------------------------------------------------------
nnoremap \tt :tabnew<cr>
nnoremap \te :tabedit
nnoremap \tc :tabclose<cr>
nnoremap \to :tabonly<cr>
nnoremap \tn :tabnext<cr>
nnoremap \tp :tabprevious<cr>
nnoremap \tf :tabfirst<cr>
nnoremap \tl :tablast<cr>
nnoremap \tm :tabmove

" -v-2 Mappings for ctrl-p
" ------------------------------------------------------------------------
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>F :CtrlPCurWD<cr>
nnoremap <leader>p :CtrlPtjump<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>m :CtrlPMixed<cr>
nnoremap <leader>M :CtrlPMRUFiles<cr>
nnoremap <leader>T :CtrlPTag<cr>
nnoremap <leader>t :CtrlPBufTag<cr>
nnoremap <leader>L :CtrlPLine<cr>

" -v-2 Mappings for signify
" ------------------------------------------------------------------------
"nnoremap <leader>gj <plug>(signify-next-jump)
"nnoremap <leader>gk <plug>(signify-prev-jump)
"nnoremap <leader>gh <plug>(signify-toggle-highlight)
"nnoremap <leader>gt <plug>(signify-toggle)

"let g:signify_mapping_next_hunk = '<leader>gj'
"let g:signify_mapping_prev_hunk = '<leader>gk'
"let g:signify_mapping_toggle_higlight = '<leader>gh'
"let g:signify_mapping_toggle = '<leader>gt'

" -v-2 Mappings for unite.vim
" ------------------------------------------------------------------------
"nnoremap <leader>uu :UniteResume<CR>
"nnoremap <leader>uf :Unite buffer file<CR>
"inoremap <C-U> <C-o>:Unite register<CR>
"nnoremap <leader>ur :Unite register<CR>
"nnoremap <leader>ug :Unite -start-insert buffer<CR>
"nnoremap <leader>uq :Unite quickfix<CR>
"nnoremap <leader>uo :Unite outline<CR>
"nnoremap <leader>ul :Unite location-list<CR>

" -v-2 Mappings for the fugitive-plugin
" ------------------------------------------------------------------------
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gp :Ggrep<space>
nnoremap <leader>gR :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gP :Git push<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gg :Git 

" -v-2 Quickfix-bindings
" ------------------------------------------------------------------------
"nnoremap <leader>co :copen<cr>
"nnoremap <leader>cc :copen<cr>
"nnoremap <leader>cw :cwindow<cr>
"nnoremap <leader>cp :cprev<cr>
"nnoremap <leader>cn :cnext<cr>
"nnoremap <leader>cf :cfirst<cr>
"nnoremap <leader>cl :clast<cr>
"nnoremap <leader>CC :cclose<cr>
"nnoremap <leader>ce :cex[]<cr>

" -v-2 Ack-motions (http://www.vimbits.com/bits/153)
"
" Works with pretty much everything, including: w, W, e, E, b, B, t*,
" f*, i*, a*, and custom text objects.  For example: \aiw will Ack
" for the word under the cursor.  \aib will Ack for the contents of
" the parentheses the cursor is inside.
" ------------------------------------------------------------------------
nnoremap <silent> \a :set opfunc=<SID>AckMotion<CR>g@
xnoremap <silent> \a :<C-U>call <SID>AckMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
  if a:type ==# 'v'
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# 'char'
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:AckMotion(type) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"

  let @@ = reg_save
endfunction

" Search through code for non-definition occurences of identifiers.
" Basically it's a glorified, but effective, grep.
nnoremap <Leader>aw mS:Ack '\b<C-r><C-w>\b'<CR>

" -v-2 http://vimcasts.org/episodes/the-edit-command/
" ------------------------------------------------------------------------
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" -v-2 Omni-completion with ctrl-space (Thanks c00kiemon5ter)
" https://github.com/c00kiemon5ter/vim/blob/master/vimrc
" ------------------------------------------------------------------------
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
                \ "\<lt>C-n>" :
                \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
                \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
                \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
