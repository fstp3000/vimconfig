set backspace=2
set number
set encoding=utf-8
set splitbelow
set splitright
"in osx
set clipboard=unnamed
"for python tab 
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

"bad white space
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\ $/

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Enable folding with the spacebar
nnoremap <space> za
" NerdTree
map <C-n> :NERDTreeToggle<CR>
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
let g:SimpylFold_docstring_preview=1
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'fancy'
Plugin 'Valloric/YouCompleteMe', {'do':'./install.py --clang-completer --java-completer'}
call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
syntax on

"if has('gui_running')
"set background=dark
"colorscheme solarized
"else
"colorscheme Zenburn
"endif

call togglebg#map("<F5>")
