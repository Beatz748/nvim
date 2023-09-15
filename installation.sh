
echo "Creating directory for nvim"

mkdir -p $HOME/.config
mkdir -p $HOME/.config/nvim

export VUNDLE="${HOME}/.config/nvim/plugins/Vundle.vim" # You can edit this line, if you already
							# donwloaded Vundle, set another path.
echo "Vundle will be downloaded to the $VUNDLE"


git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE

echo "Editing rtp for Vundle"
echo "set rtp+=${VUNDLE}" | cat - init.vim > temp && mv temp init.vim

echo "If you are using zshrc, you can type 'v' instead of 'nvim'"
alias v=nvim >> $HOME/.zshrc

cp coc-settings.json init.vim $HOME/.config/nvim/
