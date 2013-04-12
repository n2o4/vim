" -v-1 Startup
" ------------------------------------------------------------------------
    set nocompatible                            " No vi-compatibility
    filetype off

    source ~/.vim/vundle.vim

" -v-1 Moving around, searching and patterns
" ------------------------------------------------------------------------
    set autochdir                               " Change to directory of file in buffer
    set incsearch                               " Show match for party typed search command
    set ignorecase                              " Ignore case when using a search pattern
    set smartcase                               " Override 'ignorecase' when pattern has upper case characters

" -v-1 Displaying text
" ------------------------------------------------------------------------
    syntax on                                   " Set syntax highlighting on
    set scrolloff=20                            " Number of screen lines to show around the cursor
    set nowrap                                  " Long lines don't wrap
    set fillchars=vert:\|,fold:-
    set listchars=tab:▸\ ,eol:¬,trail:·,extends:→,precedes:←  " List of strings used for list mode
    set relativenumber                          " Show relative line number for each line
    set numberwidth=5                           " Number of columns to use for the line number

" -v-1 Syntax, highlighting and spelling
" ------------------------------------------------------------------------
    "set background=dark                        " Set background color
    set hlsearch                                " Highlight all matches for the last used search pattern
    set cursorcolumn                            " Highlight the column of the cursor
    set nocursorline                            " Highlight the line of the cursor
    set colorcolumn=80                          " Highlight the 80th character

    " -v-2 Appearance
    " --------------------------------------------------------------------
      let g:hybrid_use_Xresources = 1
      colorscheme hybrid

" -v-1 Multiple windows
" ------------------------------------------------------------------------
    set laststatus=2                            " When to use a Status line for the last window

     " set winwidth=84                           " Basically, all non-focused windows shrink down to ..
     " set winheight=10                          " .. five lines and the focused window takes up ..
     " set winminheight=10                       " .. everything that's left (so the focused window ..
     " set winheight=999                         " .. has at least 84 columns, the others shrink to accomodate).

    set hidden                                  " Don't unload a buffer when no longer shown in a window.
    set splitbelow                              " Open new windows under the current one ..
    set splitright                              " .. or to the right of the current one.

" -v-1 Multiple tag pages
" ------------------------------------------------------------------------
    set showtabline=2                           " When to use a tab pages line
    
" -v-1 Using the mouse
" ------------------------------------------------------------------------
    set mouse=a                                 " List of flags for using the mouse
    set mousehide                               " Hide the mouse pointer while typing

" -v-1 Messages and info
" ------------------------------------------------------------------------
    set shortmess+=Ia                           " List of flags to make messages shorter
    set showcmd                                 " Show (partial) command keys in the status line
    set noshowmode
    set ruler                                   " Show cursor position below each window
    set confirm                                 " Start a dialog when a command fails
    set noerrorbells                            " No ringing the bell for error messages
    set novisualbell                            " No visual bell instead of beeping either

" -v-1 Editing text
" ------------------------------------------------------------------------
    set backspace=indent,eol,start              " Specify what backspace and C-w can do in insert mode.
    set formatoptions=rq                        " List of flags how automatic formatting works :help fo-table
    set completeopt+=menu,longest               " Whether to use a popup menu for insert mode completion
    set omnifunc=syntaxcomplete#Complete        " Function for filetype-specific insert mode completion
    set dictionary+=/usr/share/dict/words       " List of dictionary files for keyword completion
    set infercase                               " Adjust case of a keyword completion match 
    set showmatch                               " When inserting a bracket, briefly highlight the match

" -v-1 Tabs and indenting
" ------------------------------------------------------------------------
    set tabstop=4                               " Number of spaces a <Tab> in the text stands for
    set shiftwidth=4                            " Number of spaces used for each step of (auto)indent
    set shiftround                              " Round to 'shiftwidth' for '<<' and '>>'
    set expandtab                               " Expand <Tab> to spaces in insert mode

