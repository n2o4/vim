" -v-1 Startup
" ------------------------------------------------------------------------
    set nocompatible                            " No vi-compatibility
    filetype off

    source ~/.vim/vundle.vim

" -v-1 Moving around, searching and patterns
" ------------------------------------------------------------------------
    "set autochdir                               " Change to directory of file in buffer
    set incsearch                               " Show match for party typed search command
    set ignorecase                              " Ignore case when using a search pattern
    set smartcase                               " Override 'ignorecase' when pattern has upper case characters
    "set keywordprg=firefox\ -search             " Change the program to use with the K-key.

" -v-1 Displaying text
" ------------------------------------------------------------------------
    syntax on                                   " Set syntax highlighting on
    set scrolloff=20                            " Number of screen lines to show around the cursor
    set nowrap                                  " Long lines don't wrap
    set fillchars=vert:\|,fold:-
    set cmdheight=1                             " Number of lines used for the command-line
    set listchars=tab:▸\ ,eol:¬,trail:·,extends:→,precedes:←  " List of strings used for list mode
    set relativenumber                          " Show relative line number for each line
    set numberwidth=5                           " Number of columns to use for the line number

" -v-1 Tags
" ------------------------------------------------------------------------
    set tags=./tags,tags;,~/.vim/tags/

" -v-1 Syntax, highlighting and spelling
" ------------------------------------------------------------------------
    set hlsearch                                " Highlight all matches for the last used search pattern
    "set nocursorcolumn                            " Highlight the column of the cursor
    "set nocursorline                            " Highlight the line of the cursor
    set colorcolumn=80                          " Highlight the 80th character

    " -v-2 Appearance
    " --------------------------------------------------------------------
      if &t_Co == 256
        let g:hybrid_use_Xresources = 1
        colorscheme hybrid
        "let g:solarized_termcolors=256
        "syntax enable
        "set background=dark
        "colorscheme solarized
      endif

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
    set shortmess+=ITa                           " List of flags to make messages shorter
    set showcmd                                 " Show (partial) command keys in the status line
    set showmode
    set ruler                                   " Show cursor position below each window
    set confirm                                 " Start a dialog when a command fails
    set noerrorbells                            " No ringing the bell for error messages
    set novisualbell                            " No visual bell instead of beeping either
    set t_ti= t_te=

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

" -v-2 Remove weird startup kludges
" http://superuser.com/questions/553601/vim-has-unexpected-key-presses-on-startup-what-could-be-causing-this
" ------------------------------------------------------------------------
set t_RV= ttymouse=xterm2
" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
