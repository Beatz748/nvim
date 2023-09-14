export VUNDLE="${HOME}/.config/nvim/plugins/Vundle.vim"

git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE


echo "set rtp+=${VUNDLE}" | cat - init.vim > temp && mv temp init.vim

alias v=nvim >> $HOME/.zshrc
