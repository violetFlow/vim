" Setting vim-plug
call plug#begin()
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set encoding=UTF-8

" Setting Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'preservim/nerdtree'
Plugin 'blueyed/vim-diminactive'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'

call vundle#end()

syntax on " シンタックスハイライトを有効化
filetype plugin indent on " ファイルタイプに基づいたインデントを有効化
set nu " 行数を表示
set autoindent " 新しい行を始める時に自動でインデント
set hlsearch " 検索結果をハイライトする
set re=0 " Use new regular expression engine
set foldmethod=syntax " Folding settings
colorscheme jellybeans

" default indent setting
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard+=unnamed

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>t :below term<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>p :set path+=$PWD/**<CR>

" NERDTree shortcuts
nnoremap <C-n> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
