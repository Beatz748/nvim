set runtimepath^=~/.vim

call plug#begin('~/.vim/plugged')

" https://github.com/romainl/flattened
Plug 'romainl/flattened'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" https://github.com/Shougo/neocomplete.vim

call plug#end()


autocmd vimenter * NERDTree

set laststatus=2
set noshowmode
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=80
autocmd TextChanged,TextChangedI <buffer> silent write

highlight ColorColumn ctermbg=green

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
