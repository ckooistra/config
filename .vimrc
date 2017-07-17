set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
"Plugin 'python-mode/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8                                                                                              
syntax enable
colorscheme solarized
set background=dark
set t_Co=16
set laststatus=2
set number

let g:airline_powerline_fonts = 1 

let g:solarized_termcolors=256

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

let g:ycm_autoclose_preview_window_after_insertion = 1
"au BufNewFile,BufRead *.py                                                                             
 "   \ set tabstop=4 |                                                                                 
"    \ set softtabstop=4 |                                                                             
"    \ set shiftwidth=4 |                                                                               
"    \ set textwidth=79 |                                                                              
"    \ set expandtab |                                                                                 
"    \ set autoindent |                                                                                 
"    \ set fileformat=unix                                                                              
                                                                                                      
au BufNewFile,BufRead *.js, *.html, *.css                                                             
    \ set tabstop=2                                                                                   
    \ set softtabstop=2
    \ set shiftwidth=2    
