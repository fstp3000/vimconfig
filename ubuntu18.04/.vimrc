" run -> sudo apt install build-essential cmake python3-dev
" cd ~/.vim/bundle/YouCompleteMe
" python3 install.py --clang-completer

" general setup
set backspace=2
set number
set encoding=utf-8
set clipboard=unnamed
syntax on
" beautify
let python_highlight_all=1

" :sv -> updownsplit   :vs -> leftrightsplit
set splitbelow
set splitright
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Plugin 'tmhedberg/SimpylFold' 
let g:SimpylFold_docstring_preview=1

" 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
" Plugin 'scrooloose/nerdtree' pyc ignore
let NERDTreeIgnore=['\.pyc$', '\~$']


au BufNewFile,BufRead *.py set tabstop=4
			\ softtabstop=4 
			\ shiftwidth=4 
			\ textwidth=79
			\ expandtab
			\ autoindent
			\ fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
			\ softtabstop=2
			\ shiftwidth=2

" mark out the noneccessary space
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\ $/


set nocompatible              " required
filetype off                  " required
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
" nerd tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" super search
Plugin 'kien/ctrlp.vim'
" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
