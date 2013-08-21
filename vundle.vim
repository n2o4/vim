" -v-1 Vundle
" ------------------------------------------------------------------------
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " let Vundle manage Vundle
    " required! 
    Bundle 'gmarik/vundle'

" -v-1 My bundles
" ------------------------------------------------------------------------
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-dispatch'
    Bundle 'gregsexton/gitv'
    Bundle 'kablamo/vim-git-log'
    Bundle 'jamessan/vim-gnupg'
    Bundle 'ludovicchabant/vim-lawrencium'
    Bundle 'mhinz/vim-signify'
    Bundle 'mhinz/vim-startify'
    Bundle 'mattn/webapi-vim'
    Bundle 'mattn/gist-vim'
    Bundle 'mileszs/ack.vim'
    Bundle 'kien/ctrlp.vim'
    Bundle 'ivalkeen/vim-ctrlp-tjump'
    Bundle 'scrooloose/syntastic'
    Bundle 'xolox/vim-easytags'
    Bundle 'xolox/vim-misc'
    Bundle 'majutsushi/tagbar'
    Bundle 'sotte/presenting.vim'
    Bundle 'nelstrom/vim-markdown-folding'
    Bundle 'chilicuil/vim-sprunge'
    "Bundle 'bling/vim-airline'
    Bundle 'Blackrush/vim-gocode'
    Bundle 'dgryski/vim-godef'
    "Bundle 'Valloric/YouCompleteMe'
    Bundle 'davidhalter/jedi-vim'
    "Bundle 'Rip-Rip/clang_complete'

    filetype plugin indent on                 " Set type of file

" -v-1 Plugin settings
" ------------------------------------------------------------------------
  " -v-2 Netrw-related settings
  " ----------------------------------------------------------------------
      let g:netrw_liststyle=3 " Use tree-mode as default view
      let g:netrw_browse_split=4 " Open file in previous buffer
      let g:netrw_preview=1 " preview window shown in a vertically split

  " -v-2 ctrl-p
  " ----------------------------------------------------------------------
      let g:ctrlp_by_filename=1
      let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'
      let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
      let g:ctrlp_root_markers=['tags']
      let g:ctrlp_cache_dir = $HOME.'/.vim/swap/ctrlp'
      let g:ctrlp_extensions=['tag', 'line']
      let g:ctrlp_mruf_max=30
      let g:ctrlp_clear_cache_on_exit=0
      let g:ctrlp_open_new_file='r'
      let g:ctrlp_open_multiple_files='3hjr'

  " -v-2 Syntastic
  " ----------------------------------------------------------------------
      let g:syntastic_check_on_open=1
      let g:syntastic_enable_balloons=0
      let g:syntastic_enable_signs=1          " Put errors on left side
      let g:syntastic_enable_highlighting=1   " Use syntax highlighting when possible
      let g:syntastic_quiet_warnings=1        " Only errors, not warnings please
      let g:syntastic_auto_loc_list=2         " Only show errors when I ask
      let g:syntastic_loc_list_height=5

  " -v-2 Vim-signify
  " ----------------------------------------------------------------------
      let g:signify_vcs_list = [ 'git', 'hg' ]
      let g:signify_enable_vcs = 1
      let g:signify_sign_overwrite = 1

  " -v-2 gist-vim
  " ----------------------------------------------------------------------
      let g:gist_detect_filetype = 1
      let g:gist_open_browser_after_post = 1
      "let g:gist_browser_command = 'dwb %URL% &'
      let g:gist_show_privates = 1
      let g:gist_post_private = 1

  " -v-2 easytags
  " ----------------------------------------------------------------------
      "let g:easytags_always_enabled=1
      let g:easytags_include_members=1
      let g:easytags_by_filetype='~/.vim/tags/'
      let g:easytags_dynamic_files=1

  " -v-2 taglist.vim
  " ----------------------------------------------------------------------
      let Tlist_GainFocus_On_ToggleOpen = 1
      "let Tlist_Show_One_File = 1

  " -v-2 unite.vim
  " ----------------------------------------------------------------------
      "let g:unite_enable_start_insert=1
      "let g:unite_winheight=10

  " -v-2 tagbar
  " ----------------------------------------------------------------------
      let g:tagbar_width     = 40
      let g:tagbar_autoclose = 1
      let g:tagbar_autofocus = 1
      let g:tagbar_compact   = 1
      let g:tagbar_type_go   = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

  " -v-2 startify
  " ----------------------------------------------------------------------
      let g:ctrlp_reuse_window = 'startify'
      let g:startify_session_dir = '~/.vim/session'
      let g:startify_enable_special = 0
      let g:startify_show_dir = 1
      let g:startify_show_files = 1
      let g:startify_show_sessions = 1
      "let g:startify_custom_indices = ['a','s','d','f']
      let g:startify_bookmarks = [
        \ '~/.vim/vimrc',
        \ '~/.vim/vundle.vim',
        \ '~/.vim/plugin/keybinds.vim',
        \ '~/.muttrc',
        \ '~/.slrnrc',
        \ '~/.news/scorefile'
        \ ]
      let g:startify_skiplist = [
        \ '.vim/*',
        \ '.snotes/*',
        \ 'COMMIT_EDITMSG',
        \ '.vimgolf',
        \ '**/.git/*'
        \ ]

      autocmd FileType startify setlocal nocursorline colorcolumn=0

  " -v-2 vim-markdown-folding
  " ----------------------------------------------------------------------
      let g:markdown_fold_style = 'nested'

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
