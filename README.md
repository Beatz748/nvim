:set runtimepath?:

set runtimepath^=~/other/path

# download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#then add to .vimrc
call plug#begin('~/.vim/plugged')
#
#
call plug#end()
#like 
call plug#begin('~/.vim/plugged')
" https://github.com/romainl/flattened
Plug 'romainl/flattened'
call plug#end()
#use :source .vimrc: for reread
# use :PlugInstal:
# and after colorscheme flattened_dark