" -v-1 Reading and writing files
" ------------------------------------------------------------------------
    set backup                                  " Keep a backup after overwriting a file
    set backupdir=/home/n2o4/.vim/backup        " List of directories to put backup files in

" -v-1 The swap file
" ------------------------------------------------------------------------
    set directory=/home/n2o4/.vim/swap          " List of directories for the swap file

" -v-1 Command line editing
" ------------------------------------------------------------------------
    set history=250                             " How many command lines are remembered
    set wildmode=longest:list,full              " Specifies how command line completion works
    set wildmenu                                " Command-line completion shows a list of matches 

" -v-1 Multi-byte characters
" ------------------------------------------------------------------------
    set encoding=utf-8                          " Character encoding used in Vim

" -v-1 Various
" ------------------------------------------------------------------------
    set gdefault                                " Use the 'g'lobal flag for :substitute
    set viminfo+=n~/.vim/.viminfo

" -v-1 Mappings, auto-commands & abbreviations
" ------------------------------------------------------------------------
  " -v-2 Mappings
  " ----------------------------------------------------------------------
    " -v-3 Leader key settings
    " --------------------------------------------------------------------
      let mapleader = "\<space>"

    " -v-3 Personal mappings
    " --------------------------------------------------------------------
      imap jj <Esc>

      " ack it!
      nnoremap <leader>a :Ack<space>

      " Open help <foo> in vertical split
      nnoremap <leader>h :vert h<space>

      " Quickly toggle 'set list'
      nmap <leader>s :setlocal list!<cr>

      " Stop cycling when you can fly
      nnoremap <leader>ls :ls<CR>:b<space>

      " I know when to ask for help, thank you very much.
      noremap <F1> <esc>

      " Navigate Vim's help with <Enter>
      au FileType help nmap <buffer> <CR> <C-]> 

      cmap w!! w !sudo tee >/dev/null %
      nnoremap <leader>ve <C-w><C-v><C-l>:e $MYVIMRC<cr>
      nnoremap <leader>vs :source $MYVIMRC<cr>

      nnoremap Y y$

      map ö [
      map ä ]
      map Ö {
      map Ä }

    " -v-3 Window management mappings
    " --------------------------------------------------------------------
      " Make window control quicker
      nnoremap <leader>w <C-w>

      " The following remaps were blatantly stolen from Barry Arthur, thanks!
      " https://gist.github.com/dahu/5306096
      "
      " Resize windows to half/double their current size (multipliable by a count)
      nnoremap \k :<c-u>exe "resize " . (winheight(0) / (2 * v:count1))<cr>
      nnoremap \j :<c-u>exe "resize " . (winheight(0) * (2 * v:count1))<cr>
      nnoremap \h :<c-u>exe "vertical resize " . (winwidth(0) / (2 * v:count1))<cr>
      nnoremap \l :<c-u>exe "vertical resize " . (winwidth(0) * (2 * v:count1))<cr> 

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

    " -v-3 Navigation remaps
    " --------------------------------------------------------------------
      " Match bracket pairs with <tab>
      nnoremap <tab> %
      vnoremap <tab> %

      " Insert \v before any string that is searched for.
      " This turns off Vim's own regex and resorts to normal regexes instead.

      nnoremap / /\v
      vnoremap / /\v
      nnoremap <silent> <CR> :nohlsearch<CR>

    " -v-3 Tab mappings
    " --------------------------------------------------------------------
      nnoremap \tt :tabnew<cr>
      nnoremap \te :tabedit
      nnoremap \tc :tabclose<cr>
      nnoremap \to :tabonly<cr>
      nnoremap \tn :tabnext<cr>
      nnoremap \tp :tabprevious<cr>
      nnoremap \tf :tabfirst<cr>
      nnoremap \tl :tablast<cr>
      nnoremap \tm :tabmove

    " -v-3 Mappings for ctrl-p
    " ----------------------------------------------------------------------
      nnoremap <leader>f :CtrlP<cr>
      nnoremap <leader>F :CtrlPCurWD<cr>
      nnoremap <leader>b :CtrlPBuffer<cr>
      nnoremap <leader>m :CtrlPMixed<cr>
      nnoremap <leader>M :CtrlPMRUFiles<cr>
      nnoremap <leader>t :CtrlPTag<cr>
      nnoremap <leader>T :CtrlPBufTag<cr>
      nnoremap <leader>L :CtrlPLine<cr>

    " -v-3 Mappings for the fugitive-plugin
    " --------------------------------------------------------------------
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

    " -v-3 Quickfix-bindings
    " --------------------------------------------------------------------
      nnoremap <leader>co :copen<cr>
      nnoremap <leader>cc :cc 
      nnoremap <leader>cw :cwindow<cr>
      nnoremap <leader>cp :cprev<cr>
      nnoremap <leader>cn :cnext<cr>
      nnoremap <leader>cf :cfirst<cr>
      nnoremap <leader>cl :clast<cr>
      nnoremap <leader>CC :cclose<cr>
      nnoremap <leader>ce :cex[]<cr>

    " -v-3 Ack-motions (http://www.vimbits.com/bits/153)
    "
    " Works with pretty much everything, including: w, W, e, E, b, B, t*,
    " f*, i*, a*, and custom text objects.  For example: _aiw will Ack
    " for the word under the cursor.  _aib will Ack for the contents of
    " the parentheses the cursor is inside.
    " --------------------------------------------------------------------
      nnoremap <silent> _a :set opfunc=<SID>AckMotion<CR>g@
      xnoremap <silent> _a :<C-U>call <SID>AckMotion(visualmode())<CR>

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

    " -v-3 http://vimcasts.org/episodes/the-edit-command/
    " --------------------------------------------------------------------
      cnoremap %% <C-R>=expand('%:h').'/'<cr>
      map <leader>ew :e %%
      map <leader>es :sp %%
      map <leader>ev :vsp %%
      map <leader>et :tabe %%

    " -v-3 Omni-completion with ctrl-space (Thanks c00kiemon5ter)
    " https://github.com/c00kiemon5ter/vim/blob/master/vimrc
    " --------------------------------------------------------------------
      inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
                      \ "\<lt>C-n>" :
                      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
                      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
                      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
      imap <C-@> <C-Space>

  " -v-2 Auto-commands
  " ----------------------------------------------------------------------
    " -v-3 Toggle between relative and absolute line numbers
    " --------------------------------------------------------------------
      function! g:ToggleNuMode()
        if(&rnu == 1)
          set nu
        else
          set rnu
        endif
      endfunc

      nnoremap <f5> :call g:ToggleNuMode()<cr>

    " -v-3 Only highlight the 80th column of the currently active window
    " --------------------------------------------------------------------
      augroup BgHghlight
        autocmd!
        autocmd WinEnter * set colorcolumn=80
        autocmd WinLeave * set colorcolumn=0
      augroup END

    " -v-3 Only highlight the cursorline when in insert mode
    " --------------------------------------------------------------------
      au InsertEnter * set cursorline
      au InsertLeave * set nocursorline

    " -v-3 Auto-clean fugitive buffers
    " --------------------------------------------------------------------
      autocmd BufReadPost fugitive://* set bufhidden=delete

    " -v-3 Set up compiler and makeprg for Ruby
    " --------------------------------------------------------------------
      autocmd FileType ruby
                \ if expand('%') =~# '_test\.rb$' |
                \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
                \ elseif expand('%') =~# '_spec\.rb$' |
                \   compiler rspec | setl makeprg=rspec\ \"%:p\" |
                \ else |
                \   compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
                \ endif

    " -v-3 Remove weird startup kludges
    " http://superuser.com/questions/553601/vim-has-unexpected-key-presses-on-startup-what-could-be-causing-this
    " --------------------------------------------------------------------
      set t_RV= ttymouse=xterm2

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
