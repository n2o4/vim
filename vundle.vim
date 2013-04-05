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
    Bundle 'kablamo/vim-git-log'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-dispatch'
    Bundle 'gregsexton/gitv'
    Bundle 'jamessan/vim-gnupg'
    Bundle 'zeekay/vim-lawrencium'
    Bundle 'mhinz/vim-signify'
    Bundle 'mattn/webapi-vim'
    Bundle 'mattn/gist-vim'
    Bundle 'mileszs/ack.vim'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'kien/ctrlp.vim'
    Bundle 'scrooloose/syntastic'

    filetype plugin indent on                 " Set type of file

" -v-1 Plugin settings
" ------------------------------------------------------------------------
  " -v-2 Netrw-related settings
  " ----------------------------------------------------------------------
      let g:netrw_liststyle=3 " Use tree-mode as default view
      let g:netrw_browse_split=4 " Open file in previous buffer
      let g:netrw_preview=1 " preview window shown in a vertically split

  " -v-2 Syntastic
  " ----------------------------------------------------------------------
      let g:syntastic_check_on_open=1
      let g:syntastic_enable_signs=1          " Put errors on left side
      let g:syntastic_quiet_warnings=1        " Only errors, not warnings please
      let g:syntastic_auto_loc_list=2         " Only show errors when I ask

  " -v-2 Vim-signify
  " ----------------------------------------------------------------------
      let g:signify_vcs_list = [ 'git', 'hg' ]
      let g:signify_enable_vcs = 1

      let g:signify_sign_overwrite = 1

      let g:signify_mapping_next_hunk = '<leader>gj'
      let g:signify_mapping_prev_hunk = '<leader>gk'

      let g:signify_mapping_toggle_higlight = '<leader>gh'
      let g:signify_mapping_toggle = '<leader>gt'

  " -v-2 Powerline
  " ----------------------------------------------------------------------
      let g:Powerline_symbols = 'unicode'

  " -v-2 gist-vim
  " ----------------------------------------------------------------------
      let g:gist_detect_filetype = 1
      let g:gist_open_browser_after_post = 1
      let g:gist_browser_command = 'dwb %URL% &'
      let g:gist_show_privates = 1
      let g:gist_post_private = 1

" vim: set fmr=-v-,-^- fdm=marker cms="%s" et ts=2 sw=2 sts=2 :
