set runtimepath^=~/.vim

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'

Plug 'skanehira/badapple.vim'

Plug 'AndrewRadev/dealwithit.vim'

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'sainnhe/sonokai'

Plug 'rip-rip/clang_complete'

Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
"set paste
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
autocmd vimenter * NERDTree

        if has('termguicolors')
          set termguicolors
        endif
        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'andromeda'
		colorscheme sonokai

syntax on
" path to directory where library can be found
 let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
"set
retab
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set hlsearch
set incsearch

"end set

autocmd TextChanged,TextChangedI <buffer> silent write

let g:neocomplcache_enable_at_startup = 1

augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
    autocmd FileType * autocmd TextChanged,InsertLeave <buffer> if &readonly == 0 | silent write | endif
augroup END

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
map <C-n> :NERDTreeToggle<CR>
