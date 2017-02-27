"Young Seok Tony Kim's vimrc file

"automatically enable syntax coloring
syntax on
filetype indent on
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Installing YCM
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --clang-completer --tern-completer
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'  " themes for airline
Plugin 'kien/ctrlp.vim' " Finder

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of Vundle Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" " Enable ycm support
let g:airline#extensions#ycm#enabled = 1
" theme
let g:airline_theme='base16_monokai'



" set number line
set number
" relative number line
set relativenumber 

" checks angle bracket pair
set matchpairs +=<:>

" Enable syntax highlighting
syntax on 
colorscheme desert
set background=dark

" Highlight search
set hlsearch

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab

" Indentation
set autoindent "Auto indent
set smartindent "Smart indent
set cindent "indentation for C programming

" No re-searching from the top
set nowrapscan

" Split
set splitright

" Encoding
set tenc=utf-8 "terminal encoding
set fileencoding=utf-8 "file save encoding
set encoding=utf8

" Key mappings"
" j and k moves to the following line even if the line is just splitted by
" limited window size
nmap j gj 
nmap k gk
nmap <F2> :bp<CR>
nmap <F3> :bn<CR>

" typo mappings
:command WQ wq
:command Wq wq
:command W w
:command Q q




" Install OmniCppComplete like described on
" http://vim.wikia.com/wiki/C++_code_completion
" " This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" " Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4








