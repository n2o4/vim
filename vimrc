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
    set listchars=tab:▸\ ,eol:¬                 " List of strings used for list mode
    set relativenumber                          " Show relaitve line number for each line
    set numberwidth=5                           " Number of colums to use for the line number

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

      set winwidth=84                           " Basically, all non-focused windows shrink down to ..
      set winheight=10                          " .. five lines and the focused window takes up ..
      set winminheight=10                       " .. everything that's left (so the focused window ..
      set winheight=999                         " .. has at least 84 columns, the others shrink to accomodate).

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
    set completeopt=                            " Whether to use a popup menu for insert mode completion
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

      " Make window control quicker
      nnoremap <leader>w <C-w>
      
      " Quickly toggle 'set list'
      nmap <leader>l :set list!<cr>

      " I know when to ask for help, thank you very much.
      noremap <F1> <esc>

      " Navigate Vim's help with <Enter>
      au FileType help nmap <buffer> <CR> <C-]> 

      cmap w!! w !sudo tee >/dev/null %
      nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

      map ö [
      map ä ]
      map Ö {
      map Ä }

    " -v-3 Navigation remaps
    " --------------------------------------------------------------------
      " Match bracket pairs with <tab>
      nnoremap <tab> %
      vnoremap <tab> %

      " Insert \v before any string that is searched for.
      " This turns off Vim's own regex and resorts to normal regexes instead.

      nnoremap / /\v
      vnoremap / /\v
      nnoremap <silent> <Esc> :noh<CR><Esc>

    " -v-3 Tab mappings
    " --------------------------------------------------------------------
      map <leader>tt :tabnew<cr>
      map <leader>te :tabedit
      map <leader>tc :tabclose<cr>
      map <leader>to :tabonly<cr>
      map <leader>tn :tabnext<cr>
      map <leader>tp :tabprevious<cr>
      map <leader>tf :tabfirst<cr>
      map <leader>tl :tablast<cr>
      map <leader>tm :tabmove

    " -v-3 Mappings for the fugitive-plugin
    " --------------------------------------------------------------------
      nnoremap <leader>gs :Gstatus<cr>
      nnoremap <leader>gr :Gremove<cr>
      nnoremap <leader>gl :Glog<cr>
      nnoremap <leader>gb :Gblame<cr>
      nnoremap <leader>gm :Gmove<cr>
      nnoremap <leader>gp :Ggrep<cr>
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

    " -v-3 Remove weird startup kludges
    " http://superuser.com/questions/553601/vim-has-unexpected-key-presses-on-startup-what-could-be-causing-this
    " --------------------------------------------------------------------
      set t_RV= ttymouse=xterm2

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :