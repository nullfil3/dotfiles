call plug#begin()

Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'takkii/Bignyanco'
let g:deoplete#enable_at_startup = 1
call plug#end()

colo gruvbox
set background=dark
" files will be save at memory and with that u can change files over tabs
set hidden
" enable lines
set number
set relativenumber
" enable mouse
set mouse=a
" neovim realtime changes
set inccommand=split

" mapping atalhos
let mapleader="\<space>"
" Example --> <leader>; A;<esc>

" fzf files searching
noremap <c-p> :Files <cr>

" Change clang binary path
call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')

" Change clang options
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')

