"Young Seok Tony Kim's vimrc file

"automatically enable syntax coloring
syntax on
filetype indent on
filetype plugin on
set nocompatible              " be iMproved, required

call plug#begin()
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" " Enable ycm support
let g:airline#extensions#ycm#enabled = 1
" theme
let g:airline_theme='base16_monokai'
" Add python3 support
let g:pymode_python = 'python3'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU keymap
nmap <Leader>p :CtrlPMRU<CR>
" Exclude files an directories
let g:ctrlp_custom_ignore = '*data/*|*/weights/*|*env/*'
set wildignore+=*.png,*/env/*,*/data/*,*/weights/*
" set cache directory
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" set number line
set number
" relative number line
set relativenumber
" Show command
set showcmd

" No more annoying indentation when paste
"set paste

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
nmap <C-J> :bp<CR>
nmap <C-K> :bn<CR>

" typo mappings
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command S StripWhitespace

" shorcut mappings for easy copy paste
:command YN set number | set relativenumber
:command NN set nonu | set norelativenumber

" Black settings - apply on write.
autocmd BufWritePre *.py execute ':Black'


" Install OmniCppComplete like described on
" http://vim.wikia.com/wiki/C++_code_completion
" " This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" " Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4


" cscope related stuff
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set csverb
    " C symbol
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    " definition
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    " functions that called by this function
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    " funtions that calling this function
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    " test string
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    " egrep pattern
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    " file
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    " files #including this file
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

    " Automatically make cscope connections
    function! LoadCscope()
        let db = findfile("cscope.out", ".;")
        if (!empty(db))
            let path = strpart(db, 0, match(db, "/cscope.out$"))
            set nocscopeverbose " suppress 'duplicate connection' error
            exe "cs add " . db . " " . path
            set cscopeverbose
        endif
    endfunction
    au BufEnter /* call LoadCscope()
endif
