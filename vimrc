set nocompatible              " required
set encoding=utf-8
filetype off                  " required
syntax enable
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
call vundle#end()            " required

filetype plugin indent on    " required

" split panels navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","
let g:ycm_autoclose_preview_window_after_completion=1
let g:SimpylFold_docstring_preview=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <C-n> :NERDTreeToggle<CR>

set showcmd             " show command in bottom bar

set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
nnoremap <space> za
" space open or cl

set noerrorbells

set tabstop=4
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ 	softtabstop=4
    \ 	shiftwidth=4
    \ 	textwidth=120
    \ 	expandtab
    \ 	autoindent
    \ 	fileformat=unix

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
