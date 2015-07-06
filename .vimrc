"Young Seok Tony Kim's vimrc file

"automatically enable syntax coloring
syntax on
filetype indent on
filetype plugin on


" set number line
set nu

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



" Install OmniCppComplete like described on
" http://vim.wikia.com/wiki/C++_code_completion
" " This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" " Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4








