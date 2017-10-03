filetype plugin indent on
syntax enable
let mapleader=","

if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.local/share/nvim/plugged')

  " General
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'vim-airline/vim-airline'
  Plug 'airodactyl/neovim-ranger'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

" Required:
filetype plugin indent on
syntax enable
map <Leader>n <plug>NERDTreeTabsToggle<CR>
set relativenumber
set number
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

