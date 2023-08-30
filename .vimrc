set nocompatible              " be iMproved, required
filetype plugin on
""set omnifunc=syntaxcomplete#Complete

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'




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
"
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 0

let g:ycm_autoclose_preview_window_after_completion = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'

" Enable autocompletion
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_gopls_enabled = 1


let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1

" Golang vim-go plugin hightlights options
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1

" Show identifier info in status bar
let g:go_auto_type_info = 1

let g:go_doc_popup_window = 1
let g:go_metlainter_command = "staticcheck"
" May be set to gofmt instead, beacuse of some people claims
" that goimports may take long time for work.
let g:go_fmt_command = "goimports"
" Some vim-go remaps for easy invoke `go vet`, `gofmt`,`staticcheck`
" and `go-doc. Remaping works with \v, \f, \l and \d respectively
autocmd FileType go nnoremap <leader>f :GoFmt<CR>
autocmd FileType go nnoremap <leader>l :GoMetaLinter<CR>
autocmd FileType go nnoremap <leader>d :GoDoc<CR>
" go vet can be replaced with statickcheck
" autocmd FileType go nnoremap <leader>v :GoVet!<CR>

" Supress vim-go autocomplete preview window
set completeopt-=preview

" Autoclose vim-go autocomplete preview window when
" close autocomplete popup hover window
augroup completion_preview_close
  autocmd!
  autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | augroup END
