
echo "Creating directory for nvim"
echo "Install before: python3 nodejs llvm"

mkdir -p $HOME/.config
mkdir -p $HOME/.config/nvim

export VUNDLE="${HOME}/.config/nvim/plugged/Vundle.vim" # You can edit this line, if you already
							# donwloaded Vundle, set another path.
echo "Vundle will be downloaded to the $VUNDLE"


git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE

echo "Editing rtp for Vundle"
echo "set rtp+=${VUNDLE}" | cat - init.vim > temp && mv temp init.vim

echo "If you are using zshrc, you can type 'v' instead of 'nvim'"
alias v=nvim >> $HOME/.zshrc
alias vim=nvim >> $HOME/.zshrc

echo "copy settings to default directory"
cp coc-settings.json init.vim $HOME/.config/nvim/

cd ..

nvim -c ":PluginInstall" -c ":q" -c ":q"

echo "Building coc.nvim got autocomplete"
cd $VUNDLE/../coc.nvim
npm ci

echo "Adding C/C++ autocomplete"
nvim -c ":CocInstall clangd" -c ":CocCommand clangd.install" -c ":q" -c ":q"

