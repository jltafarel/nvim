filetype plugin indent on
syntax enable
let mapleader=","

if &compatible
  set nocompatible               " Be iMproved
endif
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
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
  Plug 'iCyMind/NeoSolarized'
  " JS
  Plug 'mattn/emmet-vim'
  Plug 'moll/vim-node'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'maksimr/vim-jsbeautify'
  Plug 'w0rp/ale'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'wokalski/autocomplete-flow'
call plug#end()

" Required:
set termguicolors
filetype plugin indent on
syntax enable
colorscheme NeoSolarized
set background=dark
map <C-n> :NERDTreeToggle<CR>
set number
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd vimenter * NERDTree
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:deoplete#enable_at_startup = 1

