
" Settings
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set wildmode=list:longest
syntax enable


" Appearance
set number
set relativenumber
set cursorline
set showmatch


" Indents/Tabs
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4


" Searching
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch


" Key-bindings
inoremap jk <ESC>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nnoremap <Space>e :NERDTreeToggle<CR>
nnoremap <Space>t :TagbarToggle<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>w :w<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap j gj
nnoremap k gk


" Functions
""history
if has('persistent_undo')
    let undo_path = expand('~/.vim/undo')
    exe 'set undodir=' .. undo_path
    set undofile
endif

""vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'

Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()

""if expand-simbol on NERDTree is missing
"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"
