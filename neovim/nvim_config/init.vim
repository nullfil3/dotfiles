call plug#begin()



Plug 'pechorin/any-jump.vim'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'takkii/Bignyanco'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()



syntax enable " Enable syntax highlight
set encoding=utf-8
set ruler "show the cursor position all the time
colo gruvbox
set nu
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set nohlsearch
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set relativenumber
set background=dark
set hidden  " files will be save at memory and with that u can change files over tabs
set number
set mouse=a   " enable mouse
set inccommand=split   " neovim realtime changes
set clipboard=unnamedplus " Copypaste between vim and everywhere






let g:deoplete#enable_at_startup = 1
let mapleader="\<space>"    " space key equals mapkey



" nerd file tree 
nnoremap <leader>n :NERDTreeFocus<CR>
" windows navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
" fzf files searching
noremap <c-p> :Telescope find_files <cr>
noremap <c-g> :Telescope live_grep <cr>
" jump to definition
nnoremap gd :AnyJump<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
