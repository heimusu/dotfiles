if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

filetype plugin indent on     " required!
filetype indent on
syntax on

"let g:syntastic_mode_map = {
"    \ "mode" : "active",
"    \ "active_filetypes" : ["javascript", "json"]
"    \}
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_javascript_checker ='jshint'

set autoindent
set clipboard=unnamed
set number
set showmatch
set smartcase
set smarttab
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"if &t_Co > 2 || has('gui_running')
      "syntax on
"endif
set clipboard+=unnamed
set backspace=start,eol,indent
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set undodir=$HOME/.vim/undodir
set undofile
set backspace=start,eol,indent

nnoremap <silent> ,uf :<C-u>Unite file<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,tr :<C-u>NERDTree<CR>
"set nocompatible               " be iMproved
"filetype off
