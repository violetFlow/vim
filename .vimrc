
" Setting highlight
syntax on 
set hlsearch

" Setting expression
set encoding=UTF-8 " Setting encoding
set re=0 " Use new regular expression engine

" Setting folding
set foldmethod=syntax " Fold By syntax

" Setting display & sound
set nu " Display line number
set laststatus=2 " Turn on bottom bar
set belloff=all " Turn off Beep

" Setting indent
filetype plugin indent on 
set autoindent 
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard+=unnamed

" Setting color scheme
colorscheme jellybeans

" Setting vim-plug
call plug#begin()
" language server protocol
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" autocomplete
Plug 'prabirshrestha/asyncomplete.vim' 
" command line finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
call plug#end()

" Setting Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline' " status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim' " color scheme
Plugin 'preservim/nerdtree' " directory search
Plugin 'blueyed/vim-diminactive' " focusing current window
Plugin 'puremourning/vimspector' " debugger
call vundle#end()

" Setting vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'

" Setting asyncoplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" Setting external vim files
if filereadable(expand('~/.vim/command.vim'))
  source ~/.vim/command.vim
endif

" Shortcuts
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>t :below term<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>p :set path+=$PWD/**<CR>
nnoremap <leader>f :LspDefinition<CR>
nnoremap <C-n> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

