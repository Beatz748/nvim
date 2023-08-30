set nocompatible              " be iMproved, required
filetype plugin on
""set omnifunc=syntaxcomplete#Complete

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

"Theme

"Plugin 'tomasr/molokai'
Plugin 'dracula/vim'

Plugin 'scrooloose/nerdtree'

"Plugin 'ingram1107/moneokai'

Plugin 'SirVer/ultisnips'

"Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"************************************BEATZ CONFIGURATION*************************"

"Theme set"

set omnifunc=omni#complete#skeletonize

" Включить автодополнение в режиме вставки
set complete+=k
set completeopt+=menuone


" Определить, когда показывать меню автодополнения
autocmd FileType <filetype> setlocal omnifunc=<omnifunc>

" Настроить горячие клавиши для открытия и закрытия меню автодополнения
inoremap <C-Space> <C-x><C-o>
inoremap <C-n>     <C-n>
inoremap <C-p>     <C-p>


set number

syntax on

" Auto-save
autocmd FocusLost * silent! wall

" Auto-closing brackets

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Snippets configurations
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<Enter>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

colorscheme dracula

:set autoindent

" noremaps for NERDTree
:map <C-s> <Esc>:w<kEnter>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <Space><Space> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" ":set completeopt=longest,menuone

" ??? magic with backspace work
set backspace=indent,eol,start

"************************************BEATZ CONFIGURATION*************************"
